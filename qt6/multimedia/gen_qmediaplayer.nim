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


type QMediaPlayerPlaybackStateEnum* = distinct cint
template StoppedState*(_: type QMediaPlayerPlaybackStateEnum): untyped = 0
template PlayingState*(_: type QMediaPlayerPlaybackStateEnum): untyped = 1
template PausedState*(_: type QMediaPlayerPlaybackStateEnum): untyped = 2


type QMediaPlayerMediaStatusEnum* = distinct cint
template NoMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 0
template LoadingMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 1
template LoadedMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 2
template StalledMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 3
template BufferingMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 4
template BufferedMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 5
template EndOfMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 6
template InvalidMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 7


type QMediaPlayerErrorEnum* = distinct cint
template NoError*(_: type QMediaPlayerErrorEnum): untyped = 0
template ResourceError*(_: type QMediaPlayerErrorEnum): untyped = 1
template FormatError*(_: type QMediaPlayerErrorEnum): untyped = 2
template NetworkError*(_: type QMediaPlayerErrorEnum): untyped = 3
template AccessDeniedError*(_: type QMediaPlayerErrorEnum): untyped = 4


type QMediaPlayerLoopsEnum* = distinct cint
template Infinite*(_: type QMediaPlayerLoopsEnum): untyped = -1
template Once*(_: type QMediaPlayerLoopsEnum): untyped = 1


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
proc fQMediaPlayer_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMediaPlayer_virtualbase_metaObject".}
proc fcQMediaPlayer_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_metaObject".}
proc fQMediaPlayer_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMediaPlayer_virtualbase_metacast".}
proc fcQMediaPlayer_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_metacast".}
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


func init*(T: type gen_qmediaplayer_types.QMediaPlayer, h: ptr cQMediaPlayer): gen_qmediaplayer_types.QMediaPlayer =
  T(h: h)
proc create*(T: type gen_qmediaplayer_types.QMediaPlayer, ): gen_qmediaplayer_types.QMediaPlayer =

  gen_qmediaplayer_types.QMediaPlayer.init(fcQMediaPlayer_new())
proc create*(T: type gen_qmediaplayer_types.QMediaPlayer, parent: gen_qobject.QObject): gen_qmediaplayer_types.QMediaPlayer =

  gen_qmediaplayer_types.QMediaPlayer.init(fcQMediaPlayer_new2(parent.h))
proc metaObject*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaPlayer_metaObject(self.h))

proc metacast*(self: gen_qmediaplayer_types.QMediaPlayer, param1: cstring): pointer =

  fcQMediaPlayer_metacast(self.h, param1)

proc metacall*(self: gen_qmediaplayer_types.QMediaPlayer, param1: cint, param2: cint, param3: pointer): cint =

  fcQMediaPlayer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring): string =

  let v_ms = fcQMediaPlayer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioTracks*(self: gen_qmediaplayer_types.QMediaPlayer, ): seq[gen_qmediametadata.QMediaMetaData] =

  var v_ma = fcQMediaPlayer_audioTracks(self.h)
  var vx_ret = newSeq[gen_qmediametadata.QMediaMetaData](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmediametadata.QMediaMetaData(h: v_outCast[i])
  vx_ret

proc videoTracks*(self: gen_qmediaplayer_types.QMediaPlayer, ): seq[gen_qmediametadata.QMediaMetaData] =

  var v_ma = fcQMediaPlayer_videoTracks(self.h)
  var vx_ret = newSeq[gen_qmediametadata.QMediaMetaData](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmediametadata.QMediaMetaData(h: v_outCast[i])
  vx_ret

proc subtitleTracks*(self: gen_qmediaplayer_types.QMediaPlayer, ): seq[gen_qmediametadata.QMediaMetaData] =

  var v_ma = fcQMediaPlayer_subtitleTracks(self.h)
  var vx_ret = newSeq[gen_qmediametadata.QMediaMetaData](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmediametadata.QMediaMetaData(h: v_outCast[i])
  vx_ret

proc activeAudioTrack*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =

  fcQMediaPlayer_activeAudioTrack(self.h)

proc activeVideoTrack*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =

  fcQMediaPlayer_activeVideoTrack(self.h)

proc activeSubtitleTrack*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =

  fcQMediaPlayer_activeSubtitleTrack(self.h)

proc setActiveAudioTrack*(self: gen_qmediaplayer_types.QMediaPlayer, index: cint): void =

  fcQMediaPlayer_setActiveAudioTrack(self.h, index)

proc setActiveVideoTrack*(self: gen_qmediaplayer_types.QMediaPlayer, index: cint): void =

  fcQMediaPlayer_setActiveVideoTrack(self.h, index)

proc setActiveSubtitleTrack*(self: gen_qmediaplayer_types.QMediaPlayer, index: cint): void =

  fcQMediaPlayer_setActiveSubtitleTrack(self.h, index)

proc setAudioOutput*(self: gen_qmediaplayer_types.QMediaPlayer, output: gen_qaudiooutput.QAudioOutput): void =

  fcQMediaPlayer_setAudioOutput(self.h, output.h)

proc audioOutput*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qaudiooutput.QAudioOutput =

  gen_qaudiooutput.QAudioOutput(h: fcQMediaPlayer_audioOutput(self.h))

proc setVideoOutput*(self: gen_qmediaplayer_types.QMediaPlayer, videoOutput: gen_qobject.QObject): void =

  fcQMediaPlayer_setVideoOutput(self.h, videoOutput.h)

proc videoOutput*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMediaPlayer_videoOutput(self.h))

proc setVideoSink*(self: gen_qmediaplayer_types.QMediaPlayer, sink: gen_qvideosink.QVideoSink): void =

  fcQMediaPlayer_setVideoSink(self.h, sink.h)

proc videoSink*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qvideosink.QVideoSink =

  gen_qvideosink.QVideoSink(h: fcQMediaPlayer_videoSink(self.h))

proc source*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQMediaPlayer_source(self.h))

proc sourceDevice*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQMediaPlayer_sourceDevice(self.h))

