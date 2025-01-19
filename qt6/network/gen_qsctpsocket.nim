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
{.compile("gen_qsctpsocket.cpp", cflags).}


import gen_qsctpsocket_types
export gen_qsctpsocket_types

import
  gen_qabstractsocket,
  gen_qcoreevent,
  gen_qhostaddress,
  gen_qiodevicebase,
  gen_qmetaobject,
  gen_qnetworkdatagram,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtcpsocket,
  gen_qvariant
export
  gen_qabstractsocket,
  gen_qcoreevent,
  gen_qhostaddress,
  gen_qiodevicebase,
  gen_qmetaobject,
  gen_qnetworkdatagram,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtcpsocket,
  gen_qvariant

type cQSctpSocket*{.exportc: "QSctpSocket", incompleteStruct.} = object

proc fcQSctpSocket_new(): ptr cQSctpSocket {.importc: "QSctpSocket_new".}
proc fcQSctpSocket_new2(parent: pointer): ptr cQSctpSocket {.importc: "QSctpSocket_new2".}
proc fcQSctpSocket_metaObject(self: pointer, ): pointer {.importc: "QSctpSocket_metaObject".}
proc fcQSctpSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QSctpSocket_metacast".}
proc fcQSctpSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSctpSocket_metacall".}
proc fcQSctpSocket_tr(s: cstring): struct_miqt_string {.importc: "QSctpSocket_tr".}
proc fcQSctpSocket_close(self: pointer, ): void {.importc: "QSctpSocket_close".}
proc fcQSctpSocket_disconnectFromHost(self: pointer, ): void {.importc: "QSctpSocket_disconnectFromHost".}
proc fcQSctpSocket_setMaximumChannelCount(self: pointer, count: cint): void {.importc: "QSctpSocket_setMaximumChannelCount".}
proc fcQSctpSocket_maximumChannelCount(self: pointer, ): cint {.importc: "QSctpSocket_maximumChannelCount".}
proc fcQSctpSocket_isInDatagramMode(self: pointer, ): bool {.importc: "QSctpSocket_isInDatagramMode".}
proc fcQSctpSocket_readDatagram(self: pointer, ): pointer {.importc: "QSctpSocket_readDatagram".}
proc fcQSctpSocket_writeDatagram(self: pointer, datagram: pointer): bool {.importc: "QSctpSocket_writeDatagram".}
proc fcQSctpSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSctpSocket_tr2".}
proc fcQSctpSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSctpSocket_tr3".}
proc fQSctpSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSctpSocket_virtualbase_metacall".}
proc fcQSctpSocket_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_metacall".}
proc fQSctpSocket_virtualbase_close(self: pointer, ): void{.importc: "QSctpSocket_virtualbase_close".}
proc fcQSctpSocket_override_virtual_close(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_close".}
proc fQSctpSocket_virtualbase_disconnectFromHost(self: pointer, ): void{.importc: "QSctpSocket_virtualbase_disconnectFromHost".}
proc fcQSctpSocket_override_virtual_disconnectFromHost(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_disconnectFromHost".}
proc fQSctpSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QSctpSocket_virtualbase_readData".}
proc fcQSctpSocket_override_virtual_readData(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_readData".}
proc fQSctpSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QSctpSocket_virtualbase_readLineData".}
proc fcQSctpSocket_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_readLineData".}
proc fQSctpSocket_virtualbase_resume(self: pointer, ): void{.importc: "QSctpSocket_virtualbase_resume".}
proc fcQSctpSocket_override_virtual_resume(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_resume".}
proc fQSctpSocket_virtualbase_bind(self: pointer, address: pointer, port: cushort, mode: cint): bool{.importc: "QSctpSocket_virtualbase_bind".}
proc fcQSctpSocket_override_virtual_bindX(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_bind".}
proc fQSctpSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void{.importc: "QSctpSocket_virtualbase_connectToHost".}
proc fcQSctpSocket_override_virtual_connectToHost(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_connectToHost".}
proc fQSctpSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QSctpSocket_virtualbase_bytesAvailable".}
proc fcQSctpSocket_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_bytesAvailable".}
proc fQSctpSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QSctpSocket_virtualbase_bytesToWrite".}
proc fcQSctpSocket_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_bytesToWrite".}
proc fQSctpSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void{.importc: "QSctpSocket_virtualbase_setReadBufferSize".}
proc fcQSctpSocket_override_virtual_setReadBufferSize(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_setReadBufferSize".}
proc fQSctpSocket_virtualbase_socketDescriptor(self: pointer, ): uint{.importc: "QSctpSocket_virtualbase_socketDescriptor".}
proc fcQSctpSocket_override_virtual_socketDescriptor(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_socketDescriptor".}
proc fQSctpSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool{.importc: "QSctpSocket_virtualbase_setSocketDescriptor".}
proc fcQSctpSocket_override_virtual_setSocketDescriptor(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_setSocketDescriptor".}
proc fQSctpSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void{.importc: "QSctpSocket_virtualbase_setSocketOption".}
proc fcQSctpSocket_override_virtual_setSocketOption(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_setSocketOption".}
proc fQSctpSocket_virtualbase_socketOption(self: pointer, option: cint): pointer{.importc: "QSctpSocket_virtualbase_socketOption".}
proc fcQSctpSocket_override_virtual_socketOption(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_socketOption".}
proc fQSctpSocket_virtualbase_isSequential(self: pointer, ): bool{.importc: "QSctpSocket_virtualbase_isSequential".}
proc fcQSctpSocket_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_isSequential".}
proc fQSctpSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool{.importc: "QSctpSocket_virtualbase_waitForConnected".}
proc fcQSctpSocket_override_virtual_waitForConnected(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_waitForConnected".}
proc fQSctpSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QSctpSocket_virtualbase_waitForReadyRead".}
proc fcQSctpSocket_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_waitForReadyRead".}
proc fQSctpSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QSctpSocket_virtualbase_waitForBytesWritten".}
proc fcQSctpSocket_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_waitForBytesWritten".}
proc fQSctpSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool{.importc: "QSctpSocket_virtualbase_waitForDisconnected".}
proc fcQSctpSocket_override_virtual_waitForDisconnected(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_waitForDisconnected".}
proc fQSctpSocket_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong{.importc: "QSctpSocket_virtualbase_skipData".}
proc fcQSctpSocket_override_virtual_skipData(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_skipData".}
proc fQSctpSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QSctpSocket_virtualbase_writeData".}
proc fcQSctpSocket_override_virtual_writeData(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_writeData".}
proc fQSctpSocket_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QSctpSocket_virtualbase_open".}
proc fcQSctpSocket_override_virtual_open(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_open".}
proc fQSctpSocket_virtualbase_pos(self: pointer, ): clonglong{.importc: "QSctpSocket_virtualbase_pos".}
proc fcQSctpSocket_override_virtual_pos(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_pos".}
proc fQSctpSocket_virtualbase_size(self: pointer, ): clonglong{.importc: "QSctpSocket_virtualbase_size".}
proc fcQSctpSocket_override_virtual_size(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_size".}
proc fQSctpSocket_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QSctpSocket_virtualbase_seek".}
proc fcQSctpSocket_override_virtual_seek(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_seek".}
proc fQSctpSocket_virtualbase_atEnd(self: pointer, ): bool{.importc: "QSctpSocket_virtualbase_atEnd".}
proc fcQSctpSocket_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_atEnd".}
proc fQSctpSocket_virtualbase_reset(self: pointer, ): bool{.importc: "QSctpSocket_virtualbase_reset".}
proc fcQSctpSocket_override_virtual_reset(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_reset".}
proc fQSctpSocket_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QSctpSocket_virtualbase_canReadLine".}
proc fcQSctpSocket_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_canReadLine".}
proc fQSctpSocket_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSctpSocket_virtualbase_event".}
proc fcQSctpSocket_override_virtual_event(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_event".}
proc fQSctpSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSctpSocket_virtualbase_eventFilter".}
proc fcQSctpSocket_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_eventFilter".}
proc fQSctpSocket_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSctpSocket_virtualbase_timerEvent".}
proc fcQSctpSocket_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_timerEvent".}
proc fQSctpSocket_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSctpSocket_virtualbase_childEvent".}
proc fcQSctpSocket_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_childEvent".}
proc fQSctpSocket_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSctpSocket_virtualbase_customEvent".}
proc fcQSctpSocket_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_customEvent".}
proc fQSctpSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSctpSocket_virtualbase_connectNotify".}
proc fcQSctpSocket_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_connectNotify".}
proc fQSctpSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSctpSocket_virtualbase_disconnectNotify".}
proc fcQSctpSocket_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_disconnectNotify".}
proc fcQSctpSocket_staticMetaObject(): pointer {.importc: "QSctpSocket_staticMetaObject".}
proc fcQSctpSocket_delete(self: pointer) {.importc: "QSctpSocket_delete".}


func init*(T: type QSctpSocket, h: ptr cQSctpSocket): QSctpSocket =
  T(h: h)
proc create*(T: type QSctpSocket, ): QSctpSocket =

  QSctpSocket.init(fcQSctpSocket_new())
proc create*(T: type QSctpSocket, parent: gen_qobject.QObject): QSctpSocket =

  QSctpSocket.init(fcQSctpSocket_new2(parent.h))
proc metaObject*(self: QSctpSocket, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSctpSocket_metaObject(self.h))

proc metacast*(self: QSctpSocket, param1: cstring): pointer =

  fcQSctpSocket_metacast(self.h, param1)

proc metacall*(self: QSctpSocket, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSctpSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSctpSocket, s: cstring): string =

  let v_ms = fcQSctpSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc close*(self: QSctpSocket, ): void =

  fcQSctpSocket_close(self.h)

proc disconnectFromHost*(self: QSctpSocket, ): void =

  fcQSctpSocket_disconnectFromHost(self.h)

proc setMaximumChannelCount*(self: QSctpSocket, count: cint): void =

  fcQSctpSocket_setMaximumChannelCount(self.h, count)

proc maximumChannelCount*(self: QSctpSocket, ): cint =

  fcQSctpSocket_maximumChannelCount(self.h)

proc isInDatagramMode*(self: QSctpSocket, ): bool =

  fcQSctpSocket_isInDatagramMode(self.h)

proc readDatagram*(self: QSctpSocket, ): gen_qnetworkdatagram.QNetworkDatagram =

  gen_qnetworkdatagram.QNetworkDatagram(h: fcQSctpSocket_readDatagram(self.h))

proc writeDatagram*(self: QSctpSocket, datagram: gen_qnetworkdatagram.QNetworkDatagram): bool =

  fcQSctpSocket_writeDatagram(self.h, datagram.h)

proc tr2*(_: type QSctpSocket, s: cstring, c: cstring): string =

  let v_ms = fcQSctpSocket_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSctpSocket, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSctpSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSctpSocket, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSctpSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSctpSocketmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSctpSocket, slot: proc(super: QSctpSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_metacall(self: ptr cQSctpSocket, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSctpSocket_metacall ".} =
  type Cb = proc(super: QSctpSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSctpSocket(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_close(self: QSctpSocket, ): void =


  fQSctpSocket_virtualbase_close(self.h)

type QSctpSocketcloseBase* = proc(): void
proc onclose*(self: QSctpSocket, slot: proc(super: QSctpSocketcloseBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketcloseBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_close(self: ptr cQSctpSocket, slot: int): void {.exportc: "miqt_exec_callback_QSctpSocket_close ".} =
  type Cb = proc(super: QSctpSocketcloseBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_close(QSctpSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_disconnectFromHost(self: QSctpSocket, ): void =


  fQSctpSocket_virtualbase_disconnectFromHost(self.h)

type QSctpSocketdisconnectFromHostBase* = proc(): void
proc ondisconnectFromHost*(self: QSctpSocket, slot: proc(super: QSctpSocketdisconnectFromHostBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketdisconnectFromHostBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_disconnectFromHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_disconnectFromHost(self: ptr cQSctpSocket, slot: int): void {.exportc: "miqt_exec_callback_QSctpSocket_disconnectFromHost ".} =
  type Cb = proc(super: QSctpSocketdisconnectFromHostBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_disconnectFromHost(QSctpSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_readData(self: QSctpSocket, data: cstring, maxlen: clonglong): clonglong =


  fQSctpSocket_virtualbase_readData(self.h, data, maxlen)

type QSctpSocketreadDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: QSctpSocket, slot: proc(super: QSctpSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_readData(self: ptr cQSctpSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_readData ".} =
  type Cb = proc(super: QSctpSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readData(QSctpSocket(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_readLineData(self: QSctpSocket, data: cstring, maxlen: clonglong): clonglong =


  fQSctpSocket_virtualbase_readLineData(self.h, data, maxlen)

type QSctpSocketreadLineDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: QSctpSocket, slot: proc(super: QSctpSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_readLineData(self: ptr cQSctpSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_readLineData ".} =
  type Cb = proc(super: QSctpSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readLineData(QSctpSocket(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_resume(self: QSctpSocket, ): void =


  fQSctpSocket_virtualbase_resume(self.h)

type QSctpSocketresumeBase* = proc(): void
proc onresume*(self: QSctpSocket, slot: proc(super: QSctpSocketresumeBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketresumeBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_resume(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_resume(self: ptr cQSctpSocket, slot: int): void {.exportc: "miqt_exec_callback_QSctpSocket_resume ".} =
  type Cb = proc(super: QSctpSocketresumeBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_resume(QSctpSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_bindX(self: QSctpSocket, address: gen_qhostaddress.QHostAddress, port: cushort, mode: gen_qabstractsocket.QAbstractSocketBindFlag): bool =


  fQSctpSocket_virtualbase_bind(self.h, address.h, port, cint(mode))

type QSctpSocketbindXBase* = proc(address: gen_qhostaddress.QHostAddress, port: cushort, mode: gen_qabstractsocket.QAbstractSocketBindFlag): bool
proc onbindX*(self: QSctpSocket, slot: proc(super: QSctpSocketbindXBase, address: gen_qhostaddress.QHostAddress, port: cushort, mode: gen_qabstractsocket.QAbstractSocketBindFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketbindXBase, address: gen_qhostaddress.QHostAddress, port: cushort, mode: gen_qabstractsocket.QAbstractSocketBindFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_bindX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_bind(self: ptr cQSctpSocket, slot: int, address: pointer, port: cushort, mode: cint): bool {.exportc: "miqt_exec_callback_QSctpSocket_bind ".} =
  type Cb = proc(super: QSctpSocketbindXBase, address: gen_qhostaddress.QHostAddress, port: cushort, mode: gen_qabstractsocket.QAbstractSocketBindFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(address: gen_qhostaddress.QHostAddress, port: cushort, mode: gen_qabstractsocket.QAbstractSocketBindFlag): auto =
    callVirtualBase_bindX(QSctpSocket(h: self), address, port, mode)
  let slotval1 = gen_qhostaddress.QHostAddress(h: address)

  let slotval2 = port

  let slotval3 = gen_qabstractsocket.QAbstractSocketBindFlag(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_connectToHost(self: QSctpSocket, hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void =


  fQSctpSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

type QSctpSocketconnectToHostBase* = proc(hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void
proc onconnectToHost*(self: QSctpSocket, slot: proc(super: QSctpSocketconnectToHostBase, hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketconnectToHostBase, hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_connectToHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_connectToHost(self: ptr cQSctpSocket, slot: int, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.exportc: "miqt_exec_callback_QSctpSocket_connectToHost ".} =
  type Cb = proc(super: QSctpSocketconnectToHostBase, hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(hostName: string, port: cushort, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): auto =
    callVirtualBase_connectToHost(QSctpSocket(h: self), hostName, port, mode, protocol)
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret

  let slotval2 = port

  let slotval3 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(mode)

  let slotval4 = gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol(protocol)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_bytesAvailable(self: QSctpSocket, ): clonglong =


  fQSctpSocket_virtualbase_bytesAvailable(self.h)

type QSctpSocketbytesAvailableBase* = proc(): clonglong
proc onbytesAvailable*(self: QSctpSocket, slot: proc(super: QSctpSocketbytesAvailableBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketbytesAvailableBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_bytesAvailable(self: ptr cQSctpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_bytesAvailable ".} =
  type Cb = proc(super: QSctpSocketbytesAvailableBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesAvailable(QSctpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesToWrite(self: QSctpSocket, ): clonglong =


  fQSctpSocket_virtualbase_bytesToWrite(self.h)

type QSctpSocketbytesToWriteBase* = proc(): clonglong
proc onbytesToWrite*(self: QSctpSocket, slot: proc(super: QSctpSocketbytesToWriteBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketbytesToWriteBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_bytesToWrite(self: ptr cQSctpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_bytesToWrite ".} =
  type Cb = proc(super: QSctpSocketbytesToWriteBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesToWrite(QSctpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setReadBufferSize(self: QSctpSocket, size: clonglong): void =


  fQSctpSocket_virtualbase_setReadBufferSize(self.h, size)

type QSctpSocketsetReadBufferSizeBase* = proc(size: clonglong): void
proc onsetReadBufferSize*(self: QSctpSocket, slot: proc(super: QSctpSocketsetReadBufferSizeBase, size: clonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketsetReadBufferSizeBase, size: clonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_setReadBufferSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_setReadBufferSize(self: ptr cQSctpSocket, slot: int, size: clonglong): void {.exportc: "miqt_exec_callback_QSctpSocket_setReadBufferSize ".} =
  type Cb = proc(super: QSctpSocketsetReadBufferSizeBase, size: clonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(size: clonglong): auto =
    callVirtualBase_setReadBufferSize(QSctpSocket(h: self), size)
  let slotval1 = size


  nimfunc[](superCall, slotval1)
proc callVirtualBase_socketDescriptor(self: QSctpSocket, ): uint =


  fQSctpSocket_virtualbase_socketDescriptor(self.h)

type QSctpSocketsocketDescriptorBase* = proc(): uint
proc onsocketDescriptor*(self: QSctpSocket, slot: proc(super: QSctpSocketsocketDescriptorBase): uint) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketsocketDescriptorBase): uint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_socketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_socketDescriptor(self: ptr cQSctpSocket, slot: int): uint {.exportc: "miqt_exec_callback_QSctpSocket_socketDescriptor ".} =
  type Cb = proc(super: QSctpSocketsocketDescriptorBase): uint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_socketDescriptor(QSctpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setSocketDescriptor(self: QSctpSocket, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =


  fQSctpSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

type QSctpSocketsetSocketDescriptorBase* = proc(socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
proc onsetSocketDescriptor*(self: QSctpSocket, slot: proc(super: QSctpSocketsetSocketDescriptorBase, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketsetSocketDescriptorBase, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_setSocketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_setSocketDescriptor(self: ptr cQSctpSocket, slot: int, socketDescriptor: uint, state: cint, openMode: cint): bool {.exportc: "miqt_exec_callback_QSctpSocket_setSocketDescriptor ".} =
  type Cb = proc(super: QSctpSocketsetSocketDescriptorBase, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): auto =
    callVirtualBase_setSocketDescriptor(QSctpSocket(h: self), socketDescriptor, state, openMode)
  let slotval1 = socketDescriptor

  let slotval2 = gen_qabstractsocket.QAbstractSocketSocketState(state)

  let slotval3 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(openMode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setSocketOption(self: QSctpSocket, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void =


  fQSctpSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

type QSctpSocketsetSocketOptionBase* = proc(option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
proc onsetSocketOption*(self: QSctpSocket, slot: proc(super: QSctpSocketsetSocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketsetSocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_setSocketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_setSocketOption(self: ptr cQSctpSocket, slot: int, option: cint, value: pointer): void {.exportc: "miqt_exec_callback_QSctpSocket_setSocketOption ".} =
  type Cb = proc(super: QSctpSocketsetSocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): auto =
    callVirtualBase_setSocketOption(QSctpSocket(h: self), option, value)
  let slotval1 = gen_qabstractsocket.QAbstractSocketSocketOption(option)

  let slotval2 = gen_qvariant.QVariant(h: value)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_socketOption(self: QSctpSocket, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQSctpSocket_virtualbase_socketOption(self.h, cint(option)))

type QSctpSocketsocketOptionBase* = proc(option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant
proc onsocketOption*(self: QSctpSocket, slot: proc(super: QSctpSocketsocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketsocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_socketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_socketOption(self: ptr cQSctpSocket, slot: int, option: cint): pointer {.exportc: "miqt_exec_callback_QSctpSocket_socketOption ".} =
  type Cb = proc(super: QSctpSocketsocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qabstractsocket.QAbstractSocketSocketOption): auto =
    callVirtualBase_socketOption(QSctpSocket(h: self), option)
  let slotval1 = gen_qabstractsocket.QAbstractSocketSocketOption(option)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_isSequential(self: QSctpSocket, ): bool =


  fQSctpSocket_virtualbase_isSequential(self.h)

type QSctpSocketisSequentialBase* = proc(): bool
proc onisSequential*(self: QSctpSocket, slot: proc(super: QSctpSocketisSequentialBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketisSequentialBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_isSequential(self: ptr cQSctpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSctpSocket_isSequential ".} =
  type Cb = proc(super: QSctpSocketisSequentialBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSequential(QSctpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_waitForConnected(self: QSctpSocket, msecs: cint): bool =


  fQSctpSocket_virtualbase_waitForConnected(self.h, msecs)

type QSctpSocketwaitForConnectedBase* = proc(msecs: cint): bool
proc onwaitForConnected*(self: QSctpSocket, slot: proc(super: QSctpSocketwaitForConnectedBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketwaitForConnectedBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_waitForConnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_waitForConnected(self: ptr cQSctpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSctpSocket_waitForConnected ".} =
  type Cb = proc(super: QSctpSocketwaitForConnectedBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForConnected(QSctpSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForReadyRead(self: QSctpSocket, msecs: cint): bool =


  fQSctpSocket_virtualbase_waitForReadyRead(self.h, msecs)

type QSctpSocketwaitForReadyReadBase* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: QSctpSocket, slot: proc(super: QSctpSocketwaitForReadyReadBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketwaitForReadyReadBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_waitForReadyRead(self: ptr cQSctpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSctpSocket_waitForReadyRead ".} =
  type Cb = proc(super: QSctpSocketwaitForReadyReadBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForReadyRead(QSctpSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForBytesWritten(self: QSctpSocket, msecs: cint): bool =


  fQSctpSocket_virtualbase_waitForBytesWritten(self.h, msecs)

type QSctpSocketwaitForBytesWrittenBase* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: QSctpSocket, slot: proc(super: QSctpSocketwaitForBytesWrittenBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketwaitForBytesWrittenBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_waitForBytesWritten(self: ptr cQSctpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSctpSocket_waitForBytesWritten ".} =
  type Cb = proc(super: QSctpSocketwaitForBytesWrittenBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForBytesWritten(QSctpSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForDisconnected(self: QSctpSocket, msecs: cint): bool =


  fQSctpSocket_virtualbase_waitForDisconnected(self.h, msecs)

type QSctpSocketwaitForDisconnectedBase* = proc(msecs: cint): bool
proc onwaitForDisconnected*(self: QSctpSocket, slot: proc(super: QSctpSocketwaitForDisconnectedBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketwaitForDisconnectedBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_waitForDisconnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_waitForDisconnected(self: ptr cQSctpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSctpSocket_waitForDisconnected ".} =
  type Cb = proc(super: QSctpSocketwaitForDisconnectedBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForDisconnected(QSctpSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_skipData(self: QSctpSocket, maxSize: clonglong): clonglong =


  fQSctpSocket_virtualbase_skipData(self.h, maxSize)

type QSctpSocketskipDataBase* = proc(maxSize: clonglong): clonglong
proc onskipData*(self: QSctpSocket, slot: proc(super: QSctpSocketskipDataBase, maxSize: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketskipDataBase, maxSize: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_skipData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_skipData(self: ptr cQSctpSocket, slot: int, maxSize: clonglong): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_skipData ".} =
  type Cb = proc(super: QSctpSocketskipDataBase, maxSize: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(maxSize: clonglong): auto =
    callVirtualBase_skipData(QSctpSocket(h: self), maxSize)
  let slotval1 = maxSize


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_writeData(self: QSctpSocket, data: cstring, len: clonglong): clonglong =


  fQSctpSocket_virtualbase_writeData(self.h, data, len)

type QSctpSocketwriteDataBase* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: QSctpSocket, slot: proc(super: QSctpSocketwriteDataBase, data: cstring, len: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketwriteDataBase, data: cstring, len: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_writeData(self: ptr cQSctpSocket, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_writeData ".} =
  type Cb = proc(super: QSctpSocketwriteDataBase, data: cstring, len: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, len: clonglong): auto =
    callVirtualBase_writeData(QSctpSocket(h: self), data, len)
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_open(self: QSctpSocket, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =


  fQSctpSocket_virtualbase_open(self.h, cint(mode))

type QSctpSocketopenBase* = proc(mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
proc onopen*(self: QSctpSocket, slot: proc(super: QSctpSocketopenBase, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketopenBase, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_open(self: ptr cQSctpSocket, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QSctpSocket_open ".} =
  type Cb = proc(super: QSctpSocketopenBase, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): auto =
    callVirtualBase_open(QSctpSocket(h: self), mode)
  let slotval1 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(mode)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_pos(self: QSctpSocket, ): clonglong =


  fQSctpSocket_virtualbase_pos(self.h)

type QSctpSocketposBase* = proc(): clonglong
proc onpos*(self: QSctpSocket, slot: proc(super: QSctpSocketposBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketposBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_pos(self: ptr cQSctpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_pos ".} =
  type Cb = proc(super: QSctpSocketposBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_pos(QSctpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_size(self: QSctpSocket, ): clonglong =


  fQSctpSocket_virtualbase_size(self.h)

type QSctpSocketsizeBase* = proc(): clonglong
proc onsize*(self: QSctpSocket, slot: proc(super: QSctpSocketsizeBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketsizeBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_size(self: ptr cQSctpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_size ".} =
  type Cb = proc(super: QSctpSocketsizeBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QSctpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_seek(self: QSctpSocket, pos: clonglong): bool =


  fQSctpSocket_virtualbase_seek(self.h, pos)

type QSctpSocketseekBase* = proc(pos: clonglong): bool
proc onseek*(self: QSctpSocket, slot: proc(super: QSctpSocketseekBase, pos: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketseekBase, pos: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_seek(self: ptr cQSctpSocket, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QSctpSocket_seek ".} =
  type Cb = proc(super: QSctpSocketseekBase, pos: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: clonglong): auto =
    callVirtualBase_seek(QSctpSocket(h: self), pos)
  let slotval1 = pos


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_atEnd(self: QSctpSocket, ): bool =


  fQSctpSocket_virtualbase_atEnd(self.h)

type QSctpSocketatEndBase* = proc(): bool
proc onatEnd*(self: QSctpSocket, slot: proc(super: QSctpSocketatEndBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketatEndBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_atEnd(self: ptr cQSctpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSctpSocket_atEnd ".} =
  type Cb = proc(super: QSctpSocketatEndBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_atEnd(QSctpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_reset(self: QSctpSocket, ): bool =


  fQSctpSocket_virtualbase_reset(self.h)

type QSctpSocketresetBase* = proc(): bool
proc onreset*(self: QSctpSocket, slot: proc(super: QSctpSocketresetBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketresetBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_reset(self: ptr cQSctpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSctpSocket_reset ".} =
  type Cb = proc(super: QSctpSocketresetBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QSctpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_canReadLine(self: QSctpSocket, ): bool =


  fQSctpSocket_virtualbase_canReadLine(self.h)

type QSctpSocketcanReadLineBase* = proc(): bool
proc oncanReadLine*(self: QSctpSocket, slot: proc(super: QSctpSocketcanReadLineBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketcanReadLineBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_canReadLine(self: ptr cQSctpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSctpSocket_canReadLine ".} =
  type Cb = proc(super: QSctpSocketcanReadLineBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_canReadLine(QSctpSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_event(self: QSctpSocket, event: gen_qcoreevent.QEvent): bool =


  fQSctpSocket_virtualbase_event(self.h, event.h)

type QSctpSocketeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSctpSocket, slot: proc(super: QSctpSocketeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_event(self: ptr cQSctpSocket, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSctpSocket_event ".} =
  type Cb = proc(super: QSctpSocketeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSctpSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSctpSocket, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSctpSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSctpSocketeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSctpSocket, slot: proc(super: QSctpSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_eventFilter(self: ptr cQSctpSocket, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSctpSocket_eventFilter ".} =
  type Cb = proc(super: QSctpSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSctpSocket(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSctpSocket, event: gen_qcoreevent.QTimerEvent): void =


  fQSctpSocket_virtualbase_timerEvent(self.h, event.h)

type QSctpSockettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSctpSocket, slot: proc(super: QSctpSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_timerEvent(self: ptr cQSctpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSctpSocket_timerEvent ".} =
  type Cb = proc(super: QSctpSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSctpSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSctpSocket, event: gen_qcoreevent.QChildEvent): void =


  fQSctpSocket_virtualbase_childEvent(self.h, event.h)

type QSctpSocketchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSctpSocket, slot: proc(super: QSctpSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_childEvent(self: ptr cQSctpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSctpSocket_childEvent ".} =
  type Cb = proc(super: QSctpSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSctpSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSctpSocket, event: gen_qcoreevent.QEvent): void =


  fQSctpSocket_virtualbase_customEvent(self.h, event.h)

type QSctpSocketcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSctpSocket, slot: proc(super: QSctpSocketcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_customEvent(self: ptr cQSctpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSctpSocket_customEvent ".} =
  type Cb = proc(super: QSctpSocketcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSctpSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSctpSocket, signal: gen_qmetaobject.QMetaMethod): void =


  fQSctpSocket_virtualbase_connectNotify(self.h, signal.h)

type QSctpSocketconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSctpSocket, slot: proc(super: QSctpSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_connectNotify(self: ptr cQSctpSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSctpSocket_connectNotify ".} =
  type Cb = proc(super: QSctpSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSctpSocket(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSctpSocket, signal: gen_qmetaobject.QMetaMethod): void =


  fQSctpSocket_virtualbase_disconnectNotify(self.h, signal.h)

type QSctpSocketdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSctpSocket, slot: proc(super: QSctpSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_disconnectNotify(self: ptr cQSctpSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSctpSocket_disconnectNotify ".} =
  type Cb = proc(super: QSctpSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSctpSocket(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSctpSocket): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSctpSocket_staticMetaObject())
proc delete*(self: QSctpSocket) =
  fcQSctpSocket_delete(self.h)
