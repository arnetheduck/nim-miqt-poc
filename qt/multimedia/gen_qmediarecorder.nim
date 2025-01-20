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
{.compile("gen_qmediarecorder.cpp", cflags).}


type QMediaRecorderStateEnum* = distinct cint
template StoppedState*(_: type QMediaRecorderStateEnum): untyped = 0
template RecordingState*(_: type QMediaRecorderStateEnum): untyped = 1
template PausedState*(_: type QMediaRecorderStateEnum): untyped = 2


type QMediaRecorderStatusEnum* = distinct cint
template UnavailableStatus*(_: type QMediaRecorderStatusEnum): untyped = 0
template UnloadedStatus*(_: type QMediaRecorderStatusEnum): untyped = 1
template LoadingStatus*(_: type QMediaRecorderStatusEnum): untyped = 2
template LoadedStatus*(_: type QMediaRecorderStatusEnum): untyped = 3
template StartingStatus*(_: type QMediaRecorderStatusEnum): untyped = 4
template RecordingStatus*(_: type QMediaRecorderStatusEnum): untyped = 5
template PausedStatus*(_: type QMediaRecorderStatusEnum): untyped = 6
template FinalizingStatus*(_: type QMediaRecorderStatusEnum): untyped = 7


type QMediaRecorderErrorEnum* = distinct cint
template NoError*(_: type QMediaRecorderErrorEnum): untyped = 0
template ResourceError*(_: type QMediaRecorderErrorEnum): untyped = 1
template FormatError*(_: type QMediaRecorderErrorEnum): untyped = 2
template OutOfSpaceError*(_: type QMediaRecorderErrorEnum): untyped = 3


import gen_qmediarecorder_types
export gen_qmediarecorder_types

import
  gen_qcoreevent,
  gen_qmediaencodersettings,
  gen_qmediaobject,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qurl,
  gen_qvariant
export
  gen_qcoreevent,
  gen_qmediaencodersettings,
  gen_qmediaobject,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qurl,
  gen_qvariant

type cQMediaRecorder*{.exportc: "QMediaRecorder", incompleteStruct.} = object

