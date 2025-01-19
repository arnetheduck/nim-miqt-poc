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
{.compile("gen_qmediaplayercontrol.cpp", cflags).}


import gen_qmediaplayercontrol_types
export gen_qmediaplayercontrol_types

import
  gen_qiodevice,
  gen_qmediacontent,
  gen_qmediacontrol,
  gen_qmediaplayer,
  gen_qmediatimerange,
  gen_qobjectdefs
export
  gen_qiodevice,
  gen_qmediacontent,
  gen_qmediacontrol,
  gen_qmediaplayer,
  gen_qmediatimerange,
  gen_qobjectdefs

type cQMediaPlayerControl*{.exportc: "QMediaPlayerControl", incompleteStruct.} = object

proc fcQMediaPlayerControl_metaObject(self: pointer, ): pointer {.importc: "QMediaPlayerControl_metaObject".}
proc fcQMediaPlayerControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaPlayerControl_metacast".}
proc fcQMediaPlayerControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaPlayerControl_metacall".}
proc fcQMediaPlayerControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaPlayerControl_tr".}
proc fcQMediaPlayerControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaPlayerControl_trUtf8".}
proc fcQMediaPlayerControl_state(self: pointer, ): cint {.importc: "QMediaPlayerControl_state".}
proc fcQMediaPlayerControl_mediaStatus(self: pointer, ): cint {.importc: "QMediaPlayerControl_mediaStatus".}
proc fcQMediaPlayerControl_duration(self: pointer, ): clonglong {.importc: "QMediaPlayerControl_duration".}
proc fcQMediaPlayerControl_position(self: pointer, ): clonglong {.importc: "QMediaPlayerControl_position".}
proc fcQMediaPlayerControl_setPosition(self: pointer, position: clonglong): void {.importc: "QMediaPlayerControl_setPosition".}
proc fcQMediaPlayerControl_volume(self: pointer, ): cint {.importc: "QMediaPlayerControl_volume".}
proc fcQMediaPlayerControl_setVolume(self: pointer, volume: cint): void {.importc: "QMediaPlayerControl_setVolume".}
proc fcQMediaPlayerControl_isMuted(self: pointer, ): bool {.importc: "QMediaPlayerControl_isMuted".}
proc fcQMediaPlayerControl_setMuted(self: pointer, mute: bool): void {.importc: "QMediaPlayerControl_setMuted".}
proc fcQMediaPlayerControl_bufferStatus(self: pointer, ): cint {.importc: "QMediaPlayerControl_bufferStatus".}
proc fcQMediaPlayerControl_isAudioAvailable(self: pointer, ): bool {.importc: "QMediaPlayerControl_isAudioAvailable".}
proc fcQMediaPlayerControl_isVideoAvailable(self: pointer, ): bool {.importc: "QMediaPlayerControl_isVideoAvailable".}
proc fcQMediaPlayerControl_isSeekable(self: pointer, ): bool {.importc: "QMediaPlayerControl_isSeekable".}
proc fcQMediaPlayerControl_availablePlaybackRanges(self: pointer, ): pointer {.importc: "QMediaPlayerControl_availablePlaybackRanges".}
proc fcQMediaPlayerControl_playbackRate(self: pointer, ): float64 {.importc: "QMediaPlayerControl_playbackRate".}
proc fcQMediaPlayerControl_setPlaybackRate(self: pointer, rate: float64): void {.importc: "QMediaPlayerControl_setPlaybackRate".}
proc fcQMediaPlayerControl_media(self: pointer, ): pointer {.importc: "QMediaPlayerControl_media".}
proc fcQMediaPlayerControl_mediaStream(self: pointer, ): pointer {.importc: "QMediaPlayerControl_mediaStream".}
proc fcQMediaPlayerControl_setMedia(self: pointer, media: pointer, stream: pointer): void {.importc: "QMediaPlayerControl_setMedia".}
proc fcQMediaPlayerControl_play(self: pointer, ): void {.importc: "QMediaPlayerControl_play".}
proc fcQMediaPlayerControl_pause(self: pointer, ): void {.importc: "QMediaPlayerControl_pause".}
proc fcQMediaPlayerControl_stop(self: pointer, ): void {.importc: "QMediaPlayerControl_stop".}
proc fcQMediaPlayerControl_mediaChanged(self: pointer, content: pointer): void {.importc: "QMediaPlayerControl_mediaChanged".}
proc fQMediaPlayerControl_connect_mediaChanged(self: pointer, slot: int) {.importc: "QMediaPlayerControl_connect_mediaChanged".}
proc fcQMediaPlayerControl_durationChanged(self: pointer, duration: clonglong): void {.importc: "QMediaPlayerControl_durationChanged".}
proc fQMediaPlayerControl_connect_durationChanged(self: pointer, slot: int) {.importc: "QMediaPlayerControl_connect_durationChanged".}
proc fcQMediaPlayerControl_positionChanged(self: pointer, position: clonglong): void {.importc: "QMediaPlayerControl_positionChanged".}
proc fQMediaPlayerControl_connect_positionChanged(self: pointer, slot: int) {.importc: "QMediaPlayerControl_connect_positionChanged".}
proc fcQMediaPlayerControl_stateChanged(self: pointer, newState: cint): void {.importc: "QMediaPlayerControl_stateChanged".}
proc fQMediaPlayerControl_connect_stateChanged(self: pointer, slot: int) {.importc: "QMediaPlayerControl_connect_stateChanged".}
proc fcQMediaPlayerControl_mediaStatusChanged(self: pointer, status: cint): void {.importc: "QMediaPlayerControl_mediaStatusChanged".}
proc fQMediaPlayerControl_connect_mediaStatusChanged(self: pointer, slot: int) {.importc: "QMediaPlayerControl_connect_mediaStatusChanged".}
proc fcQMediaPlayerControl_volumeChanged(self: pointer, volume: cint): void {.importc: "QMediaPlayerControl_volumeChanged".}
proc fQMediaPlayerControl_connect_volumeChanged(self: pointer, slot: int) {.importc: "QMediaPlayerControl_connect_volumeChanged".}
proc fcQMediaPlayerControl_mutedChanged(self: pointer, mute: bool): void {.importc: "QMediaPlayerControl_mutedChanged".}
proc fQMediaPlayerControl_connect_mutedChanged(self: pointer, slot: int) {.importc: "QMediaPlayerControl_connect_mutedChanged".}
proc fcQMediaPlayerControl_audioAvailableChanged(self: pointer, audioAvailable: bool): void {.importc: "QMediaPlayerControl_audioAvailableChanged".}
proc fQMediaPlayerControl_connect_audioAvailableChanged(self: pointer, slot: int) {.importc: "QMediaPlayerControl_connect_audioAvailableChanged".}
proc fcQMediaPlayerControl_videoAvailableChanged(self: pointer, videoAvailable: bool): void {.importc: "QMediaPlayerControl_videoAvailableChanged".}
proc fQMediaPlayerControl_connect_videoAvailableChanged(self: pointer, slot: int) {.importc: "QMediaPlayerControl_connect_videoAvailableChanged".}
proc fcQMediaPlayerControl_bufferStatusChanged(self: pointer, percentFilled: cint): void {.importc: "QMediaPlayerControl_bufferStatusChanged".}
proc fQMediaPlayerControl_connect_bufferStatusChanged(self: pointer, slot: int) {.importc: "QMediaPlayerControl_connect_bufferStatusChanged".}
proc fcQMediaPlayerControl_seekableChanged(self: pointer, seekable: bool): void {.importc: "QMediaPlayerControl_seekableChanged".}
proc fQMediaPlayerControl_connect_seekableChanged(self: pointer, slot: int) {.importc: "QMediaPlayerControl_connect_seekableChanged".}
proc fcQMediaPlayerControl_availablePlaybackRangesChanged(self: pointer, ranges: pointer): void {.importc: "QMediaPlayerControl_availablePlaybackRangesChanged".}
proc fQMediaPlayerControl_connect_availablePlaybackRangesChanged(self: pointer, slot: int) {.importc: "QMediaPlayerControl_connect_availablePlaybackRangesChanged".}
proc fcQMediaPlayerControl_playbackRateChanged(self: pointer, rate: float64): void {.importc: "QMediaPlayerControl_playbackRateChanged".}
proc fQMediaPlayerControl_connect_playbackRateChanged(self: pointer, slot: int) {.importc: "QMediaPlayerControl_connect_playbackRateChanged".}
proc fcQMediaPlayerControl_error(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QMediaPlayerControl_error".}
proc fQMediaPlayerControl_connect_error(self: pointer, slot: int) {.importc: "QMediaPlayerControl_connect_error".}
proc fcQMediaPlayerControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaPlayerControl_tr2".}
proc fcQMediaPlayerControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaPlayerControl_tr3".}
proc fcQMediaPlayerControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaPlayerControl_trUtf82".}
proc fcQMediaPlayerControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaPlayerControl_trUtf83".}
proc fcQMediaPlayerControl_staticMetaObject(): pointer {.importc: "QMediaPlayerControl_staticMetaObject".}
proc fcQMediaPlayerControl_delete(self: pointer) {.importc: "QMediaPlayerControl_delete".}


func init*(T: type QMediaPlayerControl, h: ptr cQMediaPlayerControl): QMediaPlayerControl =
  T(h: h)
proc metaObject*(self: QMediaPlayerControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaPlayerControl_metaObject(self.h))

proc metacast*(self: QMediaPlayerControl, param1: cstring): pointer =

  fcQMediaPlayerControl_metacast(self.h, param1)

proc metacall*(self: QMediaPlayerControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMediaPlayerControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMediaPlayerControl, s: cstring): string =

  let v_ms = fcQMediaPlayerControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMediaPlayerControl, s: cstring): string =

  let v_ms = fcQMediaPlayerControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc state*(self: QMediaPlayerControl, ): gen_qmediaplayer.QMediaPlayerState =

  gen_qmediaplayer.QMediaPlayerState(fcQMediaPlayerControl_state(self.h))

