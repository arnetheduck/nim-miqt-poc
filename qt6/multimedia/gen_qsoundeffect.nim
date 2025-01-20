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
{.compile("gen_qsoundeffect.cpp", cflags).}


type QSoundEffectLoopEnum* = distinct cint
template Infinite*(_: type QSoundEffectLoopEnum): untyped = -2


type QSoundEffectStatusEnum* = distinct cint
template Null*(_: type QSoundEffectStatusEnum): untyped = 0
template Loading*(_: type QSoundEffectStatusEnum): untyped = 1
template Ready*(_: type QSoundEffectStatusEnum): untyped = 2
template Error*(_: type QSoundEffectStatusEnum): untyped = 3


import gen_qsoundeffect_types
export gen_qsoundeffect_types

import
  gen_qaudiodevice,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl
export
  gen_qaudiodevice,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl

type cQSoundEffect*{.exportc: "QSoundEffect", incompleteStruct.} = object

proc fcQSoundEffect_new(): ptr cQSoundEffect {.importc: "QSoundEffect_new".}
proc fcQSoundEffect_new2(audioDevice: pointer): ptr cQSoundEffect {.importc: "QSoundEffect_new2".}
proc fcQSoundEffect_new3(parent: pointer): ptr cQSoundEffect {.importc: "QSoundEffect_new3".}
proc fcQSoundEffect_new4(audioDevice: pointer, parent: pointer): ptr cQSoundEffect {.importc: "QSoundEffect_new4".}
proc fcQSoundEffect_metaObject(self: pointer, ): pointer {.importc: "QSoundEffect_metaObject".}
proc fcQSoundEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QSoundEffect_metacast".}
proc fcQSoundEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSoundEffect_metacall".}
proc fcQSoundEffect_tr(s: cstring): struct_miqt_string {.importc: "QSoundEffect_tr".}
proc fcQSoundEffect_supportedMimeTypes(): struct_miqt_array {.importc: "QSoundEffect_supportedMimeTypes".}
proc fcQSoundEffect_source(self: pointer, ): pointer {.importc: "QSoundEffect_source".}
proc fcQSoundEffect_setSource(self: pointer, url: pointer): void {.importc: "QSoundEffect_setSource".}
proc fcQSoundEffect_loopCount(self: pointer, ): cint {.importc: "QSoundEffect_loopCount".}
proc fcQSoundEffect_loopsRemaining(self: pointer, ): cint {.importc: "QSoundEffect_loopsRemaining".}
proc fcQSoundEffect_setLoopCount(self: pointer, loopCount: cint): void {.importc: "QSoundEffect_setLoopCount".}
proc fcQSoundEffect_audioDevice(self: pointer, ): pointer {.importc: "QSoundEffect_audioDevice".}
proc fcQSoundEffect_setAudioDevice(self: pointer, device: pointer): void {.importc: "QSoundEffect_setAudioDevice".}
proc fcQSoundEffect_volume(self: pointer, ): float32 {.importc: "QSoundEffect_volume".}
proc fcQSoundEffect_setVolume(self: pointer, volume: float32): void {.importc: "QSoundEffect_setVolume".}
proc fcQSoundEffect_isMuted(self: pointer, ): bool {.importc: "QSoundEffect_isMuted".}
proc fcQSoundEffect_setMuted(self: pointer, muted: bool): void {.importc: "QSoundEffect_setMuted".}
proc fcQSoundEffect_isLoaded(self: pointer, ): bool {.importc: "QSoundEffect_isLoaded".}
proc fcQSoundEffect_isPlaying(self: pointer, ): bool {.importc: "QSoundEffect_isPlaying".}
proc fcQSoundEffect_status(self: pointer, ): cint {.importc: "QSoundEffect_status".}
proc fcQSoundEffect_sourceChanged(self: pointer, ): void {.importc: "QSoundEffect_sourceChanged".}
proc fQSoundEffect_connect_sourceChanged(self: pointer, slot: int) {.importc: "QSoundEffect_connect_sourceChanged".}
proc fcQSoundEffect_loopCountChanged(self: pointer, ): void {.importc: "QSoundEffect_loopCountChanged".}
proc fQSoundEffect_connect_loopCountChanged(self: pointer, slot: int) {.importc: "QSoundEffect_connect_loopCountChanged".}
proc fcQSoundEffect_loopsRemainingChanged(self: pointer, ): void {.importc: "QSoundEffect_loopsRemainingChanged".}
proc fQSoundEffect_connect_loopsRemainingChanged(self: pointer, slot: int) {.importc: "QSoundEffect_connect_loopsRemainingChanged".}
proc fcQSoundEffect_volumeChanged(self: pointer, ): void {.importc: "QSoundEffect_volumeChanged".}
proc fQSoundEffect_connect_volumeChanged(self: pointer, slot: int) {.importc: "QSoundEffect_connect_volumeChanged".}
proc fcQSoundEffect_mutedChanged(self: pointer, ): void {.importc: "QSoundEffect_mutedChanged".}
proc fQSoundEffect_connect_mutedChanged(self: pointer, slot: int) {.importc: "QSoundEffect_connect_mutedChanged".}
proc fcQSoundEffect_loadedChanged(self: pointer, ): void {.importc: "QSoundEffect_loadedChanged".}
proc fQSoundEffect_connect_loadedChanged(self: pointer, slot: int) {.importc: "QSoundEffect_connect_loadedChanged".}
proc fcQSoundEffect_playingChanged(self: pointer, ): void {.importc: "QSoundEffect_playingChanged".}
proc fQSoundEffect_connect_playingChanged(self: pointer, slot: int) {.importc: "QSoundEffect_connect_playingChanged".}
proc fcQSoundEffect_statusChanged(self: pointer, ): void {.importc: "QSoundEffect_statusChanged".}
proc fQSoundEffect_connect_statusChanged(self: pointer, slot: int) {.importc: "QSoundEffect_connect_statusChanged".}
proc fcQSoundEffect_audioDeviceChanged(self: pointer, ): void {.importc: "QSoundEffect_audioDeviceChanged".}
proc fQSoundEffect_connect_audioDeviceChanged(self: pointer, slot: int) {.importc: "QSoundEffect_connect_audioDeviceChanged".}
proc fcQSoundEffect_play(self: pointer, ): void {.importc: "QSoundEffect_play".}
proc fcQSoundEffect_stop(self: pointer, ): void {.importc: "QSoundEffect_stop".}
proc fcQSoundEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSoundEffect_tr2".}
proc fcQSoundEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSoundEffect_tr3".}
proc fQSoundEffect_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSoundEffect_virtualbase_metaObject".}
proc fcQSoundEffect_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSoundEffect_override_virtual_metaObject".}
proc fQSoundEffect_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSoundEffect_virtualbase_metacast".}
proc fcQSoundEffect_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSoundEffect_override_virtual_metacast".}
proc fQSoundEffect_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSoundEffect_virtualbase_metacall".}
proc fcQSoundEffect_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSoundEffect_override_virtual_metacall".}
proc fQSoundEffect_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSoundEffect_virtualbase_event".}
proc fcQSoundEffect_override_virtual_event(self: pointer, slot: int) {.importc: "QSoundEffect_override_virtual_event".}
proc fQSoundEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSoundEffect_virtualbase_eventFilter".}
proc fcQSoundEffect_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSoundEffect_override_virtual_eventFilter".}
proc fQSoundEffect_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSoundEffect_virtualbase_timerEvent".}
proc fcQSoundEffect_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSoundEffect_override_virtual_timerEvent".}
proc fQSoundEffect_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSoundEffect_virtualbase_childEvent".}
proc fcQSoundEffect_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSoundEffect_override_virtual_childEvent".}
proc fQSoundEffect_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSoundEffect_virtualbase_customEvent".}
proc fcQSoundEffect_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSoundEffect_override_virtual_customEvent".}
proc fQSoundEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSoundEffect_virtualbase_connectNotify".}
proc fcQSoundEffect_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSoundEffect_override_virtual_connectNotify".}
proc fQSoundEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSoundEffect_virtualbase_disconnectNotify".}
proc fcQSoundEffect_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSoundEffect_override_virtual_disconnectNotify".}
proc fcQSoundEffect_staticMetaObject(): pointer {.importc: "QSoundEffect_staticMetaObject".}
proc fcQSoundEffect_delete(self: pointer) {.importc: "QSoundEffect_delete".}


