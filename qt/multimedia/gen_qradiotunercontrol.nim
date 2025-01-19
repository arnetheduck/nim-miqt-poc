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
{.compile("gen_qradiotunercontrol.cpp", cflags).}


import gen_qradiotunercontrol_types
export gen_qradiotunercontrol_types

import
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qradiotuner
export
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qradiotuner

type cQRadioTunerControl*{.exportc: "QRadioTunerControl", incompleteStruct.} = object

proc fcQRadioTunerControl_metaObject(self: pointer, ): pointer {.importc: "QRadioTunerControl_metaObject".}
proc fcQRadioTunerControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioTunerControl_metacast".}
proc fcQRadioTunerControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioTunerControl_metacall".}
proc fcQRadioTunerControl_tr(s: cstring): struct_miqt_string {.importc: "QRadioTunerControl_tr".}
proc fcQRadioTunerControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QRadioTunerControl_trUtf8".}
proc fcQRadioTunerControl_state(self: pointer, ): cint {.importc: "QRadioTunerControl_state".}
proc fcQRadioTunerControl_band(self: pointer, ): cint {.importc: "QRadioTunerControl_band".}
proc fcQRadioTunerControl_setBand(self: pointer, b: cint): void {.importc: "QRadioTunerControl_setBand".}
proc fcQRadioTunerControl_isBandSupported(self: pointer, b: cint): bool {.importc: "QRadioTunerControl_isBandSupported".}
proc fcQRadioTunerControl_frequency(self: pointer, ): cint {.importc: "QRadioTunerControl_frequency".}
proc fcQRadioTunerControl_frequencyStep(self: pointer, b: cint): cint {.importc: "QRadioTunerControl_frequencyStep".}
proc fcQRadioTunerControl_frequencyRange(self: pointer, b: cint): struct_miqt_map {.importc: "QRadioTunerControl_frequencyRange".}
proc fcQRadioTunerControl_setFrequency(self: pointer, frequency: cint): void {.importc: "QRadioTunerControl_setFrequency".}
proc fcQRadioTunerControl_isStereo(self: pointer, ): bool {.importc: "QRadioTunerControl_isStereo".}
proc fcQRadioTunerControl_stereoMode(self: pointer, ): cint {.importc: "QRadioTunerControl_stereoMode".}
proc fcQRadioTunerControl_setStereoMode(self: pointer, mode: cint): void {.importc: "QRadioTunerControl_setStereoMode".}
proc fcQRadioTunerControl_signalStrength(self: pointer, ): cint {.importc: "QRadioTunerControl_signalStrength".}
proc fcQRadioTunerControl_volume(self: pointer, ): cint {.importc: "QRadioTunerControl_volume".}
proc fcQRadioTunerControl_setVolume(self: pointer, volume: cint): void {.importc: "QRadioTunerControl_setVolume".}
proc fcQRadioTunerControl_isMuted(self: pointer, ): bool {.importc: "QRadioTunerControl_isMuted".}
proc fcQRadioTunerControl_setMuted(self: pointer, muted: bool): void {.importc: "QRadioTunerControl_setMuted".}
proc fcQRadioTunerControl_isSearching(self: pointer, ): bool {.importc: "QRadioTunerControl_isSearching".}
proc fcQRadioTunerControl_isAntennaConnected(self: pointer, ): bool {.importc: "QRadioTunerControl_isAntennaConnected".}
proc fcQRadioTunerControl_searchForward(self: pointer, ): void {.importc: "QRadioTunerControl_searchForward".}
proc fcQRadioTunerControl_searchBackward(self: pointer, ): void {.importc: "QRadioTunerControl_searchBackward".}
proc fcQRadioTunerControl_searchAllStations(self: pointer, searchMode: cint): void {.importc: "QRadioTunerControl_searchAllStations".}
proc fcQRadioTunerControl_cancelSearch(self: pointer, ): void {.importc: "QRadioTunerControl_cancelSearch".}
proc fcQRadioTunerControl_start(self: pointer, ): void {.importc: "QRadioTunerControl_start".}
proc fcQRadioTunerControl_stop(self: pointer, ): void {.importc: "QRadioTunerControl_stop".}
proc fcQRadioTunerControl_error(self: pointer, ): cint {.importc: "QRadioTunerControl_error".}
proc fcQRadioTunerControl_errorString(self: pointer, ): struct_miqt_string {.importc: "QRadioTunerControl_errorString".}
proc fcQRadioTunerControl_stateChanged(self: pointer, state: cint): void {.importc: "QRadioTunerControl_stateChanged".}
proc fQRadioTunerControl_connect_stateChanged(self: pointer, slot: int) {.importc: "QRadioTunerControl_connect_stateChanged".}
proc fcQRadioTunerControl_bandChanged(self: pointer, band: cint): void {.importc: "QRadioTunerControl_bandChanged".}
proc fQRadioTunerControl_connect_bandChanged(self: pointer, slot: int) {.importc: "QRadioTunerControl_connect_bandChanged".}
proc fcQRadioTunerControl_frequencyChanged(self: pointer, frequency: cint): void {.importc: "QRadioTunerControl_frequencyChanged".}
proc fQRadioTunerControl_connect_frequencyChanged(self: pointer, slot: int) {.importc: "QRadioTunerControl_connect_frequencyChanged".}
proc fcQRadioTunerControl_stereoStatusChanged(self: pointer, stereo: bool): void {.importc: "QRadioTunerControl_stereoStatusChanged".}
proc fQRadioTunerControl_connect_stereoStatusChanged(self: pointer, slot: int) {.importc: "QRadioTunerControl_connect_stereoStatusChanged".}
proc fcQRadioTunerControl_searchingChanged(self: pointer, searching: bool): void {.importc: "QRadioTunerControl_searchingChanged".}
proc fQRadioTunerControl_connect_searchingChanged(self: pointer, slot: int) {.importc: "QRadioTunerControl_connect_searchingChanged".}
proc fcQRadioTunerControl_signalStrengthChanged(self: pointer, signalStrength: cint): void {.importc: "QRadioTunerControl_signalStrengthChanged".}
proc fQRadioTunerControl_connect_signalStrengthChanged(self: pointer, slot: int) {.importc: "QRadioTunerControl_connect_signalStrengthChanged".}
proc fcQRadioTunerControl_volumeChanged(self: pointer, volume: cint): void {.importc: "QRadioTunerControl_volumeChanged".}
proc fQRadioTunerControl_connect_volumeChanged(self: pointer, slot: int) {.importc: "QRadioTunerControl_connect_volumeChanged".}
proc fcQRadioTunerControl_mutedChanged(self: pointer, muted: bool): void {.importc: "QRadioTunerControl_mutedChanged".}
proc fQRadioTunerControl_connect_mutedChanged(self: pointer, slot: int) {.importc: "QRadioTunerControl_connect_mutedChanged".}
proc fcQRadioTunerControl_errorWithErr(self: pointer, err: cint): void {.importc: "QRadioTunerControl_errorWithErr".}
proc fQRadioTunerControl_connect_errorWithErr(self: pointer, slot: int) {.importc: "QRadioTunerControl_connect_errorWithErr".}
proc fcQRadioTunerControl_stationFound(self: pointer, frequency: cint, stationId: struct_miqt_string): void {.importc: "QRadioTunerControl_stationFound".}
proc fQRadioTunerControl_connect_stationFound(self: pointer, slot: int) {.importc: "QRadioTunerControl_connect_stationFound".}
proc fcQRadioTunerControl_antennaConnectedChanged(self: pointer, connectionStatus: bool): void {.importc: "QRadioTunerControl_antennaConnectedChanged".}
proc fQRadioTunerControl_connect_antennaConnectedChanged(self: pointer, slot: int) {.importc: "QRadioTunerControl_connect_antennaConnectedChanged".}
proc fcQRadioTunerControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioTunerControl_tr2".}
proc fcQRadioTunerControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioTunerControl_tr3".}
proc fcQRadioTunerControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioTunerControl_trUtf82".}
proc fcQRadioTunerControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioTunerControl_trUtf83".}
proc fcQRadioTunerControl_staticMetaObject(): pointer {.importc: "QRadioTunerControl_staticMetaObject".}
proc fcQRadioTunerControl_delete(self: pointer) {.importc: "QRadioTunerControl_delete".}


