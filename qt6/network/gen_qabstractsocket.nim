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
{.compile("gen_qabstractsocket.cpp", cflags).}


type QAbstractSocketSocketType* = cint
const
  QAbstractSocketTcpSocket* = 0
  QAbstractSocketUdpSocket* = 1
  QAbstractSocketSctpSocket* = 2
  QAbstractSocketUnknownSocketType* = -1



type QAbstractSocketNetworkLayerProtocol* = cint
const
  QAbstractSocketIPv4Protocol* = 0
  QAbstractSocketIPv6Protocol* = 1
  QAbstractSocketAnyIPProtocol* = 2
  QAbstractSocketUnknownNetworkLayerProtocol* = -1



type QAbstractSocketSocketError* = cint
const
  QAbstractSocketConnectionRefusedError* = 0
  QAbstractSocketRemoteHostClosedError* = 1
  QAbstractSocketHostNotFoundError* = 2
  QAbstractSocketSocketAccessError* = 3
  QAbstractSocketSocketResourceError* = 4
  QAbstractSocketSocketTimeoutError* = 5
  QAbstractSocketDatagramTooLargeError* = 6
  QAbstractSocketNetworkError* = 7
  QAbstractSocketAddressInUseError* = 8
  QAbstractSocketSocketAddressNotAvailableError* = 9
  QAbstractSocketUnsupportedSocketOperationError* = 10
  QAbstractSocketUnfinishedSocketOperationError* = 11
  QAbstractSocketProxyAuthenticationRequiredError* = 12
  QAbstractSocketSslHandshakeFailedError* = 13
  QAbstractSocketProxyConnectionRefusedError* = 14
  QAbstractSocketProxyConnectionClosedError* = 15
  QAbstractSocketProxyConnectionTimeoutError* = 16
  QAbstractSocketProxyNotFoundError* = 17
  QAbstractSocketProxyProtocolError* = 18
  QAbstractSocketOperationError* = 19
  QAbstractSocketSslInternalError* = 20
  QAbstractSocketSslInvalidUserDataError* = 21
  QAbstractSocketTemporaryError* = 22
  QAbstractSocketUnknownSocketError* = -1



type QAbstractSocketSocketState* = cint
const
  QAbstractSocketUnconnectedState* = 0
  QAbstractSocketHostLookupState* = 1
  QAbstractSocketConnectingState* = 2
  QAbstractSocketConnectedState* = 3
  QAbstractSocketBoundState* = 4
  QAbstractSocketListeningState* = 5
  QAbstractSocketClosingState* = 6



type QAbstractSocketSocketOption* = cint
const
  QAbstractSocketLowDelayOption* = 0
  QAbstractSocketKeepAliveOption* = 1
  QAbstractSocketMulticastTtlOption* = 2
  QAbstractSocketMulticastLoopbackOption* = 3
  QAbstractSocketTypeOfServiceOption* = 4
  QAbstractSocketSendBufferSizeSocketOption* = 5
  QAbstractSocketReceiveBufferSizeSocketOption* = 6
  QAbstractSocketPathMtuSocketOption* = 7



type QAbstractSocketBindFlag* = cint
const
  QAbstractSocketDefaultForPlatform* = 0
  QAbstractSocketShareAddress* = 1
  QAbstractSocketDontShareAddress* = 2
  QAbstractSocketReuseAddressHint* = 4



type QAbstractSocketPauseMode* = cint
const
  QAbstractSocketPauseNever* = 0
  QAbstractSocketPauseOnSslErrors* = 1



import gen_qabstractsocket_types
export gen_qabstractsocket_types

import
  gen_qauthenticator,
  gen_qcoreevent,
  gen_qhostaddress,
  gen_qiodevice,
  gen_qiodevicebase,
  gen_qmetaobject,
  gen_qnetworkproxy,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qauthenticator,
  gen_qcoreevent,
  gen_qhostaddress,
  gen_qiodevice,
  gen_qiodevicebase,
  gen_qmetaobject,
  gen_qnetworkproxy,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant

type cQAbstractSocket*{.exportc: "QAbstractSocket", incompleteStruct.} = object

