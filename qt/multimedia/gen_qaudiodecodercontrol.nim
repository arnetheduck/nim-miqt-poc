import Qt5MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5MultimediaWidgets")
{.compile("gen_qaudiodecodercontrol.cpp", cflags).}


import gen_qaudiodecodercontrol_types
export gen_qaudiodecodercontrol_types

import
  gen_qaudiobuffer,
  gen_qaudiodecoder,
  gen_qaudioformat,
  gen_qiodevice,
  gen_qmediacontrol,
  gen_qobjectdefs
export
  gen_qaudiobuffer,
  gen_qaudiodecoder,
  gen_qaudioformat,
  gen_qiodevice,
  gen_qmediacontrol,
  gen_qobjectdefs

type cQAudioDecoderControl*{.exportc: "QAudioDecoderControl", incompleteStruct.} = object

proc fcQAudioDecoderControl_metaObject(self: pointer, ): pointer {.importc: "QAudioDecoderControl_metaObject".}
proc fcQAudioDecoderControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioDecoderControl_metacast".}
proc fcQAudioDecoderControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioDecoderControl_metacall".}
proc fcQAudioDecoderControl_tr(s: cstring): struct_miqt_string {.importc: "QAudioDecoderControl_tr".}
proc fcQAudioDecoderControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioDecoderControl_trUtf8".}
proc fcQAudioDecoderControl_state(self: pointer, ): cint {.importc: "QAudioDecoderControl_state".}
proc fcQAudioDecoderControl_sourceFilename(self: pointer, ): struct_miqt_string {.importc: "QAudioDecoderControl_sourceFilename".}
proc fcQAudioDecoderControl_setSourceFilename(self: pointer, fileName: struct_miqt_string): void {.importc: "QAudioDecoderControl_setSourceFilename".}
proc fcQAudioDecoderControl_sourceDevice(self: pointer, ): pointer {.importc: "QAudioDecoderControl_sourceDevice".}
proc fcQAudioDecoderControl_setSourceDevice(self: pointer, device: pointer): void {.importc: "QAudioDecoderControl_setSourceDevice".}
proc fcQAudioDecoderControl_start(self: pointer, ): void {.importc: "QAudioDecoderControl_start".}
proc fcQAudioDecoderControl_stop(self: pointer, ): void {.importc: "QAudioDecoderControl_stop".}
proc fcQAudioDecoderControl_audioFormat(self: pointer, ): pointer {.importc: "QAudioDecoderControl_audioFormat".}
proc fcQAudioDecoderControl_setAudioFormat(self: pointer, format: pointer): void {.importc: "QAudioDecoderControl_setAudioFormat".}
proc fcQAudioDecoderControl_read(self: pointer, ): pointer {.importc: "QAudioDecoderControl_read".}
proc fcQAudioDecoderControl_bufferAvailable(self: pointer, ): bool {.importc: "QAudioDecoderControl_bufferAvailable".}
proc fcQAudioDecoderControl_position(self: pointer, ): clonglong {.importc: "QAudioDecoderControl_position".}
proc fcQAudioDecoderControl_duration(self: pointer, ): clonglong {.importc: "QAudioDecoderControl_duration".}
proc fcQAudioDecoderControl_stateChanged(self: pointer, newState: cint): void {.importc: "QAudioDecoderControl_stateChanged".}
proc fQAudioDecoderControl_connect_stateChanged(self: pointer, slot: int) {.importc: "QAudioDecoderControl_connect_stateChanged".}
proc fcQAudioDecoderControl_formatChanged(self: pointer, format: pointer): void {.importc: "QAudioDecoderControl_formatChanged".}
proc fQAudioDecoderControl_connect_formatChanged(self: pointer, slot: int) {.importc: "QAudioDecoderControl_connect_formatChanged".}
proc fcQAudioDecoderControl_sourceChanged(self: pointer, ): void {.importc: "QAudioDecoderControl_sourceChanged".}
proc fQAudioDecoderControl_connect_sourceChanged(self: pointer, slot: int) {.importc: "QAudioDecoderControl_connect_sourceChanged".}
proc fcQAudioDecoderControl_error(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QAudioDecoderControl_error".}
proc fQAudioDecoderControl_connect_error(self: pointer, slot: int) {.importc: "QAudioDecoderControl_connect_error".}
proc fcQAudioDecoderControl_bufferReady(self: pointer, ): void {.importc: "QAudioDecoderControl_bufferReady".}
proc fQAudioDecoderControl_connect_bufferReady(self: pointer, slot: int) {.importc: "QAudioDecoderControl_connect_bufferReady".}
proc fcQAudioDecoderControl_bufferAvailableChanged(self: pointer, available: bool): void {.importc: "QAudioDecoderControl_bufferAvailableChanged".}
proc fQAudioDecoderControl_connect_bufferAvailableChanged(self: pointer, slot: int) {.importc: "QAudioDecoderControl_connect_bufferAvailableChanged".}
proc fcQAudioDecoderControl_finished(self: pointer, ): void {.importc: "QAudioDecoderControl_finished".}
proc fQAudioDecoderControl_connect_finished(self: pointer, slot: int) {.importc: "QAudioDecoderControl_connect_finished".}
proc fcQAudioDecoderControl_positionChanged(self: pointer, position: clonglong): void {.importc: "QAudioDecoderControl_positionChanged".}
proc fQAudioDecoderControl_connect_positionChanged(self: pointer, slot: int) {.importc: "QAudioDecoderControl_connect_positionChanged".}
proc fcQAudioDecoderControl_durationChanged(self: pointer, duration: clonglong): void {.importc: "QAudioDecoderControl_durationChanged".}
proc fQAudioDecoderControl_connect_durationChanged(self: pointer, slot: int) {.importc: "QAudioDecoderControl_connect_durationChanged".}
proc fcQAudioDecoderControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioDecoderControl_tr2".}
proc fcQAudioDecoderControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioDecoderControl_tr3".}
proc fcQAudioDecoderControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioDecoderControl_trUtf82".}
proc fcQAudioDecoderControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioDecoderControl_trUtf83".}
proc fcQAudioDecoderControl_delete(self: pointer) {.importc: "QAudioDecoderControl_delete".}


func init*(T: type QAudioDecoderControl, h: ptr cQAudioDecoderControl): QAudioDecoderControl =
  T(h: h)
proc metaObject*(self: QAudioDecoderControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAudioDecoderControl_metaObject(self.h))

proc metacast*(self: QAudioDecoderControl, param1: cstring): pointer =

  fcQAudioDecoderControl_metacast(self.h, param1)

proc metacall*(self: QAudioDecoderControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAudioDecoderControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAudioDecoderControl, s: cstring): string =

  let v_ms = fcQAudioDecoderControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAudioDecoderControl, s: cstring): string =

  let v_ms = fcQAudioDecoderControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc state*(self: QAudioDecoderControl, ): gen_qaudiodecoder.QAudioDecoderState =

  gen_qaudiodecoder.QAudioDecoderState(fcQAudioDecoderControl_state(self.h))

