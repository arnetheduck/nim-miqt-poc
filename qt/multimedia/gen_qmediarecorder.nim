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


type QMediaRecorderState* = cint
const
  QMediaRecorderStoppedState* = 0
  QMediaRecorderRecordingState* = 1
  QMediaRecorderPausedState* = 2



type QMediaRecorderStatus* = cint
const
  QMediaRecorderUnavailableStatus* = 0
  QMediaRecorderUnloadedStatus* = 1
  QMediaRecorderLoadingStatus* = 2
  QMediaRecorderLoadedStatus* = 3
  QMediaRecorderStartingStatus* = 4
  QMediaRecorderRecordingStatus* = 5
  QMediaRecorderPausedStatus* = 6
  QMediaRecorderFinalizingStatus* = 7



type QMediaRecorderError* = cint
const
  QMediaRecorderNoError* = 0
  QMediaRecorderResourceError* = 1
  QMediaRecorderFormatError* = 2
  QMediaRecorderOutOfSpaceError* = 3



import gen_qmediarecorder_types
export gen_qmediarecorder_types

import
  gen_qcoreevent,
  gen_qmediaencodersettings,
  gen_qmediaobject,
  gen_qmetaobject,
  gen_qmultimedia,
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
  gen_qmultimedia,
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


func init*(T: type QMediaRecorder, h: ptr cQMediaRecorder): QMediaRecorder =
  T(h: h)
proc create*(T: type QMediaRecorder, mediaObject: gen_qmediaobject.QMediaObject): QMediaRecorder =

  QMediaRecorder.init(fcQMediaRecorder_new(mediaObject.h))
proc create*(T: type QMediaRecorder, mediaObject: gen_qmediaobject.QMediaObject, parent: gen_qobject.QObject): QMediaRecorder =

  QMediaRecorder.init(fcQMediaRecorder_new2(mediaObject.h, parent.h))
proc metaObject*(self: QMediaRecorder, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaRecorder_metaObject(self.h))

proc metacast*(self: QMediaRecorder, param1: cstring): pointer =

  fcQMediaRecorder_metacast(self.h, param1)

proc metacall*(self: QMediaRecorder, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMediaRecorder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMediaRecorder, s: cstring): string =

  let v_ms = fcQMediaRecorder_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMediaRecorder, s: cstring): string =

  let v_ms = fcQMediaRecorder_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc mediaObject*(self: QMediaRecorder, ): gen_qmediaobject.QMediaObject =

  gen_qmediaobject.QMediaObject(h: fcQMediaRecorder_mediaObject(self.h))

proc isAvailable*(self: QMediaRecorder, ): bool =

  fcQMediaRecorder_isAvailable(self.h)

proc availability*(self: QMediaRecorder, ): gen_qmultimedia.QMultimediaAvailabilityStatus =

  gen_qmultimedia.QMultimediaAvailabilityStatus(fcQMediaRecorder_availability(self.h))

proc outputLocation*(self: QMediaRecorder, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQMediaRecorder_outputLocation(self.h))

proc setOutputLocation*(self: QMediaRecorder, location: gen_qurl.QUrl): bool =

  fcQMediaRecorder_setOutputLocation(self.h, location.h)

proc actualLocation*(self: QMediaRecorder, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQMediaRecorder_actualLocation(self.h))

proc state*(self: QMediaRecorder, ): QMediaRecorderState =

  QMediaRecorderState(fcQMediaRecorder_state(self.h))

proc status*(self: QMediaRecorder, ): QMediaRecorderStatus =

  QMediaRecorderStatus(fcQMediaRecorder_status(self.h))

proc error*(self: QMediaRecorder, ): QMediaRecorderError =

  QMediaRecorderError(fcQMediaRecorder_error(self.h))

proc errorString*(self: QMediaRecorder, ): string =

  let v_ms = fcQMediaRecorder_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc duration*(self: QMediaRecorder, ): clonglong =

  fcQMediaRecorder_duration(self.h)

