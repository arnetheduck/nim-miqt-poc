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
{.compile("gen_qmediaplayer.cpp", cflags).}


type QMediaPlayerPlaybackState* = cint
const
  QMediaPlayerStoppedState* = 0
  QMediaPlayerPlayingState* = 1
  QMediaPlayerPausedState* = 2



type QMediaPlayerMediaStatus* = cint
const
  QMediaPlayerNoMedia* = 0
  QMediaPlayerLoadingMedia* = 1
  QMediaPlayerLoadedMedia* = 2
  QMediaPlayerStalledMedia* = 3
  QMediaPlayerBufferingMedia* = 4
  QMediaPlayerBufferedMedia* = 5
  QMediaPlayerEndOfMedia* = 6
  QMediaPlayerInvalidMedia* = 7



type QMediaPlayerError* = cint
const
  QMediaPlayerNoError* = 0
  QMediaPlayerResourceError* = 1
  QMediaPlayerFormatError* = 2
  QMediaPlayerNetworkError* = 3
  QMediaPlayerAccessDeniedError* = 4



type QMediaPlayerLoops* = cint
const
  QMediaPlayerInfinite* = -1
  QMediaPlayerOnce* = 1



import gen_qmediaplayer_types
export gen_qmediaplayer_types

import
  gen_qaudiooutput,
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmediametadata,
  gen_qmediatimerange,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl,
  gen_qvideosink
export
  gen_qaudiooutput,
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmediametadata,
  gen_qmediatimerange,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl,
  gen_qvideosink

type cQMediaPlayer*{.exportc: "QMediaPlayer", incompleteStruct.} = object