func init*(T: type QRadioTunerControl, h: ptr cQRadioTunerControl): QRadioTunerControl =
  T(h: h)
proc metaObject*(self: QRadioTunerControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQRadioTunerControl_metaObject(self.h))

proc metacast*(self: QRadioTunerControl, param1: cstring): pointer =

  fcQRadioTunerControl_metacast(self.h, param1)

proc metacall*(self: QRadioTunerControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQRadioTunerControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QRadioTunerControl, s: cstring): string =

  let v_ms = fcQRadioTunerControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QRadioTunerControl, s: cstring): string =

  let v_ms = fcQRadioTunerControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc state*(self: QRadioTunerControl, ): gen_qradiotuner.QRadioTunerState =

  gen_qradiotuner.QRadioTunerState(fcQRadioTunerControl_state(self.h))

proc band*(self: QRadioTunerControl, ): gen_qradiotuner.QRadioTunerBand =

  gen_qradiotuner.QRadioTunerBand(fcQRadioTunerControl_band(self.h))

proc setBand*(self: QRadioTunerControl, b: gen_qradiotuner.QRadioTunerBand): void =

  fcQRadioTunerControl_setBand(self.h, cint(b))

proc isBandSupported*(self: QRadioTunerControl, b: gen_qradiotuner.QRadioTunerBand): bool =

  fcQRadioTunerControl_isBandSupported(self.h, cint(b))