proc mediaStatus*(self: QMediaPlayerControl, ): gen_qmediaplayer.QMediaPlayerMediaStatus =

  gen_qmediaplayer.QMediaPlayerMediaStatus(fcQMediaPlayerControl_mediaStatus(self.h))

proc duration*(self: QMediaPlayerControl, ): clonglong =

  fcQMediaPlayerControl_duration(self.h)

proc position*(self: QMediaPlayerControl, ): clonglong =

  fcQMediaPlayerControl_position(self.h)

proc setPosition*(self: QMediaPlayerControl, position: clonglong): void =

  fcQMediaPlayerControl_setPosition(self.h, position)

proc volume*(self: QMediaPlayerControl, ): cint =

  fcQMediaPlayerControl_volume(self.h)

proc setVolume*(self: QMediaPlayerControl, volume: cint): void =

  fcQMediaPlayerControl_setVolume(self.h, volume)

proc isMuted*(self: QMediaPlayerControl, ): bool =

  fcQMediaPlayerControl_isMuted(self.h)

proc setMuted*(self: QMediaPlayerControl, mute: bool): void =

  fcQMediaPlayerControl_setMuted(self.h, mute)

proc bufferStatus*(self: QMediaPlayerControl, ): cint =

  fcQMediaPlayerControl_bufferStatus(self.h)

