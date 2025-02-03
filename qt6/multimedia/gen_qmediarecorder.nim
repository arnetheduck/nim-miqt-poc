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
{.compile("gen_qmediarecorder.cpp", cflags).}


type QMediaRecorderQuality* = cint
const
  QMediaRecorderVeryLowQuality* = 0
  QMediaRecorderLowQuality* = 1
  QMediaRecorderNormalQuality* = 2
  QMediaRecorderHighQuality* = 3
  QMediaRecorderVeryHighQuality* = 4



type QMediaRecorderEncodingMode* = cint
const
  QMediaRecorderConstantQualityEncoding* = 0
  QMediaRecorderConstantBitRateEncoding* = 1
  QMediaRecorderAverageBitRateEncoding* = 2
  QMediaRecorderTwoPassEncoding* = 3



type QMediaRecorderRecorderState* = cint
const
  QMediaRecorderStoppedState* = 0
  QMediaRecorderRecordingState* = 1
  QMediaRecorderPausedState* = 2



type QMediaRecorderError* = cint
const
  QMediaRecorderNoError* = 0
  QMediaRecorderResourceError* = 1
  QMediaRecorderFormatError* = 2
  QMediaRecorderOutOfSpaceError* = 3
  QMediaRecorderLocationNotWritable* = 4



import gen_qmediarecorder_types
export gen_qmediarecorder_types

import
  gen_qcoreevent,
  gen_qmediacapturesession,
  gen_qmediaformat,
  gen_qmediametadata,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qurl
export
  gen_qcoreevent,
  gen_qmediacapturesession,
  gen_qmediaformat,
  gen_qmediametadata,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qurl

type cQMediaRecorder*{.exportc: "QMediaRecorder", incompleteStruct.} = object