func init*(T: type gen_qsoundeffect_types.QSoundEffect, h: ptr cQSoundEffect): gen_qsoundeffect_types.QSoundEffect =
  T(h: h)
proc create*(T: type gen_qsoundeffect_types.QSoundEffect, ): gen_qsoundeffect_types.QSoundEffect =

  gen_qsoundeffect_types.QSoundEffect.init(fcQSoundEffect_new())
proc create*(T: type gen_qsoundeffect_types.QSoundEffect, audioDevice: gen_qaudiodevice.QAudioDevice): gen_qsoundeffect_types.QSoundEffect =

  gen_qsoundeffect_types.QSoundEffect.init(fcQSoundEffect_new2(audioDevice.h))
proc create2*(T: type gen_qsoundeffect_types.QSoundEffect, parent: gen_qobject.QObject): gen_qsoundeffect_types.QSoundEffect =

  gen_qsoundeffect_types.QSoundEffect.init(fcQSoundEffect_new3(parent.h))
proc create*(T: type gen_qsoundeffect_types.QSoundEffect, audioDevice: gen_qaudiodevice.QAudioDevice, parent: gen_qobject.QObject): gen_qsoundeffect_types.QSoundEffect =

  gen_qsoundeffect_types.QSoundEffect.init(fcQSoundEffect_new4(audioDevice.h, parent.h))