proc playbackState*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =

  cint(fcQMediaPlayer_playbackState(self.h))

proc mediaStatus*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =

  cint(fcQMediaPlayer_mediaStatus(self.h))

proc duration*(self: gen_qmediaplayer_types.QMediaPlayer, ): clonglong =

  fcQMediaPlayer_duration(self.h)

proc position*(self: gen_qmediaplayer_types.QMediaPlayer, ): clonglong =

  fcQMediaPlayer_position(self.h)

proc hasAudio*(self: gen_qmediaplayer_types.QMediaPlayer, ): bool =

  fcQMediaPlayer_hasAudio(self.h)

proc hasVideo*(self: gen_qmediaplayer_types.QMediaPlayer, ): bool =

  fcQMediaPlayer_hasVideo(self.h)

proc bufferProgress*(self: gen_qmediaplayer_types.QMediaPlayer, ): float32 =

  fcQMediaPlayer_bufferProgress(self.h)

proc bufferedTimeRange*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qmediatimerange.QMediaTimeRange =

  gen_qmediatimerange.QMediaTimeRange(h: fcQMediaPlayer_bufferedTimeRange(self.h))

proc isSeekable*(self: gen_qmediaplayer_types.QMediaPlayer, ): bool =

  fcQMediaPlayer_isSeekable(self.h)

proc playbackRate*(self: gen_qmediaplayer_types.QMediaPlayer, ): float64 =

  fcQMediaPlayer_playbackRate(self.h)

proc loops*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =

  fcQMediaPlayer_loops(self.h)

proc setLoops*(self: gen_qmediaplayer_types.QMediaPlayer, loops: cint): void =

  fcQMediaPlayer_setLoops(self.h, loops)

proc error*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =

  cint(fcQMediaPlayer_error(self.h))

proc errorString*(self: gen_qmediaplayer_types.QMediaPlayer, ): string =

  let v_ms = fcQMediaPlayer_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: gen_qmediaplayer_types.QMediaPlayer, ): bool =

  fcQMediaPlayer_isAvailable(self.h)

proc metaData*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qmediametadata.QMediaMetaData =

  gen_qmediametadata.QMediaMetaData(h: fcQMediaPlayer_metaData(self.h))

proc play*(self: gen_qmediaplayer_types.QMediaPlayer, ): void =

  fcQMediaPlayer_play(self.h)

proc pause*(self: gen_qmediaplayer_types.QMediaPlayer, ): void =

  fcQMediaPlayer_pause(self.h)

proc stop*(self: gen_qmediaplayer_types.QMediaPlayer, ): void =

  fcQMediaPlayer_stop(self.h)

proc setPosition*(self: gen_qmediaplayer_types.QMediaPlayer, position: clonglong): void =

  fcQMediaPlayer_setPosition(self.h, position)

proc setPlaybackRate*(self: gen_qmediaplayer_types.QMediaPlayer, rate: float64): void =

  fcQMediaPlayer_setPlaybackRate(self.h, rate)

