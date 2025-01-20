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
{.compile("gen_qradiotuner.cpp", cflags).}


type QRadioTunerState* = cint
const
  QRadioTunerActiveState* = 0
  QRadioTunerStoppedState* = 1



type QRadioTunerBand* = cint
const
  QRadioTunerAM* = 0
  QRadioTunerFM* = 1
  QRadioTunerSW* = 2
  QRadioTunerLW* = 3
  QRadioTunerFM2* = 4



type QRadioTunerError* = cint
const
  QRadioTunerNoError* = 0
  QRadioTunerResourceError* = 1
  QRadioTunerOpenError* = 2
  QRadioTunerOutOfRangeError* = 3



type QRadioTunerStereoMode* = cint
const
  QRadioTunerForceStereo* = 0
  QRadioTunerForceMono* = 1
  QRadioTunerAuto* = 2



type QRadioTunerSearchMode* = cint
const
  QRadioTunerSearchFast* = 0
  QRadioTunerSearchGetStationId* = 1



import gen_qradiotuner_types
export gen_qradiotuner_types

import
  gen_qcoreevent,
  gen_qmediaobject,
  gen_qmediaservice,
  gen_qmetaobject,
  gen_qmultimedia,
  gen_qobject,
  gen_qobjectdefs,
  gen_qradiodata
export
  gen_qcoreevent,
  gen_qmediaobject,
  gen_qmediaservice,
  gen_qmetaobject,
  gen_qmultimedia,
  gen_qobject,
  gen_qobjectdefs,
  gen_qradiodata

type cQRadioTuner*{.exportc: "QRadioTuner", incompleteStruct.} = object

