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
{.compile("gen_qmediarecordercontrol.cpp", cflags).}


import gen_qmediarecordercontrol_types
export gen_qmediarecordercontrol_types

import
  gen_qmediacontrol,
  gen_qmediarecorder,
  gen_qobjectdefs,
  gen_qurl
export
  gen_qmediacontrol,
  gen_qmediarecorder,
  gen_qobjectdefs,
  gen_qurl

type cQMediaRecorderControl*{.exportc: "QMediaRecorderControl", incompleteStruct.} = object

proc fcQMediaRecorderControl_metaObject(self: pointer, ): pointer {.importc: "QMediaRecorderControl_metaObject".}
proc fcQMediaRecorderControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaRecorderControl_metacast".}
proc fcQMediaRecorderControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaRecorderControl_metacall".}
proc fcQMediaRecorderControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaRecorderControl_tr".}
proc fcQMediaRecorderControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaRecorderControl_trUtf8".}
proc fcQMediaRecorderControl_outputLocation(self: pointer, ): pointer {.importc: "QMediaRecorderControl_outputLocation".}
proc fcQMediaRecorderControl_setOutputLocation(self: pointer, location: pointer): bool {.importc: "QMediaRecorderControl_setOutputLocation".}
proc fcQMediaRecorderControl_state(self: pointer, ): cint {.importc: "QMediaRecorderControl_state".}
proc fcQMediaRecorderControl_status(self: pointer, ): cint {.importc: "QMediaRecorderControl_status".}
proc fcQMediaRecorderControl_duration(self: pointer, ): clonglong {.importc: "QMediaRecorderControl_duration".}
proc fcQMediaRecorderControl_isMuted(self: pointer, ): bool {.importc: "QMediaRecorderControl_isMuted".}
proc fcQMediaRecorderControl_volume(self: pointer, ): float64 {.importc: "QMediaRecorderControl_volume".}
proc fcQMediaRecorderControl_applySettings(self: pointer, ): void {.importc: "QMediaRecorderControl_applySettings".}
proc fcQMediaRecorderControl_stateChanged(self: pointer, state: cint): void {.importc: "QMediaRecorderControl_stateChanged".}
proc fQMediaRecorderControl_connect_stateChanged(self: pointer, slot: int) {.importc: "QMediaRecorderControl_connect_stateChanged".}
proc fcQMediaRecorderControl_statusChanged(self: pointer, status: cint): void {.importc: "QMediaRecorderControl_statusChanged".}
proc fQMediaRecorderControl_connect_statusChanged(self: pointer, slot: int) {.importc: "QMediaRecorderControl_connect_statusChanged".}
proc fcQMediaRecorderControl_durationChanged(self: pointer, position: clonglong): void {.importc: "QMediaRecorderControl_durationChanged".}
proc fQMediaRecorderControl_connect_durationChanged(self: pointer, slot: int) {.importc: "QMediaRecorderControl_connect_durationChanged".}
proc fcQMediaRecorderControl_mutedChanged(self: pointer, muted: bool): void {.importc: "QMediaRecorderControl_mutedChanged".}
proc fQMediaRecorderControl_connect_mutedChanged(self: pointer, slot: int) {.importc: "QMediaRecorderControl_connect_mutedChanged".}
proc fcQMediaRecorderControl_volumeChanged(self: pointer, volume: float64): void {.importc: "QMediaRecorderControl_volumeChanged".}
proc fQMediaRecorderControl_connect_volumeChanged(self: pointer, slot: int) {.importc: "QMediaRecorderControl_connect_volumeChanged".}
proc fcQMediaRecorderControl_actualLocationChanged(self: pointer, location: pointer): void {.importc: "QMediaRecorderControl_actualLocationChanged".}
proc fQMediaRecorderControl_connect_actualLocationChanged(self: pointer, slot: int) {.importc: "QMediaRecorderControl_connect_actualLocationChanged".}
proc fcQMediaRecorderControl_error(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QMediaRecorderControl_error".}
proc fQMediaRecorderControl_connect_error(self: pointer, slot: int) {.importc: "QMediaRecorderControl_connect_error".}
proc fcQMediaRecorderControl_setState(self: pointer, state: cint): void {.importc: "QMediaRecorderControl_setState".}
proc fcQMediaRecorderControl_setMuted(self: pointer, muted: bool): void {.importc: "QMediaRecorderControl_setMuted".}
proc fcQMediaRecorderControl_setVolume(self: pointer, volume: float64): void {.importc: "QMediaRecorderControl_setVolume".}
proc fcQMediaRecorderControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaRecorderControl_tr2".}
proc fcQMediaRecorderControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaRecorderControl_tr3".}
proc fcQMediaRecorderControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaRecorderControl_trUtf82".}
proc fcQMediaRecorderControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaRecorderControl_trUtf83".}
proc fcQMediaRecorderControl_delete(self: pointer) {.importc: "QMediaRecorderControl_delete".}


func init*(T: type QMediaRecorderControl, h: ptr cQMediaRecorderControl): QMediaRecorderControl =
  T(h: h)
proc metaObject*(self: QMediaRecorderControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaRecorderControl_metaObject(self.h))

proc metacast*(self: QMediaRecorderControl, param1: cstring): pointer =

  fcQMediaRecorderControl_metacast(self.h, param1)

proc metacall*(self: QMediaRecorderControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMediaRecorderControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMediaRecorderControl, s: cstring): string =

  let v_ms = fcQMediaRecorderControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMediaRecorderControl, s: cstring): string =

  let v_ms = fcQMediaRecorderControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc outputLocation*(self: QMediaRecorderControl, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQMediaRecorderControl_outputLocation(self.h))