proc fcQMediaRecorder_new(mediaObject: pointer): ptr cQMediaRecorder {.importc: "QMediaRecorder_new".}
proc fcQMediaRecorder_new2(mediaObject: pointer, parent: pointer): ptr cQMediaRecorder {.importc: "QMediaRecorder_new2".}
proc fcQMediaRecorder_metaObject(self: pointer, ): pointer {.importc: "QMediaRecorder_metaObject".}
proc fcQMediaRecorder_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaRecorder_metacast".}
proc fcQMediaRecorder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaRecorder_metacall".}
proc fcQMediaRecorder_tr(s: cstring): struct_miqt_string {.importc: "QMediaRecorder_tr".}
proc fcQMediaRecorder_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaRecorder_trUtf8".}
proc fcQMediaRecorder_mediaObject(self: pointer, ): pointer {.importc: "QMediaRecorder_mediaObject".}
proc fcQMediaRecorder_isAvailable(self: pointer, ): bool {.importc: "QMediaRecorder_isAvailable".}
proc fcQMediaRecorder_availability(self: pointer, ): cint {.importc: "QMediaRecorder_availability".}
proc fcQMediaRecorder_outputLocation(self: pointer, ): pointer {.importc: "QMediaRecorder_outputLocation".}
proc fcQMediaRecorder_setOutputLocation(self: pointer, location: pointer): bool {.importc: "QMediaRecorder_setOutputLocation".}
proc fcQMediaRecorder_actualLocation(self: pointer, ): pointer {.importc: "QMediaRecorder_actualLocation".}
proc fcQMediaRecorder_state(self: pointer, ): cint {.importc: "QMediaRecorder_state".}
proc fcQMediaRecorder_status(self: pointer, ): cint {.importc: "QMediaRecorder_status".}
proc fcQMediaRecorder_error(self: pointer, ): cint {.importc: "QMediaRecorder_error".}
proc fcQMediaRecorder_errorString(self: pointer, ): struct_miqt_string {.importc: "QMediaRecorder_errorString".}
proc fcQMediaRecorder_duration(self: pointer, ): clonglong {.importc: "QMediaRecorder_duration".}
proc fcQMediaRecorder_isMuted(self: pointer, ): bool {.importc: "QMediaRecorder_isMuted".}
proc fcQMediaRecorder_volume(self: pointer, ): float64 {.importc: "QMediaRecorder_volume".}
proc fcQMediaRecorder_supportedContainers(self: pointer, ): struct_miqt_array {.importc: "QMediaRecorder_supportedContainers".}
proc fcQMediaRecorder_containerDescription(self: pointer, format: struct_miqt_string): struct_miqt_string {.importc: "QMediaRecorder_containerDescription".}
proc fcQMediaRecorder_supportedAudioCodecs(self: pointer, ): struct_miqt_array {.importc: "QMediaRecorder_supportedAudioCodecs".}
proc fcQMediaRecorder_audioCodecDescription(self: pointer, codecName: struct_miqt_string): struct_miqt_string {.importc: "QMediaRecorder_audioCodecDescription".}
proc fcQMediaRecorder_supportedAudioSampleRates(self: pointer, ): struct_miqt_array {.importc: "QMediaRecorder_supportedAudioSampleRates".}
proc fcQMediaRecorder_supportedVideoCodecs(self: pointer, ): struct_miqt_array {.importc: "QMediaRecorder_supportedVideoCodecs".}
proc fcQMediaRecorder_videoCodecDescription(self: pointer, codecName: struct_miqt_string): struct_miqt_string {.importc: "QMediaRecorder_videoCodecDescription".}
proc fcQMediaRecorder_supportedResolutions(self: pointer, ): struct_miqt_array {.importc: "QMediaRecorder_supportedResolutions".}
proc fcQMediaRecorder_supportedFrameRates(self: pointer, ): struct_miqt_array {.importc: "QMediaRecorder_supportedFrameRates".}
proc fcQMediaRecorder_audioSettings(self: pointer, ): pointer {.importc: "QMediaRecorder_audioSettings".}
proc fcQMediaRecorder_videoSettings(self: pointer, ): pointer {.importc: "QMediaRecorder_videoSettings".}
proc fcQMediaRecorder_containerFormat(self: pointer, ): struct_miqt_string {.importc: "QMediaRecorder_containerFormat".}
proc fcQMediaRecorder_setAudioSettings(self: pointer, audioSettings: pointer): void {.importc: "QMediaRecorder_setAudioSettings".}
proc fcQMediaRecorder_setVideoSettings(self: pointer, videoSettings: pointer): void {.importc: "QMediaRecorder_setVideoSettings".}
proc fcQMediaRecorder_setContainerFormat(self: pointer, container: struct_miqt_string): void {.importc: "QMediaRecorder_setContainerFormat".}
proc fcQMediaRecorder_setEncodingSettings(self: pointer, audioSettings: pointer): void {.importc: "QMediaRecorder_setEncodingSettings".}
proc fcQMediaRecorder_isMetaDataAvailable(self: pointer, ): bool {.importc: "QMediaRecorder_isMetaDataAvailable".}
proc fcQMediaRecorder_isMetaDataWritable(self: pointer, ): bool {.importc: "QMediaRecorder_isMetaDataWritable".}
proc fcQMediaRecorder_metaData(self: pointer, key: struct_miqt_string): pointer {.importc: "QMediaRecorder_metaData".}
proc fcQMediaRecorder_setMetaData(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QMediaRecorder_setMetaData".}
proc fcQMediaRecorder_availableMetaData(self: pointer, ): struct_miqt_array {.importc: "QMediaRecorder_availableMetaData".}
proc fcQMediaRecorder_record(self: pointer, ): void {.importc: "QMediaRecorder_record".}
proc fcQMediaRecorder_pause(self: pointer, ): void {.importc: "QMediaRecorder_pause".}
proc fcQMediaRecorder_stop(self: pointer, ): void {.importc: "QMediaRecorder_stop".}
proc fcQMediaRecorder_setMuted(self: pointer, muted: bool): void {.importc: "QMediaRecorder_setMuted".}
proc fcQMediaRecorder_setVolume(self: pointer, volume: float64): void {.importc: "QMediaRecorder_setVolume".}
proc fcQMediaRecorder_stateChanged(self: pointer, state: cint): void {.importc: "QMediaRecorder_stateChanged".}
proc fQMediaRecorder_connect_stateChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_stateChanged".}
proc fcQMediaRecorder_statusChanged(self: pointer, status: cint): void {.importc: "QMediaRecorder_statusChanged".}
proc fQMediaRecorder_connect_statusChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_statusChanged".}
proc fcQMediaRecorder_durationChanged(self: pointer, duration: clonglong): void {.importc: "QMediaRecorder_durationChanged".}
proc fQMediaRecorder_connect_durationChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_durationChanged".}
proc fcQMediaRecorder_mutedChanged(self: pointer, muted: bool): void {.importc: "QMediaRecorder_mutedChanged".}
proc fQMediaRecorder_connect_mutedChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_mutedChanged".}
proc fcQMediaRecorder_volumeChanged(self: pointer, volume: float64): void {.importc: "QMediaRecorder_volumeChanged".}
proc fQMediaRecorder_connect_volumeChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_volumeChanged".}
proc fcQMediaRecorder_actualLocationChanged(self: pointer, location: pointer): void {.importc: "QMediaRecorder_actualLocationChanged".}
proc fQMediaRecorder_connect_actualLocationChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_actualLocationChanged".}
proc fcQMediaRecorder_errorWithError(self: pointer, error: cint): void {.importc: "QMediaRecorder_errorWithError".}
proc fQMediaRecorder_connect_errorWithError(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_errorWithError".}
proc fcQMediaRecorder_metaDataAvailableChanged(self: pointer, available: bool): void {.importc: "QMediaRecorder_metaDataAvailableChanged".}
proc fQMediaRecorder_connect_metaDataAvailableChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_metaDataAvailableChanged".}
proc fcQMediaRecorder_metaDataWritableChanged(self: pointer, writable: bool): void {.importc: "QMediaRecorder_metaDataWritableChanged".}
proc fQMediaRecorder_connect_metaDataWritableChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_metaDataWritableChanged".}
proc fcQMediaRecorder_metaDataChanged(self: pointer, ): void {.importc: "QMediaRecorder_metaDataChanged".}
proc fQMediaRecorder_connect_metaDataChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_metaDataChanged".}
proc fcQMediaRecorder_metaDataChanged2(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QMediaRecorder_metaDataChanged2".}
proc fQMediaRecorder_connect_metaDataChanged2(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_metaDataChanged2".}
proc fcQMediaRecorder_availabilityChanged(self: pointer, available: bool): void {.importc: "QMediaRecorder_availabilityChanged".}
proc fQMediaRecorder_connect_availabilityChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_availabilityChanged".}
proc fcQMediaRecorder_availabilityChangedWithAvailability(self: pointer, availability: cint): void {.importc: "QMediaRecorder_availabilityChangedWithAvailability".}
proc fQMediaRecorder_connect_availabilityChangedWithAvailability(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_availabilityChangedWithAvailability".}
proc fcQMediaRecorder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaRecorder_tr2".}
proc fcQMediaRecorder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaRecorder_tr3".}
proc fcQMediaRecorder_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaRecorder_trUtf82".}
proc fcQMediaRecorder_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaRecorder_trUtf83".}
proc fcQMediaRecorder_supportedAudioSampleRates1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QMediaRecorder_supportedAudioSampleRates1".}
proc fcQMediaRecorder_supportedAudioSampleRates2(self: pointer, settings: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QMediaRecorder_supportedAudioSampleRates2".}
proc fcQMediaRecorder_supportedResolutions1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QMediaRecorder_supportedResolutions1".}
proc fcQMediaRecorder_supportedResolutions2(self: pointer, settings: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QMediaRecorder_supportedResolutions2".}
proc fcQMediaRecorder_supportedFrameRates1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QMediaRecorder_supportedFrameRates1".}
proc fcQMediaRecorder_supportedFrameRates2(self: pointer, settings: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QMediaRecorder_supportedFrameRates2".}
proc fcQMediaRecorder_setEncodingSettings2(self: pointer, audioSettings: pointer, videoSettings: pointer): void {.importc: "QMediaRecorder_setEncodingSettings2".}
proc fcQMediaRecorder_setEncodingSettings3(self: pointer, audioSettings: pointer, videoSettings: pointer, containerMimeType: struct_miqt_string): void {.importc: "QMediaRecorder_setEncodingSettings3".}
proc fQMediaRecorder_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMediaRecorder_virtualbase_metaObject".}
proc fcQMediaRecorder_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_metaObject".}
proc fQMediaRecorder_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMediaRecorder_virtualbase_metacast".}
proc fcQMediaRecorder_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_metacast".}
proc fQMediaRecorder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMediaRecorder_virtualbase_metacall".}
proc fcQMediaRecorder_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_metacall".}
proc fQMediaRecorder_virtualbase_mediaObject(self: pointer, ): pointer{.importc: "QMediaRecorder_virtualbase_mediaObject".}
proc fcQMediaRecorder_override_virtual_mediaObject(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_mediaObject".}
proc fQMediaRecorder_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool{.importc: "QMediaRecorder_virtualbase_setMediaObject".}
proc fcQMediaRecorder_override_virtual_setMediaObject(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_setMediaObject".}
proc fQMediaRecorder_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMediaRecorder_virtualbase_event".}
proc fcQMediaRecorder_override_virtual_event(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_event".}
proc fQMediaRecorder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMediaRecorder_virtualbase_eventFilter".}
proc fcQMediaRecorder_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_eventFilter".}
proc fQMediaRecorder_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMediaRecorder_virtualbase_timerEvent".}
proc fcQMediaRecorder_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_timerEvent".}
proc fQMediaRecorder_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMediaRecorder_virtualbase_childEvent".}
proc fcQMediaRecorder_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_childEvent".}
proc fQMediaRecorder_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMediaRecorder_virtualbase_customEvent".}
proc fcQMediaRecorder_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_customEvent".}
proc fQMediaRecorder_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMediaRecorder_virtualbase_connectNotify".}
proc fcQMediaRecorder_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_connectNotify".}
proc fQMediaRecorder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMediaRecorder_virtualbase_disconnectNotify".}
proc fcQMediaRecorder_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_disconnectNotify".}
proc fcQMediaRecorder_staticMetaObject(): pointer {.importc: "QMediaRecorder_staticMetaObject".}
proc fcQMediaRecorder_delete(self: pointer) {.importc: "QMediaRecorder_delete".}


func init*(T: type gen_qmediarecorder_types.QMediaRecorder, h: ptr cQMediaRecorder): gen_qmediarecorder_types.QMediaRecorder =
  T(h: h)
proc create*(T: type gen_qmediarecorder_types.QMediaRecorder, mediaObject: gen_qmediaobject.QMediaObject): gen_qmediarecorder_types.QMediaRecorder =

  gen_qmediarecorder_types.QMediaRecorder.init(fcQMediaRecorder_new(mediaObject.h))
proc create*(T: type gen_qmediarecorder_types.QMediaRecorder, mediaObject: gen_qmediaobject.QMediaObject, parent: gen_qobject.QObject): gen_qmediarecorder_types.QMediaRecorder =

  gen_qmediarecorder_types.QMediaRecorder.init(fcQMediaRecorder_new2(mediaObject.h, parent.h))
proc metaObject*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaRecorder_metaObject(self.h))

proc metacast*(self: gen_qmediarecorder_types.QMediaRecorder, param1: cstring): pointer =

  fcQMediaRecorder_metacast(self.h, param1)

proc metacall*(self: gen_qmediarecorder_types.QMediaRecorder, param1: cint, param2: cint, param3: pointer): cint =

  fcQMediaRecorder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring): string =

  let v_ms = fcQMediaRecorder_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring): string =

  let v_ms = fcQMediaRecorder_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc mediaObject*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qmediaobject.QMediaObject =

  gen_qmediaobject.QMediaObject(h: fcQMediaRecorder_mediaObject(self.h))

proc isAvailable*(self: gen_qmediarecorder_types.QMediaRecorder, ): bool =

  fcQMediaRecorder_isAvailable(self.h)

proc availability*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =

  cint(fcQMediaRecorder_availability(self.h))

proc outputLocation*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQMediaRecorder_outputLocation(self.h))

proc setOutputLocation*(self: gen_qmediarecorder_types.QMediaRecorder, location: gen_qurl.QUrl): bool =

  fcQMediaRecorder_setOutputLocation(self.h, location.h)

proc actualLocation*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQMediaRecorder_actualLocation(self.h))

proc state*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =

  cint(fcQMediaRecorder_state(self.h))

proc status*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =

  cint(fcQMediaRecorder_status(self.h))

proc error*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =

  cint(fcQMediaRecorder_error(self.h))

proc errorString*(self: gen_qmediarecorder_types.QMediaRecorder, ): string =

  let v_ms = fcQMediaRecorder_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc duration*(self: gen_qmediarecorder_types.QMediaRecorder, ): clonglong =

  fcQMediaRecorder_duration(self.h)

proc isMuted*(self: gen_qmediarecorder_types.QMediaRecorder, ): bool =

  fcQMediaRecorder_isMuted(self.h)

proc volume*(self: gen_qmediarecorder_types.QMediaRecorder, ): float64 =

  fcQMediaRecorder_volume(self.h)

proc supportedContainers*(self: gen_qmediarecorder_types.QMediaRecorder, ): seq[string] =

  var v_ma = fcQMediaRecorder_supportedContainers(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc containerDescription*(self: gen_qmediarecorder_types.QMediaRecorder, format: string): string =

  let v_ms = fcQMediaRecorder_containerDescription(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedAudioCodecs*(self: gen_qmediarecorder_types.QMediaRecorder, ): seq[string] =

  var v_ma = fcQMediaRecorder_supportedAudioCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc audioCodecDescription*(self: gen_qmediarecorder_types.QMediaRecorder, codecName: string): string =

  let v_ms = fcQMediaRecorder_audioCodecDescription(self.h, struct_miqt_string(data: codecName, len: csize_t(len(codecName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedAudioSampleRates*(self: gen_qmediarecorder_types.QMediaRecorder, ): seq[cint] =

  var v_ma = fcQMediaRecorder_supportedAudioSampleRates(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedVideoCodecs*(self: gen_qmediarecorder_types.QMediaRecorder, ): seq[string] =

  var v_ma = fcQMediaRecorder_supportedVideoCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc videoCodecDescription*(self: gen_qmediarecorder_types.QMediaRecorder, codecName: string): string =

  let v_ms = fcQMediaRecorder_videoCodecDescription(self.h, struct_miqt_string(data: codecName, len: csize_t(len(codecName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedResolutions*(self: gen_qmediarecorder_types.QMediaRecorder, ): seq[gen_qsize.QSize] =

  var v_ma = fcQMediaRecorder_supportedResolutions(self.h)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc supportedFrameRates*(self: gen_qmediarecorder_types.QMediaRecorder, ): seq[float64] =

  var v_ma = fcQMediaRecorder_supportedFrameRates(self.h)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc audioSettings*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qmediaencodersettings.QAudioEncoderSettings =

  gen_qmediaencodersettings.QAudioEncoderSettings(h: fcQMediaRecorder_audioSettings(self.h))

proc videoSettings*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qmediaencodersettings.QVideoEncoderSettings =

  gen_qmediaencodersettings.QVideoEncoderSettings(h: fcQMediaRecorder_videoSettings(self.h))

proc containerFormat*(self: gen_qmediarecorder_types.QMediaRecorder, ): string =

  let v_ms = fcQMediaRecorder_containerFormat(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAudioSettings*(self: gen_qmediarecorder_types.QMediaRecorder, audioSettings: gen_qmediaencodersettings.QAudioEncoderSettings): void =

  fcQMediaRecorder_setAudioSettings(self.h, audioSettings.h)

proc setVideoSettings*(self: gen_qmediarecorder_types.QMediaRecorder, videoSettings: gen_qmediaencodersettings.QVideoEncoderSettings): void =

  fcQMediaRecorder_setVideoSettings(self.h, videoSettings.h)

proc setContainerFormat*(self: gen_qmediarecorder_types.QMediaRecorder, container: string): void =

  fcQMediaRecorder_setContainerFormat(self.h, struct_miqt_string(data: container, len: csize_t(len(container))))

proc setEncodingSettings*(self: gen_qmediarecorder_types.QMediaRecorder, audioSettings: gen_qmediaencodersettings.QAudioEncoderSettings): void =

  fcQMediaRecorder_setEncodingSettings(self.h, audioSettings.h)

proc isMetaDataAvailable*(self: gen_qmediarecorder_types.QMediaRecorder, ): bool =

  fcQMediaRecorder_isMetaDataAvailable(self.h)

proc isMetaDataWritable*(self: gen_qmediarecorder_types.QMediaRecorder, ): bool =

  fcQMediaRecorder_isMetaDataWritable(self.h)

proc metaData*(self: gen_qmediarecorder_types.QMediaRecorder, key: string): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQMediaRecorder_metaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc setMetaData*(self: gen_qmediarecorder_types.QMediaRecorder, key: string, value: gen_qvariant.QVariant): void =

  fcQMediaRecorder_setMetaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc availableMetaData*(self: gen_qmediarecorder_types.QMediaRecorder, ): seq[string] =

  var v_ma = fcQMediaRecorder_availableMetaData(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc record*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =

  fcQMediaRecorder_record(self.h)

proc pause*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =

  fcQMediaRecorder_pause(self.h)

proc stop*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =

  fcQMediaRecorder_stop(self.h)

proc setMuted*(self: gen_qmediarecorder_types.QMediaRecorder, muted: bool): void =

  fcQMediaRecorder_setMuted(self.h, muted)

proc setVolume*(self: gen_qmediarecorder_types.QMediaRecorder, volume: float64): void =

  fcQMediaRecorder_setVolume(self.h, volume)

proc stateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, state: cint): void =

  fcQMediaRecorder_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QMediaRecorder_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: proc(state: cint)) =
  type Cb = proc(state: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc statusChanged*(self: gen_qmediarecorder_types.QMediaRecorder, status: cint): void =

  fcQMediaRecorder_statusChanged(self.h, cint(status))

proc miqt_exec_callback_QMediaRecorder_statusChanged(slot: int, status: cint) {.exportc.} =
  type Cb = proc(status: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(status)


  nimfunc[](slotval1)

proc onstatusChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: proc(status: cint)) =
  type Cb = proc(status: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_statusChanged(self.h, cast[int](addr tmp[]))
proc durationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, duration: clonglong): void =

  fcQMediaRecorder_durationChanged(self.h, duration)

proc miqt_exec_callback_QMediaRecorder_durationChanged(slot: int, duration: clonglong) {.exportc.} =
  type Cb = proc(duration: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = duration


  nimfunc[](slotval1)

proc ondurationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: proc(duration: clonglong)) =
  type Cb = proc(duration: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_durationChanged(self.h, cast[int](addr tmp[]))
proc mutedChanged*(self: gen_qmediarecorder_types.QMediaRecorder, muted: bool): void =

  fcQMediaRecorder_mutedChanged(self.h, muted)

proc miqt_exec_callback_QMediaRecorder_mutedChanged(slot: int, muted: bool) {.exportc.} =
  type Cb = proc(muted: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = muted


  nimfunc[](slotval1)

proc onmutedChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: proc(muted: bool)) =
  type Cb = proc(muted: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_mutedChanged(self.h, cast[int](addr tmp[]))
proc volumeChanged*(self: gen_qmediarecorder_types.QMediaRecorder, volume: float64): void =

  fcQMediaRecorder_volumeChanged(self.h, volume)

proc miqt_exec_callback_QMediaRecorder_volumeChanged(slot: int, volume: float64) {.exportc.} =
  type Cb = proc(volume: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = volume


  nimfunc[](slotval1)

proc onvolumeChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: proc(volume: float64)) =
  type Cb = proc(volume: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_volumeChanged(self.h, cast[int](addr tmp[]))
proc actualLocationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, location: gen_qurl.QUrl): void =

  fcQMediaRecorder_actualLocationChanged(self.h, location.h)

proc miqt_exec_callback_QMediaRecorder_actualLocationChanged(slot: int, location: pointer) {.exportc.} =
  type Cb = proc(location: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: location)


  nimfunc[](slotval1)

proc onactualLocationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: proc(location: gen_qurl.QUrl)) =
  type Cb = proc(location: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_actualLocationChanged(self.h, cast[int](addr tmp[]))
proc errorWithError*(self: gen_qmediarecorder_types.QMediaRecorder, error: cint): void =

  fcQMediaRecorder_errorWithError(self.h, cint(error))

proc miqt_exec_callback_QMediaRecorder_errorWithError(slot: int, error: cint) {.exportc.} =
  type Cb = proc(error: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(error)


  nimfunc[](slotval1)

proc onerrorWithError*(self: gen_qmediarecorder_types.QMediaRecorder, slot: proc(error: cint)) =
  type Cb = proc(error: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_errorWithError(self.h, cast[int](addr tmp[]))
proc metaDataAvailableChanged*(self: gen_qmediarecorder_types.QMediaRecorder, available: bool): void =

  fcQMediaRecorder_metaDataAvailableChanged(self.h, available)

proc miqt_exec_callback_QMediaRecorder_metaDataAvailableChanged(slot: int, available: bool) {.exportc.} =
  type Cb = proc(available: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = available


  nimfunc[](slotval1)

proc onmetaDataAvailableChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: proc(available: bool)) =
  type Cb = proc(available: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_metaDataAvailableChanged(self.h, cast[int](addr tmp[]))
proc metaDataWritableChanged*(self: gen_qmediarecorder_types.QMediaRecorder, writable: bool): void =

  fcQMediaRecorder_metaDataWritableChanged(self.h, writable)

proc miqt_exec_callback_QMediaRecorder_metaDataWritableChanged(slot: int, writable: bool) {.exportc.} =
  type Cb = proc(writable: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = writable


  nimfunc[](slotval1)

proc onmetaDataWritableChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: proc(writable: bool)) =
  type Cb = proc(writable: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_metaDataWritableChanged(self.h, cast[int](addr tmp[]))
proc metaDataChanged*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =

  fcQMediaRecorder_metaDataChanged(self.h)

proc miqt_exec_callback_QMediaRecorder_metaDataChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmetaDataChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_metaDataChanged(self.h, cast[int](addr tmp[]))
proc metaDataChanged2*(self: gen_qmediarecorder_types.QMediaRecorder, key: string, value: gen_qvariant.QVariant): void =

  fcQMediaRecorder_metaDataChanged2(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc miqt_exec_callback_QMediaRecorder_metaDataChanged2(slot: int, key: struct_miqt_string, value: pointer) {.exportc.} =
  type Cb = proc(key: string, value: gen_qvariant.QVariant)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qvariant.QVariant(h: value)


  nimfunc[](slotval1, slotval2)

proc onmetaDataChanged2*(self: gen_qmediarecorder_types.QMediaRecorder, slot: proc(key: string, value: gen_qvariant.QVariant)) =
  type Cb = proc(key: string, value: gen_qvariant.QVariant)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_metaDataChanged2(self.h, cast[int](addr tmp[]))
proc availabilityChanged*(self: gen_qmediarecorder_types.QMediaRecorder, available: bool): void =

  fcQMediaRecorder_availabilityChanged(self.h, available)

proc miqt_exec_callback_QMediaRecorder_availabilityChanged(slot: int, available: bool) {.exportc.} =
  type Cb = proc(available: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = available


  nimfunc[](slotval1)

proc onavailabilityChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: proc(available: bool)) =
  type Cb = proc(available: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_availabilityChanged(self.h, cast[int](addr tmp[]))
proc availabilityChangedWithAvailability*(self: gen_qmediarecorder_types.QMediaRecorder, availability: cint): void =

  fcQMediaRecorder_availabilityChangedWithAvailability(self.h, cint(availability))

proc miqt_exec_callback_QMediaRecorder_availabilityChangedWithAvailability(slot: int, availability: cint) {.exportc.} =
  type Cb = proc(availability: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(availability)


  nimfunc[](slotval1)

proc onavailabilityChangedWithAvailability*(self: gen_qmediarecorder_types.QMediaRecorder, slot: proc(availability: cint)) =
  type Cb = proc(availability: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_availabilityChangedWithAvailability(self.h, cast[int](addr tmp[]))
proc tr2*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring, c: cstring): string =

  let v_ms = fcQMediaRecorder_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaRecorder_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring, c: cstring): string =

  let v_ms = fcQMediaRecorder_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaRecorder_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedAudioSampleRates1*(self: gen_qmediarecorder_types.QMediaRecorder, settings: gen_qmediaencodersettings.QAudioEncoderSettings): seq[cint] =

  var v_ma = fcQMediaRecorder_supportedAudioSampleRates1(self.h, settings.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedAudioSampleRates2*(self: gen_qmediarecorder_types.QMediaRecorder, settings: gen_qmediaencodersettings.QAudioEncoderSettings, continuous: ptr bool): seq[cint] =

  var v_ma = fcQMediaRecorder_supportedAudioSampleRates2(self.h, settings.h, continuous)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedResolutions1*(self: gen_qmediarecorder_types.QMediaRecorder, settings: gen_qmediaencodersettings.QVideoEncoderSettings): seq[gen_qsize.QSize] =

  var v_ma = fcQMediaRecorder_supportedResolutions1(self.h, settings.h)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc supportedResolutions2*(self: gen_qmediarecorder_types.QMediaRecorder, settings: gen_qmediaencodersettings.QVideoEncoderSettings, continuous: ptr bool): seq[gen_qsize.QSize] =

  var v_ma = fcQMediaRecorder_supportedResolutions2(self.h, settings.h, continuous)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc supportedFrameRates1*(self: gen_qmediarecorder_types.QMediaRecorder, settings: gen_qmediaencodersettings.QVideoEncoderSettings): seq[float64] =

  var v_ma = fcQMediaRecorder_supportedFrameRates1(self.h, settings.h)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedFrameRates2*(self: gen_qmediarecorder_types.QMediaRecorder, settings: gen_qmediaencodersettings.QVideoEncoderSettings, continuous: ptr bool): seq[float64] =

  var v_ma = fcQMediaRecorder_supportedFrameRates2(self.h, settings.h, continuous)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc setEncodingSettings2*(self: gen_qmediarecorder_types.QMediaRecorder, audioSettings: gen_qmediaencodersettings.QAudioEncoderSettings, videoSettings: gen_qmediaencodersettings.QVideoEncoderSettings): void =

  fcQMediaRecorder_setEncodingSettings2(self.h, audioSettings.h, videoSettings.h)

proc setEncodingSettings3*(self: gen_qmediarecorder_types.QMediaRecorder, audioSettings: gen_qmediaencodersettings.QAudioEncoderSettings, videoSettings: gen_qmediaencodersettings.QVideoEncoderSettings, containerMimeType: string): void =

  fcQMediaRecorder_setEncodingSettings3(self.h, audioSettings.h, videoSettings.h, struct_miqt_string(data: containerMimeType, len: csize_t(len(containerMimeType))))

proc QMediaRecordermetaObject*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQMediaRecorder_virtualbase_metaObject(self.h))

type QMediaRecordermetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermetaObjectProc) =
  # TODO check subclass
  var tmp = new QMediaRecordermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_metaObject(self: ptr cQMediaRecorder, slot: int): pointer {.exportc: "miqt_exec_callback_QMediaRecorder_metaObject ".} =
  var nimfunc = cast[ptr QMediaRecordermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMediaRecordermetacast*(self: gen_qmediarecorder_types.QMediaRecorder, param1: cstring): pointer =

  fQMediaRecorder_virtualbase_metacast(self.h, param1)

type QMediaRecordermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermetacastProc) =
  # TODO check subclass
  var tmp = new QMediaRecordermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_metacast(self: ptr cQMediaRecorder, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMediaRecorder_metacast ".} =
  var nimfunc = cast[ptr QMediaRecordermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaRecordermetacall*(self: gen_qmediarecorder_types.QMediaRecorder, param1: cint, param2: cint, param3: pointer): cint =

  fQMediaRecorder_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMediaRecordermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermetacallProc) =
  # TODO check subclass
  var tmp = new QMediaRecordermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_metacall(self: ptr cQMediaRecorder, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMediaRecorder_metacall ".} =
  var nimfunc = cast[ptr QMediaRecordermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMediaRecordermediaObject*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qmediaobject.QMediaObject =

  gen_qmediaobject.QMediaObject(h: fQMediaRecorder_virtualbase_mediaObject(self.h))

type QMediaRecordermediaObjectProc* = proc(): gen_qmediaobject.QMediaObject
proc onmediaObject*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermediaObjectProc) =
  # TODO check subclass
  var tmp = new QMediaRecordermediaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_mediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_mediaObject(self: ptr cQMediaRecorder, slot: int): pointer {.exportc: "miqt_exec_callback_QMediaRecorder_mediaObject ".} =
  var nimfunc = cast[ptr QMediaRecordermediaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMediaRecordersetMediaObject*(self: gen_qmediarecorder_types.QMediaRecorder, objectVal: gen_qmediaobject.QMediaObject): bool =

  fQMediaRecorder_virtualbase_setMediaObject(self.h, objectVal.h)

type QMediaRecordersetMediaObjectProc* = proc(objectVal: gen_qmediaobject.QMediaObject): bool
proc onsetMediaObject*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordersetMediaObjectProc) =
  # TODO check subclass
  var tmp = new QMediaRecordersetMediaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_setMediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_setMediaObject(self: ptr cQMediaRecorder, slot: int, objectVal: pointer): bool {.exportc: "miqt_exec_callback_QMediaRecorder_setMediaObject ".} =
  var nimfunc = cast[ptr QMediaRecordersetMediaObjectProc](cast[pointer](slot))
  let slotval1 = gen_qmediaobject.QMediaObject(h: objectVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaRecorderevent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent.QEvent): bool =

  fQMediaRecorder_virtualbase_event(self.h, event.h)

type QMediaRecordereventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordereventProc) =
  # TODO check subclass
  var tmp = new QMediaRecordereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_event(self: ptr cQMediaRecorder, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaRecorder_event ".} =
  var nimfunc = cast[ptr QMediaRecordereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaRecordereventFilter*(self: gen_qmediarecorder_types.QMediaRecorder, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQMediaRecorder_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMediaRecordereventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordereventFilterProc) =
  # TODO check subclass
  var tmp = new QMediaRecordereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_eventFilter(self: ptr cQMediaRecorder, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaRecorder_eventFilter ".} =
  var nimfunc = cast[ptr QMediaRecordereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMediaRecordertimerEvent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent.QTimerEvent): void =

  fQMediaRecorder_virtualbase_timerEvent(self.h, event.h)

type QMediaRecordertimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordertimerEventProc) =
  # TODO check subclass
  var tmp = new QMediaRecordertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_timerEvent(self: ptr cQMediaRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_timerEvent ".} =
  var nimfunc = cast[ptr QMediaRecordertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QMediaRecorderchildEvent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent.QChildEvent): void =

  fQMediaRecorder_virtualbase_childEvent(self.h, event.h)

type QMediaRecorderchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderchildEventProc) =
  # TODO check subclass
  var tmp = new QMediaRecorderchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_childEvent(self: ptr cQMediaRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_childEvent ".} =
  var nimfunc = cast[ptr QMediaRecorderchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QMediaRecordercustomEvent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent.QEvent): void =

  fQMediaRecorder_virtualbase_customEvent(self.h, event.h)

type QMediaRecordercustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordercustomEventProc) =
  # TODO check subclass
  var tmp = new QMediaRecordercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_customEvent(self: ptr cQMediaRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_customEvent ".} =
  var nimfunc = cast[ptr QMediaRecordercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QMediaRecorderconnectNotify*(self: gen_qmediarecorder_types.QMediaRecorder, signal: gen_qmetaobject.QMetaMethod): void =

  fQMediaRecorder_virtualbase_connectNotify(self.h, signal.h)

type QMediaRecorderconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMediaRecorderconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_connectNotify(self: ptr cQMediaRecorder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_connectNotify ".} =
  var nimfunc = cast[ptr QMediaRecorderconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMediaRecorderdisconnectNotify*(self: gen_qmediarecorder_types.QMediaRecorder, signal: gen_qmetaobject.QMetaMethod): void =

  fQMediaRecorder_virtualbase_disconnectNotify(self.h, signal.h)

type QMediaRecorderdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMediaRecorderdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_disconnectNotify(self: ptr cQMediaRecorder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_disconnectNotify ".} =
  var nimfunc = cast[ptr QMediaRecorderdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qmediarecorder_types.QMediaRecorder): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMediaRecorder_staticMetaObject())
proc delete*(self: gen_qmediarecorder_types.QMediaRecorder) =
  fcQMediaRecorder_delete(self.h)
