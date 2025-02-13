import Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")
{.compile("gen_qradiotuner.cpp", cflags).}


type QRadioTunerStateEnum* = distinct cint
template ActiveState*(_: type QRadioTunerStateEnum): untyped = 0
template StoppedState*(_: type QRadioTunerStateEnum): untyped = 1


type QRadioTunerBandEnum* = distinct cint
template AM*(_: type QRadioTunerBandEnum): untyped = 0
template FM*(_: type QRadioTunerBandEnum): untyped = 1
template SW*(_: type QRadioTunerBandEnum): untyped = 2
template LW*(_: type QRadioTunerBandEnum): untyped = 3
template FM2*(_: type QRadioTunerBandEnum): untyped = 4


type QRadioTunerErrorEnum* = distinct cint
template NoError*(_: type QRadioTunerErrorEnum): untyped = 0
template ResourceError*(_: type QRadioTunerErrorEnum): untyped = 1
template OpenError*(_: type QRadioTunerErrorEnum): untyped = 2
template OutOfRangeError*(_: type QRadioTunerErrorEnum): untyped = 3


type QRadioTunerStereoModeEnum* = distinct cint
template ForceStereo*(_: type QRadioTunerStereoModeEnum): untyped = 0
template ForceMono*(_: type QRadioTunerStereoModeEnum): untyped = 1
template Auto*(_: type QRadioTunerStereoModeEnum): untyped = 2


type QRadioTunerSearchModeEnum* = distinct cint
template SearchFast*(_: type QRadioTunerSearchModeEnum): untyped = 0
template SearchGetStationId*(_: type QRadioTunerSearchModeEnum): untyped = 1


import gen_qradiotuner_types
export gen_qradiotuner_types

import
  gen_qcoreevent_types,
  gen_qmediaobject,
  gen_qmediaservice_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs,
  gen_qobjectdefs_types,
  gen_qradiodata_types
export
  gen_qcoreevent_types,
  gen_qmediaobject,
  gen_qmediaservice_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs,
  gen_qobjectdefs_types,
  gen_qradiodata_types

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


func init*(T: type gen_qradiotuner_types.QRadioTuner, h: ptr cQRadioTuner): gen_qradiotuner_types.QRadioTuner =
  T(h: h)
proc create*(T: type gen_qradiotuner_types.QRadioTuner, ): gen_qradiotuner_types.QRadioTuner =
  gen_qradiotuner_types.QRadioTuner.init(fcQRadioTuner_new())

proc create*(T: type gen_qradiotuner_types.QRadioTuner, parent: gen_qobject_types.QObject): gen_qradiotuner_types.QRadioTuner =
  gen_qradiotuner_types.QRadioTuner.init(fcQRadioTuner_new2(parent.h))

proc metaObject*(self: gen_qradiotuner_types.QRadioTuner, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioTuner_metaObject(self.h))

proc metacast*(self: gen_qradiotuner_types.QRadioTuner, param1: cstring): pointer =
  fcQRadioTuner_metacast(self.h, param1)

proc metacall*(self: gen_qradiotuner_types.QRadioTuner, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioTuner_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring): string =
  let v_ms = fcQRadioTuner_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring): string =
  let v_ms = fcQRadioTuner_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availability*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  cint(fcQRadioTuner_availability(self.h))

proc state*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  cint(fcQRadioTuner_state(self.h))

proc band*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  cint(fcQRadioTuner_band(self.h))

proc isBandSupported*(self: gen_qradiotuner_types.QRadioTuner, b: cint): bool =
  fcQRadioTuner_isBandSupported(self.h, cint(b))

proc frequency*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  fcQRadioTuner_frequency(self.h)

proc frequencyStep*(self: gen_qradiotuner_types.QRadioTuner, band: cint): cint =
  fcQRadioTuner_frequencyStep(self.h, cint(band))

proc frequencyRange*(self: gen_qradiotuner_types.QRadioTuner, band: cint): tuple[first: cint, second: cint] =
  var v_mm = fcQRadioTuner_frequencyRange(self.h, cint(band))
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  (first: v_entry_First , second: v_entry_Second )

proc isStereo*(self: gen_qradiotuner_types.QRadioTuner, ): bool =
  fcQRadioTuner_isStereo(self.h)

proc setStereoMode*(self: gen_qradiotuner_types.QRadioTuner, mode: cint): void =
  fcQRadioTuner_setStereoMode(self.h, cint(mode))

proc stereoMode*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  cint(fcQRadioTuner_stereoMode(self.h))

proc signalStrength*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  fcQRadioTuner_signalStrength(self.h)