proc frequency*(self: QRadioTunerControl, ): cint =

  fcQRadioTunerControl_frequency(self.h)

proc frequencyStep*(self: QRadioTunerControl, b: gen_qradiotuner.QRadioTunerBand): cint =

  fcQRadioTunerControl_frequencyStep(self.h, cint(b))

proc frequencyRange*(self: QRadioTunerControl, b: gen_qradiotuner.QRadioTunerBand): tuple[first: cint, second: cint] =

  var v_mm = fcQRadioTunerControl_frequencyRange(self.h, cint(b))
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  (first: v_entry_First , second: v_entry_Second )

proc setFrequency*(self: QRadioTunerControl, frequency: cint): void =

  fcQRadioTunerControl_setFrequency(self.h, frequency)

proc isStereo*(self: QRadioTunerControl, ): bool =

  fcQRadioTunerControl_isStereo(self.h)

proc stereoMode*(self: QRadioTunerControl, ): gen_qradiotuner.QRadioTunerStereoMode =

  gen_qradiotuner.QRadioTunerStereoMode(fcQRadioTunerControl_stereoMode(self.h))

proc setStereoMode*(self: QRadioTunerControl, mode: gen_qradiotuner.QRadioTunerStereoMode): void =

  fcQRadioTunerControl_setStereoMode(self.h, cint(mode))

proc signalStrength*(self: QRadioTunerControl, ): cint =

  fcQRadioTunerControl_signalStrength(self.h)

proc volume*(self: QRadioTunerControl, ): cint =

  fcQRadioTunerControl_volume(self.h)

proc setVolume*(self: QRadioTunerControl, volume: cint): void =

  fcQRadioTunerControl_setVolume(self.h, volume)

proc isMuted*(self: QRadioTunerControl, ): bool =

  fcQRadioTunerControl_isMuted(self.h)

proc setMuted*(self: QRadioTunerControl, muted: bool): void =

  fcQRadioTunerControl_setMuted(self.h, muted)

proc isSearching*(self: QRadioTunerControl, ): bool =

  fcQRadioTunerControl_isSearching(self.h)

proc isAntennaConnected*(self: QRadioTunerControl, ): bool =

  fcQRadioTunerControl_isAntennaConnected(self.h)

proc searchForward*(self: QRadioTunerControl, ): void =

  fcQRadioTunerControl_searchForward(self.h)

proc searchBackward*(self: QRadioTunerControl, ): void =

  fcQRadioTunerControl_searchBackward(self.h)

proc searchAllStations*(self: QRadioTunerControl, searchMode: gen_qradiotuner.QRadioTunerSearchMode): void =

  fcQRadioTunerControl_searchAllStations(self.h, cint(searchMode))