proc isAudioAvailable*(self: QMediaPlayerControl, ): bool =

  fcQMediaPlayerControl_isAudioAvailable(self.h)

proc isVideoAvailable*(self: QMediaPlayerControl, ): bool =

  fcQMediaPlayerControl_isVideoAvailable(self.h)

proc isSeekable*(self: QMediaPlayerControl, ): bool =

  fcQMediaPlayerControl_isSeekable(self.h)

proc availablePlaybackRanges*(self: QMediaPlayerControl, ): gen_qmediatimerange.QMediaTimeRange =

  gen_qmediatimerange.QMediaTimeRange(h: fcQMediaPlayerControl_availablePlaybackRanges(self.h))

proc playbackRate*(self: QMediaPlayerControl, ): float64 =

  fcQMediaPlayerControl_playbackRate(self.h)

proc setPlaybackRate*(self: QMediaPlayerControl, rate: float64): void =

  fcQMediaPlayerControl_setPlaybackRate(self.h, rate)

proc media*(self: QMediaPlayerControl, ): gen_qmediacontent.QMediaContent =

  gen_qmediacontent.QMediaContent(h: fcQMediaPlayerControl_media(self.h))

proc mediaStream*(self: QMediaPlayerControl, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQMediaPlayerControl_mediaStream(self.h))

