import Qt6MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6MultimediaWidgets")
{.compile("gen_qwavedecoder.cpp", cflags).}


import gen_qwavedecoder_types
export gen_qwavedecoder_types

import
  gen_qaudioformat,
  gen_qcoreevent,
  gen_qiodevice,
  gen_qiodevicebase,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qaudioformat,
  gen_qcoreevent,
  gen_qiodevice,
  gen_qiodevicebase,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQWaveDecoder*{.exportc: "QWaveDecoder", incompleteStruct.} = object

proc fcQWaveDecoder_new(device: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new".}
proc fcQWaveDecoder_new2(device: pointer, format: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new2".}
proc fcQWaveDecoder_new3(device: pointer, parent: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new3".}
proc fcQWaveDecoder_new4(device: pointer, format: pointer, parent: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new4".}
proc fcQWaveDecoder_metaObject(self: pointer, ): pointer {.importc: "QWaveDecoder_metaObject".}
proc fcQWaveDecoder_metacast(self: pointer, param1: cstring): pointer {.importc: "QWaveDecoder_metacast".}
proc fcQWaveDecoder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWaveDecoder_metacall".}
proc fcQWaveDecoder_tr(s: cstring): struct_miqt_string {.importc: "QWaveDecoder_tr".}
proc fcQWaveDecoder_audioFormat(self: pointer, ): pointer {.importc: "QWaveDecoder_audioFormat".}
proc fcQWaveDecoder_getDevice(self: pointer, ): pointer {.importc: "QWaveDecoder_getDevice".}
proc fcQWaveDecoder_duration(self: pointer, ): cint {.importc: "QWaveDecoder_duration".}
proc fcQWaveDecoder_headerLength(): clonglong {.importc: "QWaveDecoder_headerLength".}
proc fcQWaveDecoder_open(self: pointer, mode: cint): bool {.importc: "QWaveDecoder_open".}
proc fcQWaveDecoder_close(self: pointer, ): void {.importc: "QWaveDecoder_close".}
proc fcQWaveDecoder_seek(self: pointer, pos: clonglong): bool {.importc: "QWaveDecoder_seek".}
proc fcQWaveDecoder_pos(self: pointer, ): clonglong {.importc: "QWaveDecoder_pos".}
proc fcQWaveDecoder_size(self: pointer, ): clonglong {.importc: "QWaveDecoder_size".}
proc fcQWaveDecoder_isSequential(self: pointer, ): bool {.importc: "QWaveDecoder_isSequential".}
proc fcQWaveDecoder_bytesAvailable(self: pointer, ): clonglong {.importc: "QWaveDecoder_bytesAvailable".}
proc fcQWaveDecoder_formatKnown(self: pointer, ): void {.importc: "QWaveDecoder_formatKnown".}
proc fQWaveDecoder_connect_formatKnown(self: pointer, slot: int) {.importc: "QWaveDecoder_connect_formatKnown".}
proc fcQWaveDecoder_parsingError(self: pointer, ): void {.importc: "QWaveDecoder_parsingError".}
proc fQWaveDecoder_connect_parsingError(self: pointer, slot: int) {.importc: "QWaveDecoder_connect_parsingError".}
proc fcQWaveDecoder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWaveDecoder_tr2".}
proc fcQWaveDecoder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWaveDecoder_tr3".}
proc fQWaveDecoder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWaveDecoder_virtualbase_metacall".}
proc fcQWaveDecoder_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_metacall".}
proc fQWaveDecoder_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QWaveDecoder_virtualbase_open".}
proc fcQWaveDecoder_override_virtual_open(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_open".}
proc fQWaveDecoder_virtualbase_close(self: pointer, ): void{.importc: "QWaveDecoder_virtualbase_close".}
proc fcQWaveDecoder_override_virtual_close(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_close".}
proc fQWaveDecoder_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QWaveDecoder_virtualbase_seek".}
proc fcQWaveDecoder_override_virtual_seek(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_seek".}
proc fQWaveDecoder_virtualbase_pos(self: pointer, ): clonglong{.importc: "QWaveDecoder_virtualbase_pos".}
proc fcQWaveDecoder_override_virtual_pos(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_pos".}
proc fQWaveDecoder_virtualbase_size(self: pointer, ): clonglong{.importc: "QWaveDecoder_virtualbase_size".}
proc fcQWaveDecoder_override_virtual_size(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_size".}
proc fQWaveDecoder_virtualbase_isSequential(self: pointer, ): bool{.importc: "QWaveDecoder_virtualbase_isSequential".}
proc fcQWaveDecoder_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_isSequential".}
proc fQWaveDecoder_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QWaveDecoder_virtualbase_bytesAvailable".}
proc fcQWaveDecoder_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_bytesAvailable".}
proc fQWaveDecoder_virtualbase_atEnd(self: pointer, ): bool{.importc: "QWaveDecoder_virtualbase_atEnd".}
proc fcQWaveDecoder_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_atEnd".}
proc fQWaveDecoder_virtualbase_reset(self: pointer, ): bool{.importc: "QWaveDecoder_virtualbase_reset".}
proc fcQWaveDecoder_override_virtual_reset(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_reset".}
proc fQWaveDecoder_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QWaveDecoder_virtualbase_bytesToWrite".}
proc fcQWaveDecoder_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_bytesToWrite".}
proc fQWaveDecoder_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QWaveDecoder_virtualbase_canReadLine".}
proc fcQWaveDecoder_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_canReadLine".}
proc fQWaveDecoder_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QWaveDecoder_virtualbase_waitForReadyRead".}
proc fcQWaveDecoder_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_waitForReadyRead".}
proc fQWaveDecoder_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QWaveDecoder_virtualbase_waitForBytesWritten".}
proc fcQWaveDecoder_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_waitForBytesWritten".}
proc fQWaveDecoder_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QWaveDecoder_virtualbase_readLineData".}
proc fcQWaveDecoder_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_readLineData".}
proc fQWaveDecoder_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong{.importc: "QWaveDecoder_virtualbase_skipData".}
proc fcQWaveDecoder_override_virtual_skipData(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_skipData".}
proc fQWaveDecoder_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWaveDecoder_virtualbase_event".}
proc fcQWaveDecoder_override_virtual_event(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_event".}
proc fQWaveDecoder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWaveDecoder_virtualbase_eventFilter".}
proc fcQWaveDecoder_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_eventFilter".}
proc fQWaveDecoder_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWaveDecoder_virtualbase_timerEvent".}
proc fcQWaveDecoder_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_timerEvent".}
proc fQWaveDecoder_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWaveDecoder_virtualbase_childEvent".}
proc fcQWaveDecoder_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_childEvent".}
proc fQWaveDecoder_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWaveDecoder_virtualbase_customEvent".}
proc fcQWaveDecoder_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_customEvent".}
proc fQWaveDecoder_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWaveDecoder_virtualbase_connectNotify".}
proc fcQWaveDecoder_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_connectNotify".}
proc fQWaveDecoder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWaveDecoder_virtualbase_disconnectNotify".}
proc fcQWaveDecoder_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_disconnectNotify".}
proc fcQWaveDecoder_staticMetaObject(): pointer {.importc: "QWaveDecoder_staticMetaObject".}
proc fcQWaveDecoder_delete(self: pointer) {.importc: "QWaveDecoder_delete".}


func init*(T: type QWaveDecoder, h: ptr cQWaveDecoder): QWaveDecoder =
  T(h: h)
proc create*(T: type QWaveDecoder, device: gen_qiodevice.QIODevice): QWaveDecoder =

  QWaveDecoder.init(fcQWaveDecoder_new(device.h))
proc create*(T: type QWaveDecoder, device: gen_qiodevice.QIODevice, format: gen_qaudioformat.QAudioFormat): QWaveDecoder =

  QWaveDecoder.init(fcQWaveDecoder_new2(device.h, format.h))
proc create2*(T: type QWaveDecoder, device: gen_qiodevice.QIODevice, parent: gen_qobject.QObject): QWaveDecoder =

  QWaveDecoder.init(fcQWaveDecoder_new3(device.h, parent.h))
proc create*(T: type QWaveDecoder, device: gen_qiodevice.QIODevice, format: gen_qaudioformat.QAudioFormat, parent: gen_qobject.QObject): QWaveDecoder =

  QWaveDecoder.init(fcQWaveDecoder_new4(device.h, format.h, parent.h))
proc metaObject*(self: QWaveDecoder, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWaveDecoder_metaObject(self.h))

proc metacast*(self: QWaveDecoder, param1: cstring): pointer =

  fcQWaveDecoder_metacast(self.h, param1)

proc metacall*(self: QWaveDecoder, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWaveDecoder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWaveDecoder, s: cstring): string =

  let v_ms = fcQWaveDecoder_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioFormat*(self: QWaveDecoder, ): gen_qaudioformat.QAudioFormat =

  gen_qaudioformat.QAudioFormat(h: fcQWaveDecoder_audioFormat(self.h))

proc getDevice*(self: QWaveDecoder, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQWaveDecoder_getDevice(self.h))

proc duration*(self: QWaveDecoder, ): cint =

  fcQWaveDecoder_duration(self.h)

proc headerLength*(_: type QWaveDecoder, ): clonglong =

  fcQWaveDecoder_headerLength()

proc open*(self: QWaveDecoder, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =

  fcQWaveDecoder_open(self.h, cint(mode))

proc close*(self: QWaveDecoder, ): void =

  fcQWaveDecoder_close(self.h)

proc seek*(self: QWaveDecoder, pos: clonglong): bool =

  fcQWaveDecoder_seek(self.h, pos)

proc pos*(self: QWaveDecoder, ): clonglong =

  fcQWaveDecoder_pos(self.h)

proc size*(self: QWaveDecoder, ): clonglong =

  fcQWaveDecoder_size(self.h)

proc isSequential*(self: QWaveDecoder, ): bool =

  fcQWaveDecoder_isSequential(self.h)

proc bytesAvailable*(self: QWaveDecoder, ): clonglong =

  fcQWaveDecoder_bytesAvailable(self.h)

proc formatKnown*(self: QWaveDecoder, ): void =

  fcQWaveDecoder_formatKnown(self.h)

proc miqt_exec_callback_QWaveDecoder_formatKnown(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onformatKnown*(self: QWaveDecoder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWaveDecoder_connect_formatKnown(self.h, cast[int](addr tmp[]))
proc parsingError*(self: QWaveDecoder, ): void =

  fcQWaveDecoder_parsingError(self.h)

proc miqt_exec_callback_QWaveDecoder_parsingError(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onparsingError*(self: QWaveDecoder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWaveDecoder_connect_parsingError(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QWaveDecoder, s: cstring, c: cstring): string =

  let v_ms = fcQWaveDecoder_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWaveDecoder, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWaveDecoder_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QWaveDecoder, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWaveDecoder_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWaveDecodermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWaveDecoder, slot: proc(super: QWaveDecodermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecodermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_metacall(self: ptr cQWaveDecoder, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWaveDecoder_metacall ".} =
  type Cb = proc(super: QWaveDecodermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWaveDecoder(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_open(self: QWaveDecoder, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =


  fQWaveDecoder_virtualbase_open(self.h, cint(mode))

type QWaveDecoderopenBase* = proc(mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
proc onopen*(self: QWaveDecoder, slot: proc(super: QWaveDecoderopenBase, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderopenBase, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_open(self: ptr cQWaveDecoder, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QWaveDecoder_open ".} =
  type Cb = proc(super: QWaveDecoderopenBase, mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): auto =
    callVirtualBase_open(QWaveDecoder(h: self), mode)
  let slotval1 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(mode)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_close(self: QWaveDecoder, ): void =


  fQWaveDecoder_virtualbase_close(self.h)

type QWaveDecodercloseBase* = proc(): void
proc onclose*(self: QWaveDecoder, slot: proc(super: QWaveDecodercloseBase): void) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecodercloseBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_close(self: ptr cQWaveDecoder, slot: int): void {.exportc: "miqt_exec_callback_QWaveDecoder_close ".} =
  type Cb = proc(super: QWaveDecodercloseBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_close(QWaveDecoder(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_seek(self: QWaveDecoder, pos: clonglong): bool =


  fQWaveDecoder_virtualbase_seek(self.h, pos)

type QWaveDecoderseekBase* = proc(pos: clonglong): bool
proc onseek*(self: QWaveDecoder, slot: proc(super: QWaveDecoderseekBase, pos: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderseekBase, pos: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_seek(self: ptr cQWaveDecoder, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QWaveDecoder_seek ".} =
  type Cb = proc(super: QWaveDecoderseekBase, pos: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: clonglong): auto =
    callVirtualBase_seek(QWaveDecoder(h: self), pos)
  let slotval1 = pos


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_pos(self: QWaveDecoder, ): clonglong =


  fQWaveDecoder_virtualbase_pos(self.h)

type QWaveDecoderposBase* = proc(): clonglong
proc onpos*(self: QWaveDecoder, slot: proc(super: QWaveDecoderposBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderposBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_pos(self: ptr cQWaveDecoder, slot: int): clonglong {.exportc: "miqt_exec_callback_QWaveDecoder_pos ".} =
  type Cb = proc(super: QWaveDecoderposBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_pos(QWaveDecoder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_size(self: QWaveDecoder, ): clonglong =


  fQWaveDecoder_virtualbase_size(self.h)

type QWaveDecodersizeBase* = proc(): clonglong
proc onsize*(self: QWaveDecoder, slot: proc(super: QWaveDecodersizeBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecodersizeBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_size(self: ptr cQWaveDecoder, slot: int): clonglong {.exportc: "miqt_exec_callback_QWaveDecoder_size ".} =
  type Cb = proc(super: QWaveDecodersizeBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QWaveDecoder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isSequential(self: QWaveDecoder, ): bool =


  fQWaveDecoder_virtualbase_isSequential(self.h)

type QWaveDecoderisSequentialBase* = proc(): bool
proc onisSequential*(self: QWaveDecoder, slot: proc(super: QWaveDecoderisSequentialBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderisSequentialBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_isSequential(self: ptr cQWaveDecoder, slot: int): bool {.exportc: "miqt_exec_callback_QWaveDecoder_isSequential ".} =
  type Cb = proc(super: QWaveDecoderisSequentialBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSequential(QWaveDecoder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesAvailable(self: QWaveDecoder, ): clonglong =


  fQWaveDecoder_virtualbase_bytesAvailable(self.h)

type QWaveDecoderbytesAvailableBase* = proc(): clonglong
proc onbytesAvailable*(self: QWaveDecoder, slot: proc(super: QWaveDecoderbytesAvailableBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderbytesAvailableBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_bytesAvailable(self: ptr cQWaveDecoder, slot: int): clonglong {.exportc: "miqt_exec_callback_QWaveDecoder_bytesAvailable ".} =
  type Cb = proc(super: QWaveDecoderbytesAvailableBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesAvailable(QWaveDecoder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_atEnd(self: QWaveDecoder, ): bool =


  fQWaveDecoder_virtualbase_atEnd(self.h)

type QWaveDecoderatEndBase* = proc(): bool
proc onatEnd*(self: QWaveDecoder, slot: proc(super: QWaveDecoderatEndBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderatEndBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_atEnd(self: ptr cQWaveDecoder, slot: int): bool {.exportc: "miqt_exec_callback_QWaveDecoder_atEnd ".} =
  type Cb = proc(super: QWaveDecoderatEndBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_atEnd(QWaveDecoder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_reset(self: QWaveDecoder, ): bool =


  fQWaveDecoder_virtualbase_reset(self.h)

type QWaveDecoderresetBase* = proc(): bool
proc onreset*(self: QWaveDecoder, slot: proc(super: QWaveDecoderresetBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderresetBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_reset(self: ptr cQWaveDecoder, slot: int): bool {.exportc: "miqt_exec_callback_QWaveDecoder_reset ".} =
  type Cb = proc(super: QWaveDecoderresetBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QWaveDecoder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesToWrite(self: QWaveDecoder, ): clonglong =


  fQWaveDecoder_virtualbase_bytesToWrite(self.h)

type QWaveDecoderbytesToWriteBase* = proc(): clonglong
proc onbytesToWrite*(self: QWaveDecoder, slot: proc(super: QWaveDecoderbytesToWriteBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderbytesToWriteBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_bytesToWrite(self: ptr cQWaveDecoder, slot: int): clonglong {.exportc: "miqt_exec_callback_QWaveDecoder_bytesToWrite ".} =
  type Cb = proc(super: QWaveDecoderbytesToWriteBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesToWrite(QWaveDecoder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_canReadLine(self: QWaveDecoder, ): bool =


  fQWaveDecoder_virtualbase_canReadLine(self.h)

type QWaveDecodercanReadLineBase* = proc(): bool
proc oncanReadLine*(self: QWaveDecoder, slot: proc(super: QWaveDecodercanReadLineBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecodercanReadLineBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_canReadLine(self: ptr cQWaveDecoder, slot: int): bool {.exportc: "miqt_exec_callback_QWaveDecoder_canReadLine ".} =
  type Cb = proc(super: QWaveDecodercanReadLineBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_canReadLine(QWaveDecoder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_waitForReadyRead(self: QWaveDecoder, msecs: cint): bool =


  fQWaveDecoder_virtualbase_waitForReadyRead(self.h, msecs)

type QWaveDecoderwaitForReadyReadBase* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: QWaveDecoder, slot: proc(super: QWaveDecoderwaitForReadyReadBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderwaitForReadyReadBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_waitForReadyRead(self: ptr cQWaveDecoder, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QWaveDecoder_waitForReadyRead ".} =
  type Cb = proc(super: QWaveDecoderwaitForReadyReadBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForReadyRead(QWaveDecoder(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForBytesWritten(self: QWaveDecoder, msecs: cint): bool =


  fQWaveDecoder_virtualbase_waitForBytesWritten(self.h, msecs)

type QWaveDecoderwaitForBytesWrittenBase* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: QWaveDecoder, slot: proc(super: QWaveDecoderwaitForBytesWrittenBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderwaitForBytesWrittenBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_waitForBytesWritten(self: ptr cQWaveDecoder, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QWaveDecoder_waitForBytesWritten ".} =
  type Cb = proc(super: QWaveDecoderwaitForBytesWrittenBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForBytesWritten(QWaveDecoder(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_readLineData(self: QWaveDecoder, data: cstring, maxlen: clonglong): clonglong =


  fQWaveDecoder_virtualbase_readLineData(self.h, data, maxlen)

type QWaveDecoderreadLineDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: QWaveDecoder, slot: proc(super: QWaveDecoderreadLineDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_readLineData(self: ptr cQWaveDecoder, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QWaveDecoder_readLineData ".} =
  type Cb = proc(super: QWaveDecoderreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readLineData(QWaveDecoder(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_skipData(self: QWaveDecoder, maxSize: clonglong): clonglong =


  fQWaveDecoder_virtualbase_skipData(self.h, maxSize)

type QWaveDecoderskipDataBase* = proc(maxSize: clonglong): clonglong
proc onskipData*(self: QWaveDecoder, slot: proc(super: QWaveDecoderskipDataBase, maxSize: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderskipDataBase, maxSize: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_skipData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_skipData(self: ptr cQWaveDecoder, slot: int, maxSize: clonglong): clonglong {.exportc: "miqt_exec_callback_QWaveDecoder_skipData ".} =
  type Cb = proc(super: QWaveDecoderskipDataBase, maxSize: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(maxSize: clonglong): auto =
    callVirtualBase_skipData(QWaveDecoder(h: self), maxSize)
  let slotval1 = maxSize


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QWaveDecoder, event: gen_qcoreevent.QEvent): bool =


  fQWaveDecoder_virtualbase_event(self.h, event.h)

type QWaveDecodereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWaveDecoder, slot: proc(super: QWaveDecodereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecodereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_event(self: ptr cQWaveDecoder, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWaveDecoder_event ".} =
  type Cb = proc(super: QWaveDecodereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWaveDecoder(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QWaveDecoder, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWaveDecoder_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWaveDecodereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWaveDecoder, slot: proc(super: QWaveDecodereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecodereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_eventFilter(self: ptr cQWaveDecoder, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWaveDecoder_eventFilter ".} =
  type Cb = proc(super: QWaveDecodereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWaveDecoder(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWaveDecoder, event: gen_qcoreevent.QTimerEvent): void =


  fQWaveDecoder_virtualbase_timerEvent(self.h, event.h)

type QWaveDecodertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWaveDecoder, slot: proc(super: QWaveDecodertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecodertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_timerEvent(self: ptr cQWaveDecoder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWaveDecoder_timerEvent ".} =
  type Cb = proc(super: QWaveDecodertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWaveDecoder(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWaveDecoder, event: gen_qcoreevent.QChildEvent): void =


  fQWaveDecoder_virtualbase_childEvent(self.h, event.h)

type QWaveDecoderchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWaveDecoder, slot: proc(super: QWaveDecoderchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_childEvent(self: ptr cQWaveDecoder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWaveDecoder_childEvent ".} =
  type Cb = proc(super: QWaveDecoderchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWaveDecoder(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWaveDecoder, event: gen_qcoreevent.QEvent): void =


  fQWaveDecoder_virtualbase_customEvent(self.h, event.h)

type QWaveDecodercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWaveDecoder, slot: proc(super: QWaveDecodercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecodercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_customEvent(self: ptr cQWaveDecoder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWaveDecoder_customEvent ".} =
  type Cb = proc(super: QWaveDecodercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWaveDecoder(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWaveDecoder, signal: gen_qmetaobject.QMetaMethod): void =


  fQWaveDecoder_virtualbase_connectNotify(self.h, signal.h)

type QWaveDecoderconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWaveDecoder, slot: proc(super: QWaveDecoderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_connectNotify(self: ptr cQWaveDecoder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWaveDecoder_connectNotify ".} =
  type Cb = proc(super: QWaveDecoderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWaveDecoder(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWaveDecoder, signal: gen_qmetaobject.QMetaMethod): void =


  fQWaveDecoder_virtualbase_disconnectNotify(self.h, signal.h)

type QWaveDecoderdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWaveDecoder, slot: proc(super: QWaveDecoderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWaveDecoderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_disconnectNotify(self: ptr cQWaveDecoder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWaveDecoder_disconnectNotify ".} =
  type Cb = proc(super: QWaveDecoderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWaveDecoder(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QWaveDecoder): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWaveDecoder_staticMetaObject())
proc delete*(self: QWaveDecoder) =
  fcQWaveDecoder_delete(self.h)