proc volume*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  fcQRadioTuner_volume(self.h)

proc isMuted*(self: gen_qradiotuner_types.QRadioTuner, ): bool =
  fcQRadioTuner_isMuted(self.h)

proc isSearching*(self: gen_qradiotuner_types.QRadioTuner, ): bool =
  fcQRadioTuner_isSearching(self.h)

proc isAntennaConnected*(self: gen_qradiotuner_types.QRadioTuner, ): bool =
  fcQRadioTuner_isAntennaConnected(self.h)

proc error*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  cint(fcQRadioTuner_error(self.h))

proc errorString*(self: gen_qradiotuner_types.QRadioTuner, ): string =
  let v_ms = fcQRadioTuner_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc radioData*(self: gen_qradiotuner_types.QRadioTuner, ): gen_qradiodata_types.QRadioData =
  gen_qradiodata_types.QRadioData(h: fcQRadioTuner_radioData(self.h))

proc searchForward*(self: gen_qradiotuner_types.QRadioTuner, ): void =
  fcQRadioTuner_searchForward(self.h)

proc searchBackward*(self: gen_qradiotuner_types.QRadioTuner, ): void =
  fcQRadioTuner_searchBackward(self.h)

proc searchAllStations*(self: gen_qradiotuner_types.QRadioTuner, ): void =
  fcQRadioTuner_searchAllStations(self.h)

proc cancelSearch*(self: gen_qradiotuner_types.QRadioTuner, ): void =
  fcQRadioTuner_cancelSearch(self.h)

proc setBand*(self: gen_qradiotuner_types.QRadioTuner, band: cint): void =
  fcQRadioTuner_setBand(self.h, cint(band))

proc setFrequency*(self: gen_qradiotuner_types.QRadioTuner, frequency: cint): void =
  fcQRadioTuner_setFrequency(self.h, frequency)

proc setVolume*(self: gen_qradiotuner_types.QRadioTuner, volume: cint): void =
  fcQRadioTuner_setVolume(self.h, volume)

proc setMuted*(self: gen_qradiotuner_types.QRadioTuner, muted: bool): void =
  fcQRadioTuner_setMuted(self.h, muted)

proc start*(self: gen_qradiotuner_types.QRadioTuner, ): void =
  fcQRadioTuner_start(self.h)

proc stop*(self: gen_qradiotuner_types.QRadioTuner, ): void =
  fcQRadioTuner_stop(self.h)

proc stateChanged*(self: gen_qradiotuner_types.QRadioTuner, state: cint): void =
  fcQRadioTuner_stateChanged(self.h, cint(state))

type QRadioTunerstateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_QRadioTuner_stateChanged(slot: int, state: cint) {.exportc.} =
  let nimfunc = cast[ptr QRadioTunerstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerstateChangedSlot) =
  var tmp = new QRadioTunerstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc bandChanged*(self: gen_qradiotuner_types.QRadioTuner, band: cint): void =
  fcQRadioTuner_bandChanged(self.h, cint(band))

type QRadioTunerbandChangedSlot* = proc(band: cint)
proc miqt_exec_callback_QRadioTuner_bandChanged(slot: int, band: cint) {.exportc.} =
  let nimfunc = cast[ptr QRadioTunerbandChangedSlot](cast[pointer](slot))
  let slotval1 = cint(band)

  nimfunc[](slotval1)

proc onbandChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerbandChangedSlot) =
  var tmp = new QRadioTunerbandChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_bandChanged(self.h, cast[int](addr tmp[]))

proc frequencyChanged*(self: gen_qradiotuner_types.QRadioTuner, frequency: cint): void =
  fcQRadioTuner_frequencyChanged(self.h, frequency)

type QRadioTunerfrequencyChangedSlot* = proc(frequency: cint)
proc miqt_exec_callback_QRadioTuner_frequencyChanged(slot: int, frequency: cint) {.exportc.} =
  let nimfunc = cast[ptr QRadioTunerfrequencyChangedSlot](cast[pointer](slot))
  let slotval1 = frequency

  nimfunc[](slotval1)

proc onfrequencyChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerfrequencyChangedSlot) =
  var tmp = new QRadioTunerfrequencyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_frequencyChanged(self.h, cast[int](addr tmp[]))

proc stereoStatusChanged*(self: gen_qradiotuner_types.QRadioTuner, stereo: bool): void =
  fcQRadioTuner_stereoStatusChanged(self.h, stereo)

