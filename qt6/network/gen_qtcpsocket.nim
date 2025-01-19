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
{.compile("gen_qtcpsocket.cpp", cflags).}


import gen_qtcpsocket_types
export gen_qtcpsocket_types

import
  gen_qabstractsocket,
  gen_qcoreevent,
  gen_qhostaddress,
  gen_qiodevicebase,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qabstractsocket,
  gen_qcoreevent,
  gen_qhostaddress,
  gen_qiodevicebase,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant

type cQTcpSocket*{.exportc: "QTcpSocket", incompleteStruct.} = object

proc fcQTcpSocket_new(): ptr cQTcpSocket {.importc: "QTcpSocket_new".}
proc fcQTcpSocket_new2(parent: pointer): ptr cQTcpSocket {.importc: "QTcpSocket_new2".}
proc fcQTcpSocket_metaObject(self: pointer, ): pointer {.importc: "QTcpSocket_metaObject".}
proc fcQTcpSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QTcpSocket_metacast".}
proc fcQTcpSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTcpSocket_metacall".}
proc fcQTcpSocket_tr(s: cstring): struct_miqt_string {.importc: "QTcpSocket_tr".}
proc fcQTcpSocket_bindX(self: pointer, addrVal: cint): bool {.importc: "QTcpSocket_bind".}
proc fcQTcpSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTcpSocket_tr2".}
proc fcQTcpSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTcpSocket_tr3".}
proc fcQTcpSocket_bind2(self: pointer, addrVal: cint, port: cushort): bool {.importc: "QTcpSocket_bind2".}
proc fcQTcpSocket_bind3(self: pointer, addrVal: cint, port: cushort, mode: cint): bool {.importc: "QTcpSocket_bind3".}
proc fQTcpSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTcpSocket_virtualbase_metacall".}
proc fcQTcpSocket_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_metacall".}
proc fQTcpSocket_virtualbase_resume(self: pointer, ): void{.importc: "QTcpSocket_virtualbase_resume".}
proc fcQTcpSocket_override_virtual_resume(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_resume".}
proc fQTcpSocket_virtualbase_bind(self: pointer, address: pointer, port: cushort, mode: cint): bool{.importc: "QTcpSocket_virtualbase_bind".}
proc fcQTcpSocket_override_virtual_bindX(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_bind".}
proc fQTcpSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void{.importc: "QTcpSocket_virtualbase_connectToHost".}
proc fcQTcpSocket_override_virtual_connectToHost(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_connectToHost".}
proc fQTcpSocket_virtualbase_disconnectFromHost(self: pointer, ): void{.importc: "QTcpSocket_virtualbase_disconnectFromHost".}
proc fcQTcpSocket_override_virtual_disconnectFromHost(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_disconnectFromHost".}
proc fQTcpSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QTcpSocket_virtualbase_bytesAvailable".}
proc fcQTcpSocket_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_bytesAvailable".}
proc fQTcpSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QTcpSocket_virtualbase_bytesToWrite".}
proc fcQTcpSocket_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_bytesToWrite".}
proc fQTcpSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void{.importc: "QTcpSocket_virtualbase_setReadBufferSize".}
proc fcQTcpSocket_override_virtual_setReadBufferSize(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_setReadBufferSize".}
proc fQTcpSocket_virtualbase_socketDescriptor(self: pointer, ): uint{.importc: "QTcpSocket_virtualbase_socketDescriptor".}
proc fcQTcpSocket_override_virtual_socketDescriptor(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_socketDescriptor".}
proc fQTcpSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool{.importc: "QTcpSocket_virtualbase_setSocketDescriptor".}
proc fcQTcpSocket_override_virtual_setSocketDescriptor(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_setSocketDescriptor".}
proc fQTcpSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void{.importc: "QTcpSocket_virtualbase_setSocketOption".}
proc fcQTcpSocket_override_virtual_setSocketOption(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_setSocketOption".}
proc fQTcpSocket_virtualbase_socketOption(self: pointer, option: cint): pointer{.importc: "QTcpSocket_virtualbase_socketOption".}
proc fcQTcpSocket_override_virtual_socketOption(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_socketOption".}
proc fQTcpSocket_virtualbase_close(self: pointer, ): void{.importc: "QTcpSocket_virtualbase_close".}
proc fcQTcpSocket_override_virtual_close(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_close".}
proc fQTcpSocket_virtualbase_isSequential(self: pointer, ): bool{.importc: "QTcpSocket_virtualbase_isSequential".}
proc fcQTcpSocket_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_isSequential".}
proc fQTcpSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool{.importc: "QTcpSocket_virtualbase_waitForConnected".}
proc fcQTcpSocket_override_virtual_waitForConnected(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_waitForConnected".}
proc fQTcpSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QTcpSocket_virtualbase_waitForReadyRead".}
proc fcQTcpSocket_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_waitForReadyRead".}
proc fQTcpSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QTcpSocket_virtualbase_waitForBytesWritten".}
proc fcQTcpSocket_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_waitForBytesWritten".}
proc fQTcpSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool{.importc: "QTcpSocket_virtualbase_waitForDisconnected".}
proc fcQTcpSocket_override_virtual_waitForDisconnected(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_waitForDisconnected".}
proc fQTcpSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QTcpSocket_virtualbase_readData".}
proc fcQTcpSocket_override_virtual_readData(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_readData".}
proc fQTcpSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QTcpSocket_virtualbase_readLineData".}
proc fcQTcpSocket_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_readLineData".}
proc fQTcpSocket_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong{.importc: "QTcpSocket_virtualbase_skipData".}
proc fcQTcpSocket_override_virtual_skipData(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_skipData".}
proc fQTcpSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QTcpSocket_virtualbase_writeData".}
proc fcQTcpSocket_override_virtual_writeData(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_writeData".}
proc fQTcpSocket_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QTcpSocket_virtualbase_open".}
proc fcQTcpSocket_override_virtual_open(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_open".}
proc fQTcpSocket_virtualbase_pos(self: pointer, ): clonglong{.importc: "QTcpSocket_virtualbase_pos".}
proc fcQTcpSocket_override_virtual_pos(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_pos".}
proc fQTcpSocket_virtualbase_size(self: pointer, ): clonglong{.importc: "QTcpSocket_virtualbase_size".}
proc fcQTcpSocket_override_virtual_size(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_size".}
proc fQTcpSocket_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QTcpSocket_virtualbase_seek".}
proc fcQTcpSocket_override_virtual_seek(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_seek".}
proc fQTcpSocket_virtualbase_atEnd(self: pointer, ): bool{.importc: "QTcpSocket_virtualbase_atEnd".}
proc fcQTcpSocket_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_atEnd".}
proc fQTcpSocket_virtualbase_reset(self: pointer, ): bool{.importc: "QTcpSocket_virtualbase_reset".}
proc fcQTcpSocket_override_virtual_reset(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_reset".}
proc fQTcpSocket_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QTcpSocket_virtualbase_canReadLine".}
proc fcQTcpSocket_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_canReadLine".}
proc fQTcpSocket_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTcpSocket_virtualbase_event".}
proc fcQTcpSocket_override_virtual_event(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_event".}
proc fQTcpSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTcpSocket_virtualbase_eventFilter".}
proc fcQTcpSocket_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_eventFilter".}
proc fQTcpSocket_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTcpSocket_virtualbase_timerEvent".}
proc fcQTcpSocket_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_timerEvent".}
proc fQTcpSocket_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTcpSocket_virtualbase_childEvent".}
proc fcQTcpSocket_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_childEvent".}
proc fQTcpSocket_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTcpSocket_virtualbase_customEvent".}
proc fcQTcpSocket_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_customEvent".}
proc fQTcpSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTcpSocket_virtualbase_connectNotify".}
proc fcQTcpSocket_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_connectNotify".}
proc fQTcpSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTcpSocket_virtualbase_disconnectNotify".}
proc fcQTcpSocket_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_disconnectNotify".}
proc fcQTcpSocket_staticMetaObject(): pointer {.importc: "QTcpSocket_staticMetaObject".}
proc fcQTcpSocket_delete(self: pointer) {.importc: "QTcpSocket_delete".}


func init*(T: type QTcpSocket, h: ptr cQTcpSocket): QTcpSocket =
  T(h: h)
proc create*(T: type QTcpSocket, ): QTcpSocket =

  QTcpSocket.init(fcQTcpSocket_new())
proc create*(T: type QTcpSocket, parent: gen_qobject.QObject): QTcpSocket =

  QTcpSocket.init(fcQTcpSocket_new2(parent.h))
proc metaObject*(self: QTcpSocket, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTcpSocket_metaObject(self.h))

proc metacast*(self: QTcpSocket, param1: cstring): pointer =

  fcQTcpSocket_metacast(self.h, param1)

proc metacall*(self: QTcpSocket, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTcpSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTcpSocket, s: cstring): string =

  let v_ms = fcQTcpSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc bindX*(self: QTcpSocket, addrVal: gen_qhostaddress.QHostAddressSpecialAddress): bool =

  fcQTcpSocket_bindX(self.h, cint(addrVal))

proc tr2*(_: type QTcpSocket, s: cstring, c: cstring): string =

  let v_ms = fcQTcpSocket_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTcpSocket, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTcpSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc bind2*(self: QTcpSocket, addrVal: gen_qhostaddress.QHostAddressSpecialAddress, port: cushort): bool =

  fcQTcpSocket_bind2(self.h, cint(addrVal), port)

proc bind3*(self: QTcpSocket, addrVal: gen_qhostaddress.QHostAddressSpecialAddress, port: cushort, mode: gen_qabstractsocket.QAbstractSocketBindFlag): bool =

  fcQTcpSocket_bind3(self.h, cint(addrVal), port, cint(mode))

proc callVirtualBase_metacall(self: QTcpSocket, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTcpSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTcpSocketmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTcpSocket, slot: proc(super: QTcpSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_metacall(self: ptr cQTcpSocket, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTcpSocket_metacall ".} =
  type Cb = proc(super: QTcpSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTcpSocket(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_resume(self: QTcpSocket, ): void =


  fQTcpSocket_virtualbase_resume(self.h)

type QTcpSocketresumeBase* = proc(): void
proc onresume*(self: QTcpSocket, slot: proc(super: QTcpSocketresumeBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketresumeBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_resume(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_resume(self: ptr cQTcpSocket, slot: int): void {.exportc: "miqt_exec_callback_QTcpSocket_resume ".} =
  type Cb = proc(super: QTcpSocketresumeBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_resume(QTcpSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_bindX(self: QTcpSocket, address: gen_qhostaddress.QHostAddress, port: cushort, mode: gen_qabstractsocket.QAbstractSocketBindFlag): bool =


  fQTcpSocket_virtualbase_bind(self.h, address.h, port, cint(mode))

type QTcpSocketbindXBase* = proc(address: gen_qhostaddress.QHostAddress, port: cushort, mode: gen_qabstractsocket.QAbstractSocketBindFlag): bool
proc onbindX*(self: QTcpSocket, slot: proc(super: QTcpSocketbindXBase, address: gen_qhostaddress.QHostAddress, port: cushort, mode: gen_qabstractsocket.QAbstractSocketBindFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketbindXBase, address: gen_qhostaddress.QHostAddress, port: cushort, mode: gen_qabstractsocket.QAbstractSocketBindFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_bindX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_bind(self: ptr cQTcpSocket, slot: int, address: pointer, port: cushort, mode: cint): bool {.exportc: "miqt_exec_callback_QTcpSocket_bind ".} =
  type Cb = proc(super: QTcpSocketbindXBase, address: gen_qhostaddress.QHostAddress, port: cushort, mode: gen_qabstractsocket.QAbstractSocketBindFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(address: gen_qhostaddress.QHostAddress, port: cushort, mode: gen_qabstractsocket.QAbstractSocketBindFlag): auto =
    callVirtualBase_bindX(QTcpSocket(h: self), address, port, mode)
  let slotval1 = gen_qhostaddress.QHostAddress(h: address)

  let slotval2 = port

  let slotval3 = gen_qabstractsocket.QAbstractSocketBindFlag(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_connectToHost(self: QTcpSocket, hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void =


  fQTcpSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

type QTcpSocketconnectToHostBase* = proc(hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void
proc onconnectToHost*(self: QTcpSocket, slot: proc(super: QTcpSocketconnectToHostBase, hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketconnectToHostBase, hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_connectToHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_connectToHost(self: ptr cQTcpSocket, slot: int, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.exportc: "miqt_exec_callback_QTcpSocket_connectToHost ".} =
  type Cb = proc(super: QTcpSocketconnectToHostBase, hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): auto =
    callVirtualBase_connectToHost(QTcpSocket(h: self), hostName, port, mode, protocol)
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret

  let slotval2 = port

  let slotval3 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(mode)

  let slotval4 = gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol(protocol)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_disconnectFromHost(self: QTcpSocket, ): void =


  fQTcpSocket_virtualbase_disconnectFromHost(self.h)

type QTcpSocketdisconnectFromHostBase* = proc(): void
proc ondisconnectFromHost*(self: QTcpSocket, slot: proc(super: QTcpSocketdisconnectFromHostBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketdisconnectFromHostBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_disconnectFromHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_disconnectFromHost(self: ptr cQTcpSocket, slot: int): void {.exportc: "miqt_exec_callback_QTcpSocket_disconnectFromHost ".} =
  type Cb = proc(super: QTcpSocketdisconnectFromHostBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_disconnectFromHost(QTcpSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_bytesAvailable(self: QTcpSocket, ): clonglong =


  fQTcpSocket_virtualbase_bytesAvailable(self.h)

type QTcpSocketbytesAvailableBase* = proc(): clonglong
proc onbytesAvailable*(self: QTcpSocket, slot: proc(super: QTcpSocketbytesAvailableBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketbytesAvailableBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_bytesAvailable(self: ptr cQTcpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_bytesAvailable ".} =
  type Cb = proc(super: QTcpSocketbytesAvailableBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesAvailable(QTcpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesToWrite(self: QTcpSocket, ): clonglong =


  fQTcpSocket_virtualbase_bytesToWrite(self.h)

type QTcpSocketbytesToWriteBase* = proc(): clonglong
proc onbytesToWrite*(self: QTcpSocket, slot: proc(super: QTcpSocketbytesToWriteBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketbytesToWriteBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_bytesToWrite(self: ptr cQTcpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_bytesToWrite ".} =
  type Cb = proc(super: QTcpSocketbytesToWriteBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesToWrite(QTcpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setReadBufferSize(self: QTcpSocket, size: clonglong): void =


  fQTcpSocket_virtualbase_setReadBufferSize(self.h, size)

type QTcpSocketsetReadBufferSizeBase* = proc(size: clonglong): void
proc onsetReadBufferSize*(self: QTcpSocket, slot: proc(super: QTcpSocketsetReadBufferSizeBase, size: clonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketsetReadBufferSizeBase, size: clonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_setReadBufferSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_setReadBufferSize(self: ptr cQTcpSocket, slot: int, size: clonglong): void {.exportc: "miqt_exec_callback_QTcpSocket_setReadBufferSize ".} =
  type Cb = proc(super: QTcpSocketsetReadBufferSizeBase, size: clonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(size: clonglong): auto =
    callVirtualBase_setReadBufferSize(QTcpSocket(h: self), size)
  let slotval1 = size


  nimfunc[](superCall, slotval1)
proc callVirtualBase_socketDescriptor(self: QTcpSocket, ): uint =


  fQTcpSocket_virtualbase_socketDescriptor(self.h)

type QTcpSocketsocketDescriptorBase* = proc(): uint
proc onsocketDescriptor*(self: QTcpSocket, slot: proc(super: QTcpSocketsocketDescriptorBase): uint) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketsocketDescriptorBase): uint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_socketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_socketDescriptor(self: ptr cQTcpSocket, slot: int): uint {.exportc: "miqt_exec_callback_QTcpSocket_socketDescriptor ".} =
  type Cb = proc(super: QTcpSocketsocketDescriptorBase): uint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_socketDescriptor(QTcpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setSocketDescriptor(self: QTcpSocket, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =


  fQTcpSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

type QTcpSocketsetSocketDescriptorBase* = proc(socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
proc onsetSocketDescriptor*(self: QTcpSocket, slot: proc(super: QTcpSocketsetSocketDescriptorBase, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketsetSocketDescriptorBase, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_setSocketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_setSocketDescriptor(self: ptr cQTcpSocket, slot: int, socketDescriptor: uint, state: cint, openMode: cint): bool {.exportc: "miqt_exec_callback_QTcpSocket_setSocketDescriptor ".} =
  type Cb = proc(super: QTcpSocketsetSocketDescriptorBase, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): auto =
    callVirtualBase_setSocketDescriptor(QTcpSocket(h: self), socketDescriptor, state, openMode)
  let slotval1 = socketDescriptor

  let slotval2 = gen_qabstractsocket.QAbstractSocketSocketState(state)

  let slotval3 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(openMode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setSocketOption(self: QTcpSocket, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void =


  fQTcpSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

type QTcpSocketsetSocketOptionBase* = proc(option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
proc onsetSocketOption*(self: QTcpSocket, slot: proc(super: QTcpSocketsetSocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketsetSocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_setSocketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_setSocketOption(self: ptr cQTcpSocket, slot: int, option: cint, value: pointer): void {.exportc: "miqt_exec_callback_QTcpSocket_setSocketOption ".} =
  type Cb = proc(super: QTcpSocketsetSocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): auto =
    callVirtualBase_setSocketOption(QTcpSocket(h: self), option, value)
  let slotval1 = gen_qabstractsocket.QAbstractSocketSocketOption(option)

  let slotval2 = gen_qvariant.QVariant(h: value)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_socketOption(self: QTcpSocket, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTcpSocket_virtualbase_socketOption(self.h, cint(option)))

type QTcpSocketsocketOptionBase* = proc(option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant
proc onsocketOption*(self: QTcpSocket, slot: proc(super: QTcpSocketsocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketsocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_socketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_socketOption(self: ptr cQTcpSocket, slot: int, option: cint): pointer {.exportc: "miqt_exec_callback_QTcpSocket_socketOption ".} =
  type Cb = proc(super: QTcpSocketsocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qabstractsocket.QAbstractSocketSocketOption): auto =
    callVirtualBase_socketOption(QTcpSocket(h: self), option)
  let slotval1 = gen_qabstractsocket.QAbstractSocketSocketOption(option)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_close(self: QTcpSocket, ): void =


  fQTcpSocket_virtualbase_close(self.h)

type QTcpSocketcloseBase* = proc(): void
proc onclose*(self: QTcpSocket, slot: proc(super: QTcpSocketcloseBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketcloseBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_close(self: ptr cQTcpSocket, slot: int): void {.exportc: "miqt_exec_callback_QTcpSocket_close ".} =
  type Cb = proc(super: QTcpSocketcloseBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_close(QTcpSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_isSequential(self: QTcpSocket, ): bool =


  fQTcpSocket_virtualbase_isSequential(self.h)

type QTcpSocketisSequentialBase* = proc(): bool
proc onisSequential*(self: QTcpSocket, slot: proc(super: QTcpSocketisSequentialBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketisSequentialBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_isSequential(self: ptr cQTcpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QTcpSocket_isSequential ".} =
  type Cb = proc(super: QTcpSocketisSequentialBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSequential(QTcpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_waitForConnected(self: QTcpSocket, msecs: cint): bool =


  fQTcpSocket_virtualbase_waitForConnected(self.h, msecs)

type QTcpSocketwaitForConnectedBase* = proc(msecs: cint): bool
proc onwaitForConnected*(self: QTcpSocket, slot: proc(super: QTcpSocketwaitForConnectedBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketwaitForConnectedBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_waitForConnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_waitForConnected(self: ptr cQTcpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QTcpSocket_waitForConnected ".} =
  type Cb = proc(super: QTcpSocketwaitForConnectedBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForConnected(QTcpSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForReadyRead(self: QTcpSocket, msecs: cint): bool =


  fQTcpSocket_virtualbase_waitForReadyRead(self.h, msecs)

type QTcpSocketwaitForReadyReadBase* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: QTcpSocket, slot: proc(super: QTcpSocketwaitForReadyReadBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketwaitForReadyReadBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_waitForReadyRead(self: ptr cQTcpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QTcpSocket_waitForReadyRead ".} =
  type Cb = proc(super: QTcpSocketwaitForReadyReadBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForReadyRead(QTcpSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForBytesWritten(self: QTcpSocket, msecs: cint): bool =


  fQTcpSocket_virtualbase_waitForBytesWritten(self.h, msecs)

type QTcpSocketwaitForBytesWrittenBase* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: QTcpSocket, slot: proc(super: QTcpSocketwaitForBytesWrittenBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketwaitForBytesWrittenBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_waitForBytesWritten(self: ptr cQTcpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QTcpSocket_waitForBytesWritten ".} =
  type Cb = proc(super: QTcpSocketwaitForBytesWrittenBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForBytesWritten(QTcpSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForDisconnected(self: QTcpSocket, msecs: cint): bool =


  fQTcpSocket_virtualbase_waitForDisconnected(self.h, msecs)

type QTcpSocketwaitForDisconnectedBase* = proc(msecs: cint): bool
proc onwaitForDisconnected*(self: QTcpSocket, slot: proc(super: QTcpSocketwaitForDisconnectedBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketwaitForDisconnectedBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_waitForDisconnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_waitForDisconnected(self: ptr cQTcpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QTcpSocket_waitForDisconnected ".} =
  type Cb = proc(super: QTcpSocketwaitForDisconnectedBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForDisconnected(QTcpSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_readData(self: QTcpSocket, data: cstring, maxlen: clonglong): clonglong =


  fQTcpSocket_virtualbase_readData(self.h, data, maxlen)

type QTcpSocketreadDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: QTcpSocket, slot: proc(super: QTcpSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_readData(self: ptr cQTcpSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_readData ".} =
  type Cb = proc(super: QTcpSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readData(QTcpSocket(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_readLineData(self: QTcpSocket, data: cstring, maxlen: clonglong): clonglong =


  fQTcpSocket_virtualbase_readLineData(self.h, data, maxlen)

type QTcpSocketreadLineDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: QTcpSocket, slot: proc(super: QTcpSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_readLineData(self: ptr cQTcpSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_readLineData ".} =
  type Cb = proc(super: QTcpSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readLineData(QTcpSocket(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_skipData(self: QTcpSocket, maxSize: clonglong): clonglong =


  fQTcpSocket_virtualbase_skipData(self.h, maxSize)

type QTcpSocketskipDataBase* = proc(maxSize: clonglong): clonglong
proc onskipData*(self: QTcpSocket, slot: proc(super: QTcpSocketskipDataBase, maxSize: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketskipDataBase, maxSize: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_skipData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_skipData(self: ptr cQTcpSocket, slot: int, maxSize: clonglong): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_skipData ".} =
  type Cb = proc(super: QTcpSocketskipDataBase, maxSize: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(maxSize: clonglong): auto =
    callVirtualBase_skipData(QTcpSocket(h: self), maxSize)
  let slotval1 = maxSize


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_writeData(self: QTcpSocket, data: cstring, len: clonglong): clonglong =


  fQTcpSocket_virtualbase_writeData(self.h, data, len)

type QTcpSocketwriteDataBase* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: QTcpSocket, slot: proc(super: QTcpSocketwriteDataBase, data: cstring, len: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketwriteDataBase, data: cstring, len: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_writeData(self: ptr cQTcpSocket, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_writeData ".} =
  type Cb = proc(super: QTcpSocketwriteDataBase, data: cstring, len: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, len: clonglong): auto =
    callVirtualBase_writeData(QTcpSocket(h: self), data, len)
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_open(self: QTcpSocket, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =


  fQTcpSocket_virtualbase_open(self.h, cint(mode))

type QTcpSocketopenBase* = proc(mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
proc onopen*(self: QTcpSocket, slot: proc(super: QTcpSocketopenBase, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketopenBase, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_open(self: ptr cQTcpSocket, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QTcpSocket_open ".} =
  type Cb = proc(super: QTcpSocketopenBase, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): auto =
    callVirtualBase_open(QTcpSocket(h: self), mode)
  let slotval1 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(mode)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_pos(self: QTcpSocket, ): clonglong =


  fQTcpSocket_virtualbase_pos(self.h)

type QTcpSocketposBase* = proc(): clonglong
proc onpos*(self: QTcpSocket, slot: proc(super: QTcpSocketposBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketposBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_pos(self: ptr cQTcpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_pos ".} =
  type Cb = proc(super: QTcpSocketposBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_pos(QTcpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_size(self: QTcpSocket, ): clonglong =


  fQTcpSocket_virtualbase_size(self.h)

type QTcpSocketsizeBase* = proc(): clonglong
proc onsize*(self: QTcpSocket, slot: proc(super: QTcpSocketsizeBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketsizeBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_size(self: ptr cQTcpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_size ".} =
  type Cb = proc(super: QTcpSocketsizeBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QTcpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_seek(self: QTcpSocket, pos: clonglong): bool =


  fQTcpSocket_virtualbase_seek(self.h, pos)

type QTcpSocketseekBase* = proc(pos: clonglong): bool
proc onseek*(self: QTcpSocket, slot: proc(super: QTcpSocketseekBase, pos: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketseekBase, pos: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_seek(self: ptr cQTcpSocket, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QTcpSocket_seek ".} =
  type Cb = proc(super: QTcpSocketseekBase, pos: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: clonglong): auto =
    callVirtualBase_seek(QTcpSocket(h: self), pos)
  let slotval1 = pos


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_atEnd(self: QTcpSocket, ): bool =


  fQTcpSocket_virtualbase_atEnd(self.h)

type QTcpSocketatEndBase* = proc(): bool
proc onatEnd*(self: QTcpSocket, slot: proc(super: QTcpSocketatEndBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketatEndBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_atEnd(self: ptr cQTcpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QTcpSocket_atEnd ".} =
  type Cb = proc(super: QTcpSocketatEndBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_atEnd(QTcpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_reset(self: QTcpSocket, ): bool =


  fQTcpSocket_virtualbase_reset(self.h)

type QTcpSocketresetBase* = proc(): bool
proc onreset*(self: QTcpSocket, slot: proc(super: QTcpSocketresetBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketresetBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_reset(self: ptr cQTcpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QTcpSocket_reset ".} =
  type Cb = proc(super: QTcpSocketresetBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QTcpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_canReadLine(self: QTcpSocket, ): bool =


  fQTcpSocket_virtualbase_canReadLine(self.h)

type QTcpSocketcanReadLineBase* = proc(): bool
proc oncanReadLine*(self: QTcpSocket, slot: proc(super: QTcpSocketcanReadLineBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketcanReadLineBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_canReadLine(self: ptr cQTcpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QTcpSocket_canReadLine ".} =
  type Cb = proc(super: QTcpSocketcanReadLineBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_canReadLine(QTcpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_event(self: QTcpSocket, event: gen_qcoreevent.QEvent): bool =


  fQTcpSocket_virtualbase_event(self.h, event.h)

type QTcpSocketeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTcpSocket, slot: proc(super: QTcpSocketeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_event(self: ptr cQTcpSocket, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTcpSocket_event ".} =
  type Cb = proc(super: QTcpSocketeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTcpSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTcpSocket, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTcpSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTcpSocketeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTcpSocket, slot: proc(super: QTcpSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_eventFilter(self: ptr cQTcpSocket, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTcpSocket_eventFilter ".} =
  type Cb = proc(super: QTcpSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTcpSocket(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTcpSocket, event: gen_qcoreevent.QTimerEvent): void =


  fQTcpSocket_virtualbase_timerEvent(self.h, event.h)

type QTcpSockettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTcpSocket, slot: proc(super: QTcpSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_timerEvent(self: ptr cQTcpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTcpSocket_timerEvent ".} =
  type Cb = proc(super: QTcpSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTcpSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QTcpSocket, event: gen_qcoreevent.QChildEvent): void =


  fQTcpSocket_virtualbase_childEvent(self.h, event.h)

type QTcpSocketchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTcpSocket, slot: proc(super: QTcpSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_childEvent(self: ptr cQTcpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTcpSocket_childEvent ".} =
  type Cb = proc(super: QTcpSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTcpSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTcpSocket, event: gen_qcoreevent.QEvent): void =


  fQTcpSocket_virtualbase_customEvent(self.h, event.h)

type QTcpSocketcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTcpSocket, slot: proc(super: QTcpSocketcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_customEvent(self: ptr cQTcpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTcpSocket_customEvent ".} =
  type Cb = proc(super: QTcpSocketcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTcpSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTcpSocket, signal: gen_qmetaobject.QMetaMethod): void =


  fQTcpSocket_virtualbase_connectNotify(self.h, signal.h)

type QTcpSocketconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTcpSocket, slot: proc(super: QTcpSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_connectNotify(self: ptr cQTcpSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTcpSocket_connectNotify ".} =
  type Cb = proc(super: QTcpSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTcpSocket(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTcpSocket, signal: gen_qmetaobject.QMetaMethod): void =


  fQTcpSocket_virtualbase_disconnectNotify(self.h, signal.h)

type QTcpSocketdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTcpSocket, slot: proc(super: QTcpSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_disconnectNotify(self: ptr cQTcpSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTcpSocket_disconnectNotify ".} =
  type Cb = proc(super: QTcpSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTcpSocket(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTcpSocket): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTcpSocket_staticMetaObject())
proc delete*(self: QTcpSocket) =
  fcQTcpSocket_delete(self.h)