proc setOutputLocation*(self: QMediaRecorderControl, location: gen_qurl.QUrl): bool =

  fcQMediaRecorderControl_setOutputLocation(self.h, location.h)

proc state*(self: QMediaRecorderControl, ): gen_qmediarecorder.QMediaRecorderState =

  gen_qmediarecorder.QMediaRecorderState(fcQMediaRecorderControl_state(self.h))

proc status*(self: QMediaRecorderControl, ): gen_qmediarecorder.QMediaRecorderStatus =

  gen_qmediarecorder.QMediaRecorderStatus(fcQMediaRecorderControl_status(self.h))

proc duration*(self: QMediaRecorderControl, ): clonglong =

  fcQMediaRecorderControl_duration(self.h)

proc isMuted*(self: QMediaRecorderControl, ): bool =

  fcQMediaRecorderControl_isMuted(self.h)

proc volume*(self: QMediaRecorderControl, ): float64 =

  fcQMediaRecorderControl_volume(self.h)

proc applySettings*(self: QMediaRecorderControl, ): void =

  fcQMediaRecorderControl_applySettings(self.h)

proc stateChanged*(self: QMediaRecorderControl, state: gen_qmediarecorder.QMediaRecorderState): void =

  fcQMediaRecorderControl_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QMediaRecorderControl_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: gen_qmediarecorder.QMediaRecorderState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmediarecorder.QMediaRecorderState(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: QMediaRecorderControl, slot: proc(state: gen_qmediarecorder.QMediaRecorderState)) =
  type Cb = proc(state: gen_qmediarecorder.QMediaRecorderState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorderControl_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc statusChanged*(self: QMediaRecorderControl, status: gen_qmediarecorder.QMediaRecorderStatus): void =

  fcQMediaRecorderControl_statusChanged(self.h, cint(status))

proc miqt_exec_callback_QMediaRecorderControl_statusChanged(slot: int, status: cint) {.exportc.} =
  type Cb = proc(status: gen_qmediarecorder.QMediaRecorderStatus)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmediarecorder.QMediaRecorderStatus(status)


  nimfunc[](slotval1)

proc onstatusChanged*(self: QMediaRecorderControl, slot: proc(status: gen_qmediarecorder.QMediaRecorderStatus)) =
  type Cb = proc(status: gen_qmediarecorder.QMediaRecorderStatus)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorderControl_connect_statusChanged(self.h, cast[int](addr tmp[]))
proc durationChanged*(self: QMediaRecorderControl, position: clonglong): void =

  fcQMediaRecorderControl_durationChanged(self.h, position)

proc miqt_exec_callback_QMediaRecorderControl_durationChanged(slot: int, position: clonglong) {.exportc.} =
  type Cb = proc(position: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position


  nimfunc[](slotval1)

proc ondurationChanged*(self: QMediaRecorderControl, slot: proc(position: clonglong)) =
  type Cb = proc(position: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorderControl_connect_durationChanged(self.h, cast[int](addr tmp[]))
proc mutedChanged*(self: QMediaRecorderControl, muted: bool): void =

  fcQMediaRecorderControl_mutedChanged(self.h, muted)

proc miqt_exec_callback_QMediaRecorderControl_mutedChanged(slot: int, muted: bool) {.exportc.} =
  type Cb = proc(muted: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = muted


  nimfunc[](slotval1)

proc onmutedChanged*(self: QMediaRecorderControl, slot: proc(muted: bool)) =
  type Cb = proc(muted: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorderControl_connect_mutedChanged(self.h, cast[int](addr tmp[]))
proc volumeChanged*(self: QMediaRecorderControl, volume: float64): void =

  fcQMediaRecorderControl_volumeChanged(self.h, volume)

proc miqt_exec_callback_QMediaRecorderControl_volumeChanged(slot: int, volume: float64) {.exportc.} =
  type Cb = proc(volume: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = volume


  nimfunc[](slotval1)

proc onvolumeChanged*(self: QMediaRecorderControl, slot: proc(volume: float64)) =
  type Cb = proc(volume: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorderControl_connect_volumeChanged(self.h, cast[int](addr tmp[]))
proc actualLocationChanged*(self: QMediaRecorderControl, location: gen_qurl.QUrl): void =

  fcQMediaRecorderControl_actualLocationChanged(self.h, location.h)

proc miqt_exec_callback_QMediaRecorderControl_actualLocationChanged(slot: int, location: pointer) {.exportc.} =
  type Cb = proc(location: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: location)


  nimfunc[](slotval1)

proc onactualLocationChanged*(self: QMediaRecorderControl, slot: proc(location: gen_qurl.QUrl)) =
  type Cb = proc(location: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorderControl_connect_actualLocationChanged(self.h, cast[int](addr tmp[]))
proc error*(self: QMediaRecorderControl, error: cint, errorString: string): void =

  fcQMediaRecorderControl_error(self.h, error, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc miqt_exec_callback_QMediaRecorderControl_error(slot: int, error: cint, errorString: struct_miqt_string) {.exportc.} =
  type Cb = proc(error: cint, errorString: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = error

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret


  nimfunc[](slotval1, slotval2)

proc onerror*(self: QMediaRecorderControl, slot: proc(error: cint, errorString: string)) =
  type Cb = proc(error: cint, errorString: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorderControl_connect_error(self.h, cast[int](addr tmp[]))
proc setState*(self: QMediaRecorderControl, state: gen_qmediarecorder.QMediaRecorderState): void =

  fcQMediaRecorderControl_setState(self.h, cint(state))

proc setMuted*(self: QMediaRecorderControl, muted: bool): void =

  fcQMediaRecorderControl_setMuted(self.h, muted)

proc setVolume*(self: QMediaRecorderControl, volume: float64): void =

  fcQMediaRecorderControl_setVolume(self.h, volume)

proc tr2*(_: type QMediaRecorderControl, s: cstring, c: cstring): string =

  let v_ms = fcQMediaRecorderControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMediaRecorderControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaRecorderControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMediaRecorderControl, s: cstring, c: cstring): string =

  let v_ms = fcQMediaRecorderControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMediaRecorderControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaRecorderControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QMediaRecorderControl) =
  fcQMediaRecorderControl_delete(self.h)