proc setMedia*(self: QMediaPlayerControl, media: gen_qmediacontent.QMediaContent, stream: gen_qiodevice.QIODevice): void =

  fcQMediaPlayerControl_setMedia(self.h, media.h, stream.h)

proc play*(self: QMediaPlayerControl, ): void =

  fcQMediaPlayerControl_play(self.h)

proc pause*(self: QMediaPlayerControl, ): void =

  fcQMediaPlayerControl_pause(self.h)

proc stop*(self: QMediaPlayerControl, ): void =

  fcQMediaPlayerControl_stop(self.h)

proc mediaChanged*(self: QMediaPlayerControl, content: gen_qmediacontent.QMediaContent): void =

  fcQMediaPlayerControl_mediaChanged(self.h, content.h)

proc miqt_exec_callback_QMediaPlayerControl_mediaChanged(slot: int, content: pointer) {.exportc.} =
  type Cb = proc(content: gen_qmediacontent.QMediaContent)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmediacontent.QMediaContent(h: content)


  nimfunc[](slotval1)

proc onmediaChanged*(self: QMediaPlayerControl, slot: proc(content: gen_qmediacontent.QMediaContent)) =
  type Cb = proc(content: gen_qmediacontent.QMediaContent)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayerControl_connect_mediaChanged(self.h, cast[int](addr tmp[]))
proc durationChanged*(self: QMediaPlayerControl, duration: clonglong): void =

  fcQMediaPlayerControl_durationChanged(self.h, duration)