proc fcQMediaRecorder_new(): ptr cQMediaRecorder {.importc: "QMediaRecorder_new".}
proc fcQMediaRecorder_new2(parent: pointer): ptr cQMediaRecorder {.importc: "QMediaRecorder_new2".}
proc fcQMediaRecorder_metaObject(self: pointer, ): pointer {.importc: "QMediaRecorder_metaObject".}
proc fcQMediaRecorder_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaRecorder_metacast".}
proc fcQMediaRecorder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaRecorder_metacall".}
proc fcQMediaRecorder_tr(s: cstring): struct_miqt_string {.importc: "QMediaRecorder_tr".}
proc fcQMediaRecorder_isAvailable(self: pointer, ): bool {.importc: "QMediaRecorder_isAvailable".}
proc fcQMediaRecorder_outputLocation(self: pointer, ): pointer {.importc: "QMediaRecorder_outputLocation".}
proc fcQMediaRecorder_setOutputLocation(self: pointer, location: pointer): void {.importc: "QMediaRecorder_setOutputLocation".}
proc fcQMediaRecorder_actualLocation(self: pointer, ): pointer {.importc: "QMediaRecorder_actualLocation".}
proc fcQMediaRecorder_recorderState(self: pointer, ): cint {.importc: "QMediaRecorder_recorderState".}
proc fcQMediaRecorder_error(self: pointer, ): cint {.importc: "QMediaRecorder_error".}
proc fcQMediaRecorder_errorString(self: pointer, ): struct_miqt_string {.importc: "QMediaRecorder_errorString".}
proc fcQMediaRecorder_duration(self: pointer, ): clonglong {.importc: "QMediaRecorder_duration".}
proc fcQMediaRecorder_mediaFormat(self: pointer, ): pointer {.importc: "QMediaRecorder_mediaFormat".}
proc fcQMediaRecorder_setMediaFormat(self: pointer, format: pointer): void {.importc: "QMediaRecorder_setMediaFormat".}
proc fcQMediaRecorder_encodingMode(self: pointer, ): cint {.importc: "QMediaRecorder_encodingMode".}
proc fcQMediaRecorder_setEncodingMode(self: pointer, encodingMode: cint): void {.importc: "QMediaRecorder_setEncodingMode".}
proc fcQMediaRecorder_quality(self: pointer, ): cint {.importc: "QMediaRecorder_quality".}
proc fcQMediaRecorder_setQuality(self: pointer, quality: cint): void {.importc: "QMediaRecorder_setQuality".}
proc fcQMediaRecorder_videoResolution(self: pointer, ): pointer {.importc: "QMediaRecorder_videoResolution".}
proc fcQMediaRecorder_setVideoResolution(self: pointer, videoResolution: pointer): void {.importc: "QMediaRecorder_setVideoResolution".}
proc fcQMediaRecorder_setVideoResolution2(self: pointer, width: cint, height: cint): void {.importc: "QMediaRecorder_setVideoResolution2".}
proc fcQMediaRecorder_videoFrameRate(self: pointer, ): float64 {.importc: "QMediaRecorder_videoFrameRate".}
proc fcQMediaRecorder_setVideoFrameRate(self: pointer, frameRate: float64): void {.importc: "QMediaRecorder_setVideoFrameRate".}
proc fcQMediaRecorder_videoBitRate(self: pointer, ): cint {.importc: "QMediaRecorder_videoBitRate".}
proc fcQMediaRecorder_setVideoBitRate(self: pointer, bitRate: cint): void {.importc: "QMediaRecorder_setVideoBitRate".}
proc fcQMediaRecorder_audioBitRate(self: pointer, ): cint {.importc: "QMediaRecorder_audioBitRate".}
proc fcQMediaRecorder_setAudioBitRate(self: pointer, bitRate: cint): void {.importc: "QMediaRecorder_setAudioBitRate".}
proc fcQMediaRecorder_audioChannelCount(self: pointer, ): cint {.importc: "QMediaRecorder_audioChannelCount".}
proc fcQMediaRecorder_setAudioChannelCount(self: pointer, channels: cint): void {.importc: "QMediaRecorder_setAudioChannelCount".}
proc fcQMediaRecorder_audioSampleRate(self: pointer, ): cint {.importc: "QMediaRecorder_audioSampleRate".}
proc fcQMediaRecorder_setAudioSampleRate(self: pointer, sampleRate: cint): void {.importc: "QMediaRecorder_setAudioSampleRate".}
proc fcQMediaRecorder_metaData(self: pointer, ): pointer {.importc: "QMediaRecorder_metaData".}
proc fcQMediaRecorder_setMetaData(self: pointer, metaData: pointer): void {.importc: "QMediaRecorder_setMetaData".}
proc fcQMediaRecorder_addMetaData(self: pointer, metaData: pointer): void {.importc: "QMediaRecorder_addMetaData".}
proc fcQMediaRecorder_captureSession(self: pointer, ): pointer {.importc: "QMediaRecorder_captureSession".}
proc fcQMediaRecorder_record(self: pointer, ): void {.importc: "QMediaRecorder_record".}
proc fcQMediaRecorder_pause(self: pointer, ): void {.importc: "QMediaRecorder_pause".}
proc fcQMediaRecorder_stop(self: pointer, ): void {.importc: "QMediaRecorder_stop".}
proc fcQMediaRecorder_recorderStateChanged(self: pointer, state: cint): void {.importc: "QMediaRecorder_recorderStateChanged".}
proc fQMediaRecorder_connect_recorderStateChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_recorderStateChanged".}
proc fcQMediaRecorder_durationChanged(self: pointer, duration: clonglong): void {.importc: "QMediaRecorder_durationChanged".}
proc fQMediaRecorder_connect_durationChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_durationChanged".}
proc fcQMediaRecorder_actualLocationChanged(self: pointer, location: pointer): void {.importc: "QMediaRecorder_actualLocationChanged".}
proc fQMediaRecorder_connect_actualLocationChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_actualLocationChanged".}
proc fcQMediaRecorder_encoderSettingsChanged(self: pointer, ): void {.importc: "QMediaRecorder_encoderSettingsChanged".}
proc fQMediaRecorder_connect_encoderSettingsChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_encoderSettingsChanged".}
proc fcQMediaRecorder_errorOccurred(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QMediaRecorder_errorOccurred".}
proc fQMediaRecorder_connect_errorOccurred(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_errorOccurred".}
proc fcQMediaRecorder_errorChanged(self: pointer, ): void {.importc: "QMediaRecorder_errorChanged".}
proc fQMediaRecorder_connect_errorChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_errorChanged".}
proc fcQMediaRecorder_metaDataChanged(self: pointer, ): void {.importc: "QMediaRecorder_metaDataChanged".}
proc fQMediaRecorder_connect_metaDataChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_metaDataChanged".}
proc fcQMediaRecorder_mediaFormatChanged(self: pointer, ): void {.importc: "QMediaRecorder_mediaFormatChanged".}
proc fQMediaRecorder_connect_mediaFormatChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_mediaFormatChanged".}
proc fcQMediaRecorder_encodingModeChanged(self: pointer, ): void {.importc: "QMediaRecorder_encodingModeChanged".}
proc fQMediaRecorder_connect_encodingModeChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_encodingModeChanged".}
proc fcQMediaRecorder_qualityChanged(self: pointer, ): void {.importc: "QMediaRecorder_qualityChanged".}
proc fQMediaRecorder_connect_qualityChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_qualityChanged".}
proc fcQMediaRecorder_videoResolutionChanged(self: pointer, ): void {.importc: "QMediaRecorder_videoResolutionChanged".}
proc fQMediaRecorder_connect_videoResolutionChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_videoResolutionChanged".}
proc fcQMediaRecorder_videoFrameRateChanged(self: pointer, ): void {.importc: "QMediaRecorder_videoFrameRateChanged".}
proc fQMediaRecorder_connect_videoFrameRateChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_videoFrameRateChanged".}
proc fcQMediaRecorder_videoBitRateChanged(self: pointer, ): void {.importc: "QMediaRecorder_videoBitRateChanged".}
proc fQMediaRecorder_connect_videoBitRateChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_videoBitRateChanged".}
proc fcQMediaRecorder_audioBitRateChanged(self: pointer, ): void {.importc: "QMediaRecorder_audioBitRateChanged".}
proc fQMediaRecorder_connect_audioBitRateChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_audioBitRateChanged".}
proc fcQMediaRecorder_audioChannelCountChanged(self: pointer, ): void {.importc: "QMediaRecorder_audioChannelCountChanged".}
proc fQMediaRecorder_connect_audioChannelCountChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_audioChannelCountChanged".}
proc fcQMediaRecorder_audioSampleRateChanged(self: pointer, ): void {.importc: "QMediaRecorder_audioSampleRateChanged".}
proc fQMediaRecorder_connect_audioSampleRateChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_audioSampleRateChanged".}
proc fcQMediaRecorder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaRecorder_tr2".}
proc fcQMediaRecorder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaRecorder_tr3".}
proc fQMediaRecorder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMediaRecorder_virtualbase_metacall".}
proc fcQMediaRecorder_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_metacall".}
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
proc fcQMediaRecorder_delete(self: pointer) {.importc: "QMediaRecorder_delete".}


func init*(T: type QMediaRecorder, h: ptr cQMediaRecorder): QMediaRecorder =
  T(h: h)
proc create*(T: type QMediaRecorder, ): QMediaRecorder =

  QMediaRecorder.init(fcQMediaRecorder_new())
proc create*(T: type QMediaRecorder, parent: gen_qobject.QObject): QMediaRecorder =

  QMediaRecorder.init(fcQMediaRecorder_new2(parent.h))
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

proc isAvailable*(self: QMediaRecorder, ): bool =

  fcQMediaRecorder_isAvailable(self.h)

proc outputLocation*(self: QMediaRecorder, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQMediaRecorder_outputLocation(self.h))

proc setOutputLocation*(self: QMediaRecorder, location: gen_qurl.QUrl): void =

  fcQMediaRecorder_setOutputLocation(self.h, location.h)

proc actualLocation*(self: QMediaRecorder, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQMediaRecorder_actualLocation(self.h))

proc recorderState*(self: QMediaRecorder, ): QMediaRecorderRecorderState =

  QMediaRecorderRecorderState(fcQMediaRecorder_recorderState(self.h))

proc error*(self: QMediaRecorder, ): QMediaRecorderError =

  QMediaRecorderError(fcQMediaRecorder_error(self.h))

proc errorString*(self: QMediaRecorder, ): string =

  let v_ms = fcQMediaRecorder_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc duration*(self: QMediaRecorder, ): clonglong =

  fcQMediaRecorder_duration(self.h)

proc mediaFormat*(self: QMediaRecorder, ): gen_qmediaformat.QMediaFormat =

  gen_qmediaformat.QMediaFormat(h: fcQMediaRecorder_mediaFormat(self.h))

proc setMediaFormat*(self: QMediaRecorder, format: gen_qmediaformat.QMediaFormat): void =

  fcQMediaRecorder_setMediaFormat(self.h, format.h)

proc encodingMode*(self: QMediaRecorder, ): QMediaRecorderEncodingMode =

  QMediaRecorderEncodingMode(fcQMediaRecorder_encodingMode(self.h))

proc setEncodingMode*(self: QMediaRecorder, encodingMode: QMediaRecorderEncodingMode): void =

  fcQMediaRecorder_setEncodingMode(self.h, cint(encodingMode))

proc quality*(self: QMediaRecorder, ): QMediaRecorderQuality =

  QMediaRecorderQuality(fcQMediaRecorder_quality(self.h))

proc setQuality*(self: QMediaRecorder, quality: QMediaRecorderQuality): void =

  fcQMediaRecorder_setQuality(self.h, cint(quality))

proc videoResolution*(self: QMediaRecorder, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQMediaRecorder_videoResolution(self.h))

proc setVideoResolution*(self: QMediaRecorder, videoResolution: gen_qsize.QSize): void =

  fcQMediaRecorder_setVideoResolution(self.h, videoResolution.h)

proc setVideoResolution2*(self: QMediaRecorder, width: cint, height: cint): void =

  fcQMediaRecorder_setVideoResolution2(self.h, width, height)

proc videoFrameRate*(self: QMediaRecorder, ): float64 =

  fcQMediaRecorder_videoFrameRate(self.h)

proc setVideoFrameRate*(self: QMediaRecorder, frameRate: float64): void =

  fcQMediaRecorder_setVideoFrameRate(self.h, frameRate)

proc videoBitRate*(self: QMediaRecorder, ): cint =

  fcQMediaRecorder_videoBitRate(self.h)

proc setVideoBitRate*(self: QMediaRecorder, bitRate: cint): void =

  fcQMediaRecorder_setVideoBitRate(self.h, bitRate)

proc audioBitRate*(self: QMediaRecorder, ): cint =

  fcQMediaRecorder_audioBitRate(self.h)

proc setAudioBitRate*(self: QMediaRecorder, bitRate: cint): void =

  fcQMediaRecorder_setAudioBitRate(self.h, bitRate)

proc audioChannelCount*(self: QMediaRecorder, ): cint =

  fcQMediaRecorder_audioChannelCount(self.h)

proc setAudioChannelCount*(self: QMediaRecorder, channels: cint): void =

  fcQMediaRecorder_setAudioChannelCount(self.h, channels)

proc audioSampleRate*(self: QMediaRecorder, ): cint =

  fcQMediaRecorder_audioSampleRate(self.h)

proc setAudioSampleRate*(self: QMediaRecorder, sampleRate: cint): void =

  fcQMediaRecorder_setAudioSampleRate(self.h, sampleRate)

proc metaData*(self: QMediaRecorder, ): gen_qmediametadata.QMediaMetaData =

  gen_qmediametadata.QMediaMetaData(h: fcQMediaRecorder_metaData(self.h))

proc setMetaData*(self: QMediaRecorder, metaData: gen_qmediametadata.QMediaMetaData): void =

  fcQMediaRecorder_setMetaData(self.h, metaData.h)

proc addMetaData*(self: QMediaRecorder, metaData: gen_qmediametadata.QMediaMetaData): void =

  fcQMediaRecorder_addMetaData(self.h, metaData.h)

proc captureSession*(self: QMediaRecorder, ): gen_qmediacapturesession.QMediaCaptureSession =

  gen_qmediacapturesession.QMediaCaptureSession(h: fcQMediaRecorder_captureSession(self.h))

proc record*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_record(self.h)

proc pause*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_pause(self.h)

proc stop*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_stop(self.h)

proc recorderStateChanged*(self: QMediaRecorder, state: QMediaRecorderRecorderState): void =

  fcQMediaRecorder_recorderStateChanged(self.h, cint(state))

proc miqt_exec_callback_QMediaRecorder_recorderStateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: QMediaRecorderRecorderState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QMediaRecorderRecorderState(state)


  nimfunc[](slotval1)

proc onrecorderStateChanged*(self: QMediaRecorder, slot: proc(state: QMediaRecorderRecorderState)) =
  type Cb = proc(state: QMediaRecorderRecorderState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_recorderStateChanged(self.h, cast[int](addr tmp[]))
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
proc encoderSettingsChanged*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_encoderSettingsChanged(self.h)

proc miqt_exec_callback_QMediaRecorder_encoderSettingsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onencoderSettingsChanged*(self: QMediaRecorder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_encoderSettingsChanged(self.h, cast[int](addr tmp[]))
proc errorOccurred*(self: QMediaRecorder, error: QMediaRecorderError, errorString: string): void =

  fcQMediaRecorder_errorOccurred(self.h, cint(error), struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc miqt_exec_callback_QMediaRecorder_errorOccurred(slot: int, error: cint, errorString: struct_miqt_string) {.exportc.} =
  type Cb = proc(error: QMediaRecorderError, errorString: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QMediaRecorderError(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret


  nimfunc[](slotval1, slotval2)

proc onerrorOccurred*(self: QMediaRecorder, slot: proc(error: QMediaRecorderError, errorString: string)) =
  type Cb = proc(error: QMediaRecorderError, errorString: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_errorOccurred(self.h, cast[int](addr tmp[]))
proc errorChanged*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_errorChanged(self.h)

proc miqt_exec_callback_QMediaRecorder_errorChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onerrorChanged*(self: QMediaRecorder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_errorChanged(self.h, cast[int](addr tmp[]))
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
proc mediaFormatChanged*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_mediaFormatChanged(self.h)

proc miqt_exec_callback_QMediaRecorder_mediaFormatChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmediaFormatChanged*(self: QMediaRecorder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_mediaFormatChanged(self.h, cast[int](addr tmp[]))
proc encodingModeChanged*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_encodingModeChanged(self.h)

proc miqt_exec_callback_QMediaRecorder_encodingModeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onencodingModeChanged*(self: QMediaRecorder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_encodingModeChanged(self.h, cast[int](addr tmp[]))
proc qualityChanged*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_qualityChanged(self.h)

proc miqt_exec_callback_QMediaRecorder_qualityChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onqualityChanged*(self: QMediaRecorder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_qualityChanged(self.h, cast[int](addr tmp[]))
proc videoResolutionChanged*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_videoResolutionChanged(self.h)

proc miqt_exec_callback_QMediaRecorder_videoResolutionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvideoResolutionChanged*(self: QMediaRecorder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_videoResolutionChanged(self.h, cast[int](addr tmp[]))
proc videoFrameRateChanged*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_videoFrameRateChanged(self.h)

proc miqt_exec_callback_QMediaRecorder_videoFrameRateChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvideoFrameRateChanged*(self: QMediaRecorder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_videoFrameRateChanged(self.h, cast[int](addr tmp[]))
proc videoBitRateChanged*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_videoBitRateChanged(self.h)

proc miqt_exec_callback_QMediaRecorder_videoBitRateChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvideoBitRateChanged*(self: QMediaRecorder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_videoBitRateChanged(self.h, cast[int](addr tmp[]))
proc audioBitRateChanged*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_audioBitRateChanged(self.h)

proc miqt_exec_callback_QMediaRecorder_audioBitRateChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaudioBitRateChanged*(self: QMediaRecorder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_audioBitRateChanged(self.h, cast[int](addr tmp[]))
proc audioChannelCountChanged*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_audioChannelCountChanged(self.h)

proc miqt_exec_callback_QMediaRecorder_audioChannelCountChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaudioChannelCountChanged*(self: QMediaRecorder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_audioChannelCountChanged(self.h, cast[int](addr tmp[]))
proc audioSampleRateChanged*(self: QMediaRecorder, ): void =

  fcQMediaRecorder_audioSampleRateChanged(self.h)

proc miqt_exec_callback_QMediaRecorder_audioSampleRateChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaudioSampleRateChanged*(self: QMediaRecorder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaRecorder_connect_audioSampleRateChanged(self.h, cast[int](addr tmp[]))
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
proc delete*(self: QMediaRecorder) =
  fcQMediaRecorder_delete(self.h)
