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
{.compile("gen_qaudiodecoder.cpp", cflags).}


type QAudioDecoderError* = cint
const
  QAudioDecoderNoError* = 0
  QAudioDecoderResourceError* = 1
  QAudioDecoderFormatError* = 2
  QAudioDecoderAccessDeniedError* = 3
  QAudioDecoderNotSupportedError* = 4



import gen_qaudiodecoder_types
export gen_qaudiodecoder_types

import
  gen_qaudiobuffer,
  gen_qaudioformat,
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl
export
  gen_qaudiobuffer,
  gen_qaudioformat,
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl

type cQAudioDecoder*{.exportc: "QAudioDecoder", incompleteStruct.} = object

proc fcQAudioDecoder_new(): ptr cQAudioDecoder {.importc: "QAudioDecoder_new".}
proc fcQAudioDecoder_new2(parent: pointer): ptr cQAudioDecoder {.importc: "QAudioDecoder_new2".}
proc fcQAudioDecoder_metaObject(self: pointer, ): pointer {.importc: "QAudioDecoder_metaObject".}
proc fcQAudioDecoder_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioDecoder_metacast".}
proc fcQAudioDecoder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioDecoder_metacall".}
proc fcQAudioDecoder_tr(s: cstring): struct_miqt_string {.importc: "QAudioDecoder_tr".}
proc fcQAudioDecoder_isSupported(self: pointer, ): bool {.importc: "QAudioDecoder_isSupported".}
proc fcQAudioDecoder_isDecoding(self: pointer, ): bool {.importc: "QAudioDecoder_isDecoding".}
proc fcQAudioDecoder_source(self: pointer, ): pointer {.importc: "QAudioDecoder_source".}
proc fcQAudioDecoder_setSource(self: pointer, fileName: pointer): void {.importc: "QAudioDecoder_setSource".}
proc fcQAudioDecoder_sourceDevice(self: pointer, ): pointer {.importc: "QAudioDecoder_sourceDevice".}
proc fcQAudioDecoder_setSourceDevice(self: pointer, device: pointer): void {.importc: "QAudioDecoder_setSourceDevice".}
proc fcQAudioDecoder_audioFormat(self: pointer, ): pointer {.importc: "QAudioDecoder_audioFormat".}
proc fcQAudioDecoder_setAudioFormat(self: pointer, format: pointer): void {.importc: "QAudioDecoder_setAudioFormat".}
proc fcQAudioDecoder_error(self: pointer, ): cint {.importc: "QAudioDecoder_error".}
proc fcQAudioDecoder_errorString(self: pointer, ): struct_miqt_string {.importc: "QAudioDecoder_errorString".}
proc fcQAudioDecoder_read(self: pointer, ): pointer {.importc: "QAudioDecoder_read".}
proc fcQAudioDecoder_bufferAvailable(self: pointer, ): bool {.importc: "QAudioDecoder_bufferAvailable".}
proc fcQAudioDecoder_position(self: pointer, ): clonglong {.importc: "QAudioDecoder_position".}
proc fcQAudioDecoder_duration(self: pointer, ): clonglong {.importc: "QAudioDecoder_duration".}
proc fcQAudioDecoder_start(self: pointer, ): void {.importc: "QAudioDecoder_start".}
proc fcQAudioDecoder_stop(self: pointer, ): void {.importc: "QAudioDecoder_stop".}
proc fcQAudioDecoder_bufferAvailableChanged(self: pointer, param1: bool): void {.importc: "QAudioDecoder_bufferAvailableChanged".}
proc fQAudioDecoder_connect_bufferAvailableChanged(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_bufferAvailableChanged".}
proc fcQAudioDecoder_bufferReady(self: pointer, ): void {.importc: "QAudioDecoder_bufferReady".}
proc fQAudioDecoder_connect_bufferReady(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_bufferReady".}
proc fcQAudioDecoder_finished(self: pointer, ): void {.importc: "QAudioDecoder_finished".}
proc fQAudioDecoder_connect_finished(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_finished".}
proc fcQAudioDecoder_isDecodingChanged(self: pointer, param1: bool): void {.importc: "QAudioDecoder_isDecodingChanged".}
proc fQAudioDecoder_connect_isDecodingChanged(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_isDecodingChanged".}
proc fcQAudioDecoder_formatChanged(self: pointer, format: pointer): void {.importc: "QAudioDecoder_formatChanged".}
proc fQAudioDecoder_connect_formatChanged(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_formatChanged".}
proc fcQAudioDecoder_errorWithError(self: pointer, error: cint): void {.importc: "QAudioDecoder_errorWithError".}
proc fQAudioDecoder_connect_errorWithError(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_errorWithError".}
proc fcQAudioDecoder_sourceChanged(self: pointer, ): void {.importc: "QAudioDecoder_sourceChanged".}
proc fQAudioDecoder_connect_sourceChanged(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_sourceChanged".}
proc fcQAudioDecoder_positionChanged(self: pointer, position: clonglong): void {.importc: "QAudioDecoder_positionChanged".}
proc fQAudioDecoder_connect_positionChanged(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_positionChanged".}
proc fcQAudioDecoder_durationChanged(self: pointer, duration: clonglong): void {.importc: "QAudioDecoder_durationChanged".}
proc fQAudioDecoder_connect_durationChanged(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_durationChanged".}
proc fcQAudioDecoder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioDecoder_tr2".}
proc fcQAudioDecoder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioDecoder_tr3".}
proc fQAudioDecoder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioDecoder_virtualbase_metacall".}
proc fcQAudioDecoder_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_metacall".}
proc fQAudioDecoder_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioDecoder_virtualbase_event".}
proc fcQAudioDecoder_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_event".}
proc fQAudioDecoder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioDecoder_virtualbase_eventFilter".}
proc fcQAudioDecoder_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_eventFilter".}
proc fQAudioDecoder_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioDecoder_virtualbase_timerEvent".}
proc fcQAudioDecoder_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_timerEvent".}
proc fQAudioDecoder_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioDecoder_virtualbase_childEvent".}
proc fcQAudioDecoder_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_childEvent".}
proc fQAudioDecoder_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioDecoder_virtualbase_customEvent".}
proc fcQAudioDecoder_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_customEvent".}
proc fQAudioDecoder_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioDecoder_virtualbase_connectNotify".}
proc fcQAudioDecoder_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_connectNotify".}
proc fQAudioDecoder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioDecoder_virtualbase_disconnectNotify".}
proc fcQAudioDecoder_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_disconnectNotify".}
proc fcQAudioDecoder_delete(self: pointer) {.importc: "QAudioDecoder_delete".}


func init*(T: type QAudioDecoder, h: ptr cQAudioDecoder): QAudioDecoder =
  T(h: h)
proc create*(T: type QAudioDecoder, ): QAudioDecoder =

  QAudioDecoder.init(fcQAudioDecoder_new())
proc create*(T: type QAudioDecoder, parent: gen_qobject.QObject): QAudioDecoder =

  QAudioDecoder.init(fcQAudioDecoder_new2(parent.h))
proc metaObject*(self: QAudioDecoder, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAudioDecoder_metaObject(self.h))

proc metacast*(self: QAudioDecoder, param1: cstring): pointer =

  fcQAudioDecoder_metacast(self.h, param1)

proc metacall*(self: QAudioDecoder, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAudioDecoder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAudioDecoder, s: cstring): string =

  let v_ms = fcQAudioDecoder_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isSupported*(self: QAudioDecoder, ): bool =

  fcQAudioDecoder_isSupported(self.h)

proc isDecoding*(self: QAudioDecoder, ): bool =

  fcQAudioDecoder_isDecoding(self.h)

proc source*(self: QAudioDecoder, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQAudioDecoder_source(self.h))

proc setSource*(self: QAudioDecoder, fileName: gen_qurl.QUrl): void =

  fcQAudioDecoder_setSource(self.h, fileName.h)

proc sourceDevice*(self: QAudioDecoder, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQAudioDecoder_sourceDevice(self.h))

proc setSourceDevice*(self: QAudioDecoder, device: gen_qiodevice.QIODevice): void =

  fcQAudioDecoder_setSourceDevice(self.h, device.h)

proc audioFormat*(self: QAudioDecoder, ): gen_qaudioformat.QAudioFormat =

  gen_qaudioformat.QAudioFormat(h: fcQAudioDecoder_audioFormat(self.h))

proc setAudioFormat*(self: QAudioDecoder, format: gen_qaudioformat.QAudioFormat): void =

  fcQAudioDecoder_setAudioFormat(self.h, format.h)

proc error*(self: QAudioDecoder, ): QAudioDecoderError =

  QAudioDecoderError(fcQAudioDecoder_error(self.h))

proc errorString*(self: QAudioDecoder, ): string =

  let v_ms = fcQAudioDecoder_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc read*(self: QAudioDecoder, ): gen_qaudiobuffer.QAudioBuffer =

  gen_qaudiobuffer.QAudioBuffer(h: fcQAudioDecoder_read(self.h))

proc bufferAvailable*(self: QAudioDecoder, ): bool =

  fcQAudioDecoder_bufferAvailable(self.h)

proc position*(self: QAudioDecoder, ): clonglong =

  fcQAudioDecoder_position(self.h)

proc duration*(self: QAudioDecoder, ): clonglong =

  fcQAudioDecoder_duration(self.h)

proc start*(self: QAudioDecoder, ): void =

  fcQAudioDecoder_start(self.h)

proc stop*(self: QAudioDecoder, ): void =

  fcQAudioDecoder_stop(self.h)

proc bufferAvailableChanged*(self: QAudioDecoder, param1: bool): void =

  fcQAudioDecoder_bufferAvailableChanged(self.h, param1)

proc miqt_exec_callback_QAudioDecoder_bufferAvailableChanged(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onbufferAvailableChanged*(self: QAudioDecoder, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoder_connect_bufferAvailableChanged(self.h, cast[int](addr tmp[]))
proc bufferReady*(self: QAudioDecoder, ): void =

  fcQAudioDecoder_bufferReady(self.h)

proc miqt_exec_callback_QAudioDecoder_bufferReady(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onbufferReady*(self: QAudioDecoder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoder_connect_bufferReady(self.h, cast[int](addr tmp[]))
proc finished*(self: QAudioDecoder, ): void =

  fcQAudioDecoder_finished(self.h)

proc miqt_exec_callback_QAudioDecoder_finished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfinished*(self: QAudioDecoder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoder_connect_finished(self.h, cast[int](addr tmp[]))
proc isDecodingChanged*(self: QAudioDecoder, param1: bool): void =

  fcQAudioDecoder_isDecodingChanged(self.h, param1)

proc miqt_exec_callback_QAudioDecoder_isDecodingChanged(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onisDecodingChanged*(self: QAudioDecoder, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoder_connect_isDecodingChanged(self.h, cast[int](addr tmp[]))
proc formatChanged*(self: QAudioDecoder, format: gen_qaudioformat.QAudioFormat): void =

  fcQAudioDecoder_formatChanged(self.h, format.h)

proc miqt_exec_callback_QAudioDecoder_formatChanged(slot: int, format: pointer) {.exportc.} =
  type Cb = proc(format: gen_qaudioformat.QAudioFormat)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudioformat.QAudioFormat(h: format)


  nimfunc[](slotval1)

proc onformatChanged*(self: QAudioDecoder, slot: proc(format: gen_qaudioformat.QAudioFormat)) =
  type Cb = proc(format: gen_qaudioformat.QAudioFormat)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoder_connect_formatChanged(self.h, cast[int](addr tmp[]))
proc errorWithError*(self: QAudioDecoder, error: QAudioDecoderError): void =

  fcQAudioDecoder_errorWithError(self.h, cint(error))

proc miqt_exec_callback_QAudioDecoder_errorWithError(slot: int, error: cint) {.exportc.} =
  type Cb = proc(error: QAudioDecoderError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QAudioDecoderError(error)


  nimfunc[](slotval1)

proc onerrorWithError*(self: QAudioDecoder, slot: proc(error: QAudioDecoderError)) =
  type Cb = proc(error: QAudioDecoderError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoder_connect_errorWithError(self.h, cast[int](addr tmp[]))
proc sourceChanged*(self: QAudioDecoder, ): void =

  fcQAudioDecoder_sourceChanged(self.h)

proc miqt_exec_callback_QAudioDecoder_sourceChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsourceChanged*(self: QAudioDecoder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoder_connect_sourceChanged(self.h, cast[int](addr tmp[]))
proc positionChanged*(self: QAudioDecoder, position: clonglong): void =

  fcQAudioDecoder_positionChanged(self.h, position)

proc miqt_exec_callback_QAudioDecoder_positionChanged(slot: int, position: clonglong) {.exportc.} =
  type Cb = proc(position: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position


  nimfunc[](slotval1)

proc onpositionChanged*(self: QAudioDecoder, slot: proc(position: clonglong)) =
  type Cb = proc(position: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoder_connect_positionChanged(self.h, cast[int](addr tmp[]))
proc durationChanged*(self: QAudioDecoder, duration: clonglong): void =

  fcQAudioDecoder_durationChanged(self.h, duration)

proc miqt_exec_callback_QAudioDecoder_durationChanged(slot: int, duration: clonglong) {.exportc.} =
  type Cb = proc(duration: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = duration


  nimfunc[](slotval1)

proc ondurationChanged*(self: QAudioDecoder, slot: proc(duration: clonglong)) =
  type Cb = proc(duration: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoder_connect_durationChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAudioDecoder, s: cstring, c: cstring): string =

  let v_ms = fcQAudioDecoder_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAudioDecoder, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioDecoder_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAudioDecoder, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAudioDecoder_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioDecodermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAudioDecoder, slot: proc(super: QAudioDecodermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAudioDecodermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_metacall(self: ptr cQAudioDecoder, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioDecoder_metacall ".} =
  type Cb = proc(super: QAudioDecodermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAudioDecoder(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QAudioDecoder, event: gen_qcoreevent.QEvent): bool =


  fQAudioDecoder_virtualbase_event(self.h, event.h)

type QAudioDecodereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAudioDecoder, slot: proc(super: QAudioDecodereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioDecodereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_event(self: ptr cQAudioDecoder, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioDecoder_event ".} =
  type Cb = proc(super: QAudioDecodereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAudioDecoder(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAudioDecoder, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAudioDecoder_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioDecodereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAudioDecoder, slot: proc(super: QAudioDecodereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioDecodereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_eventFilter(self: ptr cQAudioDecoder, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioDecoder_eventFilter ".} =
  type Cb = proc(super: QAudioDecodereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAudioDecoder(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAudioDecoder, event: gen_qcoreevent.QTimerEvent): void =


  fQAudioDecoder_virtualbase_timerEvent(self.h, event.h)

type QAudioDecodertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAudioDecoder, slot: proc(super: QAudioDecodertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioDecodertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_timerEvent(self: ptr cQAudioDecoder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioDecoder_timerEvent ".} =
  type Cb = proc(super: QAudioDecodertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAudioDecoder(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAudioDecoder, event: gen_qcoreevent.QChildEvent): void =


  fQAudioDecoder_virtualbase_childEvent(self.h, event.h)

type QAudioDecoderchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAudioDecoder, slot: proc(super: QAudioDecoderchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioDecoderchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_childEvent(self: ptr cQAudioDecoder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioDecoder_childEvent ".} =
  type Cb = proc(super: QAudioDecoderchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAudioDecoder(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAudioDecoder, event: gen_qcoreevent.QEvent): void =


  fQAudioDecoder_virtualbase_customEvent(self.h, event.h)

type QAudioDecodercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAudioDecoder, slot: proc(super: QAudioDecodercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioDecodercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_customEvent(self: ptr cQAudioDecoder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioDecoder_customEvent ".} =
  type Cb = proc(super: QAudioDecodercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAudioDecoder(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAudioDecoder, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioDecoder_virtualbase_connectNotify(self.h, signal.h)

type QAudioDecoderconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAudioDecoder, slot: proc(super: QAudioDecoderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioDecoderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_connectNotify(self: ptr cQAudioDecoder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioDecoder_connectNotify ".} =
  type Cb = proc(super: QAudioDecoderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAudioDecoder(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAudioDecoder, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioDecoder_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioDecoderdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAudioDecoder, slot: proc(super: QAudioDecoderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioDecoderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_disconnectNotify(self: ptr cQAudioDecoder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioDecoder_disconnectNotify ".} =
  type Cb = proc(super: QAudioDecoderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAudioDecoder(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QAudioDecoder) =
  fcQAudioDecoder_delete(self.h)
