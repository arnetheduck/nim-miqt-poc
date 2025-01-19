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
{.compile("gen_qmediaplayer.cpp", cflags).}


type QMediaPlayerState* = cint
const
  QMediaPlayerStoppedState* = 0
  QMediaPlayerPlayingState* = 1
  QMediaPlayerPausedState* = 2



type QMediaPlayerMediaStatus* = cint
const
  QMediaPlayerUnknownMediaStatus* = 0
  QMediaPlayerNoMedia* = 1
  QMediaPlayerLoadingMedia* = 2
  QMediaPlayerLoadedMedia* = 3
  QMediaPlayerStalledMedia* = 4
  QMediaPlayerBufferingMedia* = 5
  QMediaPlayerBufferedMedia* = 6
  QMediaPlayerEndOfMedia* = 7
  QMediaPlayerInvalidMedia* = 8



type QMediaPlayerFlag* = cint
const
  QMediaPlayerLowLatency* = 1
  QMediaPlayerStreamPlayback* = 2
  QMediaPlayerVideoSurface* = 4



type QMediaPlayerError* = cint
const
  QMediaPlayerNoError* = 0
  QMediaPlayerResourceError* = 1
  QMediaPlayerFormatError* = 2
  QMediaPlayerNetworkError* = 3
  QMediaPlayerAccessDeniedError* = 4
  QMediaPlayerServiceMissingError* = 5
  QMediaPlayerMediaIsPlaylist* = 6



import gen_qmediaplayer_types
export gen_qmediaplayer_types

import
  gen_qabstractvideosurface,
  gen_qaudio,
  gen_qcoreevent,
  gen_qgraphicsvideoitem,
  gen_qiodevice,
  gen_qmediacontent,
  gen_qmediaobject,
  gen_qmediaplaylist,
  gen_qmediaservice,
  gen_qmetaobject,
  gen_qmultimedia,
  gen_qnetworkconfiguration,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvideowidget
export
  gen_qabstractvideosurface,
  gen_qaudio,
  gen_qcoreevent,
  gen_qgraphicsvideoitem,
  gen_qiodevice,
  gen_qmediacontent,
  gen_qmediaobject,
  gen_qmediaplaylist,
  gen_qmediaservice,
  gen_qmetaobject,
  gen_qmultimedia,
  gen_qnetworkconfiguration,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvideowidget

type cQMediaPlayer*{.exportc: "QMediaPlayer", incompleteStruct.} = object