proc cancelSearch*(self: QRadioTunerControl, ): void =

  fcQRadioTunerControl_cancelSearch(self.h)

proc start*(self: QRadioTunerControl, ): void =

  fcQRadioTunerControl_start(self.h)

proc stop*(self: QRadioTunerControl, ): void =

  fcQRadioTunerControl_stop(self.h)

proc error*(self: QRadioTunerControl, ): gen_qradiotuner.QRadioTunerError =

  gen_qradiotuner.QRadioTunerError(fcQRadioTunerControl_error(self.h))

proc errorString*(self: QRadioTunerControl, ): string =

  let v_ms = fcQRadioTunerControl_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc stateChanged*(self: QRadioTunerControl, state: gen_qradiotuner.QRadioTunerState): void =

  fcQRadioTunerControl_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QRadioTunerControl_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: gen_qradiotuner.QRadioTunerState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qradiotuner.QRadioTunerState(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: QRadioTunerControl, slot: proc(state: gen_qradiotuner.QRadioTunerState)) =
  type Cb = proc(state: gen_qradiotuner.QRadioTunerState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTunerControl_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc bandChanged*(self: QRadioTunerControl, band: gen_qradiotuner.QRadioTunerBand): void =

  fcQRadioTunerControl_bandChanged(self.h, cint(band))

proc miqt_exec_callback_QRadioTunerControl_bandChanged(slot: int, band: cint) {.exportc.} =
  type Cb = proc(band: gen_qradiotuner.QRadioTunerBand)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qradiotuner.QRadioTunerBand(band)


  nimfunc[](slotval1)

proc onbandChanged*(self: QRadioTunerControl, slot: proc(band: gen_qradiotuner.QRadioTunerBand)) =
  type Cb = proc(band: gen_qradiotuner.QRadioTunerBand)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTunerControl_connect_bandChanged(self.h, cast[int](addr tmp[]))
proc frequencyChanged*(self: QRadioTunerControl, frequency: cint): void =

  fcQRadioTunerControl_frequencyChanged(self.h, frequency)

proc miqt_exec_callback_QRadioTunerControl_frequencyChanged(slot: int, frequency: cint) {.exportc.} =
  type Cb = proc(frequency: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = frequency


  nimfunc[](slotval1)

proc onfrequencyChanged*(self: QRadioTunerControl, slot: proc(frequency: cint)) =
  type Cb = proc(frequency: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTunerControl_connect_frequencyChanged(self.h, cast[int](addr tmp[]))
proc stereoStatusChanged*(self: QRadioTunerControl, stereo: bool): void =

  fcQRadioTunerControl_stereoStatusChanged(self.h, stereo)

proc miqt_exec_callback_QRadioTunerControl_stereoStatusChanged(slot: int, stereo: bool) {.exportc.} =
  type Cb = proc(stereo: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = stereo


  nimfunc[](slotval1)

proc onstereoStatusChanged*(self: QRadioTunerControl, slot: proc(stereo: bool)) =
  type Cb = proc(stereo: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTunerControl_connect_stereoStatusChanged(self.h, cast[int](addr tmp[]))
proc searchingChanged*(self: QRadioTunerControl, searching: bool): void =

  fcQRadioTunerControl_searchingChanged(self.h, searching)

proc miqt_exec_callback_QRadioTunerControl_searchingChanged(slot: int, searching: bool) {.exportc.} =
  type Cb = proc(searching: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = searching


  nimfunc[](slotval1)

proc onsearchingChanged*(self: QRadioTunerControl, slot: proc(searching: bool)) =
  type Cb = proc(searching: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTunerControl_connect_searchingChanged(self.h, cast[int](addr tmp[]))
proc signalStrengthChanged*(self: QRadioTunerControl, signalStrength: cint): void =

  fcQRadioTunerControl_signalStrengthChanged(self.h, signalStrength)

proc miqt_exec_callback_QRadioTunerControl_signalStrengthChanged(slot: int, signalStrength: cint) {.exportc.} =
  type Cb = proc(signalStrength: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = signalStrength


  nimfunc[](slotval1)

proc onsignalStrengthChanged*(self: QRadioTunerControl, slot: proc(signalStrength: cint)) =
  type Cb = proc(signalStrength: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTunerControl_connect_signalStrengthChanged(self.h, cast[int](addr tmp[]))
proc volumeChanged*(self: QRadioTunerControl, volume: cint): void =

  fcQRadioTunerControl_volumeChanged(self.h, volume)

proc miqt_exec_callback_QRadioTunerControl_volumeChanged(slot: int, volume: cint) {.exportc.} =
  type Cb = proc(volume: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = volume


  nimfunc[](slotval1)

proc onvolumeChanged*(self: QRadioTunerControl, slot: proc(volume: cint)) =
  type Cb = proc(volume: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTunerControl_connect_volumeChanged(self.h, cast[int](addr tmp[]))
proc mutedChanged*(self: QRadioTunerControl, muted: bool): void =

  fcQRadioTunerControl_mutedChanged(self.h, muted)

proc miqt_exec_callback_QRadioTunerControl_mutedChanged(slot: int, muted: bool) {.exportc.} =
  type Cb = proc(muted: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = muted


  nimfunc[](slotval1)

proc onmutedChanged*(self: QRadioTunerControl, slot: proc(muted: bool)) =
  type Cb = proc(muted: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTunerControl_connect_mutedChanged(self.h, cast[int](addr tmp[]))
proc errorWithErr*(self: QRadioTunerControl, err: gen_qradiotuner.QRadioTunerError): void =

  fcQRadioTunerControl_errorWithErr(self.h, cint(err))

proc miqt_exec_callback_QRadioTunerControl_errorWithErr(slot: int, err: cint) {.exportc.} =
  type Cb = proc(err: gen_qradiotuner.QRadioTunerError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qradiotuner.QRadioTunerError(err)


  nimfunc[](slotval1)

proc onerrorWithErr*(self: QRadioTunerControl, slot: proc(err: gen_qradiotuner.QRadioTunerError)) =
  type Cb = proc(err: gen_qradiotuner.QRadioTunerError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTunerControl_connect_errorWithErr(self.h, cast[int](addr tmp[]))
proc stationFound*(self: QRadioTunerControl, frequency: cint, stationId: string): void =

  fcQRadioTunerControl_stationFound(self.h, frequency, struct_miqt_string(data: stationId, len: csize_t(len(stationId))))

proc miqt_exec_callback_QRadioTunerControl_stationFound(slot: int, frequency: cint, stationId: struct_miqt_string) {.exportc.} =
  type Cb = proc(frequency: cint, stationId: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = frequency

  let vstationId_ms = stationId
  let vstationIdx_ret = string.fromBytes(toOpenArrayByte(vstationId_ms.data, 0, int(vstationId_ms.len)-1))
  c_free(vstationId_ms.data)
  let slotval2 = vstationIdx_ret


  nimfunc[](slotval1, slotval2)

proc onstationFound*(self: QRadioTunerControl, slot: proc(frequency: cint, stationId: string)) =
  type Cb = proc(frequency: cint, stationId: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTunerControl_connect_stationFound(self.h, cast[int](addr tmp[]))
proc antennaConnectedChanged*(self: QRadioTunerControl, connectionStatus: bool): void =

  fcQRadioTunerControl_antennaConnectedChanged(self.h, connectionStatus)

proc miqt_exec_callback_QRadioTunerControl_antennaConnectedChanged(slot: int, connectionStatus: bool) {.exportc.} =
  type Cb = proc(connectionStatus: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = connectionStatus


  nimfunc[](slotval1)

proc onantennaConnectedChanged*(self: QRadioTunerControl, slot: proc(connectionStatus: bool)) =
  type Cb = proc(connectionStatus: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTunerControl_connect_antennaConnectedChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QRadioTunerControl, s: cstring, c: cstring): string =

  let v_ms = fcQRadioTunerControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QRadioTunerControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRadioTunerControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QRadioTunerControl, s: cstring, c: cstring): string =

  let v_ms = fcQRadioTunerControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QRadioTunerControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRadioTunerControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QRadioTunerControl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQRadioTunerControl_staticMetaObject())
proc delete*(self: QRadioTunerControl) =
  fcQRadioTunerControl_delete(self.h)