proc fcQRadioTuner_new(): ptr cQRadioTuner {.importc: "QRadioTuner_new".}
proc fcQRadioTuner_new2(parent: pointer): ptr cQRadioTuner {.importc: "QRadioTuner_new2".}
proc fcQRadioTuner_metaObject(self: pointer, ): pointer {.importc: "QRadioTuner_metaObject".}
proc fcQRadioTuner_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioTuner_metacast".}
proc fcQRadioTuner_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioTuner_metacall".}
proc fcQRadioTuner_tr(s: cstring): struct_miqt_string {.importc: "QRadioTuner_tr".}
proc fcQRadioTuner_trUtf8(s: cstring): struct_miqt_string {.importc: "QRadioTuner_trUtf8".}
proc fcQRadioTuner_availability(self: pointer, ): cint {.importc: "QRadioTuner_availability".}
proc fcQRadioTuner_state(self: pointer, ): cint {.importc: "QRadioTuner_state".}
proc fcQRadioTuner_band(self: pointer, ): cint {.importc: "QRadioTuner_band".}
proc fcQRadioTuner_isBandSupported(self: pointer, b: cint): bool {.importc: "QRadioTuner_isBandSupported".}
proc fcQRadioTuner_frequency(self: pointer, ): cint {.importc: "QRadioTuner_frequency".}
proc fcQRadioTuner_frequencyStep(self: pointer, band: cint): cint {.importc: "QRadioTuner_frequencyStep".}
proc fcQRadioTuner_frequencyRange(self: pointer, band: cint): struct_miqt_map {.importc: "QRadioTuner_frequencyRange".}
proc fcQRadioTuner_isStereo(self: pointer, ): bool {.importc: "QRadioTuner_isStereo".}
proc fcQRadioTuner_setStereoMode(self: pointer, mode: cint): void {.importc: "QRadioTuner_setStereoMode".}
proc fcQRadioTuner_stereoMode(self: pointer, ): cint {.importc: "QRadioTuner_stereoMode".}
proc fcQRadioTuner_signalStrength(self: pointer, ): cint {.importc: "QRadioTuner_signalStrength".}
proc fcQRadioTuner_volume(self: pointer, ): cint {.importc: "QRadioTuner_volume".}
proc fcQRadioTuner_isMuted(self: pointer, ): bool {.importc: "QRadioTuner_isMuted".}
proc fcQRadioTuner_isSearching(self: pointer, ): bool {.importc: "QRadioTuner_isSearching".}
proc fcQRadioTuner_isAntennaConnected(self: pointer, ): bool {.importc: "QRadioTuner_isAntennaConnected".}
proc fcQRadioTuner_error(self: pointer, ): cint {.importc: "QRadioTuner_error".}
proc fcQRadioTuner_errorString(self: pointer, ): struct_miqt_string {.importc: "QRadioTuner_errorString".}
proc fcQRadioTuner_radioData(self: pointer, ): pointer {.importc: "QRadioTuner_radioData".}
proc fcQRadioTuner_searchForward(self: pointer, ): void {.importc: "QRadioTuner_searchForward".}
proc fcQRadioTuner_searchBackward(self: pointer, ): void {.importc: "QRadioTuner_searchBackward".}
proc fcQRadioTuner_searchAllStations(self: pointer, ): void {.importc: "QRadioTuner_searchAllStations".}
proc fcQRadioTuner_cancelSearch(self: pointer, ): void {.importc: "QRadioTuner_cancelSearch".}
proc fcQRadioTuner_setBand(self: pointer, band: cint): void {.importc: "QRadioTuner_setBand".}
proc fcQRadioTuner_setFrequency(self: pointer, frequency: cint): void {.importc: "QRadioTuner_setFrequency".}
proc fcQRadioTuner_setVolume(self: pointer, volume: cint): void {.importc: "QRadioTuner_setVolume".}
proc fcQRadioTuner_setMuted(self: pointer, muted: bool): void {.importc: "QRadioTuner_setMuted".}
proc fcQRadioTuner_start(self: pointer, ): void {.importc: "QRadioTuner_start".}
proc fcQRadioTuner_stop(self: pointer, ): void {.importc: "QRadioTuner_stop".}
proc fcQRadioTuner_stateChanged(self: pointer, state: cint): void {.importc: "QRadioTuner_stateChanged".}
proc fQRadioTuner_connect_stateChanged(self: pointer, slot: int) {.importc: "QRadioTuner_connect_stateChanged".}
proc fcQRadioTuner_bandChanged(self: pointer, band: cint): void {.importc: "QRadioTuner_bandChanged".}
proc fQRadioTuner_connect_bandChanged(self: pointer, slot: int) {.importc: "QRadioTuner_connect_bandChanged".}
proc fcQRadioTuner_frequencyChanged(self: pointer, frequency: cint): void {.importc: "QRadioTuner_frequencyChanged".}
proc fQRadioTuner_connect_frequencyChanged(self: pointer, slot: int) {.importc: "QRadioTuner_connect_frequencyChanged".}
proc fcQRadioTuner_stereoStatusChanged(self: pointer, stereo: bool): void {.importc: "QRadioTuner_stereoStatusChanged".}
proc fQRadioTuner_connect_stereoStatusChanged(self: pointer, slot: int) {.importc: "QRadioTuner_connect_stereoStatusChanged".}
proc fcQRadioTuner_searchingChanged(self: pointer, searching: bool): void {.importc: "QRadioTuner_searchingChanged".}
proc fQRadioTuner_connect_searchingChanged(self: pointer, slot: int) {.importc: "QRadioTuner_connect_searchingChanged".}
proc fcQRadioTuner_signalStrengthChanged(self: pointer, signalStrength: cint): void {.importc: "QRadioTuner_signalStrengthChanged".}
proc fQRadioTuner_connect_signalStrengthChanged(self: pointer, slot: int) {.importc: "QRadioTuner_connect_signalStrengthChanged".}
proc fcQRadioTuner_volumeChanged(self: pointer, volume: cint): void {.importc: "QRadioTuner_volumeChanged".}
proc fQRadioTuner_connect_volumeChanged(self: pointer, slot: int) {.importc: "QRadioTuner_connect_volumeChanged".}
proc fcQRadioTuner_mutedChanged(self: pointer, muted: bool): void {.importc: "QRadioTuner_mutedChanged".}
proc fQRadioTuner_connect_mutedChanged(self: pointer, slot: int) {.importc: "QRadioTuner_connect_mutedChanged".}
proc fcQRadioTuner_stationFound(self: pointer, frequency: cint, stationId: struct_miqt_string): void {.importc: "QRadioTuner_stationFound".}
proc fQRadioTuner_connect_stationFound(self: pointer, slot: int) {.importc: "QRadioTuner_connect_stationFound".}
proc fcQRadioTuner_antennaConnectedChanged(self: pointer, connectionStatus: bool): void {.importc: "QRadioTuner_antennaConnectedChanged".}
proc fQRadioTuner_connect_antennaConnectedChanged(self: pointer, slot: int) {.importc: "QRadioTuner_connect_antennaConnectedChanged".}
proc fcQRadioTuner_errorWithError(self: pointer, error: cint): void {.importc: "QRadioTuner_errorWithError".}
proc fQRadioTuner_connect_errorWithError(self: pointer, slot: int) {.importc: "QRadioTuner_connect_errorWithError".}
proc fcQRadioTuner_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioTuner_tr2".}
proc fcQRadioTuner_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioTuner_tr3".}
proc fcQRadioTuner_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioTuner_trUtf82".}
proc fcQRadioTuner_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioTuner_trUtf83".}
proc fcQRadioTuner_searchAllStations1(self: pointer, searchMode: cint): void {.importc: "QRadioTuner_searchAllStations1".}
proc fQRadioTuner_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QRadioTuner_virtualbase_metaObject".}
proc fcQRadioTuner_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_metaObject".}
proc fQRadioTuner_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QRadioTuner_virtualbase_metacast".}
proc fcQRadioTuner_override_virtual_metacast(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_metacast".}
proc fQRadioTuner_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QRadioTuner_virtualbase_metacall".}
proc fcQRadioTuner_override_virtual_metacall(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_metacall".}
proc fQRadioTuner_virtualbase_availability(self: pointer, ): cint{.importc: "QRadioTuner_virtualbase_availability".}
proc fcQRadioTuner_override_virtual_availability(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_availability".}
proc fQRadioTuner_virtualbase_isAvailable(self: pointer, ): bool{.importc: "QRadioTuner_virtualbase_isAvailable".}
proc fcQRadioTuner_override_virtual_isAvailable(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_isAvailable".}
proc fQRadioTuner_virtualbase_service(self: pointer, ): pointer{.importc: "QRadioTuner_virtualbase_service".}
proc fcQRadioTuner_override_virtual_service(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_service".}
proc fQRadioTuner_virtualbase_bind(self: pointer, param1: pointer): bool{.importc: "QRadioTuner_virtualbase_bind".}
proc fcQRadioTuner_override_virtual_bindX(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_bind".}
proc fQRadioTuner_virtualbase_unbind(self: pointer, param1: pointer): void{.importc: "QRadioTuner_virtualbase_unbind".}
proc fcQRadioTuner_override_virtual_unbind(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_unbind".}
proc fQRadioTuner_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QRadioTuner_virtualbase_event".}
proc fcQRadioTuner_override_virtual_event(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_event".}
proc fQRadioTuner_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QRadioTuner_virtualbase_eventFilter".}
proc fcQRadioTuner_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_eventFilter".}
proc fQRadioTuner_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QRadioTuner_virtualbase_timerEvent".}
proc fcQRadioTuner_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_timerEvent".}
proc fQRadioTuner_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QRadioTuner_virtualbase_childEvent".}
proc fcQRadioTuner_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_childEvent".}
proc fQRadioTuner_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QRadioTuner_virtualbase_customEvent".}
proc fcQRadioTuner_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_customEvent".}
proc fQRadioTuner_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QRadioTuner_virtualbase_connectNotify".}
proc fcQRadioTuner_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_connectNotify".}
proc fQRadioTuner_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QRadioTuner_virtualbase_disconnectNotify".}
proc fcQRadioTuner_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QRadioTuner_override_virtual_disconnectNotify".}
proc fcQRadioTuner_staticMetaObject(): pointer {.importc: "QRadioTuner_staticMetaObject".}
proc fcQRadioTuner_delete(self: pointer) {.importc: "QRadioTuner_delete".}


func init*(T: type QRadioTuner, h: ptr cQRadioTuner): QRadioTuner =
  T(h: h)
proc create*(T: type QRadioTuner, ): QRadioTuner =

  QRadioTuner.init(fcQRadioTuner_new())
proc create*(T: type QRadioTuner, parent: gen_qobject.QObject): QRadioTuner =

  QRadioTuner.init(fcQRadioTuner_new2(parent.h))
proc metaObject*(self: QRadioTuner, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQRadioTuner_metaObject(self.h))

proc metacast*(self: QRadioTuner, param1: cstring): pointer =

  fcQRadioTuner_metacast(self.h, param1)

proc metacall*(self: QRadioTuner, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQRadioTuner_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QRadioTuner, s: cstring): string =

  let v_ms = fcQRadioTuner_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QRadioTuner, s: cstring): string =

  let v_ms = fcQRadioTuner_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availability*(self: QRadioTuner, ): gen_qmultimedia.QMultimediaAvailabilityStatus =

  gen_qmultimedia.QMultimediaAvailabilityStatus(fcQRadioTuner_availability(self.h))

proc state*(self: QRadioTuner, ): QRadioTunerState =

  QRadioTunerState(fcQRadioTuner_state(self.h))

proc band*(self: QRadioTuner, ): QRadioTunerBand =

  QRadioTunerBand(fcQRadioTuner_band(self.h))

proc isBandSupported*(self: QRadioTuner, b: QRadioTunerBand): bool =

  fcQRadioTuner_isBandSupported(self.h, cint(b))

proc frequency*(self: QRadioTuner, ): cint =

  fcQRadioTuner_frequency(self.h)

proc frequencyStep*(self: QRadioTuner, band: QRadioTunerBand): cint =

  fcQRadioTuner_frequencyStep(self.h, cint(band))

proc frequencyRange*(self: QRadioTuner, band: QRadioTunerBand): tuple[first: cint, second: cint] =

  var v_mm = fcQRadioTuner_frequencyRange(self.h, cint(band))
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  (first: v_entry_First , second: v_entry_Second )

proc isStereo*(self: QRadioTuner, ): bool =

  fcQRadioTuner_isStereo(self.h)

proc setStereoMode*(self: QRadioTuner, mode: QRadioTunerStereoMode): void =

  fcQRadioTuner_setStereoMode(self.h, cint(mode))

proc stereoMode*(self: QRadioTuner, ): QRadioTunerStereoMode =

  QRadioTunerStereoMode(fcQRadioTuner_stereoMode(self.h))

proc signalStrength*(self: QRadioTuner, ): cint =

  fcQRadioTuner_signalStrength(self.h)

proc volume*(self: QRadioTuner, ): cint =

  fcQRadioTuner_volume(self.h)

proc isMuted*(self: QRadioTuner, ): bool =

  fcQRadioTuner_isMuted(self.h)

proc isSearching*(self: QRadioTuner, ): bool =

  fcQRadioTuner_isSearching(self.h)

proc isAntennaConnected*(self: QRadioTuner, ): bool =

  fcQRadioTuner_isAntennaConnected(self.h)

proc error*(self: QRadioTuner, ): QRadioTunerError =

  QRadioTunerError(fcQRadioTuner_error(self.h))

proc errorString*(self: QRadioTuner, ): string =

  let v_ms = fcQRadioTuner_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc radioData*(self: QRadioTuner, ): gen_qradiodata.QRadioData =

  gen_qradiodata.QRadioData(h: fcQRadioTuner_radioData(self.h))

proc searchForward*(self: QRadioTuner, ): void =

  fcQRadioTuner_searchForward(self.h)

proc searchBackward*(self: QRadioTuner, ): void =

  fcQRadioTuner_searchBackward(self.h)

proc searchAllStations*(self: QRadioTuner, ): void =

  fcQRadioTuner_searchAllStations(self.h)

proc cancelSearch*(self: QRadioTuner, ): void =

  fcQRadioTuner_cancelSearch(self.h)

proc setBand*(self: QRadioTuner, band: QRadioTunerBand): void =

  fcQRadioTuner_setBand(self.h, cint(band))

proc setFrequency*(self: QRadioTuner, frequency: cint): void =

  fcQRadioTuner_setFrequency(self.h, frequency)

proc setVolume*(self: QRadioTuner, volume: cint): void =

  fcQRadioTuner_setVolume(self.h, volume)

proc setMuted*(self: QRadioTuner, muted: bool): void =

  fcQRadioTuner_setMuted(self.h, muted)

proc start*(self: QRadioTuner, ): void =

  fcQRadioTuner_start(self.h)

proc stop*(self: QRadioTuner, ): void =

  fcQRadioTuner_stop(self.h)

proc stateChanged*(self: QRadioTuner, state: QRadioTunerState): void =

  fcQRadioTuner_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QRadioTuner_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: QRadioTunerState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QRadioTunerState(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: QRadioTuner, slot: proc(state: QRadioTunerState)) =
  type Cb = proc(state: QRadioTunerState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc bandChanged*(self: QRadioTuner, band: QRadioTunerBand): void =

  fcQRadioTuner_bandChanged(self.h, cint(band))

proc miqt_exec_callback_QRadioTuner_bandChanged(slot: int, band: cint) {.exportc.} =
  type Cb = proc(band: QRadioTunerBand)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QRadioTunerBand(band)


  nimfunc[](slotval1)

proc onbandChanged*(self: QRadioTuner, slot: proc(band: QRadioTunerBand)) =
  type Cb = proc(band: QRadioTunerBand)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_bandChanged(self.h, cast[int](addr tmp[]))
proc frequencyChanged*(self: QRadioTuner, frequency: cint): void =

  fcQRadioTuner_frequencyChanged(self.h, frequency)

proc miqt_exec_callback_QRadioTuner_frequencyChanged(slot: int, frequency: cint) {.exportc.} =
  type Cb = proc(frequency: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = frequency


  nimfunc[](slotval1)

proc onfrequencyChanged*(self: QRadioTuner, slot: proc(frequency: cint)) =
  type Cb = proc(frequency: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_frequencyChanged(self.h, cast[int](addr tmp[]))
proc stereoStatusChanged*(self: QRadioTuner, stereo: bool): void =

  fcQRadioTuner_stereoStatusChanged(self.h, stereo)

proc miqt_exec_callback_QRadioTuner_stereoStatusChanged(slot: int, stereo: bool) {.exportc.} =
  type Cb = proc(stereo: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = stereo


  nimfunc[](slotval1)

proc onstereoStatusChanged*(self: QRadioTuner, slot: proc(stereo: bool)) =
  type Cb = proc(stereo: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_stereoStatusChanged(self.h, cast[int](addr tmp[]))
proc searchingChanged*(self: QRadioTuner, searching: bool): void =

  fcQRadioTuner_searchingChanged(self.h, searching)

proc miqt_exec_callback_QRadioTuner_searchingChanged(slot: int, searching: bool) {.exportc.} =
  type Cb = proc(searching: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = searching


  nimfunc[](slotval1)

proc onsearchingChanged*(self: QRadioTuner, slot: proc(searching: bool)) =
  type Cb = proc(searching: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_searchingChanged(self.h, cast[int](addr tmp[]))
proc signalStrengthChanged*(self: QRadioTuner, signalStrength: cint): void =

  fcQRadioTuner_signalStrengthChanged(self.h, signalStrength)

proc miqt_exec_callback_QRadioTuner_signalStrengthChanged(slot: int, signalStrength: cint) {.exportc.} =
  type Cb = proc(signalStrength: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = signalStrength


  nimfunc[](slotval1)

proc onsignalStrengthChanged*(self: QRadioTuner, slot: proc(signalStrength: cint)) =
  type Cb = proc(signalStrength: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_signalStrengthChanged(self.h, cast[int](addr tmp[]))
proc volumeChanged*(self: QRadioTuner, volume: cint): void =

  fcQRadioTuner_volumeChanged(self.h, volume)

proc miqt_exec_callback_QRadioTuner_volumeChanged(slot: int, volume: cint) {.exportc.} =
  type Cb = proc(volume: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = volume


  nimfunc[](slotval1)

proc onvolumeChanged*(self: QRadioTuner, slot: proc(volume: cint)) =
  type Cb = proc(volume: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_volumeChanged(self.h, cast[int](addr tmp[]))
proc mutedChanged*(self: QRadioTuner, muted: bool): void =

  fcQRadioTuner_mutedChanged(self.h, muted)

proc miqt_exec_callback_QRadioTuner_mutedChanged(slot: int, muted: bool) {.exportc.} =
  type Cb = proc(muted: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = muted


  nimfunc[](slotval1)

proc onmutedChanged*(self: QRadioTuner, slot: proc(muted: bool)) =
  type Cb = proc(muted: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_mutedChanged(self.h, cast[int](addr tmp[]))
proc stationFound*(self: QRadioTuner, frequency: cint, stationId: string): void =

  fcQRadioTuner_stationFound(self.h, frequency, struct_miqt_string(data: stationId, len: csize_t(len(stationId))))

proc miqt_exec_callback_QRadioTuner_stationFound(slot: int, frequency: cint, stationId: struct_miqt_string) {.exportc.} =
  type Cb = proc(frequency: cint, stationId: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = frequency

  let vstationId_ms = stationId
  let vstationIdx_ret = string.fromBytes(toOpenArrayByte(vstationId_ms.data, 0, int(vstationId_ms.len)-1))
  c_free(vstationId_ms.data)
  let slotval2 = vstationIdx_ret


  nimfunc[](slotval1, slotval2)

proc onstationFound*(self: QRadioTuner, slot: proc(frequency: cint, stationId: string)) =
  type Cb = proc(frequency: cint, stationId: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_stationFound(self.h, cast[int](addr tmp[]))
proc antennaConnectedChanged*(self: QRadioTuner, connectionStatus: bool): void =

  fcQRadioTuner_antennaConnectedChanged(self.h, connectionStatus)

proc miqt_exec_callback_QRadioTuner_antennaConnectedChanged(slot: int, connectionStatus: bool) {.exportc.} =
  type Cb = proc(connectionStatus: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = connectionStatus


  nimfunc[](slotval1)

proc onantennaConnectedChanged*(self: QRadioTuner, slot: proc(connectionStatus: bool)) =
  type Cb = proc(connectionStatus: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_antennaConnectedChanged(self.h, cast[int](addr tmp[]))
proc errorWithError*(self: QRadioTuner, error: QRadioTunerError): void =

  fcQRadioTuner_errorWithError(self.h, cint(error))

proc miqt_exec_callback_QRadioTuner_errorWithError(slot: int, error: cint) {.exportc.} =
  type Cb = proc(error: QRadioTunerError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QRadioTunerError(error)


  nimfunc[](slotval1)

proc onerrorWithError*(self: QRadioTuner, slot: proc(error: QRadioTunerError)) =
  type Cb = proc(error: QRadioTunerError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_errorWithError(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QRadioTuner, s: cstring, c: cstring): string =

  let v_ms = fcQRadioTuner_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QRadioTuner, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRadioTuner_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QRadioTuner, s: cstring, c: cstring): string =

  let v_ms = fcQRadioTuner_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QRadioTuner, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRadioTuner_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc searchAllStations1*(self: QRadioTuner, searchMode: QRadioTunerSearchMode): void =

  fcQRadioTuner_searchAllStations1(self.h, cint(searchMode))

proc callVirtualBase_metaObject(self: QRadioTuner, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQRadioTuner_virtualbase_metaObject(self.h))

type QRadioTunermetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QRadioTuner, slot: proc(super: QRadioTunermetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QRadioTunermetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_metaObject(self: ptr cQRadioTuner, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioTuner_metaObject ".} =
  type Cb = proc(super: QRadioTunermetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QRadioTuner(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QRadioTuner, param1: cstring): pointer =


  fQRadioTuner_virtualbase_metacast(self.h, param1)

type QRadioTunermetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QRadioTuner, slot: proc(super: QRadioTunermetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QRadioTunermetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_metacast(self: ptr cQRadioTuner, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QRadioTuner_metacast ".} =
  type Cb = proc(super: QRadioTunermetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QRadioTuner(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QRadioTuner, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQRadioTuner_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QRadioTunermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QRadioTuner, slot: proc(super: QRadioTunermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QRadioTunermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_metacall(self: ptr cQRadioTuner, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QRadioTuner_metacall ".} =
  type Cb = proc(super: QRadioTunermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QRadioTuner(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_availability(self: QRadioTuner, ): gen_qmultimedia.QMultimediaAvailabilityStatus =


  gen_qmultimedia.QMultimediaAvailabilityStatus(fQRadioTuner_virtualbase_availability(self.h))

type QRadioTuneravailabilityBase* = proc(): gen_qmultimedia.QMultimediaAvailabilityStatus
proc onavailability*(self: QRadioTuner, slot: proc(super: QRadioTuneravailabilityBase): gen_qmultimedia.QMultimediaAvailabilityStatus) =
  # TODO check subclass
  type Cb = proc(super: QRadioTuneravailabilityBase): gen_qmultimedia.QMultimediaAvailabilityStatus
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_availability(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_availability(self: ptr cQRadioTuner, slot: int): cint {.exportc: "miqt_exec_callback_QRadioTuner_availability ".} =
  type Cb = proc(super: QRadioTuneravailabilityBase): gen_qmultimedia.QMultimediaAvailabilityStatus
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_availability(QRadioTuner(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_isAvailable(self: QRadioTuner, ): bool =


  fQRadioTuner_virtualbase_isAvailable(self.h)

type QRadioTunerisAvailableBase* = proc(): bool
proc onisAvailable*(self: QRadioTuner, slot: proc(super: QRadioTunerisAvailableBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QRadioTunerisAvailableBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_isAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_isAvailable(self: ptr cQRadioTuner, slot: int): bool {.exportc: "miqt_exec_callback_QRadioTuner_isAvailable ".} =
  type Cb = proc(super: QRadioTunerisAvailableBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isAvailable(QRadioTuner(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_service(self: QRadioTuner, ): gen_qmediaservice.QMediaService =


  gen_qmediaservice.QMediaService(h: fQRadioTuner_virtualbase_service(self.h))

type QRadioTunerserviceBase* = proc(): gen_qmediaservice.QMediaService
proc onservice*(self: QRadioTuner, slot: proc(super: QRadioTunerserviceBase): gen_qmediaservice.QMediaService) =
  # TODO check subclass
  type Cb = proc(super: QRadioTunerserviceBase): gen_qmediaservice.QMediaService
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_service(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_service(self: ptr cQRadioTuner, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioTuner_service ".} =
  type Cb = proc(super: QRadioTunerserviceBase): gen_qmediaservice.QMediaService
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_service(QRadioTuner(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_bindX(self: QRadioTuner, param1: gen_qobject.QObject): bool =


  fQRadioTuner_virtualbase_bind(self.h, param1.h)

type QRadioTunerbindXBase* = proc(param1: gen_qobject.QObject): bool
proc onbindX*(self: QRadioTuner, slot: proc(super: QRadioTunerbindXBase, param1: gen_qobject.QObject): bool) =
  # TODO check subclass
  type Cb = proc(super: QRadioTunerbindXBase, param1: gen_qobject.QObject): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_bindX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_bind(self: ptr cQRadioTuner, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QRadioTuner_bind ".} =
  type Cb = proc(super: QRadioTunerbindXBase, param1: gen_qobject.QObject): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject): auto =
    callVirtualBase_bindX(QRadioTuner(h: self), param1)
  let slotval1 = gen_qobject.QObject(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_unbind(self: QRadioTuner, param1: gen_qobject.QObject): void =


  fQRadioTuner_virtualbase_unbind(self.h, param1.h)

type QRadioTunerunbindBase* = proc(param1: gen_qobject.QObject): void
proc onunbind*(self: QRadioTuner, slot: proc(super: QRadioTunerunbindBase, param1: gen_qobject.QObject): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioTunerunbindBase, param1: gen_qobject.QObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_unbind(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_unbind(self: ptr cQRadioTuner, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRadioTuner_unbind ".} =
  type Cb = proc(super: QRadioTunerunbindBase, param1: gen_qobject.QObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject): auto =
    callVirtualBase_unbind(QRadioTuner(h: self), param1)
  let slotval1 = gen_qobject.QObject(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QRadioTuner, event: gen_qcoreevent.QEvent): bool =


  fQRadioTuner_virtualbase_event(self.h, event.h)

type QRadioTunereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QRadioTuner, slot: proc(super: QRadioTunereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QRadioTunereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_event(self: ptr cQRadioTuner, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QRadioTuner_event ".} =
  type Cb = proc(super: QRadioTunereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QRadioTuner(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QRadioTuner, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQRadioTuner_virtualbase_eventFilter(self.h, watched.h, event.h)

type QRadioTunereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QRadioTuner, slot: proc(super: QRadioTunereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QRadioTunereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_eventFilter(self: ptr cQRadioTuner, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QRadioTuner_eventFilter ".} =
  type Cb = proc(super: QRadioTunereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QRadioTuner(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QRadioTuner, event: gen_qcoreevent.QTimerEvent): void =


  fQRadioTuner_virtualbase_timerEvent(self.h, event.h)

type QRadioTunertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QRadioTuner, slot: proc(super: QRadioTunertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioTunertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_timerEvent(self: ptr cQRadioTuner, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioTuner_timerEvent ".} =
  type Cb = proc(super: QRadioTunertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QRadioTuner(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QRadioTuner, event: gen_qcoreevent.QChildEvent): void =


  fQRadioTuner_virtualbase_childEvent(self.h, event.h)

type QRadioTunerchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QRadioTuner, slot: proc(super: QRadioTunerchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioTunerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_childEvent(self: ptr cQRadioTuner, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioTuner_childEvent ".} =
  type Cb = proc(super: QRadioTunerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QRadioTuner(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QRadioTuner, event: gen_qcoreevent.QEvent): void =


  fQRadioTuner_virtualbase_customEvent(self.h, event.h)

type QRadioTunercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QRadioTuner, slot: proc(super: QRadioTunercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioTunercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_customEvent(self: ptr cQRadioTuner, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioTuner_customEvent ".} =
  type Cb = proc(super: QRadioTunercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QRadioTuner(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QRadioTuner, signal: gen_qmetaobject.QMetaMethod): void =


  fQRadioTuner_virtualbase_connectNotify(self.h, signal.h)

type QRadioTunerconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QRadioTuner, slot: proc(super: QRadioTunerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioTunerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_connectNotify(self: ptr cQRadioTuner, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRadioTuner_connectNotify ".} =
  type Cb = proc(super: QRadioTunerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QRadioTuner(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QRadioTuner, signal: gen_qmetaobject.QMetaMethod): void =


  fQRadioTuner_virtualbase_disconnectNotify(self.h, signal.h)

type QRadioTunerdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QRadioTuner, slot: proc(super: QRadioTunerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioTunerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_disconnectNotify(self: ptr cQRadioTuner, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRadioTuner_disconnectNotify ".} =
  type Cb = proc(super: QRadioTunerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QRadioTuner(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QRadioTuner): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQRadioTuner_staticMetaObject())
proc delete*(self: QRadioTuner) =
  fcQRadioTuner_delete(self.h)