proc setSource*(self: gen_qmediaplayer_types.QMediaPlayer, source: gen_qurl.QUrl): void =

  fcQMediaPlayer_setSource(self.h, source.h)

proc setSourceDevice*(self: gen_qmediaplayer_types.QMediaPlayer, device: gen_qiodevice.QIODevice): void =

  fcQMediaPlayer_setSourceDevice(self.h, device.h)

proc sourceChanged*(self: gen_qmediaplayer_types.QMediaPlayer, media: gen_qurl.QUrl): void =

  fcQMediaPlayer_sourceChanged(self.h, media.h)

proc miqt_exec_callback_QMediaPlayer_sourceChanged(slot: int, media: pointer) {.exportc.} =
  type Cb = proc(media: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: media)


  nimfunc[](slotval1)

proc onsourceChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc(media: gen_qurl.QUrl)) =
  type Cb = proc(media: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_sourceChanged(self.h, cast[int](addr tmp[]))
proc playbackStateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, newState: cint): void =

  fcQMediaPlayer_playbackStateChanged(self.h, cint(newState))

proc miqt_exec_callback_QMediaPlayer_playbackStateChanged(slot: int, newState: cint) {.exportc.} =
  type Cb = proc(newState: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(newState)


  nimfunc[](slotval1)

proc onplaybackStateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc(newState: cint)) =
  type Cb = proc(newState: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_playbackStateChanged(self.h, cast[int](addr tmp[]))
proc mediaStatusChanged*(self: gen_qmediaplayer_types.QMediaPlayer, status: cint): void =

  fcQMediaPlayer_mediaStatusChanged(self.h, cint(status))

proc miqt_exec_callback_QMediaPlayer_mediaStatusChanged(slot: int, status: cint) {.exportc.} =
  type Cb = proc(status: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(status)


  nimfunc[](slotval1)

proc onmediaStatusChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc(status: cint)) =
  type Cb = proc(status: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_mediaStatusChanged(self.h, cast[int](addr tmp[]))
proc durationChanged*(self: gen_qmediaplayer_types.QMediaPlayer, duration: clonglong): void =

  fcQMediaPlayer_durationChanged(self.h, duration)

proc miqt_exec_callback_QMediaPlayer_durationChanged(slot: int, duration: clonglong) {.exportc.} =
  type Cb = proc(duration: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = duration


  nimfunc[](slotval1)

proc ondurationChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc(duration: clonglong)) =
  type Cb = proc(duration: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_durationChanged(self.h, cast[int](addr tmp[]))
proc positionChanged*(self: gen_qmediaplayer_types.QMediaPlayer, position: clonglong): void =

  fcQMediaPlayer_positionChanged(self.h, position)

proc miqt_exec_callback_QMediaPlayer_positionChanged(slot: int, position: clonglong) {.exportc.} =
  type Cb = proc(position: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position


  nimfunc[](slotval1)

proc onpositionChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc(position: clonglong)) =
  type Cb = proc(position: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_positionChanged(self.h, cast[int](addr tmp[]))
proc hasAudioChanged*(self: gen_qmediaplayer_types.QMediaPlayer, available: bool): void =

  fcQMediaPlayer_hasAudioChanged(self.h, available)

proc miqt_exec_callback_QMediaPlayer_hasAudioChanged(slot: int, available: bool) {.exportc.} =
  type Cb = proc(available: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = available


  nimfunc[](slotval1)

proc onhasAudioChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc(available: bool)) =
  type Cb = proc(available: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_hasAudioChanged(self.h, cast[int](addr tmp[]))
proc hasVideoChanged*(self: gen_qmediaplayer_types.QMediaPlayer, videoAvailable: bool): void =

  fcQMediaPlayer_hasVideoChanged(self.h, videoAvailable)

proc miqt_exec_callback_QMediaPlayer_hasVideoChanged(slot: int, videoAvailable: bool) {.exportc.} =
  type Cb = proc(videoAvailable: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = videoAvailable


  nimfunc[](slotval1)

proc onhasVideoChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc(videoAvailable: bool)) =
  type Cb = proc(videoAvailable: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_hasVideoChanged(self.h, cast[int](addr tmp[]))
proc bufferProgressChanged*(self: gen_qmediaplayer_types.QMediaPlayer, progress: float32): void =

  fcQMediaPlayer_bufferProgressChanged(self.h, progress)

proc miqt_exec_callback_QMediaPlayer_bufferProgressChanged(slot: int, progress: float32) {.exportc.} =
  type Cb = proc(progress: float32)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = progress


  nimfunc[](slotval1)

proc onbufferProgressChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc(progress: float32)) =
  type Cb = proc(progress: float32)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_bufferProgressChanged(self.h, cast[int](addr tmp[]))
proc seekableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, seekable: bool): void =

  fcQMediaPlayer_seekableChanged(self.h, seekable)

proc miqt_exec_callback_QMediaPlayer_seekableChanged(slot: int, seekable: bool) {.exportc.} =
  type Cb = proc(seekable: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = seekable


  nimfunc[](slotval1)

proc onseekableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc(seekable: bool)) =
  type Cb = proc(seekable: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_seekableChanged(self.h, cast[int](addr tmp[]))
proc playbackRateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, rate: float64): void =

  fcQMediaPlayer_playbackRateChanged(self.h, rate)

proc miqt_exec_callback_QMediaPlayer_playbackRateChanged(slot: int, rate: float64) {.exportc.} =
  type Cb = proc(rate: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = rate


  nimfunc[](slotval1)

proc onplaybackRateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc(rate: float64)) =
  type Cb = proc(rate: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_playbackRateChanged(self.h, cast[int](addr tmp[]))
proc loopsChanged*(self: gen_qmediaplayer_types.QMediaPlayer, ): void =

  fcQMediaPlayer_loopsChanged(self.h)

proc miqt_exec_callback_QMediaPlayer_loopsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloopsChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_loopsChanged(self.h, cast[int](addr tmp[]))
proc metaDataChanged*(self: gen_qmediaplayer_types.QMediaPlayer, ): void =

  fcQMediaPlayer_metaDataChanged(self.h)

proc miqt_exec_callback_QMediaPlayer_metaDataChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmetaDataChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_metaDataChanged(self.h, cast[int](addr tmp[]))
proc videoOutputChanged*(self: gen_qmediaplayer_types.QMediaPlayer, ): void =

  fcQMediaPlayer_videoOutputChanged(self.h)

proc miqt_exec_callback_QMediaPlayer_videoOutputChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvideoOutputChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_videoOutputChanged(self.h, cast[int](addr tmp[]))
proc audioOutputChanged*(self: gen_qmediaplayer_types.QMediaPlayer, ): void =

  fcQMediaPlayer_audioOutputChanged(self.h)

proc miqt_exec_callback_QMediaPlayer_audioOutputChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaudioOutputChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_audioOutputChanged(self.h, cast[int](addr tmp[]))
proc tracksChanged*(self: gen_qmediaplayer_types.QMediaPlayer, ): void =

  fcQMediaPlayer_tracksChanged(self.h)

proc miqt_exec_callback_QMediaPlayer_tracksChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ontracksChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_tracksChanged(self.h, cast[int](addr tmp[]))
proc activeTracksChanged*(self: gen_qmediaplayer_types.QMediaPlayer, ): void =

  fcQMediaPlayer_activeTracksChanged(self.h)

proc miqt_exec_callback_QMediaPlayer_activeTracksChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onactiveTracksChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_activeTracksChanged(self.h, cast[int](addr tmp[]))
proc errorChanged*(self: gen_qmediaplayer_types.QMediaPlayer, ): void =

  fcQMediaPlayer_errorChanged(self.h)

proc miqt_exec_callback_QMediaPlayer_errorChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onerrorChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_errorChanged(self.h, cast[int](addr tmp[]))
proc errorOccurred*(self: gen_qmediaplayer_types.QMediaPlayer, error: cint, errorString: string): void =

  fcQMediaPlayer_errorOccurred(self.h, cint(error), struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc miqt_exec_callback_QMediaPlayer_errorOccurred(slot: int, error: cint, errorString: struct_miqt_string) {.exportc.} =
  type Cb = proc(error: cint, errorString: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret


  nimfunc[](slotval1, slotval2)

proc onerrorOccurred*(self: gen_qmediaplayer_types.QMediaPlayer, slot: proc(error: cint, errorString: string)) =
  type Cb = proc(error: cint, errorString: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_errorOccurred(self.h, cast[int](addr tmp[]))
proc tr2*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring, c: cstring): string =

  let v_ms = fcQMediaPlayer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaPlayer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceDevice2*(self: gen_qmediaplayer_types.QMediaPlayer, device: gen_qiodevice.QIODevice, sourceUrl: gen_qurl.QUrl): void =

  fcQMediaPlayer_setSourceDevice2(self.h, device.h, sourceUrl.h)

proc QMediaPlayermetaObject*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQMediaPlayer_virtualbase_metaObject(self.h))

type QMediaPlayermetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayermetaObjectProc) =
  # TODO check subclass
  var tmp = new QMediaPlayermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_metaObject(self: ptr cQMediaPlayer, slot: int): pointer {.exportc: "miqt_exec_callback_QMediaPlayer_metaObject ".} =
  var nimfunc = cast[ptr QMediaPlayermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMediaPlayermetacast*(self: gen_qmediaplayer_types.QMediaPlayer, param1: cstring): pointer =

  fQMediaPlayer_virtualbase_metacast(self.h, param1)

type QMediaPlayermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayermetacastProc) =
  # TODO check subclass
  var tmp = new QMediaPlayermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_metacast(self: ptr cQMediaPlayer, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMediaPlayer_metacast ".} =
  var nimfunc = cast[ptr QMediaPlayermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaPlayermetacall*(self: gen_qmediaplayer_types.QMediaPlayer, param1: cint, param2: cint, param3: pointer): cint =

  fQMediaPlayer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMediaPlayermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayermetacallProc) =
  # TODO check subclass
  var tmp = new QMediaPlayermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_metacall(self: ptr cQMediaPlayer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMediaPlayer_metacall ".} =
  var nimfunc = cast[ptr QMediaPlayermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMediaPlayerevent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent.QEvent): bool =

  fQMediaPlayer_virtualbase_event(self.h, event.h)

type QMediaPlayereventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayereventProc) =
  # TODO check subclass
  var tmp = new QMediaPlayereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_event(self: ptr cQMediaPlayer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaPlayer_event ".} =
  var nimfunc = cast[ptr QMediaPlayereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaPlayereventFilter*(self: gen_qmediaplayer_types.QMediaPlayer, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQMediaPlayer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMediaPlayereventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayereventFilterProc) =
  # TODO check subclass
  var tmp = new QMediaPlayereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_eventFilter(self: ptr cQMediaPlayer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaPlayer_eventFilter ".} =
  var nimfunc = cast[ptr QMediaPlayereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMediaPlayertimerEvent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent.QTimerEvent): void =

  fQMediaPlayer_virtualbase_timerEvent(self.h, event.h)

type QMediaPlayertimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayertimerEventProc) =
  # TODO check subclass
  var tmp = new QMediaPlayertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_timerEvent(self: ptr cQMediaPlayer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_timerEvent ".} =
  var nimfunc = cast[ptr QMediaPlayertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QMediaPlayerchildEvent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent.QChildEvent): void =

  fQMediaPlayer_virtualbase_childEvent(self.h, event.h)

type QMediaPlayerchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerchildEventProc) =
  # TODO check subclass
  var tmp = new QMediaPlayerchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_childEvent(self: ptr cQMediaPlayer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_childEvent ".} =
  var nimfunc = cast[ptr QMediaPlayerchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QMediaPlayercustomEvent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent.QEvent): void =

  fQMediaPlayer_virtualbase_customEvent(self.h, event.h)

type QMediaPlayercustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayercustomEventProc) =
  # TODO check subclass
  var tmp = new QMediaPlayercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_customEvent(self: ptr cQMediaPlayer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_customEvent ".} =
  var nimfunc = cast[ptr QMediaPlayercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QMediaPlayerconnectNotify*(self: gen_qmediaplayer_types.QMediaPlayer, signal: gen_qmetaobject.QMetaMethod): void =

  fQMediaPlayer_virtualbase_connectNotify(self.h, signal.h)

type QMediaPlayerconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMediaPlayerconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_connectNotify(self: ptr cQMediaPlayer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_connectNotify ".} =
  var nimfunc = cast[ptr QMediaPlayerconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMediaPlayerdisconnectNotify*(self: gen_qmediaplayer_types.QMediaPlayer, signal: gen_qmetaobject.QMetaMethod): void =

  fQMediaPlayer_virtualbase_disconnectNotify(self.h, signal.h)

type QMediaPlayerdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMediaPlayerdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_disconnectNotify(self: ptr cQMediaPlayer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_disconnectNotify ".} =
  var nimfunc = cast[ptr QMediaPlayerdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qmediaplayer_types.QMediaPlayer): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMediaPlayer_staticMetaObject())
proc delete*(self: gen_qmediaplayer_types.QMediaPlayer) =
  fcQMediaPlayer_delete(self.h)