proc fcQMediaPlayer_new(): ptr cQMediaPlayer {.importc: "QMediaPlayer_new".}
proc fcQMediaPlayer_new2(parent: pointer): ptr cQMediaPlayer {.importc: "QMediaPlayer_new2".}
proc fcQMediaPlayer_new3(parent: pointer, flags: cint): ptr cQMediaPlayer {.importc: "QMediaPlayer_new3".}
proc fcQMediaPlayer_metaObject(self: pointer, ): pointer {.importc: "QMediaPlayer_metaObject".}
proc fcQMediaPlayer_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaPlayer_metacast".}
proc fcQMediaPlayer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaPlayer_metacall".}
proc fcQMediaPlayer_tr(s: cstring): struct_miqt_string {.importc: "QMediaPlayer_tr".}
proc fcQMediaPlayer_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaPlayer_trUtf8".}
proc fcQMediaPlayer_hasSupport(mimeType: struct_miqt_string): cint {.importc: "QMediaPlayer_hasSupport".}
proc fcQMediaPlayer_supportedMimeTypes(): struct_miqt_array {.importc: "QMediaPlayer_supportedMimeTypes".}
proc fcQMediaPlayer_setVideoOutput(self: pointer, videoOutput: pointer): void {.importc: "QMediaPlayer_setVideoOutput".}
proc fcQMediaPlayer_setVideoOutputWithVideoOutput(self: pointer, videoOutput: pointer): void {.importc: "QMediaPlayer_setVideoOutputWithVideoOutput".}
proc fcQMediaPlayer_setVideoOutputWithSurface(self: pointer, surface: pointer): void {.importc: "QMediaPlayer_setVideoOutputWithSurface".}
proc fcQMediaPlayer_setVideoOutputWithSurfaces(self: pointer, surfaces: struct_miqt_array): void {.importc: "QMediaPlayer_setVideoOutputWithSurfaces".}
proc fcQMediaPlayer_media(self: pointer, ): pointer {.importc: "QMediaPlayer_media".}
proc fcQMediaPlayer_mediaStream(self: pointer, ): pointer {.importc: "QMediaPlayer_mediaStream".}
proc fcQMediaPlayer_playlist(self: pointer, ): pointer {.importc: "QMediaPlayer_playlist".}
proc fcQMediaPlayer_currentMedia(self: pointer, ): pointer {.importc: "QMediaPlayer_currentMedia".}
proc fcQMediaPlayer_state(self: pointer, ): cint {.importc: "QMediaPlayer_state".}
proc fcQMediaPlayer_mediaStatus(self: pointer, ): cint {.importc: "QMediaPlayer_mediaStatus".}
proc fcQMediaPlayer_duration(self: pointer, ): clonglong {.importc: "QMediaPlayer_duration".}
proc fcQMediaPlayer_position(self: pointer, ): clonglong {.importc: "QMediaPlayer_position".}
proc fcQMediaPlayer_volume(self: pointer, ): cint {.importc: "QMediaPlayer_volume".}
proc fcQMediaPlayer_isMuted(self: pointer, ): bool {.importc: "QMediaPlayer_isMuted".}
proc fcQMediaPlayer_isAudioAvailable(self: pointer, ): bool {.importc: "QMediaPlayer_isAudioAvailable".}
proc fcQMediaPlayer_isVideoAvailable(self: pointer, ): bool {.importc: "QMediaPlayer_isVideoAvailable".}
proc fcQMediaPlayer_bufferStatus(self: pointer, ): cint {.importc: "QMediaPlayer_bufferStatus".}
proc fcQMediaPlayer_isSeekable(self: pointer, ): bool {.importc: "QMediaPlayer_isSeekable".}
proc fcQMediaPlayer_playbackRate(self: pointer, ): float64 {.importc: "QMediaPlayer_playbackRate".}
proc fcQMediaPlayer_error(self: pointer, ): cint {.importc: "QMediaPlayer_error".}
proc fcQMediaPlayer_errorString(self: pointer, ): struct_miqt_string {.importc: "QMediaPlayer_errorString".}
proc fcQMediaPlayer_currentNetworkConfiguration(self: pointer, ): pointer {.importc: "QMediaPlayer_currentNetworkConfiguration".}
proc fcQMediaPlayer_availability(self: pointer, ): cint {.importc: "QMediaPlayer_availability".}
proc fcQMediaPlayer_audioRole(self: pointer, ): cint {.importc: "QMediaPlayer_audioRole".}
proc fcQMediaPlayer_setAudioRole(self: pointer, audioRole: cint): void {.importc: "QMediaPlayer_setAudioRole".}
proc fcQMediaPlayer_supportedAudioRoles(self: pointer, ): struct_miqt_array {.importc: "QMediaPlayer_supportedAudioRoles".}
proc fcQMediaPlayer_customAudioRole(self: pointer, ): struct_miqt_string {.importc: "QMediaPlayer_customAudioRole".}
proc fcQMediaPlayer_setCustomAudioRole(self: pointer, audioRole: struct_miqt_string): void {.importc: "QMediaPlayer_setCustomAudioRole".}
proc fcQMediaPlayer_supportedCustomAudioRoles(self: pointer, ): struct_miqt_array {.importc: "QMediaPlayer_supportedCustomAudioRoles".}
proc fcQMediaPlayer_play(self: pointer, ): void {.importc: "QMediaPlayer_play".}
proc fcQMediaPlayer_pause(self: pointer, ): void {.importc: "QMediaPlayer_pause".}
proc fcQMediaPlayer_stop(self: pointer, ): void {.importc: "QMediaPlayer_stop".}
proc fcQMediaPlayer_setPosition(self: pointer, position: clonglong): void {.importc: "QMediaPlayer_setPosition".}
proc fcQMediaPlayer_setVolume(self: pointer, volume: cint): void {.importc: "QMediaPlayer_setVolume".}
proc fcQMediaPlayer_setMuted(self: pointer, muted: bool): void {.importc: "QMediaPlayer_setMuted".}
proc fcQMediaPlayer_setPlaybackRate(self: pointer, rate: float64): void {.importc: "QMediaPlayer_setPlaybackRate".}
proc fcQMediaPlayer_setMedia(self: pointer, media: pointer): void {.importc: "QMediaPlayer_setMedia".}
proc fcQMediaPlayer_setPlaylist(self: pointer, playlist: pointer): void {.importc: "QMediaPlayer_setPlaylist".}
proc fcQMediaPlayer_setNetworkConfigurations(self: pointer, configurations: struct_miqt_array): void {.importc: "QMediaPlayer_setNetworkConfigurations".}
proc fcQMediaPlayer_mediaChanged(self: pointer, media: pointer): void {.importc: "QMediaPlayer_mediaChanged".}
proc fQMediaPlayer_connect_mediaChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_mediaChanged".}
proc fcQMediaPlayer_currentMediaChanged(self: pointer, media: pointer): void {.importc: "QMediaPlayer_currentMediaChanged".}
proc fQMediaPlayer_connect_currentMediaChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_currentMediaChanged".}
proc fcQMediaPlayer_stateChanged(self: pointer, newState: cint): void {.importc: "QMediaPlayer_stateChanged".}
proc fQMediaPlayer_connect_stateChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_stateChanged".}
proc fcQMediaPlayer_mediaStatusChanged(self: pointer, status: cint): void {.importc: "QMediaPlayer_mediaStatusChanged".}
proc fQMediaPlayer_connect_mediaStatusChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_mediaStatusChanged".}
proc fcQMediaPlayer_durationChanged(self: pointer, duration: clonglong): void {.importc: "QMediaPlayer_durationChanged".}
proc fQMediaPlayer_connect_durationChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_durationChanged".}
proc fcQMediaPlayer_positionChanged(self: pointer, position: clonglong): void {.importc: "QMediaPlayer_positionChanged".}
proc fQMediaPlayer_connect_positionChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_positionChanged".}
proc fcQMediaPlayer_volumeChanged(self: pointer, volume: cint): void {.importc: "QMediaPlayer_volumeChanged".}
proc fQMediaPlayer_connect_volumeChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_volumeChanged".}
proc fcQMediaPlayer_mutedChanged(self: pointer, muted: bool): void {.importc: "QMediaPlayer_mutedChanged".}
proc fQMediaPlayer_connect_mutedChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_mutedChanged".}
proc fcQMediaPlayer_audioAvailableChanged(self: pointer, available: bool): void {.importc: "QMediaPlayer_audioAvailableChanged".}
proc fQMediaPlayer_connect_audioAvailableChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_audioAvailableChanged".}
proc fcQMediaPlayer_videoAvailableChanged(self: pointer, videoAvailable: bool): void {.importc: "QMediaPlayer_videoAvailableChanged".}
proc fQMediaPlayer_connect_videoAvailableChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_videoAvailableChanged".}
proc fcQMediaPlayer_bufferStatusChanged(self: pointer, percentFilled: cint): void {.importc: "QMediaPlayer_bufferStatusChanged".}
proc fQMediaPlayer_connect_bufferStatusChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_bufferStatusChanged".}
proc fcQMediaPlayer_seekableChanged(self: pointer, seekable: bool): void {.importc: "QMediaPlayer_seekableChanged".}
proc fQMediaPlayer_connect_seekableChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_seekableChanged".}
proc fcQMediaPlayer_playbackRateChanged(self: pointer, rate: float64): void {.importc: "QMediaPlayer_playbackRateChanged".}
proc fQMediaPlayer_connect_playbackRateChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_playbackRateChanged".}
proc fcQMediaPlayer_audioRoleChanged(self: pointer, role: cint): void {.importc: "QMediaPlayer_audioRoleChanged".}
proc fQMediaPlayer_connect_audioRoleChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_audioRoleChanged".}
proc fcQMediaPlayer_customAudioRoleChanged(self: pointer, role: struct_miqt_string): void {.importc: "QMediaPlayer_customAudioRoleChanged".}
proc fQMediaPlayer_connect_customAudioRoleChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_customAudioRoleChanged".}
proc fcQMediaPlayer_errorWithError(self: pointer, error: cint): void {.importc: "QMediaPlayer_errorWithError".}
proc fQMediaPlayer_connect_errorWithError(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_errorWithError".}
proc fcQMediaPlayer_networkConfigurationChanged(self: pointer, configuration: pointer): void {.importc: "QMediaPlayer_networkConfigurationChanged".}
proc fQMediaPlayer_connect_networkConfigurationChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_networkConfigurationChanged".}
proc fcQMediaPlayer_bindX(self: pointer, param1: pointer): bool {.importc: "QMediaPlayer_bind".}
proc fcQMediaPlayer_unbind(self: pointer, param1: pointer): void {.importc: "QMediaPlayer_unbind".}
proc fcQMediaPlayer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaPlayer_tr2".}
proc fcQMediaPlayer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaPlayer_tr3".}
proc fcQMediaPlayer_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaPlayer_trUtf82".}
proc fcQMediaPlayer_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaPlayer_trUtf83".}
proc fcQMediaPlayer_hasSupport2(mimeType: struct_miqt_string, codecs: struct_miqt_array): cint {.importc: "QMediaPlayer_hasSupport2".}
proc fcQMediaPlayer_hasSupport3(mimeType: struct_miqt_string, codecs: struct_miqt_array, flags: cint): cint {.importc: "QMediaPlayer_hasSupport3".}
proc fcQMediaPlayer_supportedMimeTypes1(flags: cint): struct_miqt_array {.importc: "QMediaPlayer_supportedMimeTypes1".}
proc fcQMediaPlayer_setMedia2(self: pointer, media: pointer, stream: pointer): void {.importc: "QMediaPlayer_setMedia2".}
proc fQMediaPlayer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMediaPlayer_virtualbase_metacall".}
proc fcQMediaPlayer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_metacall".}
proc fQMediaPlayer_virtualbase_availability(self: pointer, ): cint{.importc: "QMediaPlayer_virtualbase_availability".}
proc fcQMediaPlayer_override_virtual_availability(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_availability".}
proc fQMediaPlayer_virtualbase_bind(self: pointer, param1: pointer): bool{.importc: "QMediaPlayer_virtualbase_bind".}
proc fcQMediaPlayer_override_virtual_bindX(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_bind".}
proc fQMediaPlayer_virtualbase_unbind(self: pointer, param1: pointer): void{.importc: "QMediaPlayer_virtualbase_unbind".}
proc fcQMediaPlayer_override_virtual_unbind(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_unbind".}
proc fQMediaPlayer_virtualbase_isAvailable(self: pointer, ): bool{.importc: "QMediaPlayer_virtualbase_isAvailable".}
proc fcQMediaPlayer_override_virtual_isAvailable(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_isAvailable".}
proc fQMediaPlayer_virtualbase_service(self: pointer, ): pointer{.importc: "QMediaPlayer_virtualbase_service".}
proc fcQMediaPlayer_override_virtual_service(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_service".}
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
proc create*(T: type QMediaPlayer, parent: gen_qobject.QObject, flags: QMediaPlayerFlag): QMediaPlayer =

  QMediaPlayer.init(fcQMediaPlayer_new3(parent.h, cint(flags)))
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

proc trUtf8*(_: type QMediaPlayer, s: cstring): string =

  let v_ms = fcQMediaPlayer_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasSupport*(_: type QMediaPlayer, mimeType: string): gen_qmultimedia.QMultimediaSupportEstimate =

  gen_qmultimedia.QMultimediaSupportEstimate(fcQMediaPlayer_hasSupport(struct_miqt_string(data: mimeType, len: csize_t(len(mimeType)))))

proc supportedMimeTypes*(_: type QMediaPlayer, ): seq[string] =

  var v_ma = fcQMediaPlayer_supportedMimeTypes()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setVideoOutput*(self: QMediaPlayer, videoOutput: gen_qvideowidget.QVideoWidget): void =

  fcQMediaPlayer_setVideoOutput(self.h, videoOutput.h)

proc setVideoOutputWithVideoOutput*(self: QMediaPlayer, videoOutput: gen_qgraphicsvideoitem.QGraphicsVideoItem): void =

  fcQMediaPlayer_setVideoOutputWithVideoOutput(self.h, videoOutput.h)

proc setVideoOutputWithSurface*(self: QMediaPlayer, surface: gen_qabstractvideosurface.QAbstractVideoSurface): void =

  fcQMediaPlayer_setVideoOutputWithSurface(self.h, surface.h)

proc setVideoOutputWithSurfaces*(self: QMediaPlayer, surfaces: seq[gen_qabstractvideosurface.QAbstractVideoSurface]): void =

  var surfaces_CArray = newSeq[pointer](len(surfaces))
  for i in 0..<len(surfaces):
    surfaces_CArray[i] = surfaces[i].h

  fcQMediaPlayer_setVideoOutputWithSurfaces(self.h, struct_miqt_array(len: csize_t(len(surfaces)), data: if len(surfaces) == 0: nil else: addr(surfaces_CArray[0])))

proc media*(self: QMediaPlayer, ): gen_qmediacontent.QMediaContent =

  gen_qmediacontent.QMediaContent(h: fcQMediaPlayer_media(self.h))

proc mediaStream*(self: QMediaPlayer, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQMediaPlayer_mediaStream(self.h))

proc playlist*(self: QMediaPlayer, ): gen_qmediaplaylist.QMediaPlaylist =

  gen_qmediaplaylist.QMediaPlaylist(h: fcQMediaPlayer_playlist(self.h))

proc currentMedia*(self: QMediaPlayer, ): gen_qmediacontent.QMediaContent =

  gen_qmediacontent.QMediaContent(h: fcQMediaPlayer_currentMedia(self.h))

proc state*(self: QMediaPlayer, ): QMediaPlayerState =

  QMediaPlayerState(fcQMediaPlayer_state(self.h))

proc mediaStatus*(self: QMediaPlayer, ): QMediaPlayerMediaStatus =

  QMediaPlayerMediaStatus(fcQMediaPlayer_mediaStatus(self.h))

proc duration*(self: QMediaPlayer, ): clonglong =

  fcQMediaPlayer_duration(self.h)

proc position*(self: QMediaPlayer, ): clonglong =

  fcQMediaPlayer_position(self.h)

proc volume*(self: QMediaPlayer, ): cint =

  fcQMediaPlayer_volume(self.h)

proc isMuted*(self: QMediaPlayer, ): bool =

  fcQMediaPlayer_isMuted(self.h)

proc isAudioAvailable*(self: QMediaPlayer, ): bool =

  fcQMediaPlayer_isAudioAvailable(self.h)

proc isVideoAvailable*(self: QMediaPlayer, ): bool =

  fcQMediaPlayer_isVideoAvailable(self.h)

proc bufferStatus*(self: QMediaPlayer, ): cint =

  fcQMediaPlayer_bufferStatus(self.h)

proc isSeekable*(self: QMediaPlayer, ): bool =

  fcQMediaPlayer_isSeekable(self.h)

proc playbackRate*(self: QMediaPlayer, ): float64 =

  fcQMediaPlayer_playbackRate(self.h)

proc error*(self: QMediaPlayer, ): QMediaPlayerError =

  QMediaPlayerError(fcQMediaPlayer_error(self.h))

proc errorString*(self: QMediaPlayer, ): string =

  let v_ms = fcQMediaPlayer_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currentNetworkConfiguration*(self: QMediaPlayer, ): gen_qnetworkconfiguration.QNetworkConfiguration =

  gen_qnetworkconfiguration.QNetworkConfiguration(h: fcQMediaPlayer_currentNetworkConfiguration(self.h))

proc availability*(self: QMediaPlayer, ): gen_qmultimedia.QMultimediaAvailabilityStatus =

  gen_qmultimedia.QMultimediaAvailabilityStatus(fcQMediaPlayer_availability(self.h))

proc audioRole*(self: QMediaPlayer, ): gen_qaudio.QAudioRole =

  gen_qaudio.QAudioRole(fcQMediaPlayer_audioRole(self.h))

proc setAudioRole*(self: QMediaPlayer, audioRole: gen_qaudio.QAudioRole): void =

  fcQMediaPlayer_setAudioRole(self.h, cint(audioRole))

proc supportedAudioRoles*(self: QMediaPlayer, ): seq[gen_qaudio.QAudioRole] =

  var v_ma = fcQMediaPlayer_supportedAudioRoles(self.h)
  var vx_ret = newSeq[gen_qaudio.QAudioRole](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaudio.QAudioRole(v_outCast[i])
  vx_ret

proc customAudioRole*(self: QMediaPlayer, ): string =

  let v_ms = fcQMediaPlayer_customAudioRole(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCustomAudioRole*(self: QMediaPlayer, audioRole: string): void =

  fcQMediaPlayer_setCustomAudioRole(self.h, struct_miqt_string(data: audioRole, len: csize_t(len(audioRole))))

proc supportedCustomAudioRoles*(self: QMediaPlayer, ): seq[string] =

  var v_ma = fcQMediaPlayer_supportedCustomAudioRoles(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc play*(self: QMediaPlayer, ): void =

  fcQMediaPlayer_play(self.h)

proc pause*(self: QMediaPlayer, ): void =

  fcQMediaPlayer_pause(self.h)

proc stop*(self: QMediaPlayer, ): void =

  fcQMediaPlayer_stop(self.h)

proc setPosition*(self: QMediaPlayer, position: clonglong): void =

  fcQMediaPlayer_setPosition(self.h, position)

proc setVolume*(self: QMediaPlayer, volume: cint): void =

  fcQMediaPlayer_setVolume(self.h, volume)

proc setMuted*(self: QMediaPlayer, muted: bool): void =

  fcQMediaPlayer_setMuted(self.h, muted)

proc setPlaybackRate*(self: QMediaPlayer, rate: float64): void =

  fcQMediaPlayer_setPlaybackRate(self.h, rate)

proc setMedia*(self: QMediaPlayer, media: gen_qmediacontent.QMediaContent): void =

  fcQMediaPlayer_setMedia(self.h, media.h)

proc setPlaylist*(self: QMediaPlayer, playlist: gen_qmediaplaylist.QMediaPlaylist): void =

  fcQMediaPlayer_setPlaylist(self.h, playlist.h)

proc setNetworkConfigurations*(self: QMediaPlayer, configurations: seq[gen_qnetworkconfiguration.QNetworkConfiguration]): void =

  var configurations_CArray = newSeq[pointer](len(configurations))
  for i in 0..<len(configurations):
    configurations_CArray[i] = configurations[i].h

  fcQMediaPlayer_setNetworkConfigurations(self.h, struct_miqt_array(len: csize_t(len(configurations)), data: if len(configurations) == 0: nil else: addr(configurations_CArray[0])))

proc mediaChanged*(self: QMediaPlayer, media: gen_qmediacontent.QMediaContent): void =

  fcQMediaPlayer_mediaChanged(self.h, media.h)

proc miqt_exec_callback_QMediaPlayer_mediaChanged(slot: int, media: pointer) {.exportc.} =
  type Cb = proc(media: gen_qmediacontent.QMediaContent)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmediacontent.QMediaContent(h: media)


  nimfunc[](slotval1)

proc onmediaChanged*(self: QMediaPlayer, slot: proc(media: gen_qmediacontent.QMediaContent)) =
  type Cb = proc(media: gen_qmediacontent.QMediaContent)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_mediaChanged(self.h, cast[int](addr tmp[]))
proc currentMediaChanged*(self: QMediaPlayer, media: gen_qmediacontent.QMediaContent): void =

  fcQMediaPlayer_currentMediaChanged(self.h, media.h)

proc miqt_exec_callback_QMediaPlayer_currentMediaChanged(slot: int, media: pointer) {.exportc.} =
  type Cb = proc(media: gen_qmediacontent.QMediaContent)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmediacontent.QMediaContent(h: media)


  nimfunc[](slotval1)

proc oncurrentMediaChanged*(self: QMediaPlayer, slot: proc(media: gen_qmediacontent.QMediaContent)) =
  type Cb = proc(media: gen_qmediacontent.QMediaContent)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_currentMediaChanged(self.h, cast[int](addr tmp[]))
proc stateChanged*(self: QMediaPlayer, newState: QMediaPlayerState): void =

  fcQMediaPlayer_stateChanged(self.h, cint(newState))

proc miqt_exec_callback_QMediaPlayer_stateChanged(slot: int, newState: cint) {.exportc.} =
  type Cb = proc(newState: QMediaPlayerState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QMediaPlayerState(newState)


  nimfunc[](slotval1)

proc onstateChanged*(self: QMediaPlayer, slot: proc(newState: QMediaPlayerState)) =
  type Cb = proc(newState: QMediaPlayerState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_stateChanged(self.h, cast[int](addr tmp[]))
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
proc volumeChanged*(self: QMediaPlayer, volume: cint): void =

  fcQMediaPlayer_volumeChanged(self.h, volume)

proc miqt_exec_callback_QMediaPlayer_volumeChanged(slot: int, volume: cint) {.exportc.} =
  type Cb = proc(volume: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = volume


  nimfunc[](slotval1)

proc onvolumeChanged*(self: QMediaPlayer, slot: proc(volume: cint)) =
  type Cb = proc(volume: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_volumeChanged(self.h, cast[int](addr tmp[]))
proc mutedChanged*(self: QMediaPlayer, muted: bool): void =

  fcQMediaPlayer_mutedChanged(self.h, muted)

proc miqt_exec_callback_QMediaPlayer_mutedChanged(slot: int, muted: bool) {.exportc.} =
  type Cb = proc(muted: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = muted


  nimfunc[](slotval1)

proc onmutedChanged*(self: QMediaPlayer, slot: proc(muted: bool)) =
  type Cb = proc(muted: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_mutedChanged(self.h, cast[int](addr tmp[]))
proc audioAvailableChanged*(self: QMediaPlayer, available: bool): void =

  fcQMediaPlayer_audioAvailableChanged(self.h, available)

proc miqt_exec_callback_QMediaPlayer_audioAvailableChanged(slot: int, available: bool) {.exportc.} =
  type Cb = proc(available: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = available


  nimfunc[](slotval1)

proc onaudioAvailableChanged*(self: QMediaPlayer, slot: proc(available: bool)) =
  type Cb = proc(available: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_audioAvailableChanged(self.h, cast[int](addr tmp[]))
proc videoAvailableChanged*(self: QMediaPlayer, videoAvailable: bool): void =

  fcQMediaPlayer_videoAvailableChanged(self.h, videoAvailable)

proc miqt_exec_callback_QMediaPlayer_videoAvailableChanged(slot: int, videoAvailable: bool) {.exportc.} =
  type Cb = proc(videoAvailable: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = videoAvailable


  nimfunc[](slotval1)

proc onvideoAvailableChanged*(self: QMediaPlayer, slot: proc(videoAvailable: bool)) =
  type Cb = proc(videoAvailable: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_videoAvailableChanged(self.h, cast[int](addr tmp[]))
proc bufferStatusChanged*(self: QMediaPlayer, percentFilled: cint): void =

  fcQMediaPlayer_bufferStatusChanged(self.h, percentFilled)

proc miqt_exec_callback_QMediaPlayer_bufferStatusChanged(slot: int, percentFilled: cint) {.exportc.} =
  type Cb = proc(percentFilled: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = percentFilled


  nimfunc[](slotval1)

proc onbufferStatusChanged*(self: QMediaPlayer, slot: proc(percentFilled: cint)) =
  type Cb = proc(percentFilled: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_bufferStatusChanged(self.h, cast[int](addr tmp[]))
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
proc audioRoleChanged*(self: QMediaPlayer, role: gen_qaudio.QAudioRole): void =

  fcQMediaPlayer_audioRoleChanged(self.h, cint(role))

proc miqt_exec_callback_QMediaPlayer_audioRoleChanged(slot: int, role: cint) {.exportc.} =
  type Cb = proc(role: gen_qaudio.QAudioRole)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudio.QAudioRole(role)


  nimfunc[](slotval1)

proc onaudioRoleChanged*(self: QMediaPlayer, slot: proc(role: gen_qaudio.QAudioRole)) =
  type Cb = proc(role: gen_qaudio.QAudioRole)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_audioRoleChanged(self.h, cast[int](addr tmp[]))
proc customAudioRoleChanged*(self: QMediaPlayer, role: string): void =

  fcQMediaPlayer_customAudioRoleChanged(self.h, struct_miqt_string(data: role, len: csize_t(len(role))))

proc miqt_exec_callback_QMediaPlayer_customAudioRoleChanged(slot: int, role: struct_miqt_string) {.exportc.} =
  type Cb = proc(role: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vrole_ms = role
  let vrolex_ret = string.fromBytes(toOpenArrayByte(vrole_ms.data, 0, int(vrole_ms.len)-1))
  c_free(vrole_ms.data)
  let slotval1 = vrolex_ret


  nimfunc[](slotval1)

proc oncustomAudioRoleChanged*(self: QMediaPlayer, slot: proc(role: string)) =
  type Cb = proc(role: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_customAudioRoleChanged(self.h, cast[int](addr tmp[]))
proc errorWithError*(self: QMediaPlayer, error: QMediaPlayerError): void =

  fcQMediaPlayer_errorWithError(self.h, cint(error))

proc miqt_exec_callback_QMediaPlayer_errorWithError(slot: int, error: cint) {.exportc.} =
  type Cb = proc(error: QMediaPlayerError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QMediaPlayerError(error)


  nimfunc[](slotval1)

proc onerrorWithError*(self: QMediaPlayer, slot: proc(error: QMediaPlayerError)) =
  type Cb = proc(error: QMediaPlayerError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_errorWithError(self.h, cast[int](addr tmp[]))
proc networkConfigurationChanged*(self: QMediaPlayer, configuration: gen_qnetworkconfiguration.QNetworkConfiguration): void =

  fcQMediaPlayer_networkConfigurationChanged(self.h, configuration.h)

proc miqt_exec_callback_QMediaPlayer_networkConfigurationChanged(slot: int, configuration: pointer) {.exportc.} =
  type Cb = proc(configuration: gen_qnetworkconfiguration.QNetworkConfiguration)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration.QNetworkConfiguration(h: configuration)


  nimfunc[](slotval1)

proc onnetworkConfigurationChanged*(self: QMediaPlayer, slot: proc(configuration: gen_qnetworkconfiguration.QNetworkConfiguration)) =
  type Cb = proc(configuration: gen_qnetworkconfiguration.QNetworkConfiguration)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayer_connect_networkConfigurationChanged(self.h, cast[int](addr tmp[]))
proc bindX*(self: QMediaPlayer, param1: gen_qobject.QObject): bool =

  fcQMediaPlayer_bindX(self.h, param1.h)

proc unbind*(self: QMediaPlayer, param1: gen_qobject.QObject): void =

  fcQMediaPlayer_unbind(self.h, param1.h)

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

proc trUtf82*(_: type QMediaPlayer, s: cstring, c: cstring): string =

  let v_ms = fcQMediaPlayer_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMediaPlayer, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaPlayer_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasSupport2*(_: type QMediaPlayer, mimeType: string, codecs: seq[string]): gen_qmultimedia.QMultimediaSupportEstimate =

  var codecs_CArray = newSeq[struct_miqt_string](len(codecs))
  for i in 0..<len(codecs):
    codecs_CArray[i] = struct_miqt_string(data: codecs[i], len: csize_t(len(codecs[i])))

  gen_qmultimedia.QMultimediaSupportEstimate(fcQMediaPlayer_hasSupport2(struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), struct_miqt_array(len: csize_t(len(codecs)), data: if len(codecs) == 0: nil else: addr(codecs_CArray[0]))))

proc hasSupport3*(_: type QMediaPlayer, mimeType: string, codecs: seq[string], flags: QMediaPlayerFlag): gen_qmultimedia.QMultimediaSupportEstimate =

  var codecs_CArray = newSeq[struct_miqt_string](len(codecs))
  for i in 0..<len(codecs):
    codecs_CArray[i] = struct_miqt_string(data: codecs[i], len: csize_t(len(codecs[i])))

  gen_qmultimedia.QMultimediaSupportEstimate(fcQMediaPlayer_hasSupport3(struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), struct_miqt_array(len: csize_t(len(codecs)), data: if len(codecs) == 0: nil else: addr(codecs_CArray[0])), cint(flags)))

proc supportedMimeTypes1*(_: type QMediaPlayer, flags: QMediaPlayerFlag): seq[string] =

  var v_ma = fcQMediaPlayer_supportedMimeTypes1(cint(flags))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setMedia2*(self: QMediaPlayer, media: gen_qmediacontent.QMediaContent, stream: gen_qiodevice.QIODevice): void =

  fcQMediaPlayer_setMedia2(self.h, media.h, stream.h)

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
proc callVirtualBase_availability(self: QMediaPlayer, ): gen_qmultimedia.QMultimediaAvailabilityStatus =


  gen_qmultimedia.QMultimediaAvailabilityStatus(fQMediaPlayer_virtualbase_availability(self.h))

type QMediaPlayeravailabilityBase* = proc(): gen_qmultimedia.QMultimediaAvailabilityStatus
proc onavailability*(self: QMediaPlayer, slot: proc(super: QMediaPlayeravailabilityBase): gen_qmultimedia.QMultimediaAvailabilityStatus) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlayeravailabilityBase): gen_qmultimedia.QMultimediaAvailabilityStatus
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_availability(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_availability(self: ptr cQMediaPlayer, slot: int): cint {.exportc: "miqt_exec_callback_QMediaPlayer_availability ".} =
  type Cb = proc(super: QMediaPlayeravailabilityBase): gen_qmultimedia.QMultimediaAvailabilityStatus
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_availability(QMediaPlayer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_bindX(self: QMediaPlayer, param1: gen_qobject.QObject): bool =


  fQMediaPlayer_virtualbase_bind(self.h, param1.h)

type QMediaPlayerbindXBase* = proc(param1: gen_qobject.QObject): bool
proc onbindX*(self: QMediaPlayer, slot: proc(super: QMediaPlayerbindXBase, param1: gen_qobject.QObject): bool) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlayerbindXBase, param1: gen_qobject.QObject): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_bindX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_bind(self: ptr cQMediaPlayer, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QMediaPlayer_bind ".} =
  type Cb = proc(super: QMediaPlayerbindXBase, param1: gen_qobject.QObject): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject): auto =
    callVirtualBase_bindX(QMediaPlayer(h: self), param1)
  let slotval1 = gen_qobject.QObject(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_unbind(self: QMediaPlayer, param1: gen_qobject.QObject): void =


  fQMediaPlayer_virtualbase_unbind(self.h, param1.h)

type QMediaPlayerunbindBase* = proc(param1: gen_qobject.QObject): void
proc onunbind*(self: QMediaPlayer, slot: proc(super: QMediaPlayerunbindBase, param1: gen_qobject.QObject): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlayerunbindBase, param1: gen_qobject.QObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_unbind(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_unbind(self: ptr cQMediaPlayer, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_unbind ".} =
  type Cb = proc(super: QMediaPlayerunbindBase, param1: gen_qobject.QObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject): auto =
    callVirtualBase_unbind(QMediaPlayer(h: self), param1)
  let slotval1 = gen_qobject.QObject(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_isAvailable(self: QMediaPlayer, ): bool =


  fQMediaPlayer_virtualbase_isAvailable(self.h)

type QMediaPlayerisAvailableBase* = proc(): bool
proc onisAvailable*(self: QMediaPlayer, slot: proc(super: QMediaPlayerisAvailableBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlayerisAvailableBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_isAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_isAvailable(self: ptr cQMediaPlayer, slot: int): bool {.exportc: "miqt_exec_callback_QMediaPlayer_isAvailable ".} =
  type Cb = proc(super: QMediaPlayerisAvailableBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isAvailable(QMediaPlayer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_service(self: QMediaPlayer, ): gen_qmediaservice.QMediaService =


  gen_qmediaservice.QMediaService(h: fQMediaPlayer_virtualbase_service(self.h))

type QMediaPlayerserviceBase* = proc(): gen_qmediaservice.QMediaService
proc onservice*(self: QMediaPlayer, slot: proc(super: QMediaPlayerserviceBase): gen_qmediaservice.QMediaService) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlayerserviceBase): gen_qmediaservice.QMediaService
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_service(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_service(self: ptr cQMediaPlayer, slot: int): pointer {.exportc: "miqt_exec_callback_QMediaPlayer_service ".} =
  type Cb = proc(super: QMediaPlayerserviceBase): gen_qmediaservice.QMediaService
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_service(QMediaPlayer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
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