proc miqt_exec_callback_QMediaPlayerControl_durationChanged(slot: int, duration: clonglong) {.exportc.} =
  type Cb = proc(duration: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = duration


  nimfunc[](slotval1)

proc ondurationChanged*(self: QMediaPlayerControl, slot: proc(duration: clonglong)) =
  type Cb = proc(duration: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayerControl_connect_durationChanged(self.h, cast[int](addr tmp[]))
proc positionChanged*(self: QMediaPlayerControl, position: clonglong): void =

  fcQMediaPlayerControl_positionChanged(self.h, position)

proc miqt_exec_callback_QMediaPlayerControl_positionChanged(slot: int, position: clonglong) {.exportc.} =
  type Cb = proc(position: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position


  nimfunc[](slotval1)

proc onpositionChanged*(self: QMediaPlayerControl, slot: proc(position: clonglong)) =
  type Cb = proc(position: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayerControl_connect_positionChanged(self.h, cast[int](addr tmp[]))
proc stateChanged*(self: QMediaPlayerControl, newState: gen_qmediaplayer.QMediaPlayerState): void =

  fcQMediaPlayerControl_stateChanged(self.h, cint(newState))

proc miqt_exec_callback_QMediaPlayerControl_stateChanged(slot: int, newState: cint) {.exportc.} =
  type Cb = proc(newState: gen_qmediaplayer.QMediaPlayerState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmediaplayer.QMediaPlayerState(newState)


  nimfunc[](slotval1)

proc onstateChanged*(self: QMediaPlayerControl, slot: proc(newState: gen_qmediaplayer.QMediaPlayerState)) =
  type Cb = proc(newState: gen_qmediaplayer.QMediaPlayerState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayerControl_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc mediaStatusChanged*(self: QMediaPlayerControl, status: gen_qmediaplayer.QMediaPlayerMediaStatus): void =

  fcQMediaPlayerControl_mediaStatusChanged(self.h, cint(status))

proc miqt_exec_callback_QMediaPlayerControl_mediaStatusChanged(slot: int, status: cint) {.exportc.} =
  type Cb = proc(status: gen_qmediaplayer.QMediaPlayerMediaStatus)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmediaplayer.QMediaPlayerMediaStatus(status)


  nimfunc[](slotval1)

proc onmediaStatusChanged*(self: QMediaPlayerControl, slot: proc(status: gen_qmediaplayer.QMediaPlayerMediaStatus)) =
  type Cb = proc(status: gen_qmediaplayer.QMediaPlayerMediaStatus)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayerControl_connect_mediaStatusChanged(self.h, cast[int](addr tmp[]))
proc volumeChanged*(self: QMediaPlayerControl, volume: cint): void =

  fcQMediaPlayerControl_volumeChanged(self.h, volume)

proc miqt_exec_callback_QMediaPlayerControl_volumeChanged(slot: int, volume: cint) {.exportc.} =
  type Cb = proc(volume: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = volume


  nimfunc[](slotval1)

proc onvolumeChanged*(self: QMediaPlayerControl, slot: proc(volume: cint)) =
  type Cb = proc(volume: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayerControl_connect_volumeChanged(self.h, cast[int](addr tmp[]))
proc mutedChanged*(self: QMediaPlayerControl, mute: bool): void =

  fcQMediaPlayerControl_mutedChanged(self.h, mute)

proc miqt_exec_callback_QMediaPlayerControl_mutedChanged(slot: int, mute: bool) {.exportc.} =
  type Cb = proc(mute: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = mute


  nimfunc[](slotval1)

proc onmutedChanged*(self: QMediaPlayerControl, slot: proc(mute: bool)) =
  type Cb = proc(mute: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayerControl_connect_mutedChanged(self.h, cast[int](addr tmp[]))
proc audioAvailableChanged*(self: QMediaPlayerControl, audioAvailable: bool): void =

  fcQMediaPlayerControl_audioAvailableChanged(self.h, audioAvailable)

proc miqt_exec_callback_QMediaPlayerControl_audioAvailableChanged(slot: int, audioAvailable: bool) {.exportc.} =
  type Cb = proc(audioAvailable: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = audioAvailable


  nimfunc[](slotval1)

proc onaudioAvailableChanged*(self: QMediaPlayerControl, slot: proc(audioAvailable: bool)) =
  type Cb = proc(audioAvailable: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayerControl_connect_audioAvailableChanged(self.h, cast[int](addr tmp[]))
proc videoAvailableChanged*(self: QMediaPlayerControl, videoAvailable: bool): void =

  fcQMediaPlayerControl_videoAvailableChanged(self.h, videoAvailable)

proc miqt_exec_callback_QMediaPlayerControl_videoAvailableChanged(slot: int, videoAvailable: bool) {.exportc.} =
  type Cb = proc(videoAvailable: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = videoAvailable


  nimfunc[](slotval1)

proc onvideoAvailableChanged*(self: QMediaPlayerControl, slot: proc(videoAvailable: bool)) =
  type Cb = proc(videoAvailable: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayerControl_connect_videoAvailableChanged(self.h, cast[int](addr tmp[]))
proc bufferStatusChanged*(self: QMediaPlayerControl, percentFilled: cint): void =

  fcQMediaPlayerControl_bufferStatusChanged(self.h, percentFilled)

proc miqt_exec_callback_QMediaPlayerControl_bufferStatusChanged(slot: int, percentFilled: cint) {.exportc.} =
  type Cb = proc(percentFilled: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = percentFilled


  nimfunc[](slotval1)

proc onbufferStatusChanged*(self: QMediaPlayerControl, slot: proc(percentFilled: cint)) =
  type Cb = proc(percentFilled: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayerControl_connect_bufferStatusChanged(self.h, cast[int](addr tmp[]))
proc seekableChanged*(self: QMediaPlayerControl, seekable: bool): void =

  fcQMediaPlayerControl_seekableChanged(self.h, seekable)

proc miqt_exec_callback_QMediaPlayerControl_seekableChanged(slot: int, seekable: bool) {.exportc.} =
  type Cb = proc(seekable: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = seekable


  nimfunc[](slotval1)

proc onseekableChanged*(self: QMediaPlayerControl, slot: proc(seekable: bool)) =
  type Cb = proc(seekable: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayerControl_connect_seekableChanged(self.h, cast[int](addr tmp[]))
proc availablePlaybackRangesChanged*(self: QMediaPlayerControl, ranges: gen_qmediatimerange.QMediaTimeRange): void =

  fcQMediaPlayerControl_availablePlaybackRangesChanged(self.h, ranges.h)

proc miqt_exec_callback_QMediaPlayerControl_availablePlaybackRangesChanged(slot: int, ranges: pointer) {.exportc.} =
  type Cb = proc(ranges: gen_qmediatimerange.QMediaTimeRange)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmediatimerange.QMediaTimeRange(h: ranges)


  nimfunc[](slotval1)

proc onavailablePlaybackRangesChanged*(self: QMediaPlayerControl, slot: proc(ranges: gen_qmediatimerange.QMediaTimeRange)) =
  type Cb = proc(ranges: gen_qmediatimerange.QMediaTimeRange)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayerControl_connect_availablePlaybackRangesChanged(self.h, cast[int](addr tmp[]))
proc playbackRateChanged*(self: QMediaPlayerControl, rate: float64): void =

  fcQMediaPlayerControl_playbackRateChanged(self.h, rate)

proc miqt_exec_callback_QMediaPlayerControl_playbackRateChanged(slot: int, rate: float64) {.exportc.} =
  type Cb = proc(rate: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = rate


  nimfunc[](slotval1)

proc onplaybackRateChanged*(self: QMediaPlayerControl, slot: proc(rate: float64)) =
  type Cb = proc(rate: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayerControl_connect_playbackRateChanged(self.h, cast[int](addr tmp[]))
proc error*(self: QMediaPlayerControl, error: cint, errorString: string): void =

  fcQMediaPlayerControl_error(self.h, error, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc miqt_exec_callback_QMediaPlayerControl_error(slot: int, error: cint, errorString: struct_miqt_string) {.exportc.} =
  type Cb = proc(error: cint, errorString: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = error

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret


  nimfunc[](slotval1, slotval2)

proc onerror*(self: QMediaPlayerControl, slot: proc(error: cint, errorString: string)) =
  type Cb = proc(error: cint, errorString: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlayerControl_connect_error(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMediaPlayerControl, s: cstring, c: cstring): string =

  let v_ms = fcQMediaPlayerControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMediaPlayerControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaPlayerControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMediaPlayerControl, s: cstring, c: cstring): string =

  let v_ms = fcQMediaPlayerControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMediaPlayerControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaPlayerControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QMediaPlayerControl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMediaPlayerControl_staticMetaObject())
proc delete*(self: QMediaPlayerControl) =
  fcQMediaPlayerControl_delete(self.h)