proc fcQAbstractSocket_new(socketType: cint, parent: pointer): ptr cQAbstractSocket {.importc: "QAbstractSocket_new".}
proc fcQAbstractSocket_metaObject(self: pointer, ): pointer {.importc: "QAbstractSocket_metaObject".}
proc fcQAbstractSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSocket_metacast".}
proc fcQAbstractSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSocket_metacall".}
proc fcQAbstractSocket_tr(s: cstring): struct_miqt_string {.importc: "QAbstractSocket_tr".}
proc fcQAbstractSocket_resume(self: pointer, ): void {.importc: "QAbstractSocket_resume".}
proc fcQAbstractSocket_pauseMode(self: pointer, ): cint {.importc: "QAbstractSocket_pauseMode".}
proc fcQAbstractSocket_setPauseMode(self: pointer, pauseMode: cint): void {.importc: "QAbstractSocket_setPauseMode".}
proc fcQAbstractSocket_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.importc: "QAbstractSocket_bind".}
proc fcQAbstractSocket_bind2(self: pointer, ): bool {.importc: "QAbstractSocket_bind2".}
proc fcQAbstractSocket_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QAbstractSocket_connectToHost".}
proc fcQAbstractSocket_connectToHost2(self: pointer, address: pointer, port: cushort): void {.importc: "QAbstractSocket_connectToHost2".}
proc fcQAbstractSocket_disconnectFromHost(self: pointer, ): void {.importc: "QAbstractSocket_disconnectFromHost".}
proc fcQAbstractSocket_isValid(self: pointer, ): bool {.importc: "QAbstractSocket_isValid".}
proc fcQAbstractSocket_bytesAvailable(self: pointer, ): clonglong {.importc: "QAbstractSocket_bytesAvailable".}
proc fcQAbstractSocket_bytesToWrite(self: pointer, ): clonglong {.importc: "QAbstractSocket_bytesToWrite".}
proc fcQAbstractSocket_localPort(self: pointer, ): cushort {.importc: "QAbstractSocket_localPort".}
proc fcQAbstractSocket_localAddress(self: pointer, ): pointer {.importc: "QAbstractSocket_localAddress".}
proc fcQAbstractSocket_peerPort(self: pointer, ): cushort {.importc: "QAbstractSocket_peerPort".}
proc fcQAbstractSocket_peerAddress(self: pointer, ): pointer {.importc: "QAbstractSocket_peerAddress".}
proc fcQAbstractSocket_peerName(self: pointer, ): struct_miqt_string {.importc: "QAbstractSocket_peerName".}
proc fcQAbstractSocket_readBufferSize(self: pointer, ): clonglong {.importc: "QAbstractSocket_readBufferSize".}
proc fcQAbstractSocket_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QAbstractSocket_setReadBufferSize".}
proc fcQAbstractSocket_abort(self: pointer, ): void {.importc: "QAbstractSocket_abort".}
proc fcQAbstractSocket_socketDescriptor(self: pointer, ): uint {.importc: "QAbstractSocket_socketDescriptor".}
proc fcQAbstractSocket_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QAbstractSocket_setSocketDescriptor".}
proc fcQAbstractSocket_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QAbstractSocket_setSocketOption".}
proc fcQAbstractSocket_socketOption(self: pointer, option: cint): pointer {.importc: "QAbstractSocket_socketOption".}
proc fcQAbstractSocket_socketType(self: pointer, ): cint {.importc: "QAbstractSocket_socketType".}
proc fcQAbstractSocket_state(self: pointer, ): cint {.importc: "QAbstractSocket_state".}
proc fcQAbstractSocket_error(self: pointer, ): cint {.importc: "QAbstractSocket_error".}
proc fcQAbstractSocket_close(self: pointer, ): void {.importc: "QAbstractSocket_close".}
proc fcQAbstractSocket_isSequential(self: pointer, ): bool {.importc: "QAbstractSocket_isSequential".}
proc fcQAbstractSocket_flush(self: pointer, ): bool {.importc: "QAbstractSocket_flush".}
proc fcQAbstractSocket_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_waitForConnected".}
proc fcQAbstractSocket_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_waitForReadyRead".}
proc fcQAbstractSocket_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_waitForBytesWritten".}
proc fcQAbstractSocket_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_waitForDisconnected".}
proc fcQAbstractSocket_setProxy(self: pointer, networkProxy: pointer): void {.importc: "QAbstractSocket_setProxy".}
proc fcQAbstractSocket_proxy(self: pointer, ): pointer {.importc: "QAbstractSocket_proxy".}
proc fcQAbstractSocket_protocolTag(self: pointer, ): struct_miqt_string {.importc: "QAbstractSocket_protocolTag".}
proc fcQAbstractSocket_setProtocolTag(self: pointer, tag: struct_miqt_string): void {.importc: "QAbstractSocket_setProtocolTag".}
proc fcQAbstractSocket_hostFound(self: pointer, ): void {.importc: "QAbstractSocket_hostFound".}
proc fQAbstractSocket_connect_hostFound(self: pointer, slot: int) {.importc: "QAbstractSocket_connect_hostFound".}
proc fcQAbstractSocket_connected(self: pointer, ): void {.importc: "QAbstractSocket_connected".}
proc fQAbstractSocket_connect_connected(self: pointer, slot: int) {.importc: "QAbstractSocket_connect_connected".}
proc fcQAbstractSocket_disconnected(self: pointer, ): void {.importc: "QAbstractSocket_disconnected".}
proc fQAbstractSocket_connect_disconnected(self: pointer, slot: int) {.importc: "QAbstractSocket_connect_disconnected".}
proc fcQAbstractSocket_stateChanged(self: pointer, param1: cint): void {.importc: "QAbstractSocket_stateChanged".}
proc fQAbstractSocket_connect_stateChanged(self: pointer, slot: int) {.importc: "QAbstractSocket_connect_stateChanged".}
proc fcQAbstractSocket_errorOccurred(self: pointer, param1: cint): void {.importc: "QAbstractSocket_errorOccurred".}
proc fQAbstractSocket_connect_errorOccurred(self: pointer, slot: int) {.importc: "QAbstractSocket_connect_errorOccurred".}
proc fcQAbstractSocket_proxyAuthenticationRequired(self: pointer, proxy: pointer, authenticator: pointer): void {.importc: "QAbstractSocket_proxyAuthenticationRequired".}
proc fQAbstractSocket_connect_proxyAuthenticationRequired(self: pointer, slot: int) {.importc: "QAbstractSocket_connect_proxyAuthenticationRequired".}
proc fcQAbstractSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSocket_tr2".}
proc fcQAbstractSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSocket_tr3".}
proc fcQAbstractSocket_bind1(self: pointer, port: cushort): bool {.importc: "QAbstractSocket_bind1".}
proc fcQAbstractSocket_bind22(self: pointer, port: cushort, mode: cint): bool {.importc: "QAbstractSocket_bind22".}
proc fcQAbstractSocket_connectToHost3(self: pointer, address: pointer, port: cushort, mode: cint): void {.importc: "QAbstractSocket_connectToHost3".}
proc fQAbstractSocket_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractSocket_virtualbase_metaObject".}
proc fcQAbstractSocket_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_metaObject".}
proc fQAbstractSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractSocket_virtualbase_metacast".}
proc fcQAbstractSocket_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_metacast".}
proc fQAbstractSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractSocket_virtualbase_metacall".}
proc fcQAbstractSocket_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_metacall".}
proc fQAbstractSocket_virtualbase_resume(self: pointer, ): void{.importc: "QAbstractSocket_virtualbase_resume".}
proc fcQAbstractSocket_override_virtual_resume(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_resume".}
proc fQAbstractSocket_virtualbase_bind(self: pointer, address: pointer, port: cushort, mode: cint): bool{.importc: "QAbstractSocket_virtualbase_bind".}
proc fcQAbstractSocket_override_virtual_bindX(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_bind".}
proc fQAbstractSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void{.importc: "QAbstractSocket_virtualbase_connectToHost".}
proc fcQAbstractSocket_override_virtual_connectToHost(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_connectToHost".}
proc fQAbstractSocket_virtualbase_disconnectFromHost(self: pointer, ): void{.importc: "QAbstractSocket_virtualbase_disconnectFromHost".}
proc fcQAbstractSocket_override_virtual_disconnectFromHost(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_disconnectFromHost".}
proc fQAbstractSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QAbstractSocket_virtualbase_bytesAvailable".}
proc fcQAbstractSocket_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_bytesAvailable".}
proc fQAbstractSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QAbstractSocket_virtualbase_bytesToWrite".}
proc fcQAbstractSocket_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_bytesToWrite".}
proc fQAbstractSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void{.importc: "QAbstractSocket_virtualbase_setReadBufferSize".}
proc fcQAbstractSocket_override_virtual_setReadBufferSize(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_setReadBufferSize".}
proc fQAbstractSocket_virtualbase_socketDescriptor(self: pointer, ): uint{.importc: "QAbstractSocket_virtualbase_socketDescriptor".}
proc fcQAbstractSocket_override_virtual_socketDescriptor(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_socketDescriptor".}
proc fQAbstractSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool{.importc: "QAbstractSocket_virtualbase_setSocketDescriptor".}
proc fcQAbstractSocket_override_virtual_setSocketDescriptor(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_setSocketDescriptor".}
proc fQAbstractSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void{.importc: "QAbstractSocket_virtualbase_setSocketOption".}
proc fcQAbstractSocket_override_virtual_setSocketOption(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_setSocketOption".}
proc fQAbstractSocket_virtualbase_socketOption(self: pointer, option: cint): pointer{.importc: "QAbstractSocket_virtualbase_socketOption".}
proc fcQAbstractSocket_override_virtual_socketOption(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_socketOption".}
proc fQAbstractSocket_virtualbase_close(self: pointer, ): void{.importc: "QAbstractSocket_virtualbase_close".}
proc fcQAbstractSocket_override_virtual_close(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_close".}
proc fQAbstractSocket_virtualbase_isSequential(self: pointer, ): bool{.importc: "QAbstractSocket_virtualbase_isSequential".}
proc fcQAbstractSocket_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_isSequential".}
proc fQAbstractSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool{.importc: "QAbstractSocket_virtualbase_waitForConnected".}
proc fcQAbstractSocket_override_virtual_waitForConnected(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_waitForConnected".}
proc fQAbstractSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QAbstractSocket_virtualbase_waitForReadyRead".}
proc fcQAbstractSocket_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_waitForReadyRead".}
proc fQAbstractSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QAbstractSocket_virtualbase_waitForBytesWritten".}
proc fcQAbstractSocket_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_waitForBytesWritten".}
proc fQAbstractSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool{.importc: "QAbstractSocket_virtualbase_waitForDisconnected".}
proc fcQAbstractSocket_override_virtual_waitForDisconnected(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_waitForDisconnected".}
proc fQAbstractSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QAbstractSocket_virtualbase_readData".}
proc fcQAbstractSocket_override_virtual_readData(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_readData".}
proc fQAbstractSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QAbstractSocket_virtualbase_readLineData".}
proc fcQAbstractSocket_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_readLineData".}
proc fQAbstractSocket_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong{.importc: "QAbstractSocket_virtualbase_skipData".}
proc fcQAbstractSocket_override_virtual_skipData(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_skipData".}
proc fQAbstractSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QAbstractSocket_virtualbase_writeData".}
proc fcQAbstractSocket_override_virtual_writeData(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_writeData".}
proc fQAbstractSocket_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QAbstractSocket_virtualbase_open".}
proc fcQAbstractSocket_override_virtual_open(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_open".}
proc fQAbstractSocket_virtualbase_pos(self: pointer, ): clonglong{.importc: "QAbstractSocket_virtualbase_pos".}
proc fcQAbstractSocket_override_virtual_pos(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_pos".}
proc fQAbstractSocket_virtualbase_size(self: pointer, ): clonglong{.importc: "QAbstractSocket_virtualbase_size".}
proc fcQAbstractSocket_override_virtual_size(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_size".}
proc fQAbstractSocket_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QAbstractSocket_virtualbase_seek".}
proc fcQAbstractSocket_override_virtual_seek(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_seek".}
proc fQAbstractSocket_virtualbase_atEnd(self: pointer, ): bool{.importc: "QAbstractSocket_virtualbase_atEnd".}
proc fcQAbstractSocket_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_atEnd".}
proc fQAbstractSocket_virtualbase_reset(self: pointer, ): bool{.importc: "QAbstractSocket_virtualbase_reset".}
proc fcQAbstractSocket_override_virtual_reset(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_reset".}
proc fQAbstractSocket_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QAbstractSocket_virtualbase_canReadLine".}
proc fcQAbstractSocket_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_canReadLine".}
proc fQAbstractSocket_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractSocket_virtualbase_event".}
proc fcQAbstractSocket_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_event".}
proc fQAbstractSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractSocket_virtualbase_eventFilter".}
proc fcQAbstractSocket_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_eventFilter".}
proc fQAbstractSocket_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractSocket_virtualbase_timerEvent".}
proc fcQAbstractSocket_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_timerEvent".}
proc fQAbstractSocket_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractSocket_virtualbase_childEvent".}
proc fcQAbstractSocket_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_childEvent".}
proc fQAbstractSocket_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractSocket_virtualbase_customEvent".}
proc fcQAbstractSocket_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_customEvent".}
proc fQAbstractSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractSocket_virtualbase_connectNotify".}
proc fcQAbstractSocket_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_connectNotify".}
proc fQAbstractSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractSocket_virtualbase_disconnectNotify".}
proc fcQAbstractSocket_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_disconnectNotify".}
proc fcQAbstractSocket_staticMetaObject(): pointer {.importc: "QAbstractSocket_staticMetaObject".}
proc fcQAbstractSocket_delete(self: pointer) {.importc: "QAbstractSocket_delete".}


func init*(T: type QAbstractSocket, h: ptr cQAbstractSocket): QAbstractSocket =
  T(h: h)
proc create*(T: type QAbstractSocket, socketType: QAbstractSocketSocketType, parent: gen_qobject.QObject): QAbstractSocket =

  QAbstractSocket.init(fcQAbstractSocket_new(cint(socketType), parent.h))
proc metaObject*(self: QAbstractSocket, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractSocket_metaObject(self.h))

proc metacast*(self: QAbstractSocket, param1: cstring): pointer =

  fcQAbstractSocket_metacast(self.h, param1)

proc metacall*(self: QAbstractSocket, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractSocket, s: cstring): string =

  let v_ms = fcQAbstractSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resume*(self: QAbstractSocket, ): void =

  fcQAbstractSocket_resume(self.h)

proc pauseMode*(self: QAbstractSocket, ): QAbstractSocketPauseMode =

  QAbstractSocketPauseMode(fcQAbstractSocket_pauseMode(self.h))

proc setPauseMode*(self: QAbstractSocket, pauseMode: QAbstractSocketPauseMode): void =

  fcQAbstractSocket_setPauseMode(self.h, cint(pauseMode))

proc bindX*(self: QAbstractSocket, address: gen_qhostaddress.QHostAddress, port: cushort, mode: QAbstractSocketBindFlag): bool =

  fcQAbstractSocket_bindX(self.h, address.h, port, cint(mode))

proc bind2*(self: QAbstractSocket, ): bool =

  fcQAbstractSocket_bind2(self.h)

proc connectToHost*(self: QAbstractSocket, hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: QAbstractSocketNetworkLayerProtocol): void =

  fcQAbstractSocket_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc connectToHost2*(self: QAbstractSocket, address: gen_qhostaddress.QHostAddress, port: cushort): void =

  fcQAbstractSocket_connectToHost2(self.h, address.h, port)

proc disconnectFromHost*(self: QAbstractSocket, ): void =

  fcQAbstractSocket_disconnectFromHost(self.h)

proc isValid*(self: QAbstractSocket, ): bool =

  fcQAbstractSocket_isValid(self.h)

proc bytesAvailable*(self: QAbstractSocket, ): clonglong =

  fcQAbstractSocket_bytesAvailable(self.h)

proc bytesToWrite*(self: QAbstractSocket, ): clonglong =

  fcQAbstractSocket_bytesToWrite(self.h)

proc localPort*(self: QAbstractSocket, ): cushort =

  fcQAbstractSocket_localPort(self.h)

proc localAddress*(self: QAbstractSocket, ): gen_qhostaddress.QHostAddress =

  gen_qhostaddress.QHostAddress(h: fcQAbstractSocket_localAddress(self.h))

proc peerPort*(self: QAbstractSocket, ): cushort =

  fcQAbstractSocket_peerPort(self.h)

proc peerAddress*(self: QAbstractSocket, ): gen_qhostaddress.QHostAddress =

  gen_qhostaddress.QHostAddress(h: fcQAbstractSocket_peerAddress(self.h))

proc peerName*(self: QAbstractSocket, ): string =

  let v_ms = fcQAbstractSocket_peerName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc readBufferSize*(self: QAbstractSocket, ): clonglong =

  fcQAbstractSocket_readBufferSize(self.h)

proc setReadBufferSize*(self: QAbstractSocket, size: clonglong): void =

  fcQAbstractSocket_setReadBufferSize(self.h, size)

proc abort*(self: QAbstractSocket, ): void =

  fcQAbstractSocket_abort(self.h)

proc socketDescriptor*(self: QAbstractSocket, ): uint =

  fcQAbstractSocket_socketDescriptor(self.h)

proc setSocketDescriptor*(self: QAbstractSocket, socketDescriptor: uint, state: QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =

  fcQAbstractSocket_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc setSocketOption*(self: QAbstractSocket, option: QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void =

  fcQAbstractSocket_setSocketOption(self.h, cint(option), value.h)

proc socketOption*(self: QAbstractSocket, option: QAbstractSocketSocketOption): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQAbstractSocket_socketOption(self.h, cint(option)))

proc socketType*(self: QAbstractSocket, ): QAbstractSocketSocketType =

  QAbstractSocketSocketType(fcQAbstractSocket_socketType(self.h))

proc state*(self: QAbstractSocket, ): QAbstractSocketSocketState =

  QAbstractSocketSocketState(fcQAbstractSocket_state(self.h))

proc error*(self: QAbstractSocket, ): QAbstractSocketSocketError =

  QAbstractSocketSocketError(fcQAbstractSocket_error(self.h))

proc close*(self: QAbstractSocket, ): void =

  fcQAbstractSocket_close(self.h)

proc isSequential*(self: QAbstractSocket, ): bool =

  fcQAbstractSocket_isSequential(self.h)

proc flush*(self: QAbstractSocket, ): bool =

  fcQAbstractSocket_flush(self.h)

proc waitForConnected*(self: QAbstractSocket, msecs: cint): bool =

  fcQAbstractSocket_waitForConnected(self.h, msecs)

proc waitForReadyRead*(self: QAbstractSocket, msecs: cint): bool =

  fcQAbstractSocket_waitForReadyRead(self.h, msecs)

proc waitForBytesWritten*(self: QAbstractSocket, msecs: cint): bool =

  fcQAbstractSocket_waitForBytesWritten(self.h, msecs)

proc waitForDisconnected*(self: QAbstractSocket, msecs: cint): bool =

  fcQAbstractSocket_waitForDisconnected(self.h, msecs)

proc setProxy*(self: QAbstractSocket, networkProxy: gen_qnetworkproxy.QNetworkProxy): void =

  fcQAbstractSocket_setProxy(self.h, networkProxy.h)

proc proxy*(self: QAbstractSocket, ): gen_qnetworkproxy.QNetworkProxy =

  gen_qnetworkproxy.QNetworkProxy(h: fcQAbstractSocket_proxy(self.h))

proc protocolTag*(self: QAbstractSocket, ): string =

  let v_ms = fcQAbstractSocket_protocolTag(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setProtocolTag*(self: QAbstractSocket, tag: string): void =

  fcQAbstractSocket_setProtocolTag(self.h, struct_miqt_string(data: tag, len: csize_t(len(tag))))

proc hostFound*(self: QAbstractSocket, ): void =

  fcQAbstractSocket_hostFound(self.h)

proc miqt_exec_callback_QAbstractSocket_hostFound(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onhostFound*(self: QAbstractSocket, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractSocket_connect_hostFound(self.h, cast[int](addr tmp[]))
proc connected*(self: QAbstractSocket, ): void =

  fcQAbstractSocket_connected(self.h)

proc miqt_exec_callback_QAbstractSocket_connected(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onconnected*(self: QAbstractSocket, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractSocket_connect_connected(self.h, cast[int](addr tmp[]))
proc disconnected*(self: QAbstractSocket, ): void =

  fcQAbstractSocket_disconnected(self.h)

proc miqt_exec_callback_QAbstractSocket_disconnected(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondisconnected*(self: QAbstractSocket, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractSocket_connect_disconnected(self.h, cast[int](addr tmp[]))
proc stateChanged*(self: QAbstractSocket, param1: QAbstractSocketSocketState): void =

  fcQAbstractSocket_stateChanged(self.h, cint(param1))

proc miqt_exec_callback_QAbstractSocket_stateChanged(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: QAbstractSocketSocketState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QAbstractSocketSocketState(param1)


  nimfunc[](slotval1)

proc onstateChanged*(self: QAbstractSocket, slot: proc(param1: QAbstractSocketSocketState)) =
  type Cb = proc(param1: QAbstractSocketSocketState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractSocket_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc errorOccurred*(self: QAbstractSocket, param1: QAbstractSocketSocketError): void =

  fcQAbstractSocket_errorOccurred(self.h, cint(param1))

proc miqt_exec_callback_QAbstractSocket_errorOccurred(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: QAbstractSocketSocketError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QAbstractSocketSocketError(param1)


  nimfunc[](slotval1)

proc onerrorOccurred*(self: QAbstractSocket, slot: proc(param1: QAbstractSocketSocketError)) =
  type Cb = proc(param1: QAbstractSocketSocketError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractSocket_connect_errorOccurred(self.h, cast[int](addr tmp[]))
proc proxyAuthenticationRequired*(self: QAbstractSocket, proxy: gen_qnetworkproxy.QNetworkProxy, authenticator: gen_qauthenticator.QAuthenticator): void =

  fcQAbstractSocket_proxyAuthenticationRequired(self.h, proxy.h, authenticator.h)

proc miqt_exec_callback_QAbstractSocket_proxyAuthenticationRequired(slot: int, proxy: pointer, authenticator: pointer) {.exportc.} =
  type Cb = proc(proxy: gen_qnetworkproxy.QNetworkProxy, authenticator: gen_qauthenticator.QAuthenticator)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkproxy.QNetworkProxy(h: proxy)

  let slotval2 = gen_qauthenticator.QAuthenticator(h: authenticator)


  nimfunc[](slotval1, slotval2)

proc onproxyAuthenticationRequired*(self: QAbstractSocket, slot: proc(proxy: gen_qnetworkproxy.QNetworkProxy, authenticator: gen_qauthenticator.QAuthenticator)) =
  type Cb = proc(proxy: gen_qnetworkproxy.QNetworkProxy, authenticator: gen_qauthenticator.QAuthenticator)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractSocket_connect_proxyAuthenticationRequired(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAbstractSocket, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractSocket_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractSocket, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc bind1*(self: QAbstractSocket, port: cushort): bool =

  fcQAbstractSocket_bind1(self.h, port)

proc bind22*(self: QAbstractSocket, port: cushort, mode: QAbstractSocketBindFlag): bool =

  fcQAbstractSocket_bind22(self.h, port, cint(mode))

proc connectToHost3*(self: QAbstractSocket, address: gen_qhostaddress.QHostAddress, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): void =

  fcQAbstractSocket_connectToHost3(self.h, address.h, port, cint(mode))

proc callVirtualBase_metaObject(self: QAbstractSocket, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQAbstractSocket_virtualbase_metaObject(self.h))

type QAbstractSocketmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QAbstractSocket, slot: proc(super: QAbstractSocketmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_metaObject(self: ptr cQAbstractSocket, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSocket_metaObject ".} =
  type Cb = proc(super: QAbstractSocketmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QAbstractSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QAbstractSocket, param1: cstring): pointer =


  fQAbstractSocket_virtualbase_metacast(self.h, param1)

type QAbstractSocketmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QAbstractSocket, slot: proc(super: QAbstractSocketmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_metacast(self: ptr cQAbstractSocket, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractSocket_metacast ".} =
  type Cb = proc(super: QAbstractSocketmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QAbstractSocket(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QAbstractSocket, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractSocketmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractSocket, slot: proc(super: QAbstractSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_metacall(self: ptr cQAbstractSocket, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractSocket_metacall ".} =
  type Cb = proc(super: QAbstractSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractSocket(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_resume(self: QAbstractSocket, ): void =


  fQAbstractSocket_virtualbase_resume(self.h)

type QAbstractSocketresumeBase* = proc(): void
proc onresume*(self: QAbstractSocket, slot: proc(super: QAbstractSocketresumeBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketresumeBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_resume(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_resume(self: ptr cQAbstractSocket, slot: int): void {.exportc: "miqt_exec_callback_QAbstractSocket_resume ".} =
  type Cb = proc(super: QAbstractSocketresumeBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_resume(QAbstractSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_bindX(self: QAbstractSocket, address: gen_qhostaddress.QHostAddress, port: cushort, mode: QAbstractSocketBindFlag): bool =


  fQAbstractSocket_virtualbase_bind(self.h, address.h, port, cint(mode))

type QAbstractSocketbindXBase* = proc(address: gen_qhostaddress.QHostAddress, port: cushort, mode: QAbstractSocketBindFlag): bool
proc onbindX*(self: QAbstractSocket, slot: proc(super: QAbstractSocketbindXBase, address: gen_qhostaddress.QHostAddress, port: cushort, mode: QAbstractSocketBindFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketbindXBase, address: gen_qhostaddress.QHostAddress, port: cushort, mode: QAbstractSocketBindFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_bindX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_bind(self: ptr cQAbstractSocket, slot: int, address: pointer, port: cushort, mode: cint): bool {.exportc: "miqt_exec_callback_QAbstractSocket_bind ".} =
  type Cb = proc(super: QAbstractSocketbindXBase, address: gen_qhostaddress.QHostAddress, port: cushort, mode: QAbstractSocketBindFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(address: gen_qhostaddress.QHostAddress, port: cushort, mode: QAbstractSocketBindFlag): auto =
    callVirtualBase_bindX(QAbstractSocket(h: self), address, port, mode)
  let slotval1 = gen_qhostaddress.QHostAddress(h: address)

  let slotval2 = port

  let slotval3 = QAbstractSocketBindFlag(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_connectToHost(self: QAbstractSocket, hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: QAbstractSocketNetworkLayerProtocol): void =


  fQAbstractSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

type QAbstractSocketconnectToHostBase* = proc(hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: QAbstractSocketNetworkLayerProtocol): void
proc onconnectToHost*(self: QAbstractSocket, slot: proc(super: QAbstractSocketconnectToHostBase, hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: QAbstractSocketNetworkLayerProtocol): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketconnectToHostBase, hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: QAbstractSocketNetworkLayerProtocol): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_connectToHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_connectToHost(self: ptr cQAbstractSocket, slot: int, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.exportc: "miqt_exec_callback_QAbstractSocket_connectToHost ".} =
  type Cb = proc(super: QAbstractSocketconnectToHostBase, hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: QAbstractSocketNetworkLayerProtocol): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: QAbstractSocketNetworkLayerProtocol): auto =
    callVirtualBase_connectToHost(QAbstractSocket(h: self), hostName, port, mode, protocol)
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret

  let slotval2 = port

  let slotval3 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(mode)

  let slotval4 = QAbstractSocketNetworkLayerProtocol(protocol)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_disconnectFromHost(self: QAbstractSocket, ): void =


  fQAbstractSocket_virtualbase_disconnectFromHost(self.h)

type QAbstractSocketdisconnectFromHostBase* = proc(): void
proc ondisconnectFromHost*(self: QAbstractSocket, slot: proc(super: QAbstractSocketdisconnectFromHostBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketdisconnectFromHostBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_disconnectFromHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_disconnectFromHost(self: ptr cQAbstractSocket, slot: int): void {.exportc: "miqt_exec_callback_QAbstractSocket_disconnectFromHost ".} =
  type Cb = proc(super: QAbstractSocketdisconnectFromHostBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_disconnectFromHost(QAbstractSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_bytesAvailable(self: QAbstractSocket, ): clonglong =


  fQAbstractSocket_virtualbase_bytesAvailable(self.h)

type QAbstractSocketbytesAvailableBase* = proc(): clonglong
proc onbytesAvailable*(self: QAbstractSocket, slot: proc(super: QAbstractSocketbytesAvailableBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketbytesAvailableBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_bytesAvailable(self: ptr cQAbstractSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_bytesAvailable ".} =
  type Cb = proc(super: QAbstractSocketbytesAvailableBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesAvailable(QAbstractSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesToWrite(self: QAbstractSocket, ): clonglong =


  fQAbstractSocket_virtualbase_bytesToWrite(self.h)

type QAbstractSocketbytesToWriteBase* = proc(): clonglong
proc onbytesToWrite*(self: QAbstractSocket, slot: proc(super: QAbstractSocketbytesToWriteBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketbytesToWriteBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_bytesToWrite(self: ptr cQAbstractSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_bytesToWrite ".} =
  type Cb = proc(super: QAbstractSocketbytesToWriteBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesToWrite(QAbstractSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setReadBufferSize(self: QAbstractSocket, size: clonglong): void =


  fQAbstractSocket_virtualbase_setReadBufferSize(self.h, size)

type QAbstractSocketsetReadBufferSizeBase* = proc(size: clonglong): void
proc onsetReadBufferSize*(self: QAbstractSocket, slot: proc(super: QAbstractSocketsetReadBufferSizeBase, size: clonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketsetReadBufferSizeBase, size: clonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_setReadBufferSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_setReadBufferSize(self: ptr cQAbstractSocket, slot: int, size: clonglong): void {.exportc: "miqt_exec_callback_QAbstractSocket_setReadBufferSize ".} =
  type Cb = proc(super: QAbstractSocketsetReadBufferSizeBase, size: clonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(size: clonglong): auto =
    callVirtualBase_setReadBufferSize(QAbstractSocket(h: self), size)
  let slotval1 = size


  nimfunc[](superCall, slotval1)
proc callVirtualBase_socketDescriptor(self: QAbstractSocket, ): uint =


  fQAbstractSocket_virtualbase_socketDescriptor(self.h)

type QAbstractSocketsocketDescriptorBase* = proc(): uint
proc onsocketDescriptor*(self: QAbstractSocket, slot: proc(super: QAbstractSocketsocketDescriptorBase): uint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketsocketDescriptorBase): uint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_socketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_socketDescriptor(self: ptr cQAbstractSocket, slot: int): uint {.exportc: "miqt_exec_callback_QAbstractSocket_socketDescriptor ".} =
  type Cb = proc(super: QAbstractSocketsocketDescriptorBase): uint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_socketDescriptor(QAbstractSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setSocketDescriptor(self: QAbstractSocket, socketDescriptor: uint, state: QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =


  fQAbstractSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

type QAbstractSocketsetSocketDescriptorBase* = proc(socketDescriptor: uint, state: QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
proc onsetSocketDescriptor*(self: QAbstractSocket, slot: proc(super: QAbstractSocketsetSocketDescriptorBase, socketDescriptor: uint, state: QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketsetSocketDescriptorBase, socketDescriptor: uint, state: QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_setSocketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_setSocketDescriptor(self: ptr cQAbstractSocket, slot: int, socketDescriptor: uint, state: cint, openMode: cint): bool {.exportc: "miqt_exec_callback_QAbstractSocket_setSocketDescriptor ".} =
  type Cb = proc(super: QAbstractSocketsetSocketDescriptorBase, socketDescriptor: uint, state: QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(socketDescriptor: uint, state: QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): auto =
    callVirtualBase_setSocketDescriptor(QAbstractSocket(h: self), socketDescriptor, state, openMode)
  let slotval1 = socketDescriptor

  let slotval2 = QAbstractSocketSocketState(state)

  let slotval3 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(openMode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setSocketOption(self: QAbstractSocket, option: QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void =


  fQAbstractSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

type QAbstractSocketsetSocketOptionBase* = proc(option: QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
proc onsetSocketOption*(self: QAbstractSocket, slot: proc(super: QAbstractSocketsetSocketOptionBase, option: QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketsetSocketOptionBase, option: QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_setSocketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_setSocketOption(self: ptr cQAbstractSocket, slot: int, option: cint, value: pointer): void {.exportc: "miqt_exec_callback_QAbstractSocket_setSocketOption ".} =
  type Cb = proc(super: QAbstractSocketsetSocketOptionBase, option: QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: QAbstractSocketSocketOption, value: gen_qvariant.QVariant): auto =
    callVirtualBase_setSocketOption(QAbstractSocket(h: self), option, value)
  let slotval1 = QAbstractSocketSocketOption(option)

  let slotval2 = gen_qvariant.QVariant(h: value)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_socketOption(self: QAbstractSocket, option: QAbstractSocketSocketOption): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractSocket_virtualbase_socketOption(self.h, cint(option)))

type QAbstractSocketsocketOptionBase* = proc(option: QAbstractSocketSocketOption): gen_qvariant.QVariant
proc onsocketOption*(self: QAbstractSocket, slot: proc(super: QAbstractSocketsocketOptionBase, option: QAbstractSocketSocketOption): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketsocketOptionBase, option: QAbstractSocketSocketOption): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_socketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_socketOption(self: ptr cQAbstractSocket, slot: int, option: cint): pointer {.exportc: "miqt_exec_callback_QAbstractSocket_socketOption ".} =
  type Cb = proc(super: QAbstractSocketsocketOptionBase, option: QAbstractSocketSocketOption): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: QAbstractSocketSocketOption): auto =
    callVirtualBase_socketOption(QAbstractSocket(h: self), option)
  let slotval1 = QAbstractSocketSocketOption(option)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_close(self: QAbstractSocket, ): void =


  fQAbstractSocket_virtualbase_close(self.h)

type QAbstractSocketcloseBase* = proc(): void
proc onclose*(self: QAbstractSocket, slot: proc(super: QAbstractSocketcloseBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketcloseBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_close(self: ptr cQAbstractSocket, slot: int): void {.exportc: "miqt_exec_callback_QAbstractSocket_close ".} =
  type Cb = proc(super: QAbstractSocketcloseBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_close(QAbstractSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_isSequential(self: QAbstractSocket, ): bool =


  fQAbstractSocket_virtualbase_isSequential(self.h)

type QAbstractSocketisSequentialBase* = proc(): bool
proc onisSequential*(self: QAbstractSocket, slot: proc(super: QAbstractSocketisSequentialBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketisSequentialBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_isSequential(self: ptr cQAbstractSocket, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractSocket_isSequential ".} =
  type Cb = proc(super: QAbstractSocketisSequentialBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSequential(QAbstractSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_waitForConnected(self: QAbstractSocket, msecs: cint): bool =


  fQAbstractSocket_virtualbase_waitForConnected(self.h, msecs)

type QAbstractSocketwaitForConnectedBase* = proc(msecs: cint): bool
proc onwaitForConnected*(self: QAbstractSocket, slot: proc(super: QAbstractSocketwaitForConnectedBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketwaitForConnectedBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_waitForConnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_waitForConnected(self: ptr cQAbstractSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QAbstractSocket_waitForConnected ".} =
  type Cb = proc(super: QAbstractSocketwaitForConnectedBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForConnected(QAbstractSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForReadyRead(self: QAbstractSocket, msecs: cint): bool =


  fQAbstractSocket_virtualbase_waitForReadyRead(self.h, msecs)

type QAbstractSocketwaitForReadyReadBase* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: QAbstractSocket, slot: proc(super: QAbstractSocketwaitForReadyReadBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketwaitForReadyReadBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_waitForReadyRead(self: ptr cQAbstractSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QAbstractSocket_waitForReadyRead ".} =
  type Cb = proc(super: QAbstractSocketwaitForReadyReadBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForReadyRead(QAbstractSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForBytesWritten(self: QAbstractSocket, msecs: cint): bool =


  fQAbstractSocket_virtualbase_waitForBytesWritten(self.h, msecs)

type QAbstractSocketwaitForBytesWrittenBase* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: QAbstractSocket, slot: proc(super: QAbstractSocketwaitForBytesWrittenBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketwaitForBytesWrittenBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_waitForBytesWritten(self: ptr cQAbstractSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QAbstractSocket_waitForBytesWritten ".} =
  type Cb = proc(super: QAbstractSocketwaitForBytesWrittenBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForBytesWritten(QAbstractSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForDisconnected(self: QAbstractSocket, msecs: cint): bool =


  fQAbstractSocket_virtualbase_waitForDisconnected(self.h, msecs)

type QAbstractSocketwaitForDisconnectedBase* = proc(msecs: cint): bool
proc onwaitForDisconnected*(self: QAbstractSocket, slot: proc(super: QAbstractSocketwaitForDisconnectedBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketwaitForDisconnectedBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_waitForDisconnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_waitForDisconnected(self: ptr cQAbstractSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QAbstractSocket_waitForDisconnected ".} =
  type Cb = proc(super: QAbstractSocketwaitForDisconnectedBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForDisconnected(QAbstractSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_readData(self: QAbstractSocket, data: cstring, maxlen: clonglong): clonglong =


  fQAbstractSocket_virtualbase_readData(self.h, data, maxlen)

type QAbstractSocketreadDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: QAbstractSocket, slot: proc(super: QAbstractSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_readData(self: ptr cQAbstractSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_readData ".} =
  type Cb = proc(super: QAbstractSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readData(QAbstractSocket(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_readLineData(self: QAbstractSocket, data: cstring, maxlen: clonglong): clonglong =


  fQAbstractSocket_virtualbase_readLineData(self.h, data, maxlen)

type QAbstractSocketreadLineDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: QAbstractSocket, slot: proc(super: QAbstractSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_readLineData(self: ptr cQAbstractSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_readLineData ".} =
  type Cb = proc(super: QAbstractSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readLineData(QAbstractSocket(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_skipData(self: QAbstractSocket, maxSize: clonglong): clonglong =


  fQAbstractSocket_virtualbase_skipData(self.h, maxSize)

type QAbstractSocketskipDataBase* = proc(maxSize: clonglong): clonglong
proc onskipData*(self: QAbstractSocket, slot: proc(super: QAbstractSocketskipDataBase, maxSize: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketskipDataBase, maxSize: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_skipData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_skipData(self: ptr cQAbstractSocket, slot: int, maxSize: clonglong): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_skipData ".} =
  type Cb = proc(super: QAbstractSocketskipDataBase, maxSize: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(maxSize: clonglong): auto =
    callVirtualBase_skipData(QAbstractSocket(h: self), maxSize)
  let slotval1 = maxSize


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_writeData(self: QAbstractSocket, data: cstring, len: clonglong): clonglong =


  fQAbstractSocket_virtualbase_writeData(self.h, data, len)

type QAbstractSocketwriteDataBase* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: QAbstractSocket, slot: proc(super: QAbstractSocketwriteDataBase, data: cstring, len: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketwriteDataBase, data: cstring, len: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_writeData(self: ptr cQAbstractSocket, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_writeData ".} =
  type Cb = proc(super: QAbstractSocketwriteDataBase, data: cstring, len: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, len: clonglong): auto =
    callVirtualBase_writeData(QAbstractSocket(h: self), data, len)
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_open(self: QAbstractSocket, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =


  fQAbstractSocket_virtualbase_open(self.h, cint(mode))

type QAbstractSocketopenBase* = proc(mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
proc onopen*(self: QAbstractSocket, slot: proc(super: QAbstractSocketopenBase, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketopenBase, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_open(self: ptr cQAbstractSocket, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QAbstractSocket_open ".} =
  type Cb = proc(super: QAbstractSocketopenBase, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): auto =
    callVirtualBase_open(QAbstractSocket(h: self), mode)
  let slotval1 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(mode)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_pos(self: QAbstractSocket, ): clonglong =


  fQAbstractSocket_virtualbase_pos(self.h)

type QAbstractSocketposBase* = proc(): clonglong
proc onpos*(self: QAbstractSocket, slot: proc(super: QAbstractSocketposBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketposBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_pos(self: ptr cQAbstractSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_pos ".} =
  type Cb = proc(super: QAbstractSocketposBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_pos(QAbstractSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_size(self: QAbstractSocket, ): clonglong =


  fQAbstractSocket_virtualbase_size(self.h)

type QAbstractSocketsizeBase* = proc(): clonglong
proc onsize*(self: QAbstractSocket, slot: proc(super: QAbstractSocketsizeBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketsizeBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_size(self: ptr cQAbstractSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_size ".} =
  type Cb = proc(super: QAbstractSocketsizeBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QAbstractSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_seek(self: QAbstractSocket, pos: clonglong): bool =


  fQAbstractSocket_virtualbase_seek(self.h, pos)

type QAbstractSocketseekBase* = proc(pos: clonglong): bool
proc onseek*(self: QAbstractSocket, slot: proc(super: QAbstractSocketseekBase, pos: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketseekBase, pos: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_seek(self: ptr cQAbstractSocket, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QAbstractSocket_seek ".} =
  type Cb = proc(super: QAbstractSocketseekBase, pos: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: clonglong): auto =
    callVirtualBase_seek(QAbstractSocket(h: self), pos)
  let slotval1 = pos


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_atEnd(self: QAbstractSocket, ): bool =


  fQAbstractSocket_virtualbase_atEnd(self.h)

type QAbstractSocketatEndBase* = proc(): bool
proc onatEnd*(self: QAbstractSocket, slot: proc(super: QAbstractSocketatEndBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketatEndBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_atEnd(self: ptr cQAbstractSocket, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractSocket_atEnd ".} =
  type Cb = proc(super: QAbstractSocketatEndBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_atEnd(QAbstractSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_reset(self: QAbstractSocket, ): bool =


  fQAbstractSocket_virtualbase_reset(self.h)

type QAbstractSocketresetBase* = proc(): bool
proc onreset*(self: QAbstractSocket, slot: proc(super: QAbstractSocketresetBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketresetBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_reset(self: ptr cQAbstractSocket, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractSocket_reset ".} =
  type Cb = proc(super: QAbstractSocketresetBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QAbstractSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_canReadLine(self: QAbstractSocket, ): bool =


  fQAbstractSocket_virtualbase_canReadLine(self.h)

type QAbstractSocketcanReadLineBase* = proc(): bool
proc oncanReadLine*(self: QAbstractSocket, slot: proc(super: QAbstractSocketcanReadLineBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketcanReadLineBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_canReadLine(self: ptr cQAbstractSocket, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractSocket_canReadLine ".} =
  type Cb = proc(super: QAbstractSocketcanReadLineBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_canReadLine(QAbstractSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_event(self: QAbstractSocket, event: gen_qcoreevent.QEvent): bool =


  fQAbstractSocket_virtualbase_event(self.h, event.h)

type QAbstractSocketeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractSocket, slot: proc(super: QAbstractSocketeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_event(self: ptr cQAbstractSocket, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractSocket_event ".} =
  type Cb = proc(super: QAbstractSocketeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAbstractSocket, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractSocketeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractSocket, slot: proc(super: QAbstractSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_eventFilter(self: ptr cQAbstractSocket, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractSocket_eventFilter ".} =
  type Cb = proc(super: QAbstractSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractSocket(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAbstractSocket, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractSocket_virtualbase_timerEvent(self.h, event.h)

type QAbstractSockettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractSocket, slot: proc(super: QAbstractSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_timerEvent(self: ptr cQAbstractSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSocket_timerEvent ".} =
  type Cb = proc(super: QAbstractSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAbstractSocket, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractSocket_virtualbase_childEvent(self.h, event.h)

type QAbstractSocketchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractSocket, slot: proc(super: QAbstractSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_childEvent(self: ptr cQAbstractSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSocket_childEvent ".} =
  type Cb = proc(super: QAbstractSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractSocket, event: gen_qcoreevent.QEvent): void =


  fQAbstractSocket_virtualbase_customEvent(self.h, event.h)

type QAbstractSocketcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractSocket, slot: proc(super: QAbstractSocketcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_customEvent(self: ptr cQAbstractSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSocket_customEvent ".} =
  type Cb = proc(super: QAbstractSocketcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractSocket, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractSocket_virtualbase_connectNotify(self.h, signal.h)

type QAbstractSocketconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractSocket, slot: proc(super: QAbstractSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_connectNotify(self: ptr cQAbstractSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractSocket_connectNotify ".} =
  type Cb = proc(super: QAbstractSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractSocket(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractSocket, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractSocket_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractSocketdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractSocket, slot: proc(super: QAbstractSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_disconnectNotify(self: ptr cQAbstractSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractSocket_disconnectNotify ".} =
  type Cb = proc(super: QAbstractSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractSocket(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAbstractSocket): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAbstractSocket_staticMetaObject())
proc delete*(self: QAbstractSocket) =
  fcQAbstractSocket_delete(self.h)
