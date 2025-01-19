import Qt6Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6Widgets")
{.compile("gen_qbuffer.cpp", cflags).}


import gen_qbuffer_types
export gen_qbuffer_types

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

type cQBuffer*{.exportc: "QBuffer", incompleteStruct.} = object

proc fcQBuffer_new(): ptr cQBuffer {.importc: "QBuffer_new".}
proc fcQBuffer_new2(parent: pointer): ptr cQBuffer {.importc: "QBuffer_new2".}
proc fcQBuffer_metaObject(self: pointer, ): pointer {.importc: "QBuffer_metaObject".}
proc fcQBuffer_metacast(self: pointer, param1: cstring): pointer {.importc: "QBuffer_metacast".}
proc fcQBuffer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QBuffer_metacall".}
proc fcQBuffer_tr(s: cstring): struct_miqt_string {.importc: "QBuffer_tr".}
proc fcQBuffer_buffer(self: pointer, ): struct_miqt_string {.importc: "QBuffer_buffer".}
proc fcQBuffer_buffer2(self: pointer, ): struct_miqt_string {.importc: "QBuffer_buffer2".}
proc fcQBuffer_setData(self: pointer, data: struct_miqt_string): void {.importc: "QBuffer_setData".}
proc fcQBuffer_setData2(self: pointer, data: cstring, len: cint): void {.importc: "QBuffer_setData2".}
proc fcQBuffer_data(self: pointer, ): struct_miqt_string {.importc: "QBuffer_data".}
proc fcQBuffer_open(self: pointer, openMode: cint): bool {.importc: "QBuffer_open".}
proc fcQBuffer_close(self: pointer, ): void {.importc: "QBuffer_close".}
proc fcQBuffer_size(self: pointer, ): clonglong {.importc: "QBuffer_size".}
proc fcQBuffer_pos(self: pointer, ): clonglong {.importc: "QBuffer_pos".}
proc fcQBuffer_seek(self: pointer, off: clonglong): bool {.importc: "QBuffer_seek".}
proc fcQBuffer_atEnd(self: pointer, ): bool {.importc: "QBuffer_atEnd".}
proc fcQBuffer_canReadLine(self: pointer, ): bool {.importc: "QBuffer_canReadLine".}
proc fcQBuffer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QBuffer_tr2".}
proc fcQBuffer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QBuffer_tr3".}
proc fQBuffer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QBuffer_virtualbase_metacall".}
proc fcQBuffer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_metacall".}
proc fQBuffer_virtualbase_open(self: pointer, openMode: cint): bool{.importc: "QBuffer_virtualbase_open".}
proc fcQBuffer_override_virtual_open(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_open".}
proc fQBuffer_virtualbase_close(self: pointer, ): void{.importc: "QBuffer_virtualbase_close".}
proc fcQBuffer_override_virtual_close(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_close".}
proc fQBuffer_virtualbase_size(self: pointer, ): clonglong{.importc: "QBuffer_virtualbase_size".}
proc fcQBuffer_override_virtual_size(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_size".}
proc fQBuffer_virtualbase_pos(self: pointer, ): clonglong{.importc: "QBuffer_virtualbase_pos".}
proc fcQBuffer_override_virtual_pos(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_pos".}
proc fQBuffer_virtualbase_seek(self: pointer, off: clonglong): bool{.importc: "QBuffer_virtualbase_seek".}
proc fcQBuffer_override_virtual_seek(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_seek".}
proc fQBuffer_virtualbase_atEnd(self: pointer, ): bool{.importc: "QBuffer_virtualbase_atEnd".}
proc fcQBuffer_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_atEnd".}
proc fQBuffer_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QBuffer_virtualbase_canReadLine".}
proc fcQBuffer_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_canReadLine".}
proc fQBuffer_virtualbase_connectNotify(self: pointer, param1: pointer): void{.importc: "QBuffer_virtualbase_connectNotify".}
proc fcQBuffer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_connectNotify".}
proc fQBuffer_virtualbase_disconnectNotify(self: pointer, param1: pointer): void{.importc: "QBuffer_virtualbase_disconnectNotify".}
proc fcQBuffer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_disconnectNotify".}
proc fQBuffer_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QBuffer_virtualbase_readData".}
proc fcQBuffer_override_virtual_readData(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_readData".}
proc fQBuffer_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QBuffer_virtualbase_writeData".}
proc fcQBuffer_override_virtual_writeData(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_writeData".}
proc fQBuffer_virtualbase_isSequential(self: pointer, ): bool{.importc: "QBuffer_virtualbase_isSequential".}
proc fcQBuffer_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_isSequential".}
proc fQBuffer_virtualbase_reset(self: pointer, ): bool{.importc: "QBuffer_virtualbase_reset".}
proc fcQBuffer_override_virtual_reset(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_reset".}
proc fQBuffer_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QBuffer_virtualbase_bytesAvailable".}
proc fcQBuffer_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_bytesAvailable".}
proc fQBuffer_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QBuffer_virtualbase_bytesToWrite".}
proc fcQBuffer_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_bytesToWrite".}
proc fQBuffer_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QBuffer_virtualbase_waitForReadyRead".}
proc fcQBuffer_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_waitForReadyRead".}
proc fQBuffer_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QBuffer_virtualbase_waitForBytesWritten".}
proc fcQBuffer_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_waitForBytesWritten".}
proc fQBuffer_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QBuffer_virtualbase_readLineData".}
proc fcQBuffer_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_readLineData".}
proc fQBuffer_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong{.importc: "QBuffer_virtualbase_skipData".}
proc fcQBuffer_override_virtual_skipData(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_skipData".}
proc fQBuffer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QBuffer_virtualbase_event".}
proc fcQBuffer_override_virtual_event(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_event".}
proc fQBuffer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QBuffer_virtualbase_eventFilter".}
proc fcQBuffer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_eventFilter".}
proc fQBuffer_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QBuffer_virtualbase_timerEvent".}
proc fcQBuffer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_timerEvent".}
proc fQBuffer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QBuffer_virtualbase_childEvent".}
proc fcQBuffer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_childEvent".}
proc fQBuffer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QBuffer_virtualbase_customEvent".}
proc fcQBuffer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_customEvent".}
proc fcQBuffer_staticMetaObject(): pointer {.importc: "QBuffer_staticMetaObject".}
proc fcQBuffer_delete(self: pointer) {.importc: "QBuffer_delete".}


func init*(T: type QBuffer, h: ptr cQBuffer): QBuffer =
  T(h: h)
proc create*(T: type QBuffer, ): QBuffer =

  QBuffer.init(fcQBuffer_new())
proc create*(T: type QBuffer, parent: gen_qobject.QObject): QBuffer =

  QBuffer.init(fcQBuffer_new2(parent.h))
proc metaObject*(self: QBuffer, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQBuffer_metaObject(self.h))

proc metacast*(self: QBuffer, param1: cstring): pointer =

  fcQBuffer_metacast(self.h, param1)

proc metacall*(self: QBuffer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQBuffer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QBuffer, s: cstring): string =

  let v_ms = fcQBuffer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc buffer*(self: QBuffer, ): seq[byte] =

  var v_bytearray = fcQBuffer_buffer(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc buffer2*(self: QBuffer, ): seq[byte] =

  var v_bytearray = fcQBuffer_buffer2(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setData*(self: QBuffer, data: seq[byte]): void =

  fcQBuffer_setData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc setData2*(self: QBuffer, data: cstring, len: cint): void =

  fcQBuffer_setData2(self.h, data, len)

proc data*(self: QBuffer, ): seq[byte] =

  var v_bytearray = fcQBuffer_data(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc open*(self: QBuffer, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =

  fcQBuffer_open(self.h, cint(openMode))

proc close*(self: QBuffer, ): void =

  fcQBuffer_close(self.h)

proc size*(self: QBuffer, ): clonglong =

  fcQBuffer_size(self.h)

proc pos*(self: QBuffer, ): clonglong =

  fcQBuffer_pos(self.h)

proc seek*(self: QBuffer, off: clonglong): bool =

  fcQBuffer_seek(self.h, off)

proc atEnd*(self: QBuffer, ): bool =

  fcQBuffer_atEnd(self.h)

proc canReadLine*(self: QBuffer, ): bool =

  fcQBuffer_canReadLine(self.h)

proc tr2*(_: type QBuffer, s: cstring, c: cstring): string =

  let v_ms = fcQBuffer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QBuffer, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQBuffer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QBuffer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQBuffer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QBuffermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QBuffer, slot: proc(super: QBuffermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QBuffermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_metacall(self: ptr cQBuffer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QBuffer_metacall ".} =
  type Cb = proc(super: QBuffermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QBuffer(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_open(self: QBuffer, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =


  fQBuffer_virtualbase_open(self.h, cint(openMode))

type QBufferopenBase* = proc(openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
proc onopen*(self: QBuffer, slot: proc(super: QBufferopenBase, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QBufferopenBase, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_open(self: ptr cQBuffer, slot: int, openMode: cint): bool {.exportc: "miqt_exec_callback_QBuffer_open ".} =
  type Cb = proc(super: QBufferopenBase, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): auto =
    callVirtualBase_open(QBuffer(h: self), openMode)
  let slotval1 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(openMode)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_close(self: QBuffer, ): void =


  fQBuffer_virtualbase_close(self.h)

type QBuffercloseBase* = proc(): void
proc onclose*(self: QBuffer, slot: proc(super: QBuffercloseBase): void) =
  # TODO check subclass
  type Cb = proc(super: QBuffercloseBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_close(self: ptr cQBuffer, slot: int): void {.exportc: "miqt_exec_callback_QBuffer_close ".} =
  type Cb = proc(super: QBuffercloseBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_close(QBuffer(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_size(self: QBuffer, ): clonglong =


  fQBuffer_virtualbase_size(self.h)

type QBuffersizeBase* = proc(): clonglong
proc onsize*(self: QBuffer, slot: proc(super: QBuffersizeBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QBuffersizeBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_size(self: ptr cQBuffer, slot: int): clonglong {.exportc: "miqt_exec_callback_QBuffer_size ".} =
  type Cb = proc(super: QBuffersizeBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QBuffer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_pos(self: QBuffer, ): clonglong =


  fQBuffer_virtualbase_pos(self.h)

type QBufferposBase* = proc(): clonglong
proc onpos*(self: QBuffer, slot: proc(super: QBufferposBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QBufferposBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_pos(self: ptr cQBuffer, slot: int): clonglong {.exportc: "miqt_exec_callback_QBuffer_pos ".} =
  type Cb = proc(super: QBufferposBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_pos(QBuffer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_seek(self: QBuffer, off: clonglong): bool =


  fQBuffer_virtualbase_seek(self.h, off)

type QBufferseekBase* = proc(off: clonglong): bool
proc onseek*(self: QBuffer, slot: proc(super: QBufferseekBase, off: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QBufferseekBase, off: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_seek(self: ptr cQBuffer, slot: int, off: clonglong): bool {.exportc: "miqt_exec_callback_QBuffer_seek ".} =
  type Cb = proc(super: QBufferseekBase, off: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(off: clonglong): auto =
    callVirtualBase_seek(QBuffer(h: self), off)
  let slotval1 = off


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_atEnd(self: QBuffer, ): bool =


  fQBuffer_virtualbase_atEnd(self.h)

type QBufferatEndBase* = proc(): bool
proc onatEnd*(self: QBuffer, slot: proc(super: QBufferatEndBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QBufferatEndBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_atEnd(self: ptr cQBuffer, slot: int): bool {.exportc: "miqt_exec_callback_QBuffer_atEnd ".} =
  type Cb = proc(super: QBufferatEndBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_atEnd(QBuffer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_canReadLine(self: QBuffer, ): bool =


  fQBuffer_virtualbase_canReadLine(self.h)

type QBuffercanReadLineBase* = proc(): bool
proc oncanReadLine*(self: QBuffer, slot: proc(super: QBuffercanReadLineBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QBuffercanReadLineBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_canReadLine(self: ptr cQBuffer, slot: int): bool {.exportc: "miqt_exec_callback_QBuffer_canReadLine ".} =
  type Cb = proc(super: QBuffercanReadLineBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_canReadLine(QBuffer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_connectNotify(self: QBuffer, param1: gen_qmetaobject.QMetaMethod): void =


  fQBuffer_virtualbase_connectNotify(self.h, param1.h)

type QBufferconnectNotifyBase* = proc(param1: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QBuffer, slot: proc(super: QBufferconnectNotifyBase, param1: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QBufferconnectNotifyBase, param1: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_connectNotify(self: ptr cQBuffer, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QBuffer_connectNotify ".} =
  type Cb = proc(super: QBufferconnectNotifyBase, param1: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QBuffer(h: self), param1)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QBuffer, param1: gen_qmetaobject.QMetaMethod): void =


  fQBuffer_virtualbase_disconnectNotify(self.h, param1.h)

type QBufferdisconnectNotifyBase* = proc(param1: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QBuffer, slot: proc(super: QBufferdisconnectNotifyBase, param1: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QBufferdisconnectNotifyBase, param1: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_disconnectNotify(self: ptr cQBuffer, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QBuffer_disconnectNotify ".} =
  type Cb = proc(super: QBufferdisconnectNotifyBase, param1: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QBuffer(h: self), param1)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_readData(self: QBuffer, data: cstring, maxlen: clonglong): clonglong =


  fQBuffer_virtualbase_readData(self.h, data, maxlen)

type QBufferreadDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: QBuffer, slot: proc(super: QBufferreadDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QBufferreadDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_readData(self: ptr cQBuffer, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QBuffer_readData ".} =
  type Cb = proc(super: QBufferreadDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readData(QBuffer(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeData(self: QBuffer, data: cstring, len: clonglong): clonglong =


  fQBuffer_virtualbase_writeData(self.h, data, len)

type QBufferwriteDataBase* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: QBuffer, slot: proc(super: QBufferwriteDataBase, data: cstring, len: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QBufferwriteDataBase, data: cstring, len: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_writeData(self: ptr cQBuffer, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QBuffer_writeData ".} =
  type Cb = proc(super: QBufferwriteDataBase, data: cstring, len: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, len: clonglong): auto =
    callVirtualBase_writeData(QBuffer(h: self), data, len)
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_isSequential(self: QBuffer, ): bool =


  fQBuffer_virtualbase_isSequential(self.h)

type QBufferisSequentialBase* = proc(): bool
proc onisSequential*(self: QBuffer, slot: proc(super: QBufferisSequentialBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QBufferisSequentialBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_isSequential(self: ptr cQBuffer, slot: int): bool {.exportc: "miqt_exec_callback_QBuffer_isSequential ".} =
  type Cb = proc(super: QBufferisSequentialBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSequential(QBuffer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_reset(self: QBuffer, ): bool =


  fQBuffer_virtualbase_reset(self.h)

type QBufferresetBase* = proc(): bool
proc onreset*(self: QBuffer, slot: proc(super: QBufferresetBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QBufferresetBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_reset(self: ptr cQBuffer, slot: int): bool {.exportc: "miqt_exec_callback_QBuffer_reset ".} =
  type Cb = proc(super: QBufferresetBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QBuffer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesAvailable(self: QBuffer, ): clonglong =


  fQBuffer_virtualbase_bytesAvailable(self.h)

type QBufferbytesAvailableBase* = proc(): clonglong
proc onbytesAvailable*(self: QBuffer, slot: proc(super: QBufferbytesAvailableBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QBufferbytesAvailableBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_bytesAvailable(self: ptr cQBuffer, slot: int): clonglong {.exportc: "miqt_exec_callback_QBuffer_bytesAvailable ".} =
  type Cb = proc(super: QBufferbytesAvailableBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesAvailable(QBuffer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesToWrite(self: QBuffer, ): clonglong =


  fQBuffer_virtualbase_bytesToWrite(self.h)

type QBufferbytesToWriteBase* = proc(): clonglong
proc onbytesToWrite*(self: QBuffer, slot: proc(super: QBufferbytesToWriteBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QBufferbytesToWriteBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_bytesToWrite(self: ptr cQBuffer, slot: int): clonglong {.exportc: "miqt_exec_callback_QBuffer_bytesToWrite ".} =
  type Cb = proc(super: QBufferbytesToWriteBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesToWrite(QBuffer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_waitForReadyRead(self: QBuffer, msecs: cint): bool =


  fQBuffer_virtualbase_waitForReadyRead(self.h, msecs)

type QBufferwaitForReadyReadBase* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: QBuffer, slot: proc(super: QBufferwaitForReadyReadBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QBufferwaitForReadyReadBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_waitForReadyRead(self: ptr cQBuffer, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QBuffer_waitForReadyRead ".} =
  type Cb = proc(super: QBufferwaitForReadyReadBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForReadyRead(QBuffer(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForBytesWritten(self: QBuffer, msecs: cint): bool =


  fQBuffer_virtualbase_waitForBytesWritten(self.h, msecs)

type QBufferwaitForBytesWrittenBase* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: QBuffer, slot: proc(super: QBufferwaitForBytesWrittenBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QBufferwaitForBytesWrittenBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_waitForBytesWritten(self: ptr cQBuffer, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QBuffer_waitForBytesWritten ".} =
  type Cb = proc(super: QBufferwaitForBytesWrittenBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForBytesWritten(QBuffer(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_readLineData(self: QBuffer, data: cstring, maxlen: clonglong): clonglong =


  fQBuffer_virtualbase_readLineData(self.h, data, maxlen)

type QBufferreadLineDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: QBuffer, slot: proc(super: QBufferreadLineDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QBufferreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_readLineData(self: ptr cQBuffer, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QBuffer_readLineData ".} =
  type Cb = proc(super: QBufferreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readLineData(QBuffer(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_skipData(self: QBuffer, maxSize: clonglong): clonglong =


  fQBuffer_virtualbase_skipData(self.h, maxSize)

type QBufferskipDataBase* = proc(maxSize: clonglong): clonglong
proc onskipData*(self: QBuffer, slot: proc(super: QBufferskipDataBase, maxSize: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QBufferskipDataBase, maxSize: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_skipData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_skipData(self: ptr cQBuffer, slot: int, maxSize: clonglong): clonglong {.exportc: "miqt_exec_callback_QBuffer_skipData ".} =
  type Cb = proc(super: QBufferskipDataBase, maxSize: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(maxSize: clonglong): auto =
    callVirtualBase_skipData(QBuffer(h: self), maxSize)
  let slotval1 = maxSize


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QBuffer, event: gen_qcoreevent.QEvent): bool =


  fQBuffer_virtualbase_event(self.h, event.h)

type QBuffereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QBuffer, slot: proc(super: QBuffereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QBuffereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_event(self: ptr cQBuffer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QBuffer_event ".} =
  type Cb = proc(super: QBuffereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QBuffer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QBuffer, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQBuffer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QBuffereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QBuffer, slot: proc(super: QBuffereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QBuffereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_eventFilter(self: ptr cQBuffer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QBuffer_eventFilter ".} =
  type Cb = proc(super: QBuffereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QBuffer(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QBuffer, event: gen_qcoreevent.QTimerEvent): void =


  fQBuffer_virtualbase_timerEvent(self.h, event.h)

type QBuffertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QBuffer, slot: proc(super: QBuffertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QBuffertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_timerEvent(self: ptr cQBuffer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QBuffer_timerEvent ".} =
  type Cb = proc(super: QBuffertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QBuffer(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QBuffer, event: gen_qcoreevent.QChildEvent): void =


  fQBuffer_virtualbase_childEvent(self.h, event.h)

type QBufferchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QBuffer, slot: proc(super: QBufferchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QBufferchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_childEvent(self: ptr cQBuffer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QBuffer_childEvent ".} =
  type Cb = proc(super: QBufferchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QBuffer(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QBuffer, event: gen_qcoreevent.QEvent): void =


  fQBuffer_virtualbase_customEvent(self.h, event.h)

type QBuffercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QBuffer, slot: proc(super: QBuffercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QBuffercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_customEvent(self: ptr cQBuffer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QBuffer_customEvent ".} =
  type Cb = proc(super: QBuffercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QBuffer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QBuffer): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQBuffer_staticMetaObject())
proc delete*(self: QBuffer) =
  fcQBuffer_delete(self.h)