type QRadioTunerstereoStatusChangedSlot* = proc(stereo: bool)
proc miqt_exec_callback_QRadioTuner_stereoStatusChanged(slot: int, stereo: bool) {.exportc.} =
  let nimfunc = cast[ptr QRadioTunerstereoStatusChangedSlot](cast[pointer](slot))
  let slotval1 = stereo

  nimfunc[](slotval1)

proc onstereoStatusChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerstereoStatusChangedSlot) =
  var tmp = new QRadioTunerstereoStatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_stereoStatusChanged(self.h, cast[int](addr tmp[]))

proc searchingChanged*(self: gen_qradiotuner_types.QRadioTuner, searching: bool): void =
  fcQRadioTuner_searchingChanged(self.h, searching)

type QRadioTunersearchingChangedSlot* = proc(searching: bool)
proc miqt_exec_callback_QRadioTuner_searchingChanged(slot: int, searching: bool) {.exportc.} =
  let nimfunc = cast[ptr QRadioTunersearchingChangedSlot](cast[pointer](slot))
  let slotval1 = searching

  nimfunc[](slotval1)

proc onsearchingChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunersearchingChangedSlot) =
  var tmp = new QRadioTunersearchingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_searchingChanged(self.h, cast[int](addr tmp[]))

proc signalStrengthChanged*(self: gen_qradiotuner_types.QRadioTuner, signalStrength: cint): void =
  fcQRadioTuner_signalStrengthChanged(self.h, signalStrength)

type QRadioTunersignalStrengthChangedSlot* = proc(signalStrength: cint)
proc miqt_exec_callback_QRadioTuner_signalStrengthChanged(slot: int, signalStrength: cint) {.exportc.} =
  let nimfunc = cast[ptr QRadioTunersignalStrengthChangedSlot](cast[pointer](slot))
  let slotval1 = signalStrength

  nimfunc[](slotval1)

proc onsignalStrengthChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunersignalStrengthChangedSlot) =
  var tmp = new QRadioTunersignalStrengthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_signalStrengthChanged(self.h, cast[int](addr tmp[]))

proc volumeChanged*(self: gen_qradiotuner_types.QRadioTuner, volume: cint): void =
  fcQRadioTuner_volumeChanged(self.h, volume)

type QRadioTunervolumeChangedSlot* = proc(volume: cint)
proc miqt_exec_callback_QRadioTuner_volumeChanged(slot: int, volume: cint) {.exportc.} =
  let nimfunc = cast[ptr QRadioTunervolumeChangedSlot](cast[pointer](slot))
  let slotval1 = volume

  nimfunc[](slotval1)

proc onvolumeChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunervolumeChangedSlot) =
  var tmp = new QRadioTunervolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_volumeChanged(self.h, cast[int](addr tmp[]))

proc mutedChanged*(self: gen_qradiotuner_types.QRadioTuner, muted: bool): void =
  fcQRadioTuner_mutedChanged(self.h, muted)

type QRadioTunermutedChangedSlot* = proc(muted: bool)
proc miqt_exec_callback_QRadioTuner_mutedChanged(slot: int, muted: bool) {.exportc.} =
  let nimfunc = cast[ptr QRadioTunermutedChangedSlot](cast[pointer](slot))
  let slotval1 = muted

  nimfunc[](slotval1)

proc onmutedChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunermutedChangedSlot) =
  var tmp = new QRadioTunermutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_mutedChanged(self.h, cast[int](addr tmp[]))

proc stationFound*(self: gen_qradiotuner_types.QRadioTuner, frequency: cint, stationId: string): void =
  fcQRadioTuner_stationFound(self.h, frequency, struct_miqt_string(data: stationId, len: csize_t(len(stationId))))

type QRadioTunerstationFoundSlot* = proc(frequency: cint, stationId: string)
proc miqt_exec_callback_QRadioTuner_stationFound(slot: int, frequency: cint, stationId: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QRadioTunerstationFoundSlot](cast[pointer](slot))
  let slotval1 = frequency

  let vstationId_ms = stationId
  let vstationIdx_ret = string.fromBytes(toOpenArrayByte(vstationId_ms.data, 0, int(vstationId_ms.len)-1))
  c_free(vstationId_ms.data)
  let slotval2 = vstationIdx_ret

  nimfunc[](slotval1, slotval2)

proc onstationFound*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerstationFoundSlot) =
  var tmp = new QRadioTunerstationFoundSlot
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_stationFound(self.h, cast[int](addr tmp[]))

proc antennaConnectedChanged*(self: gen_qradiotuner_types.QRadioTuner, connectionStatus: bool): void =
  fcQRadioTuner_antennaConnectedChanged(self.h, connectionStatus)