proc metaObject*(self: gen_qsoundeffect_types.QSoundEffect, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSoundEffect_metaObject(self.h))

proc metacast*(self: gen_qsoundeffect_types.QSoundEffect, param1: cstring): pointer =

  fcQSoundEffect_metacast(self.h, param1)

proc metacall*(self: gen_qsoundeffect_types.QSoundEffect, param1: cint, param2: cint, param3: pointer): cint =

  fcQSoundEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsoundeffect_types.QSoundEffect, s: cstring): string =

  let v_ms = fcQSoundEffect_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedMimeTypes*(_: type gen_qsoundeffect_types.QSoundEffect, ): seq[string] =

  var v_ma = fcQSoundEffect_supportedMimeTypes()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc source*(self: gen_qsoundeffect_types.QSoundEffect, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQSoundEffect_source(self.h))

proc setSource*(self: gen_qsoundeffect_types.QSoundEffect, url: gen_qurl.QUrl): void =

  fcQSoundEffect_setSource(self.h, url.h)

proc loopCount*(self: gen_qsoundeffect_types.QSoundEffect, ): cint =

  fcQSoundEffect_loopCount(self.h)

proc loopsRemaining*(self: gen_qsoundeffect_types.QSoundEffect, ): cint =

  fcQSoundEffect_loopsRemaining(self.h)

proc setLoopCount*(self: gen_qsoundeffect_types.QSoundEffect, loopCount: cint): void =

  fcQSoundEffect_setLoopCount(self.h, loopCount)

proc audioDevice*(self: gen_qsoundeffect_types.QSoundEffect, ): gen_qaudiodevice.QAudioDevice =

  gen_qaudiodevice.QAudioDevice(h: fcQSoundEffect_audioDevice(self.h))

proc setAudioDevice*(self: gen_qsoundeffect_types.QSoundEffect, device: gen_qaudiodevice.QAudioDevice): void =

  fcQSoundEffect_setAudioDevice(self.h, device.h)

proc volume*(self: gen_qsoundeffect_types.QSoundEffect, ): float32 =

  fcQSoundEffect_volume(self.h)

proc setVolume*(self: gen_qsoundeffect_types.QSoundEffect, volume: float32): void =

  fcQSoundEffect_setVolume(self.h, volume)

