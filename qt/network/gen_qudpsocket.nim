import Qt5Network_libs

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

const cflags = gorge("pkg-config -cflags Qt5Network")
{.compile("gen_qudpsocket.cpp", cflags).}


import gen_qudpsocket_types
export gen_qudpsocket_types

import
  gen_qabstractsocket,
  gen_qcoreevent,
  gen_qhostaddress,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qnetworkdatagram,
  gen_qnetworkinterface,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qabstractsocket,
  gen_qcoreevent,
  gen_qhostaddress,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qnetworkdatagram,
  gen_qnetworkinterface,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant

type cQUdpSocket*{.exportc: "QUdpSocket", incompleteStruct.} = object

proc fcQUdpSocket_new(): ptr cQUdpSocket {.importc: "QUdpSocket_new".}
proc fcQUdpSocket_new2(parent: pointer): ptr cQUdpSocket {.importc: "QUdpSocket_new2".}
proc fcQUdpSocket_metaObject(self: pointer, ): pointer {.importc: "QUdpSocket_metaObject".}
proc fcQUdpSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QUdpSocket_metacast".}
proc fcQUdpSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUdpSocket_metacall".}
proc fcQUdpSocket_tr(s: cstring): struct_miqt_string {.importc: "QUdpSocket_tr".}
proc fcQUdpSocket_trUtf8(s: cstring): struct_miqt_string {.importc: "QUdpSocket_trUtf8".}
proc fcQUdpSocket_joinMulticastGroup(self: pointer, groupAddress: pointer): bool {.importc: "QUdpSocket_joinMulticastGroup".}
proc fcQUdpSocket_joinMulticastGroup2(self: pointer, groupAddress: pointer, iface: pointer): bool {.importc: "QUdpSocket_joinMulticastGroup2".}
proc fcQUdpSocket_leaveMulticastGroup(self: pointer, groupAddress: pointer): bool {.importc: "QUdpSocket_leaveMulticastGroup".}
proc fcQUdpSocket_leaveMulticastGroup2(self: pointer, groupAddress: pointer, iface: pointer): bool {.importc: "QUdpSocket_leaveMulticastGroup2".}
proc fcQUdpSocket_multicastInterface(self: pointer, ): pointer {.importc: "QUdpSocket_multicastInterface".}
proc fcQUdpSocket_setMulticastInterface(self: pointer, iface: pointer): void {.importc: "QUdpSocket_setMulticastInterface".}
proc fcQUdpSocket_hasPendingDatagrams(self: pointer, ): bool {.importc: "QUdpSocket_hasPendingDatagrams".}
proc fcQUdpSocket_pendingDatagramSize(self: pointer, ): clonglong {.importc: "QUdpSocket_pendingDatagramSize".}
proc fcQUdpSocket_receiveDatagram(self: pointer, ): pointer {.importc: "QUdpSocket_receiveDatagram".}
proc fcQUdpSocket_readDatagram(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QUdpSocket_readDatagram".}
proc fcQUdpSocket_writeDatagram(self: pointer, datagram: pointer): clonglong {.importc: "QUdpSocket_writeDatagram".}
proc fcQUdpSocket_writeDatagram2(self: pointer, data: cstring, len: clonglong, host: pointer, port: cushort): clonglong {.importc: "QUdpSocket_writeDatagram2".}
proc fcQUdpSocket_writeDatagram3(self: pointer, datagram: struct_miqt_string, host: pointer, port: cushort): clonglong {.importc: "QUdpSocket_writeDatagram3".}
proc fcQUdpSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QUdpSocket_tr2".}
proc fcQUdpSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUdpSocket_tr3".}
proc fcQUdpSocket_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QUdpSocket_trUtf82".}
proc fcQUdpSocket_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUdpSocket_trUtf83".}
proc fcQUdpSocket_receiveDatagram1(self: pointer, maxSize: clonglong): pointer {.importc: "QUdpSocket_receiveDatagram1".}
proc fcQUdpSocket_readDatagram3(self: pointer, data: cstring, maxlen: clonglong, host: pointer): clonglong {.importc: "QUdpSocket_readDatagram3".}
proc fcQUdpSocket_readDatagram4(self: pointer, data: cstring, maxlen: clonglong, host: pointer, port: ptr cushort): clonglong {.importc: "QUdpSocket_readDatagram4".}
proc fQUdpSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QUdpSocket_virtualbase_metacall".}
proc fcQUdpSocket_override_virtual_metacall(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_metacall".}
proc fQUdpSocket_virtualbase_resume(self: pointer, ): void{.importc: "QUdpSocket_virtualbase_resume".}
proc fcQUdpSocket_override_virtual_resume(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_resume".}
proc fQUdpSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void{.importc: "QUdpSocket_virtualbase_connectToHost".}
proc fcQUdpSocket_override_virtual_connectToHost(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_connectToHost".}
proc fQUdpSocket_virtualbase_disconnectFromHost(self: pointer, ): void{.importc: "QUdpSocket_virtualbase_disconnectFromHost".}
proc fcQUdpSocket_override_virtual_disconnectFromHost(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_disconnectFromHost".}
proc fQUdpSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QUdpSocket_virtualbase_bytesAvailable".}
proc fcQUdpSocket_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_bytesAvailable".}
proc fQUdpSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QUdpSocket_virtualbase_bytesToWrite".}
proc fcQUdpSocket_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_bytesToWrite".}
proc fQUdpSocket_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QUdpSocket_virtualbase_canReadLine".}
proc fcQUdpSocket_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_canReadLine".}
proc fQUdpSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void{.importc: "QUdpSocket_virtualbase_setReadBufferSize".}
proc fcQUdpSocket_override_virtual_setReadBufferSize(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_setReadBufferSize".}
proc fQUdpSocket_virtualbase_socketDescriptor(self: pointer, ): uint{.importc: "QUdpSocket_virtualbase_socketDescriptor".}
proc fcQUdpSocket_override_virtual_socketDescriptor(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_socketDescriptor".}
proc fQUdpSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool{.importc: "QUdpSocket_virtualbase_setSocketDescriptor".}
proc fcQUdpSocket_override_virtual_setSocketDescriptor(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_setSocketDescriptor".}
proc fQUdpSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void{.importc: "QUdpSocket_virtualbase_setSocketOption".}
proc fcQUdpSocket_override_virtual_setSocketOption(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_setSocketOption".}
proc fQUdpSocket_virtualbase_socketOption(self: pointer, option: cint): pointer{.importc: "QUdpSocket_virtualbase_socketOption".}
proc fcQUdpSocket_override_virtual_socketOption(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_socketOption".}
proc fQUdpSocket_virtualbase_close(self: pointer, ): void{.importc: "QUdpSocket_virtualbase_close".}
proc fcQUdpSocket_override_virtual_close(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_close".}
proc fQUdpSocket_virtualbase_isSequential(self: pointer, ): bool{.importc: "QUdpSocket_virtualbase_isSequential".}
proc fcQUdpSocket_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_isSequential".}
proc fQUdpSocket_virtualbase_atEnd(self: pointer, ): bool{.importc: "QUdpSocket_virtualbase_atEnd".}
proc fcQUdpSocket_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_atEnd".}
proc fQUdpSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool{.importc: "QUdpSocket_virtualbase_waitForConnected".}
proc fcQUdpSocket_override_virtual_waitForConnected(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_waitForConnected".}
proc fQUdpSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QUdpSocket_virtualbase_waitForReadyRead".}
proc fcQUdpSocket_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_waitForReadyRead".}
proc fQUdpSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QUdpSocket_virtualbase_waitForBytesWritten".}
proc fcQUdpSocket_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_waitForBytesWritten".}
proc fQUdpSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool{.importc: "QUdpSocket_virtualbase_waitForDisconnected".}
proc fcQUdpSocket_override_virtual_waitForDisconnected(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_waitForDisconnected".}
proc fQUdpSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QUdpSocket_virtualbase_readData".}
proc fcQUdpSocket_override_virtual_readData(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_readData".}
proc fQUdpSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QUdpSocket_virtualbase_readLineData".}
proc fcQUdpSocket_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_readLineData".}
proc fQUdpSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QUdpSocket_virtualbase_writeData".}
proc fcQUdpSocket_override_virtual_writeData(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_writeData".}
proc fQUdpSocket_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QUdpSocket_virtualbase_open".}
proc fcQUdpSocket_override_virtual_open(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_open".}
proc fQUdpSocket_virtualbase_pos(self: pointer, ): clonglong{.importc: "QUdpSocket_virtualbase_pos".}
proc fcQUdpSocket_override_virtual_pos(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_pos".}
proc fQUdpSocket_virtualbase_size(self: pointer, ): clonglong{.importc: "QUdpSocket_virtualbase_size".}
proc fcQUdpSocket_override_virtual_size(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_size".}
proc fQUdpSocket_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QUdpSocket_virtualbase_seek".}
proc fcQUdpSocket_override_virtual_seek(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_seek".}
proc fQUdpSocket_virtualbase_reset(self: pointer, ): bool{.importc: "QUdpSocket_virtualbase_reset".}
proc fcQUdpSocket_override_virtual_reset(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_reset".}
proc fQUdpSocket_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QUdpSocket_virtualbase_event".}
proc fcQUdpSocket_override_virtual_event(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_event".}
proc fQUdpSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QUdpSocket_virtualbase_eventFilter".}
proc fcQUdpSocket_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_eventFilter".}
proc fQUdpSocket_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QUdpSocket_virtualbase_timerEvent".}
proc fcQUdpSocket_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_timerEvent".}
proc fQUdpSocket_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QUdpSocket_virtualbase_childEvent".}
proc fcQUdpSocket_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_childEvent".}
proc fQUdpSocket_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QUdpSocket_virtualbase_customEvent".}
proc fcQUdpSocket_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_customEvent".}
proc fQUdpSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QUdpSocket_virtualbase_connectNotify".}
proc fcQUdpSocket_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_connectNotify".}
proc fQUdpSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QUdpSocket_virtualbase_disconnectNotify".}
proc fcQUdpSocket_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_disconnectNotify".}
proc fcQUdpSocket_delete(self: pointer) {.importc: "QUdpSocket_delete".}


func init*(T: type QUdpSocket, h: ptr cQUdpSocket): QUdpSocket =
  T(h: h)
proc create*(T: type QUdpSocket, ): QUdpSocket =

  QUdpSocket.init(fcQUdpSocket_new())
proc create*(T: type QUdpSocket, parent: gen_qobject.QObject): QUdpSocket =

  QUdpSocket.init(fcQUdpSocket_new2(parent.h))
proc metaObject*(self: QUdpSocket, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQUdpSocket_metaObject(self.h))

proc metacast*(self: QUdpSocket, param1: cstring): pointer =

  fcQUdpSocket_metacast(self.h, param1)

proc metacall*(self: QUdpSocket, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQUdpSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QUdpSocket, s: cstring): string =

  let v_ms = fcQUdpSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QUdpSocket, s: cstring): string =

  let v_ms = fcQUdpSocket_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc joinMulticastGroup*(self: QUdpSocket, groupAddress: gen_qhostaddress.QHostAddress): bool =

  fcQUdpSocket_joinMulticastGroup(self.h, groupAddress.h)

proc joinMulticastGroup2*(self: QUdpSocket, groupAddress: gen_qhostaddress.QHostAddress, iface: gen_qnetworkinterface.QNetworkInterface): bool =

  fcQUdpSocket_joinMulticastGroup2(self.h, groupAddress.h, iface.h)

proc leaveMulticastGroup*(self: QUdpSocket, groupAddress: gen_qhostaddress.QHostAddress): bool =

  fcQUdpSocket_leaveMulticastGroup(self.h, groupAddress.h)

proc leaveMulticastGroup2*(self: QUdpSocket, groupAddress: gen_qhostaddress.QHostAddress, iface: gen_qnetworkinterface.QNetworkInterface): bool =

  fcQUdpSocket_leaveMulticastGroup2(self.h, groupAddress.h, iface.h)

proc multicastInterface*(self: QUdpSocket, ): gen_qnetworkinterface.QNetworkInterface =

  gen_qnetworkinterface.QNetworkInterface(h: fcQUdpSocket_multicastInterface(self.h))

proc setMulticastInterface*(self: QUdpSocket, iface: gen_qnetworkinterface.QNetworkInterface): void =

  fcQUdpSocket_setMulticastInterface(self.h, iface.h)

proc hasPendingDatagrams*(self: QUdpSocket, ): bool =

  fcQUdpSocket_hasPendingDatagrams(self.h)

proc pendingDatagramSize*(self: QUdpSocket, ): clonglong =

  fcQUdpSocket_pendingDatagramSize(self.h)

proc receiveDatagram*(self: QUdpSocket, ): gen_qnetworkdatagram.QNetworkDatagram =

  gen_qnetworkdatagram.QNetworkDatagram(h: fcQUdpSocket_receiveDatagram(self.h))

proc readDatagram*(self: QUdpSocket, data: cstring, maxlen: clonglong): clonglong =

  fcQUdpSocket_readDatagram(self.h, data, maxlen)

proc writeDatagram*(self: QUdpSocket, datagram: gen_qnetworkdatagram.QNetworkDatagram): clonglong =

  fcQUdpSocket_writeDatagram(self.h, datagram.h)

proc writeDatagram2*(self: QUdpSocket, data: cstring, len: clonglong, host: gen_qhostaddress.QHostAddress, port: cushort): clonglong =

  fcQUdpSocket_writeDatagram2(self.h, data, len, host.h, port)

proc writeDatagram3*(self: QUdpSocket, datagram: seq[byte], host: gen_qhostaddress.QHostAddress, port: cushort): clonglong =

  fcQUdpSocket_writeDatagram3(self.h, struct_miqt_string(data: cast[cstring](if len(datagram) == 0: nil else: unsafeAddr datagram[0]), len: csize_t(len(datagram))), host.h, port)

proc tr2*(_: type QUdpSocket, s: cstring, c: cstring): string =

  let v_ms = fcQUdpSocket_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QUdpSocket, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQUdpSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QUdpSocket, s: cstring, c: cstring): string =

  let v_ms = fcQUdpSocket_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QUdpSocket, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQUdpSocket_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc receiveDatagram1*(self: QUdpSocket, maxSize: clonglong): gen_qnetworkdatagram.QNetworkDatagram =

  gen_qnetworkdatagram.QNetworkDatagram(h: fcQUdpSocket_receiveDatagram1(self.h, maxSize))

proc readDatagram3*(self: QUdpSocket, data: cstring, maxlen: clonglong, host: gen_qhostaddress.QHostAddress): clonglong =

  fcQUdpSocket_readDatagram3(self.h, data, maxlen, host.h)

proc readDatagram4*(self: QUdpSocket, data: cstring, maxlen: clonglong, host: gen_qhostaddress.QHostAddress, port: ptr cushort): clonglong =

  fcQUdpSocket_readDatagram4(self.h, data, maxlen, host.h, port)

proc callVirtualBase_metacall(self: QUdpSocket, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQUdpSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QUdpSocketmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QUdpSocket, slot: proc(super: QUdpSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_metacall(self: ptr cQUdpSocket, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QUdpSocket_metacall ".} =
  type Cb = proc(super: QUdpSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QUdpSocket(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_resume(self: QUdpSocket, ): void =


  fQUdpSocket_virtualbase_resume(self.h)

type QUdpSocketresumeBase* = proc(): void
proc onresume*(self: QUdpSocket, slot: proc(super: QUdpSocketresumeBase): void) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketresumeBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_resume(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_resume(self: ptr cQUdpSocket, slot: int): void {.exportc: "miqt_exec_callback_QUdpSocket_resume ".} =
  type Cb = proc(super: QUdpSocketresumeBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_resume(QUdpSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_connectToHost(self: QUdpSocket, hostName: string, port: cushort, mode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void =


  fQUdpSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

type QUdpSocketconnectToHostBase* = proc(hostName: string, port: cushort, mode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void
proc onconnectToHost*(self: QUdpSocket, slot: proc(super: QUdpSocketconnectToHostBase, hostName: string, port: cushort, mode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketconnectToHostBase, hostName: string, port: cushort, mode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_connectToHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_connectToHost(self: ptr cQUdpSocket, slot: int, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.exportc: "miqt_exec_callback_QUdpSocket_connectToHost ".} =
  type Cb = proc(super: QUdpSocketconnectToHostBase, hostName: string, port: cushort, mode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(hostName: string, port: cushort, mode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): auto =
    callVirtualBase_connectToHost(QUdpSocket(h: self), hostName, port, mode, protocol)
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret

  let slotval2 = port

  let slotval3 = gen_qiodevice.QIODeviceOpenModeFlag(mode)

  let slotval4 = gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol(protocol)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_disconnectFromHost(self: QUdpSocket, ): void =


  fQUdpSocket_virtualbase_disconnectFromHost(self.h)

type QUdpSocketdisconnectFromHostBase* = proc(): void
proc ondisconnectFromHost*(self: QUdpSocket, slot: proc(super: QUdpSocketdisconnectFromHostBase): void) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketdisconnectFromHostBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_disconnectFromHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_disconnectFromHost(self: ptr cQUdpSocket, slot: int): void {.exportc: "miqt_exec_callback_QUdpSocket_disconnectFromHost ".} =
  type Cb = proc(super: QUdpSocketdisconnectFromHostBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_disconnectFromHost(QUdpSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_bytesAvailable(self: QUdpSocket, ): clonglong =


  fQUdpSocket_virtualbase_bytesAvailable(self.h)

type QUdpSocketbytesAvailableBase* = proc(): clonglong
proc onbytesAvailable*(self: QUdpSocket, slot: proc(super: QUdpSocketbytesAvailableBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketbytesAvailableBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_bytesAvailable(self: ptr cQUdpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QUdpSocket_bytesAvailable ".} =
  type Cb = proc(super: QUdpSocketbytesAvailableBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesAvailable(QUdpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesToWrite(self: QUdpSocket, ): clonglong =


  fQUdpSocket_virtualbase_bytesToWrite(self.h)

type QUdpSocketbytesToWriteBase* = proc(): clonglong
proc onbytesToWrite*(self: QUdpSocket, slot: proc(super: QUdpSocketbytesToWriteBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketbytesToWriteBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_bytesToWrite(self: ptr cQUdpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QUdpSocket_bytesToWrite ".} =
  type Cb = proc(super: QUdpSocketbytesToWriteBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesToWrite(QUdpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_canReadLine(self: QUdpSocket, ): bool =


  fQUdpSocket_virtualbase_canReadLine(self.h)

type QUdpSocketcanReadLineBase* = proc(): bool
proc oncanReadLine*(self: QUdpSocket, slot: proc(super: QUdpSocketcanReadLineBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketcanReadLineBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_canReadLine(self: ptr cQUdpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QUdpSocket_canReadLine ".} =
  type Cb = proc(super: QUdpSocketcanReadLineBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_canReadLine(QUdpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setReadBufferSize(self: QUdpSocket, size: clonglong): void =


  fQUdpSocket_virtualbase_setReadBufferSize(self.h, size)

type QUdpSocketsetReadBufferSizeBase* = proc(size: clonglong): void
proc onsetReadBufferSize*(self: QUdpSocket, slot: proc(super: QUdpSocketsetReadBufferSizeBase, size: clonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketsetReadBufferSizeBase, size: clonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_setReadBufferSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_setReadBufferSize(self: ptr cQUdpSocket, slot: int, size: clonglong): void {.exportc: "miqt_exec_callback_QUdpSocket_setReadBufferSize ".} =
  type Cb = proc(super: QUdpSocketsetReadBufferSizeBase, size: clonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(size: clonglong): auto =
    callVirtualBase_setReadBufferSize(QUdpSocket(h: self), size)
  let slotval1 = size


  nimfunc[](superCall, slotval1)
proc callVirtualBase_socketDescriptor(self: QUdpSocket, ): uint =


  fQUdpSocket_virtualbase_socketDescriptor(self.h)

type QUdpSocketsocketDescriptorBase* = proc(): uint
proc onsocketDescriptor*(self: QUdpSocket, slot: proc(super: QUdpSocketsocketDescriptorBase): uint) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketsocketDescriptorBase): uint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_socketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_socketDescriptor(self: ptr cQUdpSocket, slot: int): uint {.exportc: "miqt_exec_callback_QUdpSocket_socketDescriptor ".} =
  type Cb = proc(super: QUdpSocketsocketDescriptorBase): uint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_socketDescriptor(QUdpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setSocketDescriptor(self: QUdpSocket, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevice.QIODeviceOpenModeFlag): bool =


  fQUdpSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

type QUdpSocketsetSocketDescriptorBase* = proc(socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevice.QIODeviceOpenModeFlag): bool
proc onsetSocketDescriptor*(self: QUdpSocket, slot: proc(super: QUdpSocketsetSocketDescriptorBase, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevice.QIODeviceOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketsetSocketDescriptorBase, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevice.QIODeviceOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_setSocketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_setSocketDescriptor(self: ptr cQUdpSocket, slot: int, socketDescriptor: uint, state: cint, openMode: cint): bool {.exportc: "miqt_exec_callback_QUdpSocket_setSocketDescriptor ".} =
  type Cb = proc(super: QUdpSocketsetSocketDescriptorBase, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevice.QIODeviceOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevice.QIODeviceOpenModeFlag): auto =
    callVirtualBase_setSocketDescriptor(QUdpSocket(h: self), socketDescriptor, state, openMode)
  let slotval1 = socketDescriptor

  let slotval2 = gen_qabstractsocket.QAbstractSocketSocketState(state)

  let slotval3 = gen_qiodevice.QIODeviceOpenModeFlag(openMode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setSocketOption(self: QUdpSocket, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void =


  fQUdpSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

type QUdpSocketsetSocketOptionBase* = proc(option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
proc onsetSocketOption*(self: QUdpSocket, slot: proc(super: QUdpSocketsetSocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketsetSocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_setSocketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_setSocketOption(self: ptr cQUdpSocket, slot: int, option: cint, value: pointer): void {.exportc: "miqt_exec_callback_QUdpSocket_setSocketOption ".} =
  type Cb = proc(super: QUdpSocketsetSocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): auto =
    callVirtualBase_setSocketOption(QUdpSocket(h: self), option, value)
  let slotval1 = gen_qabstractsocket.QAbstractSocketSocketOption(option)

  let slotval2 = gen_qvariant.QVariant(h: value)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_socketOption(self: QUdpSocket, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQUdpSocket_virtualbase_socketOption(self.h, cint(option)))

type QUdpSocketsocketOptionBase* = proc(option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant
proc onsocketOption*(self: QUdpSocket, slot: proc(super: QUdpSocketsocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketsocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_socketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_socketOption(self: ptr cQUdpSocket, slot: int, option: cint): pointer {.exportc: "miqt_exec_callback_QUdpSocket_socketOption ".} =
  type Cb = proc(super: QUdpSocketsocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qabstractsocket.QAbstractSocketSocketOption): auto =
    callVirtualBase_socketOption(QUdpSocket(h: self), option)
  let slotval1 = gen_qabstractsocket.QAbstractSocketSocketOption(option)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_close(self: QUdpSocket, ): void =


  fQUdpSocket_virtualbase_close(self.h)

type QUdpSocketcloseBase* = proc(): void
proc onclose*(self: QUdpSocket, slot: proc(super: QUdpSocketcloseBase): void) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketcloseBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_close(self: ptr cQUdpSocket, slot: int): void {.exportc: "miqt_exec_callback_QUdpSocket_close ".} =
  type Cb = proc(super: QUdpSocketcloseBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_close(QUdpSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_isSequential(self: QUdpSocket, ): bool =


  fQUdpSocket_virtualbase_isSequential(self.h)

type QUdpSocketisSequentialBase* = proc(): bool
proc onisSequential*(self: QUdpSocket, slot: proc(super: QUdpSocketisSequentialBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketisSequentialBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_isSequential(self: ptr cQUdpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QUdpSocket_isSequential ".} =
  type Cb = proc(super: QUdpSocketisSequentialBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSequential(QUdpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_atEnd(self: QUdpSocket, ): bool =


  fQUdpSocket_virtualbase_atEnd(self.h)

type QUdpSocketatEndBase* = proc(): bool
proc onatEnd*(self: QUdpSocket, slot: proc(super: QUdpSocketatEndBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketatEndBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_atEnd(self: ptr cQUdpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QUdpSocket_atEnd ".} =
  type Cb = proc(super: QUdpSocketatEndBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_atEnd(QUdpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_waitForConnected(self: QUdpSocket, msecs: cint): bool =


  fQUdpSocket_virtualbase_waitForConnected(self.h, msecs)

type QUdpSocketwaitForConnectedBase* = proc(msecs: cint): bool
proc onwaitForConnected*(self: QUdpSocket, slot: proc(super: QUdpSocketwaitForConnectedBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketwaitForConnectedBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_waitForConnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_waitForConnected(self: ptr cQUdpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QUdpSocket_waitForConnected ".} =
  type Cb = proc(super: QUdpSocketwaitForConnectedBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForConnected(QUdpSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForReadyRead(self: QUdpSocket, msecs: cint): bool =


  fQUdpSocket_virtualbase_waitForReadyRead(self.h, msecs)

type QUdpSocketwaitForReadyReadBase* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: QUdpSocket, slot: proc(super: QUdpSocketwaitForReadyReadBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketwaitForReadyReadBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_waitForReadyRead(self: ptr cQUdpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QUdpSocket_waitForReadyRead ".} =
  type Cb = proc(super: QUdpSocketwaitForReadyReadBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForReadyRead(QUdpSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForBytesWritten(self: QUdpSocket, msecs: cint): bool =


  fQUdpSocket_virtualbase_waitForBytesWritten(self.h, msecs)

type QUdpSocketwaitForBytesWrittenBase* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: QUdpSocket, slot: proc(super: QUdpSocketwaitForBytesWrittenBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketwaitForBytesWrittenBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_waitForBytesWritten(self: ptr cQUdpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QUdpSocket_waitForBytesWritten ".} =
  type Cb = proc(super: QUdpSocketwaitForBytesWrittenBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForBytesWritten(QUdpSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForDisconnected(self: QUdpSocket, msecs: cint): bool =


  fQUdpSocket_virtualbase_waitForDisconnected(self.h, msecs)

type QUdpSocketwaitForDisconnectedBase* = proc(msecs: cint): bool
proc onwaitForDisconnected*(self: QUdpSocket, slot: proc(super: QUdpSocketwaitForDisconnectedBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketwaitForDisconnectedBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_waitForDisconnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_waitForDisconnected(self: ptr cQUdpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QUdpSocket_waitForDisconnected ".} =
  type Cb = proc(super: QUdpSocketwaitForDisconnectedBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForDisconnected(QUdpSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_readData(self: QUdpSocket, data: cstring, maxlen: clonglong): clonglong =


  fQUdpSocket_virtualbase_readData(self.h, data, maxlen)

type QUdpSocketreadDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: QUdpSocket, slot: proc(super: QUdpSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_readData(self: ptr cQUdpSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QUdpSocket_readData ".} =
  type Cb = proc(super: QUdpSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readData(QUdpSocket(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_readLineData(self: QUdpSocket, data: cstring, maxlen: clonglong): clonglong =


  fQUdpSocket_virtualbase_readLineData(self.h, data, maxlen)

type QUdpSocketreadLineDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: QUdpSocket, slot: proc(super: QUdpSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_readLineData(self: ptr cQUdpSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QUdpSocket_readLineData ".} =
  type Cb = proc(super: QUdpSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readLineData(QUdpSocket(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeData(self: QUdpSocket, data: cstring, len: clonglong): clonglong =


  fQUdpSocket_virtualbase_writeData(self.h, data, len)

type QUdpSocketwriteDataBase* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: QUdpSocket, slot: proc(super: QUdpSocketwriteDataBase, data: cstring, len: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketwriteDataBase, data: cstring, len: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_writeData(self: ptr cQUdpSocket, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QUdpSocket_writeData ".} =
  type Cb = proc(super: QUdpSocketwriteDataBase, data: cstring, len: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, len: clonglong): auto =
    callVirtualBase_writeData(QUdpSocket(h: self), data, len)
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_open(self: QUdpSocket, mode: gen_qiodevice.QIODeviceOpenModeFlag): bool =


  fQUdpSocket_virtualbase_open(self.h, cint(mode))

type QUdpSocketopenBase* = proc(mode: gen_qiodevice.QIODeviceOpenModeFlag): bool
proc onopen*(self: QUdpSocket, slot: proc(super: QUdpSocketopenBase, mode: gen_qiodevice.QIODeviceOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketopenBase, mode: gen_qiodevice.QIODeviceOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_open(self: ptr cQUdpSocket, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QUdpSocket_open ".} =
  type Cb = proc(super: QUdpSocketopenBase, mode: gen_qiodevice.QIODeviceOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mode: gen_qiodevice.QIODeviceOpenModeFlag): auto =
    callVirtualBase_open(QUdpSocket(h: self), mode)
  let slotval1 = gen_qiodevice.QIODeviceOpenModeFlag(mode)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_pos(self: QUdpSocket, ): clonglong =


  fQUdpSocket_virtualbase_pos(self.h)

type QUdpSocketposBase* = proc(): clonglong
proc onpos*(self: QUdpSocket, slot: proc(super: QUdpSocketposBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketposBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_pos(self: ptr cQUdpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QUdpSocket_pos ".} =
  type Cb = proc(super: QUdpSocketposBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_pos(QUdpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_size(self: QUdpSocket, ): clonglong =


  fQUdpSocket_virtualbase_size(self.h)

type QUdpSocketsizeBase* = proc(): clonglong
proc onsize*(self: QUdpSocket, slot: proc(super: QUdpSocketsizeBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketsizeBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_size(self: ptr cQUdpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QUdpSocket_size ".} =
  type Cb = proc(super: QUdpSocketsizeBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QUdpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_seek(self: QUdpSocket, pos: clonglong): bool =


  fQUdpSocket_virtualbase_seek(self.h, pos)

type QUdpSocketseekBase* = proc(pos: clonglong): bool
proc onseek*(self: QUdpSocket, slot: proc(super: QUdpSocketseekBase, pos: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketseekBase, pos: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_seek(self: ptr cQUdpSocket, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QUdpSocket_seek ".} =
  type Cb = proc(super: QUdpSocketseekBase, pos: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: clonglong): auto =
    callVirtualBase_seek(QUdpSocket(h: self), pos)
  let slotval1 = pos


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_reset(self: QUdpSocket, ): bool =


  fQUdpSocket_virtualbase_reset(self.h)

type QUdpSocketresetBase* = proc(): bool
proc onreset*(self: QUdpSocket, slot: proc(super: QUdpSocketresetBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketresetBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_reset(self: ptr cQUdpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QUdpSocket_reset ".} =
  type Cb = proc(super: QUdpSocketresetBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QUdpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_event(self: QUdpSocket, event: gen_qcoreevent.QEvent): bool =


  fQUdpSocket_virtualbase_event(self.h, event.h)

type QUdpSocketeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QUdpSocket, slot: proc(super: QUdpSocketeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_event(self: ptr cQUdpSocket, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QUdpSocket_event ".} =
  type Cb = proc(super: QUdpSocketeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QUdpSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QUdpSocket, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQUdpSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

type QUdpSocketeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QUdpSocket, slot: proc(super: QUdpSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_eventFilter(self: ptr cQUdpSocket, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QUdpSocket_eventFilter ".} =
  type Cb = proc(super: QUdpSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QUdpSocket(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QUdpSocket, event: gen_qcoreevent.QTimerEvent): void =


  fQUdpSocket_virtualbase_timerEvent(self.h, event.h)

type QUdpSockettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QUdpSocket, slot: proc(super: QUdpSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUdpSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_timerEvent(self: ptr cQUdpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUdpSocket_timerEvent ".} =
  type Cb = proc(super: QUdpSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QUdpSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QUdpSocket, event: gen_qcoreevent.QChildEvent): void =


  fQUdpSocket_virtualbase_childEvent(self.h, event.h)

type QUdpSocketchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QUdpSocket, slot: proc(super: QUdpSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_childEvent(self: ptr cQUdpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUdpSocket_childEvent ".} =
  type Cb = proc(super: QUdpSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QUdpSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QUdpSocket, event: gen_qcoreevent.QEvent): void =


  fQUdpSocket_virtualbase_customEvent(self.h, event.h)

type QUdpSocketcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QUdpSocket, slot: proc(super: QUdpSocketcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_customEvent(self: ptr cQUdpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUdpSocket_customEvent ".} =
  type Cb = proc(super: QUdpSocketcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QUdpSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QUdpSocket, signal: gen_qmetaobject.QMetaMethod): void =


  fQUdpSocket_virtualbase_connectNotify(self.h, signal.h)

type QUdpSocketconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QUdpSocket, slot: proc(super: QUdpSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_connectNotify(self: ptr cQUdpSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUdpSocket_connectNotify ".} =
  type Cb = proc(super: QUdpSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QUdpSocket(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QUdpSocket, signal: gen_qmetaobject.QMetaMethod): void =


  fQUdpSocket_virtualbase_disconnectNotify(self.h, signal.h)

type QUdpSocketdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QUdpSocket, slot: proc(super: QUdpSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QUdpSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_disconnectNotify(self: ptr cQUdpSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUdpSocket_disconnectNotify ".} =
  type Cb = proc(super: QUdpSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QUdpSocket(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QUdpSocket) =
  fcQUdpSocket_delete(self.h)