type QRadioTunerantennaConnectedChangedSlot* = proc(connectionStatus: bool)
proc miqt_exec_callback_QRadioTuner_antennaConnectedChanged(slot: int, connectionStatus: bool) {.exportc.} =
  let nimfunc = cast[ptr QRadioTunerantennaConnectedChangedSlot](cast[pointer](slot))
  let slotval1 = connectionStatus

  nimfunc[](slotval1)

proc onantennaConnectedChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerantennaConnectedChangedSlot) =
  var tmp = new QRadioTunerantennaConnectedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_antennaConnectedChanged(self.h, cast[int](addr tmp[]))

proc error*(self: gen_qradiotuner_types.QRadioTuner, error: cint): void =
  fcQRadioTuner_errorWithError(self.h, cint(error))

type QRadioTunererrorWithErrorSlot* = proc(error: cint)
proc miqt_exec_callback_QRadioTuner_errorWithError(slot: int, error: cint) {.exportc.} =
  let nimfunc = cast[ptr QRadioTunererrorWithErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc onerror*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunererrorWithErrorSlot) =
  var tmp = new QRadioTunererrorWithErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fQRadioTuner_connect_errorWithError(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring, c: cstring): string =
  let v_ms = fcQRadioTuner_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioTuner_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring, c: cstring): string =
  let v_ms = fcQRadioTuner_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioTuner_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc searchAllStations*(self: gen_qradiotuner_types.QRadioTuner, searchMode: cint): void =
  fcQRadioTuner_searchAllStations1(self.h, cint(searchMode))

proc QRadioTunermetaObject*(self: gen_qradiotuner_types.QRadioTuner, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQRadioTuner_virtualbase_metaObject(self.h))

type QRadioTunermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunermetaObjectProc) =
  # TODO check subclass
  var tmp = new QRadioTunermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_metaObject(self: ptr cQRadioTuner, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioTuner_metaObject ".} =
  var nimfunc = cast[ptr QRadioTunermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QRadioTunermetacast*(self: gen_qradiotuner_types.QRadioTuner, param1: cstring): pointer =
  fQRadioTuner_virtualbase_metacast(self.h, param1)

type QRadioTunermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunermetacastProc) =
  # TODO check subclass
  var tmp = new QRadioTunermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_metacast(self: ptr cQRadioTuner, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QRadioTuner_metacast ".} =
  var nimfunc = cast[ptr QRadioTunermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRadioTunermetacall*(self: gen_qradiotuner_types.QRadioTuner, param1: cint, param2: cint, param3: pointer): cint =
  fQRadioTuner_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QRadioTunermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunermetacallProc) =
  # TODO check subclass
  var tmp = new QRadioTunermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_metacall(self: ptr cQRadioTuner, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QRadioTuner_metacall ".} =
  var nimfunc = cast[ptr QRadioTunermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QRadioTuneravailability*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  cint(fQRadioTuner_virtualbase_availability(self.h))

type QRadioTuneravailabilityProc* = proc(): cint
proc onavailability*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTuneravailabilityProc) =
  # TODO check subclass
  var tmp = new QRadioTuneravailabilityProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_availability(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_availability(self: ptr cQRadioTuner, slot: int): cint {.exportc: "miqt_exec_callback_QRadioTuner_availability ".} =
  var nimfunc = cast[ptr QRadioTuneravailabilityProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QRadioTunerisAvailable*(self: gen_qradiotuner_types.QRadioTuner, ): bool =
  fQRadioTuner_virtualbase_isAvailable(self.h)

type QRadioTunerisAvailableProc* = proc(): bool
proc onisAvailable*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerisAvailableProc) =
  # TODO check subclass
  var tmp = new QRadioTunerisAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_isAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_isAvailable(self: ptr cQRadioTuner, slot: int): bool {.exportc: "miqt_exec_callback_QRadioTuner_isAvailable ".} =
  var nimfunc = cast[ptr QRadioTunerisAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QRadioTunerservice*(self: gen_qradiotuner_types.QRadioTuner, ): gen_qmediaservice_types.QMediaService =
  gen_qmediaservice_types.QMediaService(h: fQRadioTuner_virtualbase_service(self.h))

type QRadioTunerserviceProc* = proc(): gen_qmediaservice_types.QMediaService
proc onservice*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerserviceProc) =
  # TODO check subclass
  var tmp = new QRadioTunerserviceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_service(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_service(self: ptr cQRadioTuner, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioTuner_service ".} =
  var nimfunc = cast[ptr QRadioTunerserviceProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QRadioTunerbindX*(self: gen_qradiotuner_types.QRadioTuner, param1: gen_qobject_types.QObject): bool =
  fQRadioTuner_virtualbase_bind(self.h, param1.h)

type QRadioTunerbindXProc* = proc(param1: gen_qobject_types.QObject): bool
proc onbindX*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerbindXProc) =
  # TODO check subclass
  var tmp = new QRadioTunerbindXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_bindX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_bind(self: ptr cQRadioTuner, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QRadioTuner_bind ".} =
  var nimfunc = cast[ptr QRadioTunerbindXProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRadioTunerunbind*(self: gen_qradiotuner_types.QRadioTuner, param1: gen_qobject_types.QObject): void =
  fQRadioTuner_virtualbase_unbind(self.h, param1.h)

type QRadioTunerunbindProc* = proc(param1: gen_qobject_types.QObject): void
proc onunbind*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerunbindProc) =
  # TODO check subclass
  var tmp = new QRadioTunerunbindProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_unbind(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_unbind(self: ptr cQRadioTuner, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRadioTuner_unbind ".} =
  var nimfunc = cast[ptr QRadioTunerunbindProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)


  nimfunc[](slotval1)
proc QRadioTunerevent*(self: gen_qradiotuner_types.QRadioTuner, event: gen_qcoreevent_types.QEvent): bool =
  fQRadioTuner_virtualbase_event(self.h, event.h)

type QRadioTunereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunereventProc) =
  # TODO check subclass
  var tmp = new QRadioTunereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_event(self: ptr cQRadioTuner, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QRadioTuner_event ".} =
  var nimfunc = cast[ptr QRadioTunereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRadioTunereventFilter*(self: gen_qradiotuner_types.QRadioTuner, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQRadioTuner_virtualbase_eventFilter(self.h, watched.h, event.h)

type QRadioTunereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunereventFilterProc) =
  # TODO check subclass
  var tmp = new QRadioTunereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_eventFilter(self: ptr cQRadioTuner, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QRadioTuner_eventFilter ".} =
  var nimfunc = cast[ptr QRadioTunereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QRadioTunertimerEvent*(self: gen_qradiotuner_types.QRadioTuner, event: gen_qcoreevent_types.QTimerEvent): void =
  fQRadioTuner_virtualbase_timerEvent(self.h, event.h)

type QRadioTunertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunertimerEventProc) =
  # TODO check subclass
  var tmp = new QRadioTunertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_timerEvent(self: ptr cQRadioTuner, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioTuner_timerEvent ".} =
  var nimfunc = cast[ptr QRadioTunertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QRadioTunerchildEvent*(self: gen_qradiotuner_types.QRadioTuner, event: gen_qcoreevent_types.QChildEvent): void =
  fQRadioTuner_virtualbase_childEvent(self.h, event.h)

type QRadioTunerchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerchildEventProc) =
  # TODO check subclass
  var tmp = new QRadioTunerchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_childEvent(self: ptr cQRadioTuner, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioTuner_childEvent ".} =
  var nimfunc = cast[ptr QRadioTunerchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QRadioTunercustomEvent*(self: gen_qradiotuner_types.QRadioTuner, event: gen_qcoreevent_types.QEvent): void =
  fQRadioTuner_virtualbase_customEvent(self.h, event.h)

type QRadioTunercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunercustomEventProc) =
  # TODO check subclass
  var tmp = new QRadioTunercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_customEvent(self: ptr cQRadioTuner, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioTuner_customEvent ".} =
  var nimfunc = cast[ptr QRadioTunercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QRadioTunerconnectNotify*(self: gen_qradiotuner_types.QRadioTuner, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQRadioTuner_virtualbase_connectNotify(self.h, signal.h)

type QRadioTunerconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QRadioTunerconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_connectNotify(self: ptr cQRadioTuner, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRadioTuner_connectNotify ".} =
  var nimfunc = cast[ptr QRadioTunerconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QRadioTunerdisconnectNotify*(self: gen_qradiotuner_types.QRadioTuner, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQRadioTuner_virtualbase_disconnectNotify(self.h, signal.h)

type QRadioTunerdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QRadioTunerdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioTuner_disconnectNotify(self: ptr cQRadioTuner, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRadioTuner_disconnectNotify ".} =
  var nimfunc = cast[ptr QRadioTunerdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qradiotuner_types.QRadioTuner): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQRadioTuner_staticMetaObject())
proc delete*(self: gen_qradiotuner_types.QRadioTuner) =
  fcQRadioTuner_delete(self.h)
