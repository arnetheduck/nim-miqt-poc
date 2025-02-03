import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qiodevice.cpp", cflags).}


type QIODeviceOpenModeFlag* = cint
const
  QIODeviceNotOpen* = 0
  QIODeviceReadOnly* = 1
  QIODeviceWriteOnly* = 2
  QIODeviceReadWrite* = 3
  QIODeviceAppend* = 4
  QIODeviceTruncate* = 8
  QIODeviceText* = 16
  QIODeviceUnbuffered* = 32
  QIODeviceNewOnly* = 64
  QIODeviceExistingOnly* = 128



import gen_qiodevice_types
export gen_qiodevice_types

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

type cQIODevice*{.exportc: "QIODevice", incompleteStruct.} = object

proc fcQIODevice_new(): ptr cQIODevice {.importc: "QIODevice_new".}
proc fcQIODevice_new2(parent: pointer): ptr cQIODevice {.importc: "QIODevice_new2".}
proc fcQIODevice_metaObject(self: pointer, ): pointer {.importc: "QIODevice_metaObject".}
proc fcQIODevice_metacast(self: pointer, param1: cstring): pointer {.importc: "QIODevice_metacast".}
proc fcQIODevice_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIODevice_metacall".}
proc fcQIODevice_tr(s: cstring): struct_miqt_string {.importc: "QIODevice_tr".}
proc fcQIODevice_trUtf8(s: cstring): struct_miqt_string {.importc: "QIODevice_trUtf8".}
proc fcQIODevice_openMode(self: pointer, ): cint {.importc: "QIODevice_openMode".}
proc fcQIODevice_setTextModeEnabled(self: pointer, enabled: bool): void {.importc: "QIODevice_setTextModeEnabled".}
proc fcQIODevice_isTextModeEnabled(self: pointer, ): bool {.importc: "QIODevice_isTextModeEnabled".}
proc fcQIODevice_isOpen(self: pointer, ): bool {.importc: "QIODevice_isOpen".}
proc fcQIODevice_isReadable(self: pointer, ): bool {.importc: "QIODevice_isReadable".}
proc fcQIODevice_isWritable(self: pointer, ): bool {.importc: "QIODevice_isWritable".}
proc fcQIODevice_isSequential(self: pointer, ): bool {.importc: "QIODevice_isSequential".}
proc fcQIODevice_readChannelCount(self: pointer, ): cint {.importc: "QIODevice_readChannelCount".}
proc fcQIODevice_writeChannelCount(self: pointer, ): cint {.importc: "QIODevice_writeChannelCount".}
proc fcQIODevice_currentReadChannel(self: pointer, ): cint {.importc: "QIODevice_currentReadChannel".}
proc fcQIODevice_setCurrentReadChannel(self: pointer, channel: cint): void {.importc: "QIODevice_setCurrentReadChannel".}
proc fcQIODevice_currentWriteChannel(self: pointer, ): cint {.importc: "QIODevice_currentWriteChannel".}
proc fcQIODevice_setCurrentWriteChannel(self: pointer, channel: cint): void {.importc: "QIODevice_setCurrentWriteChannel".}
proc fcQIODevice_open(self: pointer, mode: cint): bool {.importc: "QIODevice_open".}
proc fcQIODevice_close(self: pointer, ): void {.importc: "QIODevice_close".}
proc fcQIODevice_pos(self: pointer, ): clonglong {.importc: "QIODevice_pos".}
proc fcQIODevice_size(self: pointer, ): clonglong {.importc: "QIODevice_size".}
proc fcQIODevice_seek(self: pointer, pos: clonglong): bool {.importc: "QIODevice_seek".}
proc fcQIODevice_atEnd(self: pointer, ): bool {.importc: "QIODevice_atEnd".}
proc fcQIODevice_reset(self: pointer, ): bool {.importc: "QIODevice_reset".}
proc fcQIODevice_bytesAvailable(self: pointer, ): clonglong {.importc: "QIODevice_bytesAvailable".}
proc fcQIODevice_bytesToWrite(self: pointer, ): clonglong {.importc: "QIODevice_bytesToWrite".}
proc fcQIODevice_read(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QIODevice_read".}
proc fcQIODevice_readWithMaxlen(self: pointer, maxlen: clonglong): struct_miqt_string {.importc: "QIODevice_readWithMaxlen".}
proc fcQIODevice_readAll(self: pointer, ): struct_miqt_string {.importc: "QIODevice_readAll".}
proc fcQIODevice_readLine(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QIODevice_readLine".}
proc fcQIODevice_readLine2(self: pointer, ): struct_miqt_string {.importc: "QIODevice_readLine2".}
proc fcQIODevice_canReadLine(self: pointer, ): bool {.importc: "QIODevice_canReadLine".}
proc fcQIODevice_startTransaction(self: pointer, ): void {.importc: "QIODevice_startTransaction".}
proc fcQIODevice_commitTransaction(self: pointer, ): void {.importc: "QIODevice_commitTransaction".}
proc fcQIODevice_rollbackTransaction(self: pointer, ): void {.importc: "QIODevice_rollbackTransaction".}
proc fcQIODevice_isTransactionStarted(self: pointer, ): bool {.importc: "QIODevice_isTransactionStarted".}
proc fcQIODevice_write(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QIODevice_write".}
proc fcQIODevice_writeWithData(self: pointer, data: cstring): clonglong {.importc: "QIODevice_writeWithData".}
proc fcQIODevice_write2(self: pointer, data: struct_miqt_string): clonglong {.importc: "QIODevice_write2".}
proc fcQIODevice_peek(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QIODevice_peek".}
proc fcQIODevice_peekWithMaxlen(self: pointer, maxlen: clonglong): struct_miqt_string {.importc: "QIODevice_peekWithMaxlen".}
proc fcQIODevice_skip(self: pointer, maxSize: clonglong): clonglong {.importc: "QIODevice_skip".}
proc fcQIODevice_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QIODevice_waitForReadyRead".}
proc fcQIODevice_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QIODevice_waitForBytesWritten".}
proc fcQIODevice_ungetChar(self: pointer, c: cchar): void {.importc: "QIODevice_ungetChar".}
proc fcQIODevice_putChar(self: pointer, c: cchar): bool {.importc: "QIODevice_putChar".}
proc fcQIODevice_getChar(self: pointer, c: cstring): bool {.importc: "QIODevice_getChar".}
proc fcQIODevice_errorString(self: pointer, ): struct_miqt_string {.importc: "QIODevice_errorString".}
proc fcQIODevice_readyRead(self: pointer, ): void {.importc: "QIODevice_readyRead".}
proc fQIODevice_connect_readyRead(self: pointer, slot: int) {.importc: "QIODevice_connect_readyRead".}
proc fcQIODevice_channelReadyRead(self: pointer, channel: cint): void {.importc: "QIODevice_channelReadyRead".}
proc fQIODevice_connect_channelReadyRead(self: pointer, slot: int) {.importc: "QIODevice_connect_channelReadyRead".}
proc fcQIODevice_bytesWritten(self: pointer, bytes: clonglong): void {.importc: "QIODevice_bytesWritten".}
proc fQIODevice_connect_bytesWritten(self: pointer, slot: int) {.importc: "QIODevice_connect_bytesWritten".}
proc fcQIODevice_channelBytesWritten(self: pointer, channel: cint, bytes: clonglong): void {.importc: "QIODevice_channelBytesWritten".}
proc fQIODevice_connect_channelBytesWritten(self: pointer, slot: int) {.importc: "QIODevice_connect_channelBytesWritten".}
proc fcQIODevice_aboutToClose(self: pointer, ): void {.importc: "QIODevice_aboutToClose".}
proc fQIODevice_connect_aboutToClose(self: pointer, slot: int) {.importc: "QIODevice_connect_aboutToClose".}
proc fcQIODevice_readChannelFinished(self: pointer, ): void {.importc: "QIODevice_readChannelFinished".}
proc fQIODevice_connect_readChannelFinished(self: pointer, slot: int) {.importc: "QIODevice_connect_readChannelFinished".}
proc fcQIODevice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QIODevice_tr2".}
proc fcQIODevice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIODevice_tr3".}
proc fcQIODevice_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QIODevice_trUtf82".}
proc fcQIODevice_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIODevice_trUtf83".}
proc fcQIODevice_readLine1(self: pointer, maxlen: clonglong): struct_miqt_string {.importc: "QIODevice_readLine1".}
proc fQIODevice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QIODevice_virtualbase_metacall".}
proc fcQIODevice_override_virtual_metacall(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_metacall".}
proc fQIODevice_virtualbase_isSequential(self: pointer, ): bool{.importc: "QIODevice_virtualbase_isSequential".}
proc fcQIODevice_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_isSequential".}
proc fQIODevice_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QIODevice_virtualbase_open".}
proc fcQIODevice_override_virtual_open(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_open".}
proc fQIODevice_virtualbase_close(self: pointer, ): void{.importc: "QIODevice_virtualbase_close".}
proc fcQIODevice_override_virtual_close(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_close".}
proc fQIODevice_virtualbase_pos(self: pointer, ): clonglong{.importc: "QIODevice_virtualbase_pos".}
proc fcQIODevice_override_virtual_pos(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_pos".}
proc fQIODevice_virtualbase_size(self: pointer, ): clonglong{.importc: "QIODevice_virtualbase_size".}
proc fcQIODevice_override_virtual_size(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_size".}
proc fQIODevice_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QIODevice_virtualbase_seek".}
proc fcQIODevice_override_virtual_seek(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_seek".}
proc fQIODevice_virtualbase_atEnd(self: pointer, ): bool{.importc: "QIODevice_virtualbase_atEnd".}
proc fcQIODevice_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_atEnd".}
proc fQIODevice_virtualbase_reset(self: pointer, ): bool{.importc: "QIODevice_virtualbase_reset".}
proc fcQIODevice_override_virtual_reset(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_reset".}
proc fQIODevice_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QIODevice_virtualbase_bytesAvailable".}
proc fcQIODevice_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_bytesAvailable".}
proc fQIODevice_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QIODevice_virtualbase_bytesToWrite".}
proc fcQIODevice_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_bytesToWrite".}
proc fQIODevice_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QIODevice_virtualbase_canReadLine".}
proc fcQIODevice_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_canReadLine".}
proc fQIODevice_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QIODevice_virtualbase_waitForReadyRead".}
proc fcQIODevice_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_waitForReadyRead".}
proc fQIODevice_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QIODevice_virtualbase_waitForBytesWritten".}
proc fcQIODevice_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_waitForBytesWritten".}
proc fcQIODevice_override_virtual_readData(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_readData".}
proc fQIODevice_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QIODevice_virtualbase_readLineData".}
proc fcQIODevice_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_readLineData".}
proc fcQIODevice_override_virtual_writeData(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_writeData".}
proc fQIODevice_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QIODevice_virtualbase_event".}
proc fcQIODevice_override_virtual_event(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_event".}
proc fQIODevice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QIODevice_virtualbase_eventFilter".}
proc fcQIODevice_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_eventFilter".}
proc fQIODevice_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QIODevice_virtualbase_timerEvent".}
proc fcQIODevice_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_timerEvent".}
proc fQIODevice_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QIODevice_virtualbase_childEvent".}
proc fcQIODevice_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_childEvent".}
proc fQIODevice_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QIODevice_virtualbase_customEvent".}
proc fcQIODevice_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_customEvent".}
proc fQIODevice_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QIODevice_virtualbase_connectNotify".}
proc fcQIODevice_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_connectNotify".}
proc fQIODevice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QIODevice_virtualbase_disconnectNotify".}
proc fcQIODevice_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_disconnectNotify".}
proc fcQIODevice_delete(self: pointer) {.importc: "QIODevice_delete".}


func init*(T: type QIODevice, h: ptr cQIODevice): QIODevice =
  T(h: h)
proc create*(T: type QIODevice, ): QIODevice =

  QIODevice.init(fcQIODevice_new())
proc create*(T: type QIODevice, parent: gen_qobject.QObject): QIODevice =

  QIODevice.init(fcQIODevice_new2(parent.h))
proc metaObject*(self: QIODevice, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQIODevice_metaObject(self.h))

proc metacast*(self: QIODevice, param1: cstring): pointer =

  fcQIODevice_metacast(self.h, param1)

proc metacall*(self: QIODevice, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQIODevice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QIODevice, s: cstring): string =

  let v_ms = fcQIODevice_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QIODevice, s: cstring): string =

  let v_ms = fcQIODevice_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc openMode*(self: QIODevice, ): QIODeviceOpenModeFlag =

  QIODeviceOpenModeFlag(fcQIODevice_openMode(self.h))

proc setTextModeEnabled*(self: QIODevice, enabled: bool): void =

  fcQIODevice_setTextModeEnabled(self.h, enabled)

proc isTextModeEnabled*(self: QIODevice, ): bool =

  fcQIODevice_isTextModeEnabled(self.h)

proc isOpen*(self: QIODevice, ): bool =

  fcQIODevice_isOpen(self.h)

proc isReadable*(self: QIODevice, ): bool =

  fcQIODevice_isReadable(self.h)

proc isWritable*(self: QIODevice, ): bool =

  fcQIODevice_isWritable(self.h)

proc isSequential*(self: QIODevice, ): bool =

  fcQIODevice_isSequential(self.h)

proc readChannelCount*(self: QIODevice, ): cint =

  fcQIODevice_readChannelCount(self.h)

proc writeChannelCount*(self: QIODevice, ): cint =

  fcQIODevice_writeChannelCount(self.h)

proc currentReadChannel*(self: QIODevice, ): cint =

  fcQIODevice_currentReadChannel(self.h)

proc setCurrentReadChannel*(self: QIODevice, channel: cint): void =

  fcQIODevice_setCurrentReadChannel(self.h, channel)

proc currentWriteChannel*(self: QIODevice, ): cint =

  fcQIODevice_currentWriteChannel(self.h)

proc setCurrentWriteChannel*(self: QIODevice, channel: cint): void =

  fcQIODevice_setCurrentWriteChannel(self.h, channel)

proc open*(self: QIODevice, mode: QIODeviceOpenModeFlag): bool =

  fcQIODevice_open(self.h, cint(mode))

proc close*(self: QIODevice, ): void =

  fcQIODevice_close(self.h)

proc pos*(self: QIODevice, ): clonglong =

  fcQIODevice_pos(self.h)

proc size*(self: QIODevice, ): clonglong =

  fcQIODevice_size(self.h)

proc seek*(self: QIODevice, pos: clonglong): bool =

  fcQIODevice_seek(self.h, pos)

proc atEnd*(self: QIODevice, ): bool =

  fcQIODevice_atEnd(self.h)

proc reset*(self: QIODevice, ): bool =

  fcQIODevice_reset(self.h)

proc bytesAvailable*(self: QIODevice, ): clonglong =

  fcQIODevice_bytesAvailable(self.h)

proc bytesToWrite*(self: QIODevice, ): clonglong =

  fcQIODevice_bytesToWrite(self.h)

proc read*(self: QIODevice, data: cstring, maxlen: clonglong): clonglong =

  fcQIODevice_read(self.h, data, maxlen)

proc readWithMaxlen*(self: QIODevice, maxlen: clonglong): seq[byte] =

  var v_bytearray = fcQIODevice_readWithMaxlen(self.h, maxlen)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc readAll*(self: QIODevice, ): seq[byte] =

  var v_bytearray = fcQIODevice_readAll(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc readLine*(self: QIODevice, data: cstring, maxlen: clonglong): clonglong =

  fcQIODevice_readLine(self.h, data, maxlen)

proc readLine2*(self: QIODevice, ): seq[byte] =

  var v_bytearray = fcQIODevice_readLine2(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc canReadLine*(self: QIODevice, ): bool =

  fcQIODevice_canReadLine(self.h)

proc startTransaction*(self: QIODevice, ): void =

  fcQIODevice_startTransaction(self.h)

proc commitTransaction*(self: QIODevice, ): void =

  fcQIODevice_commitTransaction(self.h)

proc rollbackTransaction*(self: QIODevice, ): void =

  fcQIODevice_rollbackTransaction(self.h)

proc isTransactionStarted*(self: QIODevice, ): bool =

  fcQIODevice_isTransactionStarted(self.h)

proc write*(self: QIODevice, data: cstring, len: clonglong): clonglong =

  fcQIODevice_write(self.h, data, len)

proc writeWithData*(self: QIODevice, data: cstring): clonglong =

  fcQIODevice_writeWithData(self.h, data)

proc write2*(self: QIODevice, data: seq[byte]): clonglong =

  fcQIODevice_write2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc peek*(self: QIODevice, data: cstring, maxlen: clonglong): clonglong =

  fcQIODevice_peek(self.h, data, maxlen)

proc peekWithMaxlen*(self: QIODevice, maxlen: clonglong): seq[byte] =

  var v_bytearray = fcQIODevice_peekWithMaxlen(self.h, maxlen)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc skip*(self: QIODevice, maxSize: clonglong): clonglong =

  fcQIODevice_skip(self.h, maxSize)

proc waitForReadyRead*(self: QIODevice, msecs: cint): bool =

  fcQIODevice_waitForReadyRead(self.h, msecs)

proc waitForBytesWritten*(self: QIODevice, msecs: cint): bool =

  fcQIODevice_waitForBytesWritten(self.h, msecs)

proc ungetChar*(self: QIODevice, c: cchar): void =

  fcQIODevice_ungetChar(self.h, c)

proc putChar*(self: QIODevice, c: cchar): bool =

  fcQIODevice_putChar(self.h, c)

proc getChar*(self: QIODevice, c: cstring): bool =

  fcQIODevice_getChar(self.h, c)

proc errorString*(self: QIODevice, ): string =

  let v_ms = fcQIODevice_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc readyRead*(self: QIODevice, ): void =

  fcQIODevice_readyRead(self.h)

proc miqt_exec_callback_QIODevice_readyRead(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onreadyRead*(self: QIODevice, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQIODevice_connect_readyRead(self.h, cast[int](addr tmp[]))
proc channelReadyRead*(self: QIODevice, channel: cint): void =

  fcQIODevice_channelReadyRead(self.h, channel)

proc miqt_exec_callback_QIODevice_channelReadyRead(slot: int, channel: cint) {.exportc.} =
  type Cb = proc(channel: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = channel


  nimfunc[](slotval1)

proc onchannelReadyRead*(self: QIODevice, slot: proc(channel: cint)) =
  type Cb = proc(channel: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQIODevice_connect_channelReadyRead(self.h, cast[int](addr tmp[]))
proc bytesWritten*(self: QIODevice, bytes: clonglong): void =

  fcQIODevice_bytesWritten(self.h, bytes)

proc miqt_exec_callback_QIODevice_bytesWritten(slot: int, bytes: clonglong) {.exportc.} =
  type Cb = proc(bytes: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = bytes


  nimfunc[](slotval1)

proc onbytesWritten*(self: QIODevice, slot: proc(bytes: clonglong)) =
  type Cb = proc(bytes: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQIODevice_connect_bytesWritten(self.h, cast[int](addr tmp[]))
proc channelBytesWritten*(self: QIODevice, channel: cint, bytes: clonglong): void =

  fcQIODevice_channelBytesWritten(self.h, channel, bytes)

proc miqt_exec_callback_QIODevice_channelBytesWritten(slot: int, channel: cint, bytes: clonglong) {.exportc.} =
  type Cb = proc(channel: cint, bytes: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = channel

  let slotval2 = bytes


  nimfunc[](slotval1, slotval2)

proc onchannelBytesWritten*(self: QIODevice, slot: proc(channel: cint, bytes: clonglong)) =
  type Cb = proc(channel: cint, bytes: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQIODevice_connect_channelBytesWritten(self.h, cast[int](addr tmp[]))
proc aboutToClose*(self: QIODevice, ): void =

  fcQIODevice_aboutToClose(self.h)

proc miqt_exec_callback_QIODevice_aboutToClose(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaboutToClose*(self: QIODevice, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQIODevice_connect_aboutToClose(self.h, cast[int](addr tmp[]))
proc readChannelFinished*(self: QIODevice, ): void =

  fcQIODevice_readChannelFinished(self.h)

proc miqt_exec_callback_QIODevice_readChannelFinished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onreadChannelFinished*(self: QIODevice, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQIODevice_connect_readChannelFinished(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QIODevice, s: cstring, c: cstring): string =

  let v_ms = fcQIODevice_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QIODevice, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQIODevice_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QIODevice, s: cstring, c: cstring): string =

  let v_ms = fcQIODevice_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QIODevice, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQIODevice_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc readLine1*(self: QIODevice, maxlen: clonglong): seq[byte] =

  var v_bytearray = fcQIODevice_readLine1(self.h, maxlen)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc callVirtualBase_metacall(self: QIODevice, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQIODevice_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QIODevicemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QIODevice, slot: proc(super: QIODevicemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QIODevicemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_metacall(self: ptr cQIODevice, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QIODevice_metacall ".} =
  type Cb = proc(super: QIODevicemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QIODevice(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_isSequential(self: QIODevice, ): bool =


  fQIODevice_virtualbase_isSequential(self.h)

type QIODeviceisSequentialBase* = proc(): bool
proc onisSequential*(self: QIODevice, slot: proc(super: QIODeviceisSequentialBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QIODeviceisSequentialBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_isSequential(self: ptr cQIODevice, slot: int): bool {.exportc: "miqt_exec_callback_QIODevice_isSequential ".} =
  type Cb = proc(super: QIODeviceisSequentialBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSequential(QIODevice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_open(self: QIODevice, mode: QIODeviceOpenModeFlag): bool =


  fQIODevice_virtualbase_open(self.h, cint(mode))

type QIODeviceopenBase* = proc(mode: QIODeviceOpenModeFlag): bool
proc onopen*(self: QIODevice, slot: proc(super: QIODeviceopenBase, mode: QIODeviceOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QIODeviceopenBase, mode: QIODeviceOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_open(self: ptr cQIODevice, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QIODevice_open ".} =
  type Cb = proc(super: QIODeviceopenBase, mode: QIODeviceOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mode: QIODeviceOpenModeFlag): auto =
    callVirtualBase_open(QIODevice(h: self), mode)
  let slotval1 = QIODeviceOpenModeFlag(mode)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_close(self: QIODevice, ): void =


  fQIODevice_virtualbase_close(self.h)

type QIODevicecloseBase* = proc(): void
proc onclose*(self: QIODevice, slot: proc(super: QIODevicecloseBase): void) =
  # TODO check subclass
  type Cb = proc(super: QIODevicecloseBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_close(self: ptr cQIODevice, slot: int): void {.exportc: "miqt_exec_callback_QIODevice_close ".} =
  type Cb = proc(super: QIODevicecloseBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_close(QIODevice(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_pos(self: QIODevice, ): clonglong =


  fQIODevice_virtualbase_pos(self.h)

type QIODeviceposBase* = proc(): clonglong
proc onpos*(self: QIODevice, slot: proc(super: QIODeviceposBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QIODeviceposBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_pos(self: ptr cQIODevice, slot: int): clonglong {.exportc: "miqt_exec_callback_QIODevice_pos ".} =
  type Cb = proc(super: QIODeviceposBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_pos(QIODevice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_size(self: QIODevice, ): clonglong =


  fQIODevice_virtualbase_size(self.h)

type QIODevicesizeBase* = proc(): clonglong
proc onsize*(self: QIODevice, slot: proc(super: QIODevicesizeBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QIODevicesizeBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_size(self: ptr cQIODevice, slot: int): clonglong {.exportc: "miqt_exec_callback_QIODevice_size ".} =
  type Cb = proc(super: QIODevicesizeBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QIODevice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_seek(self: QIODevice, pos: clonglong): bool =


  fQIODevice_virtualbase_seek(self.h, pos)

type QIODeviceseekBase* = proc(pos: clonglong): bool
proc onseek*(self: QIODevice, slot: proc(super: QIODeviceseekBase, pos: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QIODeviceseekBase, pos: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_seek(self: ptr cQIODevice, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QIODevice_seek ".} =
  type Cb = proc(super: QIODeviceseekBase, pos: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: clonglong): auto =
    callVirtualBase_seek(QIODevice(h: self), pos)
  let slotval1 = pos


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_atEnd(self: QIODevice, ): bool =


  fQIODevice_virtualbase_atEnd(self.h)

type QIODeviceatEndBase* = proc(): bool
proc onatEnd*(self: QIODevice, slot: proc(super: QIODeviceatEndBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QIODeviceatEndBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_atEnd(self: ptr cQIODevice, slot: int): bool {.exportc: "miqt_exec_callback_QIODevice_atEnd ".} =
  type Cb = proc(super: QIODeviceatEndBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_atEnd(QIODevice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_reset(self: QIODevice, ): bool =


  fQIODevice_virtualbase_reset(self.h)

type QIODeviceresetBase* = proc(): bool
proc onreset*(self: QIODevice, slot: proc(super: QIODeviceresetBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QIODeviceresetBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_reset(self: ptr cQIODevice, slot: int): bool {.exportc: "miqt_exec_callback_QIODevice_reset ".} =
  type Cb = proc(super: QIODeviceresetBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QIODevice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesAvailable(self: QIODevice, ): clonglong =


  fQIODevice_virtualbase_bytesAvailable(self.h)

type QIODevicebytesAvailableBase* = proc(): clonglong
proc onbytesAvailable*(self: QIODevice, slot: proc(super: QIODevicebytesAvailableBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QIODevicebytesAvailableBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_bytesAvailable(self: ptr cQIODevice, slot: int): clonglong {.exportc: "miqt_exec_callback_QIODevice_bytesAvailable ".} =
  type Cb = proc(super: QIODevicebytesAvailableBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesAvailable(QIODevice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesToWrite(self: QIODevice, ): clonglong =


  fQIODevice_virtualbase_bytesToWrite(self.h)

type QIODevicebytesToWriteBase* = proc(): clonglong
proc onbytesToWrite*(self: QIODevice, slot: proc(super: QIODevicebytesToWriteBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QIODevicebytesToWriteBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_bytesToWrite(self: ptr cQIODevice, slot: int): clonglong {.exportc: "miqt_exec_callback_QIODevice_bytesToWrite ".} =
  type Cb = proc(super: QIODevicebytesToWriteBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesToWrite(QIODevice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_canReadLine(self: QIODevice, ): bool =


  fQIODevice_virtualbase_canReadLine(self.h)

type QIODevicecanReadLineBase* = proc(): bool
proc oncanReadLine*(self: QIODevice, slot: proc(super: QIODevicecanReadLineBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QIODevicecanReadLineBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_canReadLine(self: ptr cQIODevice, slot: int): bool {.exportc: "miqt_exec_callback_QIODevice_canReadLine ".} =
  type Cb = proc(super: QIODevicecanReadLineBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_canReadLine(QIODevice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_waitForReadyRead(self: QIODevice, msecs: cint): bool =


  fQIODevice_virtualbase_waitForReadyRead(self.h, msecs)

type QIODevicewaitForReadyReadBase* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: QIODevice, slot: proc(super: QIODevicewaitForReadyReadBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QIODevicewaitForReadyReadBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_waitForReadyRead(self: ptr cQIODevice, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QIODevice_waitForReadyRead ".} =
  type Cb = proc(super: QIODevicewaitForReadyReadBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForReadyRead(QIODevice(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForBytesWritten(self: QIODevice, msecs: cint): bool =


  fQIODevice_virtualbase_waitForBytesWritten(self.h, msecs)

type QIODevicewaitForBytesWrittenBase* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: QIODevice, slot: proc(super: QIODevicewaitForBytesWrittenBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QIODevicewaitForBytesWrittenBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_waitForBytesWritten(self: ptr cQIODevice, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QIODevice_waitForBytesWritten ".} =
  type Cb = proc(super: QIODevicewaitForBytesWrittenBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForBytesWritten(QIODevice(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
type QIODevicereadDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: QIODevice, slot: proc(data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_readData(self: ptr cQIODevice, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QIODevice_readData ".} =
  type Cb = proc(data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_readLineData(self: QIODevice, data: cstring, maxlen: clonglong): clonglong =


  fQIODevice_virtualbase_readLineData(self.h, data, maxlen)

type QIODevicereadLineDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: QIODevice, slot: proc(super: QIODevicereadLineDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QIODevicereadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_readLineData(self: ptr cQIODevice, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QIODevice_readLineData ".} =
  type Cb = proc(super: QIODevicereadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readLineData(QIODevice(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
type QIODevicewriteDataBase* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: QIODevice, slot: proc(data: cstring, len: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(data: cstring, len: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_writeData(self: ptr cQIODevice, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QIODevice_writeData ".} =
  type Cb = proc(data: cstring, len: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QIODevice, event: gen_qcoreevent.QEvent): bool =


  fQIODevice_virtualbase_event(self.h, event.h)

type QIODeviceeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QIODevice, slot: proc(super: QIODeviceeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QIODeviceeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_event(self: ptr cQIODevice, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QIODevice_event ".} =
  type Cb = proc(super: QIODeviceeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QIODevice(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QIODevice, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQIODevice_virtualbase_eventFilter(self.h, watched.h, event.h)

type QIODeviceeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QIODevice, slot: proc(super: QIODeviceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QIODeviceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_eventFilter(self: ptr cQIODevice, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QIODevice_eventFilter ".} =
  type Cb = proc(super: QIODeviceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QIODevice(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QIODevice, event: gen_qcoreevent.QTimerEvent): void =


  fQIODevice_virtualbase_timerEvent(self.h, event.h)

type QIODevicetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QIODevice, slot: proc(super: QIODevicetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QIODevicetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_timerEvent(self: ptr cQIODevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIODevice_timerEvent ".} =
  type Cb = proc(super: QIODevicetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QIODevice(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QIODevice, event: gen_qcoreevent.QChildEvent): void =


  fQIODevice_virtualbase_childEvent(self.h, event.h)

type QIODevicechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QIODevice, slot: proc(super: QIODevicechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QIODevicechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_childEvent(self: ptr cQIODevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIODevice_childEvent ".} =
  type Cb = proc(super: QIODevicechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QIODevice(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QIODevice, event: gen_qcoreevent.QEvent): void =


  fQIODevice_virtualbase_customEvent(self.h, event.h)

type QIODevicecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QIODevice, slot: proc(super: QIODevicecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QIODevicecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_customEvent(self: ptr cQIODevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIODevice_customEvent ".} =
  type Cb = proc(super: QIODevicecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QIODevice(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QIODevice, signal: gen_qmetaobject.QMetaMethod): void =


  fQIODevice_virtualbase_connectNotify(self.h, signal.h)

type QIODeviceconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QIODevice, slot: proc(super: QIODeviceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QIODeviceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_connectNotify(self: ptr cQIODevice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIODevice_connectNotify ".} =
  type Cb = proc(super: QIODeviceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QIODevice(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QIODevice, signal: gen_qmetaobject.QMetaMethod): void =


  fQIODevice_virtualbase_disconnectNotify(self.h, signal.h)

type QIODevicedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QIODevice, slot: proc(super: QIODevicedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QIODevicedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_disconnectNotify(self: ptr cQIODevice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIODevice_disconnectNotify ".} =
  type Cb = proc(super: QIODevicedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QIODevice(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QIODevice) =
  fcQIODevice_delete(self.h)