proc fcQMediaPlayer_new(): ptr cQMediaPlayer {.importc: "QMediaPlayer_new".}
proc fcQMediaPlayer_new2(parent: pointer): ptr cQMediaPlayer {.importc: "QMediaPlayer_new2".}
proc fcQMediaPlayer_metaObject(self: pointer, ): pointer {.importc: "QMediaPlayer_metaObject".}
proc fcQMediaPlayer_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaPlayer_metacast".}
proc fcQMediaPlayer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaPlayer_metacall".}
proc fcQMediaPlayer_tr(s: cstring): struct_miqt_string {.importc: "QMediaPlayer_tr".}
proc fcQMediaPlayer_audioTracks(self: pointer, ): struct_miqt_array {.importc: "QMediaPlayer_audioTracks".}
proc fcQMediaPlayer_videoTracks(self: pointer, ): struct_miqt_array {.importc: "QMediaPlayer_videoTracks".}
proc fcQMediaPlayer_subtitleTracks(self: pointer, ): struct_miqt_array {.importc: "QMediaPlayer_subtitleTracks".}
proc fcQMediaPlayer_activeAudioTrack(self: pointer, ): cint {.importc: "QMediaPlayer_activeAudioTrack".}
proc fcQMediaPlayer_activeVideoTrack(self: pointer, ): cint {.importc: "QMediaPlayer_activeVideoTrack".}
proc fcQMediaPlayer_activeSubtitleTrack(self: pointer, ): cint {.importc: "QMediaPlayer_activeSubtitleTrack".}
proc fcQMediaPlayer_setActiveAudioTrack(self: pointer, index: cint): void {.importc: "QMediaPlayer_setActiveAudioTrack".}
proc fcQMediaPlayer_setActiveVideoTrack(self: pointer, index: cint): void {.importc: "QMediaPlayer_setActiveVideoTrack".}
proc fcQMediaPlayer_setActiveSubtitleTrack(self: pointer, index: cint): void {.importc: "QMediaPlayer_setActiveSubtitleTrack".}
proc fcQMediaPlayer_setAudioOutput(self: pointer, output: pointer): void {.importc: "QMediaPlayer_setAudioOutput".}
proc fcQMediaPlayer_audioOutput(self: pointer, ): pointer {.importc: "QMediaPlayer_audioOutput".}
proc fcQMediaPlayer_setVideoOutput(self: pointer, videoOutput: pointer): void {.importc: "QMediaPlayer_setVideoOutput".}
proc fcQMediaPlayer_videoOutput(self: pointer, ): pointer {.importc: "QMediaPlayer_videoOutput".}
proc fcQMediaPlayer_setVideoSink(self: pointer, sink: pointer): void {.importc: "QMediaPlayer_setVideoSink".}
proc fcQMediaPlayer_videoSink(self: pointer, ): pointer {.importc: "QMediaPlayer_videoSink".}
proc fcQMediaPlayer_source(self: pointer, ): pointer {.importc: "QMediaPlayer_source".}
proc fcQMediaPlayer_sourceDevice(self: pointer, ): pointer {.importc: "QMediaPlayer_sourceDevice".}
proc fcQMediaPlayer_playbackState(self: pointer, ): cint {.importc: "QMediaPlayer_playbackState".}
proc fcQMediaPlayer_mediaStatus(self: pointer, ): cint {.importc: "QMediaPlayer_mediaStatus".}
proc fcQMediaPlayer_duration(self: pointer, ): clonglong {.importc: "QMediaPlayer_duration".}
proc fcQMediaPlayer_position(self: pointer, ): clonglong {.importc: "QMediaPlayer_position".}
proc fcQMediaPlayer_hasAudio(self: pointer, ): bool {.importc: "QMediaPlayer_hasAudio".}
proc fcQMediaPlayer_hasVideo(self: pointer, ): bool {.importc: "QMediaPlayer_hasVideo".}
proc fcQMediaPlayer_bufferProgress(self: pointer, ): float32 {.importc: "QMediaPlayer_bufferProgress".}
proc fcQMediaPlayer_bufferedTimeRange(self: pointer, ): pointer {.importc: "QMediaPlayer_bufferedTimeRange".}
proc fcQMediaPlayer_isSeekable(self: pointer, ): bool {.importc: "QMediaPlayer_isSeekable".}
proc fcQMediaPlayer_playbackRate(self: pointer, ): float64 {.importc: "QMediaPlayer_playbackRate".}
proc fcQMediaPlayer_loops(self: pointer, ): cint {.importc: "QMediaPlayer_loops".}
proc fcQMediaPlayer_setLoops(self: pointer, loops: cint): void {.importc: "QMediaPlayer_setLoops".}
proc fcQMediaPlayer_error(self: pointer, ): cint {.importc: "QMediaPlayer_error".}
proc fcQMediaPlayer_errorString(self: pointer, ): struct_miqt_string {.importc: "QMediaPlayer_errorString".}
proc fcQMediaPlayer_isAvailable(self: pointer, ): bool {.importc: "QMediaPlayer_isAvailable".}
proc fcQMediaPlayer_metaData(self: pointer, ): pointer {.importc: "QMediaPlayer_metaData".}
proc fcQMediaPlayer_play(self: pointer, ): void {.importc: "QMediaPlayer_play".}
proc fcQMediaPlayer_pause(self: pointer, ): void {.importc: "QMediaPlayer_pause".}
proc fcQMediaPlayer_stop(self: pointer, ): void {.importc: "QMediaPlayer_stop".}
proc fcQMediaPlayer_setPosition(self: pointer, position: clonglong): void {.importc: "QMediaPlayer_setPosition".}
proc fcQMediaPlayer_setPlaybackRate(self: pointer, rate: float64): void {.importc: "QMediaPlayer_setPlaybackRate".}
proc fcQMediaPlayer_setSource(self: pointer, source: pointer): void {.importc: "QMediaPlayer_setSource".}
proc fcQMediaPlayer_setSourceDevice(self: pointer, device: pointer): void {.importc: "QMediaPlayer_setSourceDevice".}
proc fcQMediaPlayer_sourceChanged(self: pointer, media: pointer): void {.importc: "QMediaPlayer_sourceChanged".}
proc fQMediaPlayer_connect_sourceChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_sourceChanged".}
proc fcQMediaPlayer_playbackStateChanged(self: pointer, newState: cint): void {.importc: "QMediaPlayer_playbackStateChanged".}
proc fQMediaPlayer_connect_playbackStateChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_playbackStateChanged".}
proc fcQMediaPlayer_mediaStatusChanged(self: pointer, status: cint): void {.importc: "QMediaPlayer_mediaStatusChanged".}
proc fQMediaPlayer_connect_mediaStatusChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_mediaStatusChanged".}
proc fcQMediaPlayer_durationChanged(self: pointer, duration: clonglong): void {.importc: "QMediaPlayer_durationChanged".}
proc fQMediaPlayer_connect_durationChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_durationChanged".}
proc fcQMediaPlayer_positionChanged(self: pointer, position: clonglong): void {.importc: "QMediaPlayer_positionChanged".}
proc fQMediaPlayer_connect_positionChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_positionChanged".}
proc fcQMediaPlayer_hasAudioChanged(self: pointer, available: bool): void {.importc: "QMediaPlayer_hasAudioChanged".}
proc fQMediaPlayer_connect_hasAudioChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_hasAudioChanged".}
proc fcQMediaPlayer_hasVideoChanged(self: pointer, videoAvailable: bool): void {.importc: "QMediaPlayer_hasVideoChanged".}
proc fQMediaPlayer_connect_hasVideoChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_hasVideoChanged".}
proc fcQMediaPlayer_bufferProgressChanged(self: pointer, progress: float32): void {.importc: "QMediaPlayer_bufferProgressChanged".}
proc fQMediaPlayer_connect_bufferProgressChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_bufferProgressChanged".}
proc fcQMediaPlayer_seekableChanged(self: pointer, seekable: bool): void {.importc: "QMediaPlayer_seekableChanged".}
proc fQMediaPlayer_connect_seekableChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_seekableChanged".}
proc fcQMediaPlayer_playbackRateChanged(self: pointer, rate: float64): void {.importc: "QMediaPlayer_playbackRateChanged".}
proc fQMediaPlayer_connect_playbackRateChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_playbackRateChanged".}
proc fcQMediaPlayer_loopsChanged(self: pointer, ): void {.importc: "QMediaPlayer_loopsChanged".}
proc fQMediaPlayer_connect_loopsChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_loopsChanged".}
proc fcQMediaPlayer_metaDataChanged(self: pointer, ): void {.importc: "QMediaPlayer_metaDataChanged".}
proc fQMediaPlayer_connect_metaDataChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_metaDataChanged".}
proc fcQMediaPlayer_videoOutputChanged(self: pointer, ): void {.importc: "QMediaPlayer_videoOutputChanged".}
proc fQMediaPlayer_connect_videoOutputChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_videoOutputChanged".}
proc fcQMediaPlayer_audioOutputChanged(self: pointer, ): void {.importc: "QMediaPlayer_audioOutputChanged".}
proc fQMediaPlayer_connect_audioOutputChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_audioOutputChanged".}
proc fcQMediaPlayer_tracksChanged(self: pointer, ): void {.importc: "QMediaPlayer_tracksChanged".}
proc fQMediaPlayer_connect_tracksChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_tracksChanged".}
proc fcQMediaPlayer_activeTracksChanged(self: pointer, ): void {.importc: "QMediaPlayer_activeTracksChanged".}
proc fQMediaPlayer_connect_activeTracksChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_activeTracksChanged".}
proc fcQMediaPlayer_errorChanged(self: pointer, ): void {.importc: "QMediaPlayer_errorChanged".}
proc fQMediaPlayer_connect_errorChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_errorChanged".}
proc fcQMediaPlayer_errorOccurred(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QMediaPlayer_errorOccurred".}
proc fQMediaPlayer_connect_errorOccurred(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_errorOccurred".}
proc fcQMediaPlayer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaPlayer_tr2".}
proc fcQMediaPlayer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaPlayer_tr3".}
proc fcQMediaPlayer_setSourceDevice2(self: pointer, device: pointer, sourceUrl: pointer): void {.importc: "QMediaPlayer_setSourceDevice2".}
proc fQMediaPlayer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMediaPlayer_virtualbase_metacall".}
proc fcQMediaPlayer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_metacall".}
proc fQMediaPlayer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMediaPlayer_virtualbase_event".}
proc fcQMediaPlayer_override_virtual_event(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_event".}
proc fQMediaPlayer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMediaPlayer_virtualbase_eventFilter".}
proc fcQMediaPlayer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_eventFilter".}
proc fQMediaPlayer_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMediaPlayer_virtualbase_timerEvent".}
proc fcQMediaPlayer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_timerEvent".}
proc fQMediaPlayer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMediaPlayer_virtualbase_childEvent".}
proc fcQMediaPlayer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_childEvent".}
proc fQMediaPlayer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMediaPlayer_virtualbase_customEvent".}
proc fcQMediaPlayer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_customEvent".}
proc fQMediaPlayer_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMediaPlayer_virtualbase_connectNotify".}
proc fcQMediaPlayer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_connectNotify".}
proc fQMediaPlayer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMediaPlayer_virtualbase_disconnectNotify".}
proc fcQMediaPlayer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_disconnectNotify".}
proc fcQMediaPlayer_staticMetaObject(): pointer {.importc: "QMediaPlayer_staticMetaObject".}
proc fcQMediaPlayer_delete(self: pointer) {.importc: "QMediaPlayer_delete".}


func init*(T: type QMediaPlayer, h: ptr cQMediaPlayer): QMediaPlayer =
  T(h: h)
proc create*(T: type QMediaPlayer, ): QMediaPlayer =

  QMediaPlayer.init(fcQMediaPlayer_new())
proc create*(T: type QMediaPlayer, parent: gen_qobject.QObject): QMediaPlayer =

  QMediaPlayer.init(fcQMediaPlayer_new2(parent.h))
proc metaObject*(self: QMediaPlayer, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaPlayer_metaObject(self.h))

proc metacast*(self: QMediaPlayer, param1: cstring): pointer =

  fcQMediaPlayer_metacast(self.h, param1)

proc metacall*(self: QMediaPlayer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMediaPlayer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMediaPlayer, s: cstring): string =

  let v_ms = fcQMediaPlayer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioTracks*(self: QMediaPlayer, ): seq[gen_qmediametadata.QMediaMetaData] =

  var v_ma = fcQMediaPlayer_audioTracks(self.h)
  var vx_ret = newSeq[gen_qmediametadata.QMediaMetaData](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmediametadata.QMediaMetaData(h: v_outCast[i])
  vx_ret

proc videoTracks*(self: QMediaPlayer, ): seq[gen_qmediametadata.QMediaMetaData] =

  var v_ma = fcQMediaPlayer_videoTracks(self.h)
  var vx_ret = newSeq[gen_qmediametadata.QMediaMetaData](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmediametadata.QMediaMetaData(h: v_outCast[i])
  vx_ret

proc subtitleTracks*(self: QMediaPlayer, ): seq[gen_qmediametadata.QMediaMetaData] =

  var v_ma = fcQMediaPlayer_subtitleTracks(self.h)
  var vx_ret = newSeq[gen_qmediametadata.QMediaMetaData](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmediametadata.QMediaMetaData(h: v_outCast[i])
  vx_ret

proc activeAudioTrack*(self: QMediaPlayer, ): cint =

  fcQMediaPlayer_activeAudioTrack(self.h)

proc activeVideoTrack*(self: QMediaPlayer, ): cint =

  fcQMediaPlayer_activeVideoTrack(self.h)

proc activeSubtitleTrack*(self: QMediaPlayer, ): cint =

  fcQMediaPlayer_activeSubtitleTrack(self.h)

proc setActiveAudioTrack*(self: QMediaPlayer, index: cint): void =

  fcQMediaPlayer_setActiveAudioTrack(self.h, index)

proc setActiveVideoTrack*(self: QMediaPlayer, index: cint): void =

  fcQMediaPlayer_setActiveVideoTrack(self.h, index)

proc setActiveSubtitleTrack*(self: QMediaPlayer, index: cint): void =

  fcQMediaPlayer_setActiveSubtitleTrack(self.h, index)

proc setAudioOutput*(self: QMediaPlayer, output: gen_qaudiooutput.QAudioOutput): void =

  fcQMediaPlayer_setAudioOutput(self.h, output.h)

proc audioOutput*(self: QMediaPlayer, ): gen_qaudiooutput.QAudioOutput =

  gen_qaudiooutput.QAudioOutput(h: fcQMediaPlayer_audioOutput(self.h))

proc setVideoOutput*(self: QMediaPlayer, videoOutput: gen_qobject.QObject): void =

  fcQMediaPlayer_setVideoOutput(self.h, videoOutput.h)

proc videoOutput*(self: QMediaPlayer, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMediaPlayer_videoOutput(self.h))

proc setVideoSink*(self: QMediaPlayer, sink: gen_qvideosink.QVideoSink): void =

  fcQMediaPlayer_setVideoSink(self.h, sink.h)

proc videoSink*(self: QMediaPlayer, ): gen_qvideosink.QVideoSink =

  gen_qvideosink.QVideoSink(h: fcQMediaPlayer_videoSink(self.h))

proc source*(self: QMediaPlayer, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQMediaPlayer_source(self.h))

proc sourceDevice*(self: QMediaPlayer, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQMediaPlayer_sourceDevice(self.h))

proc playbackState*(self: QMediaPlayer, ): QMediaPlayerPlaybackState =

  QMediaPlayerPlaybackState(fcQMediaPlayer_playbackState(self.h))

proc mediaStatus*(self: QMediaPlayer, ): QMediaPlayerMediaStatus =

  QMediaPlayerMediaStatus(fcQMediaPlayer_mediaStatus(self.h))

proc duration*(self: QMediaPlayer, ): clonglong =

  fcQMediaPlayer_duration(self.h)

proc position*(self: QMediaPlayer, ): clonglong =

  fcQMediaPlayer_position(self.h)

proc hasAudio*(self: QMediaPlayer, ): bool =

  fcQMediaPlayer_hasAudio(self.h)

proc hasVideo*(self: QMediaPlayer, ): bool =

  fcQMediaPlayer_hasVideo(self.h)

proc bufferProgress*(self: QMediaPlayer, ): float32 =

  fcQMediaPlayer_bufferProgress(self.h)

proc bufferedTimeRange*(self: QMediaPlayer, ): gen_qmediatimerange.QMediaTimeRange =

  gen_qmediatimerange.QMediaTimeRange(h: fcQMediaPlayer_bufferedTimeRange(self.h))

proc isSeekable*(self: QMediaPlayer, ): bool =

  fcQMediaPlayer_isSeekable(self.h)

proc playbackRate*(self: QMediaPlayer, ): float64 =

  fcQMediaPlayer_playbackRate(self.h)

proc loops*(self: QMediaPlayer, ): cint =

  fcQMediaPlayer_loops(self.h)

proc setLoops*(self: QMediaPlayer, loops: cint): void =

  fcQMediaPlayer_setLoops(self.h, loops)

proc error*(self: QMediaPlayer, ): QMediaPlayerError =

  QMediaPlayerError(fcQMediaPlayer_error(self.h))

proc errorString*(self: QMediaPlayer, ): string =

  let v_ms = fcQMediaPlayer_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: QMediaPlayer, ): bool =

  fcQMediaPlayer_isAvailable(self.h)

proc metaData*(self: QMediaPlayer, ): gen_qmediametadata.QMediaMetaData =

  gen_qmediametadata.QMediaMetaData(h: fcQMediaPlayer_metaData(self.h))

proc play*(self: QMediaPlayer, ): void =

  fcQMediaPlayer_play(self.h)

proc pause*(self: QMediaPlayer, ): void =

  fcQMediaPlayer_pause(self.h)

proc stop*(self: QMediaPlayer, ): void =

  fcQMediaPlayer_stop(self.h)

proc setPosition*(self: QMediaPlayer, position: clonglong): void =

  fcQMediaPlayer_setPosition(self.h, position)

proc setPlaybackRate*(self: QMediaPlayer, rate: float64): void =

  fcQMediaPlayer_setPlaybackRate(self.h, rate)

proc setSource*(self: QMediaPlayer, source: gen_qurl.QUrl): void =

  fcQMediaPlayer_setSource(self.h, source.h)

proc setSourceDevice*(self: QMediaPlayer, device: gen_qiodevice.QIODevice): void =

  fcQMediaPlayer_setSourceDevice(self.h, device.h)

proc sourceChanged*(self: QMediaPlayer, media: gen_qurl.QUrl): void =

  fcQMediaPlayer_sourceChanged(self.h, media.h)

proc miqt_exec_callback_QMediaPlayer_sourceChanged(slot: int, media: pointer) {.exportc.} =
  type Cb = proc(media: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: media)


  nimfunc[](slotval1)

proc onsourceChanged*(self: QMediaPlayer, slot: proc(media: gen_qurl.QUrl)) =
  type Cb = proc(media: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_sourceChanged(self.h, cast[int](addr tmp[]))
proc playbackStateChanged*(self: QMediaPlayer, newState: QMediaPlayerPlaybackState): void =

  fcQMediaPlayer_playbackStateChanged(self.h, cint(newState))

proc miqt_exec_callback_QMediaPlayer_playbackStateChanged(slot: int, newState: cint) {.exportc.} =
  type Cb = proc(newState: QMediaPlayerPlaybackState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QMediaPlayerPlaybackState(newState)


  nimfunc[](slotval1)

proc onplaybackStateChanged*(self: QMediaPlayer, slot: proc(newState: QMediaPlayerPlaybackState)) =
  type Cb = proc(newState: QMediaPlayerPlaybackState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_playbackStateChanged(self.h, cast[int](addr tmp[]))
proc mediaStatusChanged*(self: QMediaPlayer, status: QMediaPlayerMediaStatus): void =

  fcQMediaPlayer_mediaStatusChanged(self.h, cint(status))

proc miqt_exec_callback_QMediaPlayer_mediaStatusChanged(slot: int, status: cint) {.exportc.} =
  type Cb = proc(status: QMediaPlayerMediaStatus)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QMediaPlayerMediaStatus(status)


  nimfunc[](slotval1)

proc onmediaStatusChanged*(self: QMediaPlayer, slot: proc(status: QMediaPlayerMediaStatus)) =
  type Cb = proc(status: QMediaPlayerMediaStatus)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_mediaStatusChanged(self.h, cast[int](addr tmp[]))
proc durationChanged*(self: QMediaPlayer, duration: clonglong): void =

  fcQMediaPlayer_durationChanged(self.h, duration)

proc miqt_exec_callback_QMediaPlayer_durationChanged(slot: int, duration: clonglong) {.exportc.} =
  type Cb = proc(duration: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = duration


  nimfunc[](slotval1)

proc ondurationChanged*(self: QMediaPlayer, slot: proc(duration: clonglong)) =
  type Cb = proc(duration: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_durationChanged(self.h, cast[int](addr tmp[]))
proc positionChanged*(self: QMediaPlayer, position: clonglong): void =

  fcQMediaPlayer_positionChanged(self.h, position)

proc miqt_exec_callback_QMediaPlayer_positionChanged(slot: int, position: clonglong) {.exportc.} =
  type Cb = proc(position: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position


  nimfunc[](slotval1)

proc onpositionChanged*(self: QMediaPlayer, slot: proc(position: clonglong)) =
  type Cb = proc(position: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_positionChanged(self.h, cast[int](addr tmp[]))
proc hasAudioChanged*(self: QMediaPlayer, available: bool): void =

  fcQMediaPlayer_hasAudioChanged(self.h, available)

proc miqt_exec_callback_QMediaPlayer_hasAudioChanged(slot: int, available: bool) {.exportc.} =
  type Cb = proc(available: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = available


  nimfunc[](slotval1)

proc onhasAudioChanged*(self: QMediaPlayer, slot: proc(available: bool)) =
  type Cb = proc(available: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_hasAudioChanged(self.h, cast[int](addr tmp[]))
proc hasVideoChanged*(self: QMediaPlayer, videoAvailable: bool): void =

  fcQMediaPlayer_hasVideoChanged(self.h, videoAvailable)

proc miqt_exec_callback_QMediaPlayer_hasVideoChanged(slot: int, videoAvailable: bool) {.exportc.} =
  type Cb = proc(videoAvailable: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = videoAvailable


  nimfunc[](slotval1)

proc onhasVideoChanged*(self: QMediaPlayer, slot: proc(videoAvailable: bool)) =
  type Cb = proc(videoAvailable: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_hasVideoChanged(self.h, cast[int](addr tmp[]))
proc bufferProgressChanged*(self: QMediaPlayer, progress: float32): void =

  fcQMediaPlayer_bufferProgressChanged(self.h, progress)

proc miqt_exec_callback_QMediaPlayer_bufferProgressChanged(slot: int, progress: float32) {.exportc.} =
  type Cb = proc(progress: float32)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = progress


  nimfunc[](slotval1)

proc onbufferProgressChanged*(self: QMediaPlayer, slot: proc(progress: float32)) =
  type Cb = proc(progress: float32)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_bufferProgressChanged(self.h, cast[int](addr tmp[]))
proc seekableChanged*(self: QMediaPlayer, seekable: bool): void =

  fcQMediaPlayer_seekableChanged(self.h, seekable)

proc miqt_exec_callback_QMediaPlayer_seekableChanged(slot: int, seekable: bool) {.exportc.} =
  type Cb = proc(seekable: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = seekable


  nimfunc[](slotval1)

proc onseekableChanged*(self: QMediaPlayer, slot: proc(seekable: bool)) =
  type Cb = proc(seekable: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_seekableChanged(self.h, cast[int](addr tmp[]))
proc playbackRateChanged*(self: QMediaPlayer, rate: float64): void =

  fcQMediaPlayer_playbackRateChanged(self.h, rate)

proc miqt_exec_callback_QMediaPlayer_playbackRateChanged(slot: int, rate: float64) {.exportc.} =
  type Cb = proc(rate: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = rate


  nimfunc[](slotval1)

proc onplaybackRateChanged*(self: QMediaPlayer, slot: proc(rate: float64)) =
  type Cb = proc(rate: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_playbackRateChanged(self.h, cast[int](addr tmp[]))
proc loopsChanged*(self: QMediaPlayer, ): void =

  fcQMediaPlayer_loopsChanged(self.h)

proc miqt_exec_callback_QMediaPlayer_loopsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloopsChanged*(self: QMediaPlayer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_loopsChanged(self.h, cast[int](addr tmp[]))
proc metaDataChanged*(self: QMediaPlayer, ): void =

  fcQMediaPlayer_metaDataChanged(self.h)

proc miqt_exec_callback_QMediaPlayer_metaDataChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmetaDataChanged*(self: QMediaPlayer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_metaDataChanged(self.h, cast[int](addr tmp[]))
proc videoOutputChanged*(self: QMediaPlayer, ): void =

  fcQMediaPlayer_videoOutputChanged(self.h)

proc miqt_exec_callback_QMediaPlayer_videoOutputChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvideoOutputChanged*(self: QMediaPlayer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_videoOutputChanged(self.h, cast[int](addr tmp[]))
proc audioOutputChanged*(self: QMediaPlayer, ): void =

  fcQMediaPlayer_audioOutputChanged(self.h)

proc miqt_exec_callback_QMediaPlayer_audioOutputChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaudioOutputChanged*(self: QMediaPlayer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_audioOutputChanged(self.h, cast[int](addr tmp[]))
proc tracksChanged*(self: QMediaPlayer, ): void =

  fcQMediaPlayer_tracksChanged(self.h)

proc miqt_exec_callback_QMediaPlayer_tracksChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ontracksChanged*(self: QMediaPlayer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_tracksChanged(self.h, cast[int](addr tmp[]))
proc activeTracksChanged*(self: QMediaPlayer, ): void =

  fcQMediaPlayer_activeTracksChanged(self.h)

proc miqt_exec_callback_QMediaPlayer_activeTracksChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onactiveTracksChanged*(self: QMediaPlayer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_activeTracksChanged(self.h, cast[int](addr tmp[]))
proc errorChanged*(self: QMediaPlayer, ): void =

  fcQMediaPlayer_errorChanged(self.h)

proc miqt_exec_callback_QMediaPlayer_errorChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onerrorChanged*(self: QMediaPlayer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_errorChanged(self.h, cast[int](addr tmp[]))
proc errorOccurred*(self: QMediaPlayer, error: QMediaPlayerError, errorString: string): void =

  fcQMediaPlayer_errorOccurred(self.h, cint(error), struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc miqt_exec_callback_QMediaPlayer_errorOccurred(slot: int, error: cint, errorString: struct_miqt_string) {.exportc.} =
  type Cb = proc(error: QMediaPlayerError, errorString: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QMediaPlayerError(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret


  nimfunc[](slotval1, slotval2)

proc onerrorOccurred*(self: QMediaPlayer, slot: proc(error: QMediaPlayerError, errorString: string)) =
  type Cb = proc(error: QMediaPlayerError, errorString: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_errorOccurred(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMediaPlayer, s: cstring, c: cstring): string =

  let v_ms = fcQMediaPlayer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMediaPlayer, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaPlayer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceDevice2*(self: QMediaPlayer, device: gen_qiodevice.QIODevice, sourceUrl: gen_qurl.QUrl): void =

  fcQMediaPlayer_setSourceDevice2(self.h, device.h, sourceUrl.h)

proc callVirtualBase_metacall(self: QMediaPlayer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQMediaPlayer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMediaPlayermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QMediaPlayer, slot: proc(super: QMediaPlayermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlayermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_metacall(self: ptr cQMediaPlayer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMediaPlayer_metacall ".} =
  type Cb = proc(super: QMediaPlayermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QMediaPlayer(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QMediaPlayer, event: gen_qcoreevent.QEvent): bool =


  fQMediaPlayer_virtualbase_event(self.h, event.h)

type QMediaPlayereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QMediaPlayer, slot: proc(super: QMediaPlayereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlayereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_event(self: ptr cQMediaPlayer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaPlayer_event ".} =
  type Cb = proc(super: QMediaPlayereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QMediaPlayer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QMediaPlayer, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQMediaPlayer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMediaPlayereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QMediaPlayer, slot: proc(super: QMediaPlayereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlayereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_eventFilter(self: ptr cQMediaPlayer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaPlayer_eventFilter ".} =
  type Cb = proc(super: QMediaPlayereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QMediaPlayer(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QMediaPlayer, event: gen_qcoreevent.QTimerEvent): void =


  fQMediaPlayer_virtualbase_timerEvent(self.h, event.h)

type QMediaPlayertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QMediaPlayer, slot: proc(super: QMediaPlayertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlayertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_timerEvent(self: ptr cQMediaPlayer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_timerEvent ".} =
  type Cb = proc(super: QMediaPlayertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QMediaPlayer(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QMediaPlayer, event: gen_qcoreevent.QChildEvent): void =


  fQMediaPlayer_virtualbase_childEvent(self.h, event.h)

type QMediaPlayerchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QMediaPlayer, slot: proc(super: QMediaPlayerchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlayerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_childEvent(self: ptr cQMediaPlayer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_childEvent ".} =
  type Cb = proc(super: QMediaPlayerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QMediaPlayer(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QMediaPlayer, event: gen_qcoreevent.QEvent): void =


  fQMediaPlayer_virtualbase_customEvent(self.h, event.h)

type QMediaPlayercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QMediaPlayer, slot: proc(super: QMediaPlayercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlayercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_customEvent(self: ptr cQMediaPlayer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_customEvent ".} =
  type Cb = proc(super: QMediaPlayercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QMediaPlayer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QMediaPlayer, signal: gen_qmetaobject.QMetaMethod): void =


  fQMediaPlayer_virtualbase_connectNotify(self.h, signal.h)

type QMediaPlayerconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QMediaPlayer, slot: proc(super: QMediaPlayerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlayerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_connectNotify(self: ptr cQMediaPlayer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_connectNotify ".} =
  type Cb = proc(super: QMediaPlayerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QMediaPlayer(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QMediaPlayer, signal: gen_qmetaobject.QMetaMethod): void =


  fQMediaPlayer_virtualbase_disconnectNotify(self.h, signal.h)

type QMediaPlayerdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QMediaPlayer, slot: proc(super: QMediaPlayerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlayerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_disconnectNotify(self: ptr cQMediaPlayer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_disconnectNotify ".} =
  type Cb = proc(super: QMediaPlayerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QMediaPlayer(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QMediaPlayer): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMediaPlayer_staticMetaObject())
proc delete*(self: QMediaPlayer) =
  fcQMediaPlayer_delete(self.h)