proc isMuted*(self: QMediaRecorder, ): bool =

  fcQMediaRecorder_isMuted(self.h)

proc volume*(self: QMediaRecorder, ): float64 =

  fcQMediaRecorder_volume(self.h)

proc supportedContainers*(self: QMediaRecorder, ): seq[string] =

  var v_ma = fcQMediaRecorder_supportedContainers(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc containerDescription*(self: QMediaRecorder, format: string): string =

  let v_ms = fcQMediaRecorder_containerDescription(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedAudioCodecs*(self: QMediaRecorder, ): seq[string] =

  var v_ma = fcQMediaRecorder_supportedAudioCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc audioCodecDescription*(self: QMediaRecorder, codecName: string): string =

  let v_ms = fcQMediaRecorder_audioCodecDescription(self.h, struct_miqt_string(data: codecName, len: csize_t(len(codecName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedAudioSampleRates*(self: QMediaRecorder, ): seq[cint] =

  var v_ma = fcQMediaRecorder_supportedAudioSampleRates(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedVideoCodecs*(self: QMediaRecorder, ): seq[string] =

  var v_ma = fcQMediaRecorder_supportedVideoCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc videoCodecDescription*(self: QMediaRecorder, codecName: string): string =

  let v_ms = fcQMediaRecorder_videoCodecDescription(self.h, struct_miqt_string(data: codecName, len: csize_t(len(codecName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedResolutions*(self: QMediaRecorder, ): seq[gen_qsize.QSize] =

  var v_ma = fcQMediaRecorder_supportedResolutions(self.h)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc supportedFrameRates*(self: QMediaRecorder, ): seq[float64] =

  var v_ma = fcQMediaRecorder_supportedFrameRates(self.h)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc audioSettings*(self: QMediaRecorder, ): gen_qmediaencodersettings.QAudioEncoderSettings =

  gen_qmediaencodersettings.QAudioEncoderSettings(h: fcQMediaRecorder_audioSettings(self.h))

proc videoSettings*(self: QMediaRecorder, ): gen_qmediaencodersettings.QVideoEncoderSettings =

  gen_qmediaencodersettings.QVideoEncoderSettings(h: fcQMediaRecorder_videoSettings(self.h))

proc containerFormat*(self: QMediaRecorder, ): string =

  let v_ms = fcQMediaRecorder_containerFormat(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAudioSettings*(self: QMediaRecorder, audioSettings: gen_qmediaencodersettings.QAudioEncoderSettings): void =

  fcQMediaRecorder_setAudioSettings(self.h, audioSettings.h)

proc setVideoSettings*(self: QMediaRecorder, videoSettings: gen_qmediaencodersettings.QVideoEncoderSettings): void =

  fcQMediaRecorder_setVideoSettings(self.h, videoSettings.h)

proc setContainerFormat*(self: QMediaRecorder, container: string): void =

  fcQMediaRecorder_setContainerFormat(self.h, struct_miqt_string(data: container, len: csize_t(len(container))))

proc setEncodingSettings*(self: QMediaRecorder, audioSettings: gen_qmediaencodersettings.QAudioEncoderSettings): void =

  fcQMediaRecorder_setEncodingSettings(self.h, audioSettings.h)

proc isMetaDataAvailable*(self: QMediaRecorder, ): bool =

  fcQMediaRecorder_isMetaDataAvailable(self.h)

proc isMetaDataWritable*(self: QMediaRecorder, ): bool =

  fcQMediaRecorder_isMetaDataWritable(self.h)

proc metaData*(self: QMediaRecorder, key: string): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQMediaRecorder_metaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc setMetaData*(self: QMediaRecorder, key: string, value: gen_qvariant.QVariant): void =

  fcQMediaRecorder_setMetaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc availableMetaData*(self: QMediaRecorder, ): seq[string] =

  var v_ma = fcQMediaRecorder_availableMetaData(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc record*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_record(self.h)

proc pause*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_pause(self.h)

proc stop*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_stop(self.h)

proc setMuted*(self: QMediaRecorder, muted: bool): void =

  fcQMediaRecorder_setMuted(self.h, muted)

proc setVolume*(self: QMediaRecorder, volume: float64): void =

  fcQMediaRecorder_setVolume(self.h, volume)

proc stateChanged*(self: QMediaRecorder, state: QMediaRecorderState): void =

  fcQMediaRecorder_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QMediaRecorder_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: QMediaRecorderState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QMediaRecorderState(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: QMediaRecorder, slot: proc(state: QMediaRecorderState)) =
  type Cb = proc(state: QMediaRecorderState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc statusChanged*(self: QMediaRecorder, status: QMediaRecorderStatus): void =

  fcQMediaRecorder_statusChanged(self.h, cint(status))

proc miqt_exec_callback_QMediaRecorder_statusChanged(slot: int, status: cint) {.exportc.} =
  type Cb = proc(status: QMediaRecorderStatus)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QMediaRecorderStatus(status)


  nimfunc[](slotval1)

proc onstatusChanged*(self: QMediaRecorder, slot: proc(status: QMediaRecorderStatus)) =
  type Cb = proc(status: QMediaRecorderStatus)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_statusChanged(self.h, cast[int](addr tmp[]))
proc durationChanged*(self: QMediaRecorder, duration: clonglong): void =

  fcQMediaRecorder_durationChanged(self.h, duration)

proc miqt_exec_callback_QMediaRecorder_durationChanged(slot: int, duration: clonglong) {.exportc.} =
  type Cb = proc(duration: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = duration


  nimfunc[](slotval1)

proc ondurationChanged*(self: QMediaRecorder, slot: proc(duration: clonglong)) =
  type Cb = proc(duration: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_durationChanged(self.h, cast[int](addr tmp[]))
proc mutedChanged*(self: QMediaRecorder, muted: bool): void =

  fcQMediaRecorder_mutedChanged(self.h, muted)

proc miqt_exec_callback_QMediaRecorder_mutedChanged(slot: int, muted: bool) {.exportc.} =
  type Cb = proc(muted: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = muted


  nimfunc[](slotval1)

proc onmutedChanged*(self: QMediaRecorder, slot: proc(muted: bool)) =
  type Cb = proc(muted: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_mutedChanged(self.h, cast[int](addr tmp[]))
proc volumeChanged*(self: QMediaRecorder, volume: float64): void =

  fcQMediaRecorder_volumeChanged(self.h, volume)

proc miqt_exec_callback_QMediaRecorder_volumeChanged(slot: int, volume: float64) {.exportc.} =
  type Cb = proc(volume: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = volume


  nimfunc[](slotval1)

proc onvolumeChanged*(self: QMediaRecorder, slot: proc(volume: float64)) =
  type Cb = proc(volume: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_volumeChanged(self.h, cast[int](addr tmp[]))
proc actualLocationChanged*(self: QMediaRecorder, location: gen_qurl.QUrl): void =

  fcQMediaRecorder_actualLocationChanged(self.h, location.h)

proc miqt_exec_callback_QMediaRecorder_actualLocationChanged(slot: int, location: pointer) {.exportc.} =
  type Cb = proc(location: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: location)


  nimfunc[](slotval1)

proc onactualLocationChanged*(self: QMediaRecorder, slot: proc(location: gen_qurl.QUrl)) =
  type Cb = proc(location: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_actualLocationChanged(self.h, cast[int](addr tmp[]))
proc errorWithError*(self: QMediaRecorder, error: QMediaRecorderError): void =

  fcQMediaRecorder_errorWithError(self.h, cint(error))

proc miqt_exec_callback_QMediaRecorder_errorWithError(slot: int, error: cint) {.exportc.} =
  type Cb = proc(error: QMediaRecorderError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QMediaRecorderError(error)


  nimfunc[](slotval1)

proc onerrorWithError*(self: QMediaRecorder, slot: proc(error: QMediaRecorderError)) =
  type Cb = proc(error: QMediaRecorderError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_errorWithError(self.h, cast[int](addr tmp[]))
proc metaDataAvailableChanged*(self: QMediaRecorder, available: bool): void =

  fcQMediaRecorder_metaDataAvailableChanged(self.h, available)

proc miqt_exec_callback_QMediaRecorder_metaDataAvailableChanged(slot: int, available: bool) {.exportc.} =
  type Cb = proc(available: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = available


  nimfunc[](slotval1)

proc onmetaDataAvailableChanged*(self: QMediaRecorder, slot: proc(available: bool)) =
  type Cb = proc(available: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_metaDataAvailableChanged(self.h, cast[int](addr tmp[]))
proc metaDataWritableChanged*(self: QMediaRecorder, writable: bool): void =

  fcQMediaRecorder_metaDataWritableChanged(self.h, writable)

proc miqt_exec_callback_QMediaRecorder_metaDataWritableChanged(slot: int, writable: bool) {.exportc.} =
  type Cb = proc(writable: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = writable


  nimfunc[](slotval1)

proc onmetaDataWritableChanged*(self: QMediaRecorder, slot: proc(writable: bool)) =
  type Cb = proc(writable: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_metaDataWritableChanged(self.h, cast[int](addr tmp[]))
proc metaDataChanged*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_metaDataChanged(self.h)

proc miqt_exec_callback_QMediaRecorder_metaDataChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmetaDataChanged*(self: QMediaRecorder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_metaDataChanged(self.h, cast[int](addr tmp[]))
proc metaDataChanged2*(self: QMediaRecorder, key: string, value: gen_qvariant.QVariant): void =

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

proc onmetaDataChanged2*(self: QMediaRecorder, slot: proc(key: string, value: gen_qvariant.QVariant)) =
  type Cb = proc(key: string, value: gen_qvariant.QVariant)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_metaDataChanged2(self.h, cast[int](addr tmp[]))
proc availabilityChanged*(self: QMediaRecorder, available: bool): void =

  fcQMediaRecorder_availabilityChanged(self.h, available)

proc miqt_exec_callback_QMediaRecorder_availabilityChanged(slot: int, available: bool) {.exportc.} =
  type Cb = proc(available: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = available


  nimfunc[](slotval1)

proc onavailabilityChanged*(self: QMediaRecorder, slot: proc(available: bool)) =
  type Cb = proc(available: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_availabilityChanged(self.h, cast[int](addr tmp[]))
proc availabilityChangedWithAvailability*(self: QMediaRecorder, availability: gen_qmultimedia.QMultimediaAvailabilityStatus): void =

  fcQMediaRecorder_availabilityChangedWithAvailability(self.h, cint(availability))

proc miqt_exec_callback_QMediaRecorder_availabilityChangedWithAvailability(slot: int, availability: cint) {.exportc.} =
  type Cb = proc(availability: gen_qmultimedia.QMultimediaAvailabilityStatus)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmultimedia.QMultimediaAvailabilityStatus(availability)


  nimfunc[](slotval1)

proc onavailabilityChangedWithAvailability*(self: QMediaRecorder, slot: proc(availability: gen_qmultimedia.QMultimediaAvailabilityStatus)) =
  type Cb = proc(availability: gen_qmultimedia.QMultimediaAvailabilityStatus)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_availabilityChangedWithAvailability(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMediaRecorder, s: cstring, c: cstring): string =

  let v_ms = fcQMediaRecorder_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMediaRecorder, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaRecorder_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMediaRecorder, s: cstring, c: cstring): string =

  let v_ms = fcQMediaRecorder_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMediaRecorder, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaRecorder_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedAudioSampleRates1*(self: QMediaRecorder, settings: gen_qmediaencodersettings.QAudioEncoderSettings): seq[cint] =

  var v_ma = fcQMediaRecorder_supportedAudioSampleRates1(self.h, settings.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedAudioSampleRates2*(self: QMediaRecorder, settings: gen_qmediaencodersettings.QAudioEncoderSettings, continuous: ptr bool): seq[cint] =

  var v_ma = fcQMediaRecorder_supportedAudioSampleRates2(self.h, settings.h, continuous)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedResolutions1*(self: QMediaRecorder, settings: gen_qmediaencodersettings.QVideoEncoderSettings): seq[gen_qsize.QSize] =

  var v_ma = fcQMediaRecorder_supportedResolutions1(self.h, settings.h)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc supportedResolutions2*(self: QMediaRecorder, settings: gen_qmediaencodersettings.QVideoEncoderSettings, continuous: ptr bool): seq[gen_qsize.QSize] =

  var v_ma = fcQMediaRecorder_supportedResolutions2(self.h, settings.h, continuous)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc supportedFrameRates1*(self: QMediaRecorder, settings: gen_qmediaencodersettings.QVideoEncoderSettings): seq[float64] =

  var v_ma = fcQMediaRecorder_supportedFrameRates1(self.h, settings.h)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedFrameRates2*(self: QMediaRecorder, settings: gen_qmediaencodersettings.QVideoEncoderSettings, continuous: ptr bool): seq[float64] =

  var v_ma = fcQMediaRecorder_supportedFrameRates2(self.h, settings.h, continuous)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc setEncodingSettings2*(self: QMediaRecorder, audioSettings: gen_qmediaencodersettings.QAudioEncoderSettings, videoSettings: gen_qmediaencodersettings.QVideoEncoderSettings): void =

  fcQMediaRecorder_setEncodingSettings2(self.h, audioSettings.h, videoSettings.h)

proc setEncodingSettings3*(self: QMediaRecorder, audioSettings: gen_qmediaencodersettings.QAudioEncoderSettings, videoSettings: gen_qmediaencodersettings.QVideoEncoderSettings, containerMimeType: string): void =

  fcQMediaRecorder_setEncodingSettings3(self.h, audioSettings.h, videoSettings.h, struct_miqt_string(data: containerMimeType, len: csize_t(len(containerMimeType))))

proc callVirtualBase_metaObject(self: QMediaRecorder, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQMediaRecorder_virtualbase_metaObject(self.h))

type QMediaRecordermetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QMediaRecorder, slot: proc(super: QMediaRecordermetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QMediaRecordermetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_metaObject(self: ptr cQMediaRecorder, slot: int): pointer {.exportc: "miqt_exec_callback_QMediaRecorder_metaObject ".} =
  type Cb = proc(super: QMediaRecordermetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QMediaRecorder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QMediaRecorder, param1: cstring): pointer =


  fQMediaRecorder_virtualbase_metacast(self.h, param1)

type QMediaRecordermetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QMediaRecorder, slot: proc(super: QMediaRecordermetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QMediaRecordermetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_metacast(self: ptr cQMediaRecorder, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMediaRecorder_metacast ".} =
  type Cb = proc(super: QMediaRecordermetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QMediaRecorder(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QMediaRecorder, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQMediaRecorder_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMediaRecordermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QMediaRecorder, slot: proc(super: QMediaRecordermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QMediaRecordermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_metacall(self: ptr cQMediaRecorder, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMediaRecorder_metacall ".} =
  type Cb = proc(super: QMediaRecordermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QMediaRecorder(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_mediaObject(self: QMediaRecorder, ): gen_qmediaobject.QMediaObject =


  gen_qmediaobject.QMediaObject(h: fQMediaRecorder_virtualbase_mediaObject(self.h))

type QMediaRecordermediaObjectBase* = proc(): gen_qmediaobject.QMediaObject
proc onmediaObject*(self: QMediaRecorder, slot: proc(super: QMediaRecordermediaObjectBase): gen_qmediaobject.QMediaObject) =
  # TODO check subclass
  type Cb = proc(super: QMediaRecordermediaObjectBase): gen_qmediaobject.QMediaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_mediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_mediaObject(self: ptr cQMediaRecorder, slot: int): pointer {.exportc: "miqt_exec_callback_QMediaRecorder_mediaObject ".} =
  type Cb = proc(super: QMediaRecordermediaObjectBase): gen_qmediaobject.QMediaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mediaObject(QMediaRecorder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setMediaObject(self: QMediaRecorder, objectVal: gen_qmediaobject.QMediaObject): bool =


  fQMediaRecorder_virtualbase_setMediaObject(self.h, objectVal.h)

type QMediaRecordersetMediaObjectBase* = proc(objectVal: gen_qmediaobject.QMediaObject): bool
proc onsetMediaObject*(self: QMediaRecorder, slot: proc(super: QMediaRecordersetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool) =
  # TODO check subclass
  type Cb = proc(super: QMediaRecordersetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_setMediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_setMediaObject(self: ptr cQMediaRecorder, slot: int, objectVal: pointer): bool {.exportc: "miqt_exec_callback_QMediaRecorder_setMediaObject ".} =
  type Cb = proc(super: QMediaRecordersetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qmediaobject.QMediaObject): auto =
    callVirtualBase_setMediaObject(QMediaRecorder(h: self), objectVal)
  let slotval1 = gen_qmediaobject.QMediaObject(h: objectVal)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QMediaRecorder, event: gen_qcoreevent.QEvent): bool =


  fQMediaRecorder_virtualbase_event(self.h, event.h)

type QMediaRecordereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QMediaRecorder, slot: proc(super: QMediaRecordereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMediaRecordereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_event(self: ptr cQMediaRecorder, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaRecorder_event ".} =
  type Cb = proc(super: QMediaRecordereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QMediaRecorder(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QMediaRecorder, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQMediaRecorder_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMediaRecordereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QMediaRecorder, slot: proc(super: QMediaRecordereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMediaRecordereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_eventFilter(self: ptr cQMediaRecorder, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaRecorder_eventFilter ".} =
  type Cb = proc(super: QMediaRecordereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QMediaRecorder(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QMediaRecorder, event: gen_qcoreevent.QTimerEvent): void =


  fQMediaRecorder_virtualbase_timerEvent(self.h, event.h)

type QMediaRecordertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QMediaRecorder, slot: proc(super: QMediaRecordertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaRecordertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_timerEvent(self: ptr cQMediaRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_timerEvent ".} =
  type Cb = proc(super: QMediaRecordertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QMediaRecorder(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QMediaRecorder, event: gen_qcoreevent.QChildEvent): void =


  fQMediaRecorder_virtualbase_childEvent(self.h, event.h)

type QMediaRecorderchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QMediaRecorder, slot: proc(super: QMediaRecorderchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaRecorderchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_childEvent(self: ptr cQMediaRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_childEvent ".} =
  type Cb = proc(super: QMediaRecorderchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QMediaRecorder(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QMediaRecorder, event: gen_qcoreevent.QEvent): void =


  fQMediaRecorder_virtualbase_customEvent(self.h, event.h)

type QMediaRecordercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QMediaRecorder, slot: proc(super: QMediaRecordercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaRecordercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_customEvent(self: ptr cQMediaRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_customEvent ".} =
  type Cb = proc(super: QMediaRecordercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QMediaRecorder(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QMediaRecorder, signal: gen_qmetaobject.QMetaMethod): void =


  fQMediaRecorder_virtualbase_connectNotify(self.h, signal.h)

type QMediaRecorderconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QMediaRecorder, slot: proc(super: QMediaRecorderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaRecorderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_connectNotify(self: ptr cQMediaRecorder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_connectNotify ".} =
  type Cb = proc(super: QMediaRecorderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QMediaRecorder(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QMediaRecorder, signal: gen_qmetaobject.QMetaMethod): void =


  fQMediaRecorder_virtualbase_disconnectNotify(self.h, signal.h)

type QMediaRecorderdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QMediaRecorder, slot: proc(super: QMediaRecorderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaRecorderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_disconnectNotify(self: ptr cQMediaRecorder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_disconnectNotify ".} =
  type Cb = proc(super: QMediaRecorderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QMediaRecorder(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QMediaRecorder): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMediaRecorder_staticMetaObject())
proc delete*(self: QMediaRecorder) =
  fcQMediaRecorder_delete(self.h)