proc isMuted*(self: gen_qsoundeffect_types.QSoundEffect, ): bool =

  fcQSoundEffect_isMuted(self.h)

proc setMuted*(self: gen_qsoundeffect_types.QSoundEffect, muted: bool): void =

  fcQSoundEffect_setMuted(self.h, muted)

proc isLoaded*(self: gen_qsoundeffect_types.QSoundEffect, ): bool =

  fcQSoundEffect_isLoaded(self.h)

proc isPlaying*(self: gen_qsoundeffect_types.QSoundEffect, ): bool =

  fcQSoundEffect_isPlaying(self.h)

proc status*(self: gen_qsoundeffect_types.QSoundEffect, ): cint =

  cint(fcQSoundEffect_status(self.h))

proc sourceChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =

  fcQSoundEffect_sourceChanged(self.h)

proc miqt_exec_callback_QSoundEffect_sourceChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsourceChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_sourceChanged(self.h, cast[int](addr tmp[]))
proc loopCountChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =

  fcQSoundEffect_loopCountChanged(self.h)

proc miqt_exec_callback_QSoundEffect_loopCountChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloopCountChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_loopCountChanged(self.h, cast[int](addr tmp[]))
proc loopsRemainingChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =

  fcQSoundEffect_loopsRemainingChanged(self.h)

proc miqt_exec_callback_QSoundEffect_loopsRemainingChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloopsRemainingChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_loopsRemainingChanged(self.h, cast[int](addr tmp[]))
proc volumeChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =

  fcQSoundEffect_volumeChanged(self.h)

proc miqt_exec_callback_QSoundEffect_volumeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvolumeChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_volumeChanged(self.h, cast[int](addr tmp[]))
proc mutedChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =

  fcQSoundEffect_mutedChanged(self.h)

proc miqt_exec_callback_QSoundEffect_mutedChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmutedChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_mutedChanged(self.h, cast[int](addr tmp[]))
proc loadedChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =

  fcQSoundEffect_loadedChanged(self.h)

proc miqt_exec_callback_QSoundEffect_loadedChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloadedChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_loadedChanged(self.h, cast[int](addr tmp[]))
proc playingChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =

  fcQSoundEffect_playingChanged(self.h)

proc miqt_exec_callback_QSoundEffect_playingChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onplayingChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_playingChanged(self.h, cast[int](addr tmp[]))
proc statusChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =

  fcQSoundEffect_statusChanged(self.h)

proc miqt_exec_callback_QSoundEffect_statusChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onstatusChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_statusChanged(self.h, cast[int](addr tmp[]))
proc audioDeviceChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =

  fcQSoundEffect_audioDeviceChanged(self.h)

proc miqt_exec_callback_QSoundEffect_audioDeviceChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaudioDeviceChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_audioDeviceChanged(self.h, cast[int](addr tmp[]))
proc play*(self: gen_qsoundeffect_types.QSoundEffect, ): void =

  fcQSoundEffect_play(self.h)

proc stop*(self: gen_qsoundeffect_types.QSoundEffect, ): void =

  fcQSoundEffect_stop(self.h)

proc tr2*(_: type gen_qsoundeffect_types.QSoundEffect, s: cstring, c: cstring): string =

  let v_ms = fcQSoundEffect_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qsoundeffect_types.QSoundEffect, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSoundEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSoundEffectmetaObject*(self: gen_qsoundeffect_types.QSoundEffect, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQSoundEffect_virtualbase_metaObject(self.h))

type QSoundEffectmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectmetaObjectProc) =
  # TODO check subclass
  var tmp = new QSoundEffectmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_metaObject(self: ptr cQSoundEffect, slot: int): pointer {.exportc: "miqt_exec_callback_QSoundEffect_metaObject ".} =
  var nimfunc = cast[ptr QSoundEffectmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSoundEffectmetacast*(self: gen_qsoundeffect_types.QSoundEffect, param1: cstring): pointer =

  fQSoundEffect_virtualbase_metacast(self.h, param1)

type QSoundEffectmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectmetacastProc) =
  # TODO check subclass
  var tmp = new QSoundEffectmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_metacast(self: ptr cQSoundEffect, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSoundEffect_metacast ".} =
  var nimfunc = cast[ptr QSoundEffectmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSoundEffectmetacall*(self: gen_qsoundeffect_types.QSoundEffect, param1: cint, param2: cint, param3: pointer): cint =

  fQSoundEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSoundEffectmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectmetacallProc) =
  # TODO check subclass
  var tmp = new QSoundEffectmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_metacall(self: ptr cQSoundEffect, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSoundEffect_metacall ".} =
  var nimfunc = cast[ptr QSoundEffectmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSoundEffectevent*(self: gen_qsoundeffect_types.QSoundEffect, event: gen_qcoreevent.QEvent): bool =

  fQSoundEffect_virtualbase_event(self.h, event.h)

type QSoundEffecteventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffecteventProc) =
  # TODO check subclass
  var tmp = new QSoundEffecteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_event(self: ptr cQSoundEffect, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSoundEffect_event ".} =
  var nimfunc = cast[ptr QSoundEffecteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSoundEffecteventFilter*(self: gen_qsoundeffect_types.QSoundEffect, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQSoundEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSoundEffecteventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffecteventFilterProc) =
  # TODO check subclass
  var tmp = new QSoundEffecteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_eventFilter(self: ptr cQSoundEffect, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSoundEffect_eventFilter ".} =
  var nimfunc = cast[ptr QSoundEffecteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSoundEffecttimerEvent*(self: gen_qsoundeffect_types.QSoundEffect, event: gen_qcoreevent.QTimerEvent): void =

  fQSoundEffect_virtualbase_timerEvent(self.h, event.h)

type QSoundEffecttimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffecttimerEventProc) =
  # TODO check subclass
  var tmp = new QSoundEffecttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_timerEvent(self: ptr cQSoundEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSoundEffect_timerEvent ".} =
  var nimfunc = cast[ptr QSoundEffecttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSoundEffectchildEvent*(self: gen_qsoundeffect_types.QSoundEffect, event: gen_qcoreevent.QChildEvent): void =

  fQSoundEffect_virtualbase_childEvent(self.h, event.h)

type QSoundEffectchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectchildEventProc) =
  # TODO check subclass
  var tmp = new QSoundEffectchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_childEvent(self: ptr cQSoundEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSoundEffect_childEvent ".} =
  var nimfunc = cast[ptr QSoundEffectchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSoundEffectcustomEvent*(self: gen_qsoundeffect_types.QSoundEffect, event: gen_qcoreevent.QEvent): void =

  fQSoundEffect_virtualbase_customEvent(self.h, event.h)

type QSoundEffectcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectcustomEventProc) =
  # TODO check subclass
  var tmp = new QSoundEffectcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_customEvent(self: ptr cQSoundEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSoundEffect_customEvent ".} =
  var nimfunc = cast[ptr QSoundEffectcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QSoundEffectconnectNotify*(self: gen_qsoundeffect_types.QSoundEffect, signal: gen_qmetaobject.QMetaMethod): void =

  fQSoundEffect_virtualbase_connectNotify(self.h, signal.h)

type QSoundEffectconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSoundEffectconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_connectNotify(self: ptr cQSoundEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSoundEffect_connectNotify ".} =
  var nimfunc = cast[ptr QSoundEffectconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSoundEffectdisconnectNotify*(self: gen_qsoundeffect_types.QSoundEffect, signal: gen_qmetaobject.QMetaMethod): void =

  fQSoundEffect_virtualbase_disconnectNotify(self.h, signal.h)

type QSoundEffectdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSoundEffectdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_disconnectNotify(self: ptr cQSoundEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSoundEffect_disconnectNotify ".} =
  var nimfunc = cast[ptr QSoundEffectdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsoundeffect_types.QSoundEffect): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSoundEffect_staticMetaObject())
proc delete*(self: gen_qsoundeffect_types.QSoundEffect) =
  fcQSoundEffect_delete(self.h)