proc sourceFilename*(self: QAudioDecoderControl, ): string =

  let v_ms = fcQAudioDecoderControl_sourceFilename(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceFilename*(self: QAudioDecoderControl, fileName: string): void =

  fcQAudioDecoderControl_setSourceFilename(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc sourceDevice*(self: QAudioDecoderControl, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQAudioDecoderControl_sourceDevice(self.h))

proc setSourceDevice*(self: QAudioDecoderControl, device: gen_qiodevice.QIODevice): void =

  fcQAudioDecoderControl_setSourceDevice(self.h, device.h)

proc start*(self: QAudioDecoderControl, ): void =

  fcQAudioDecoderControl_start(self.h)

proc stop*(self: QAudioDecoderControl, ): void =

  fcQAudioDecoderControl_stop(self.h)

proc audioFormat*(self: QAudioDecoderControl, ): gen_qaudioformat.QAudioFormat =

  gen_qaudioformat.QAudioFormat(h: fcQAudioDecoderControl_audioFormat(self.h))

proc setAudioFormat*(self: QAudioDecoderControl, format: gen_qaudioformat.QAudioFormat): void =

  fcQAudioDecoderControl_setAudioFormat(self.h, format.h)

proc read*(self: QAudioDecoderControl, ): gen_qaudiobuffer.QAudioBuffer =

  gen_qaudiobuffer.QAudioBuffer(h: fcQAudioDecoderControl_read(self.h))

proc bufferAvailable*(self: QAudioDecoderControl, ): bool =

  fcQAudioDecoderControl_bufferAvailable(self.h)

proc position*(self: QAudioDecoderControl, ): clonglong =

  fcQAudioDecoderControl_position(self.h)

proc duration*(self: QAudioDecoderControl, ): clonglong =

  fcQAudioDecoderControl_duration(self.h)

proc stateChanged*(self: QAudioDecoderControl, newState: gen_qaudiodecoder.QAudioDecoderState): void =

  fcQAudioDecoderControl_stateChanged(self.h, cint(newState))

proc miqt_exec_callback_QAudioDecoderControl_stateChanged(slot: int, newState: cint) {.exportc.} =
  type Cb = proc(newState: gen_qaudiodecoder.QAudioDecoderState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudiodecoder.QAudioDecoderState(newState)


  nimfunc[](slotval1)

proc onstateChanged*(self: QAudioDecoderControl, slot: proc(newState: gen_qaudiodecoder.QAudioDecoderState)) =
  type Cb = proc(newState: gen_qaudiodecoder.QAudioDecoderState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoderControl_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc formatChanged*(self: QAudioDecoderControl, format: gen_qaudioformat.QAudioFormat): void =

  fcQAudioDecoderControl_formatChanged(self.h, format.h)

proc miqt_exec_callback_QAudioDecoderControl_formatChanged(slot: int, format: pointer) {.exportc.} =
  type Cb = proc(format: gen_qaudioformat.QAudioFormat)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudioformat.QAudioFormat(h: format)


  nimfunc[](slotval1)

proc onformatChanged*(self: QAudioDecoderControl, slot: proc(format: gen_qaudioformat.QAudioFormat)) =
  type Cb = proc(format: gen_qaudioformat.QAudioFormat)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoderControl_connect_formatChanged(self.h, cast[int](addr tmp[]))
proc sourceChanged*(self: QAudioDecoderControl, ): void =

  fcQAudioDecoderControl_sourceChanged(self.h)

proc miqt_exec_callback_QAudioDecoderControl_sourceChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsourceChanged*(self: QAudioDecoderControl, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoderControl_connect_sourceChanged(self.h, cast[int](addr tmp[]))
proc error*(self: QAudioDecoderControl, error: cint, errorString: string): void =

  fcQAudioDecoderControl_error(self.h, error, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc miqt_exec_callback_QAudioDecoderControl_error(slot: int, error: cint, errorString: struct_miqt_string) {.exportc.} =
  type Cb = proc(error: cint, errorString: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = error

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret


  nimfunc[](slotval1, slotval2)

proc onerror*(self: QAudioDecoderControl, slot: proc(error: cint, errorString: string)) =
  type Cb = proc(error: cint, errorString: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoderControl_connect_error(self.h, cast[int](addr tmp[]))
proc bufferReady*(self: QAudioDecoderControl, ): void =

  fcQAudioDecoderControl_bufferReady(self.h)

proc miqt_exec_callback_QAudioDecoderControl_bufferReady(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onbufferReady*(self: QAudioDecoderControl, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoderControl_connect_bufferReady(self.h, cast[int](addr tmp[]))
proc bufferAvailableChanged*(self: QAudioDecoderControl, available: bool): void =

  fcQAudioDecoderControl_bufferAvailableChanged(self.h, available)

proc miqt_exec_callback_QAudioDecoderControl_bufferAvailableChanged(slot: int, available: bool) {.exportc.} =
  type Cb = proc(available: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = available


  nimfunc[](slotval1)

proc onbufferAvailableChanged*(self: QAudioDecoderControl, slot: proc(available: bool)) =
  type Cb = proc(available: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoderControl_connect_bufferAvailableChanged(self.h, cast[int](addr tmp[]))
proc finished*(self: QAudioDecoderControl, ): void =

  fcQAudioDecoderControl_finished(self.h)

proc miqt_exec_callback_QAudioDecoderControl_finished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfinished*(self: QAudioDecoderControl, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoderControl_connect_finished(self.h, cast[int](addr tmp[]))
proc positionChanged*(self: QAudioDecoderControl, position: clonglong): void =

  fcQAudioDecoderControl_positionChanged(self.h, position)

proc miqt_exec_callback_QAudioDecoderControl_positionChanged(slot: int, position: clonglong) {.exportc.} =
  type Cb = proc(position: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position


  nimfunc[](slotval1)

proc onpositionChanged*(self: QAudioDecoderControl, slot: proc(position: clonglong)) =
  type Cb = proc(position: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoderControl_connect_positionChanged(self.h, cast[int](addr tmp[]))
proc durationChanged*(self: QAudioDecoderControl, duration: clonglong): void =

  fcQAudioDecoderControl_durationChanged(self.h, duration)

proc miqt_exec_callback_QAudioDecoderControl_durationChanged(slot: int, duration: clonglong) {.exportc.} =
  type Cb = proc(duration: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = duration


  nimfunc[](slotval1)

proc ondurationChanged*(self: QAudioDecoderControl, slot: proc(duration: clonglong)) =
  type Cb = proc(duration: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioDecoderControl_connect_durationChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAudioDecoderControl, s: cstring, c: cstring): string =

  let v_ms = fcQAudioDecoderControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAudioDecoderControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioDecoderControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAudioDecoderControl, s: cstring, c: cstring): string =

  let v_ms = fcQAudioDecoderControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAudioDecoderControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioDecoderControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QAudioDecoderControl) =
  fcQAudioDecoderControl_delete(self.h)
