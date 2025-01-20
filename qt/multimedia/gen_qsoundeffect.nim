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
{.compile("gen_qsoundeffect.cpp", cflags).}


type QSoundEffectLoop* = cint
const
  QSoundEffectInfinite* = -2



type QSoundEffectStatus* = cint
const
  QSoundEffectNull* = 0
  QSoundEffectLoading* = 1
  QSoundEffectReady* = 2
  QSoundEffectError* = 3



import gen_qsoundeffect_types
export gen_qsoundeffect_types

import
  gen_qaudiodeviceinfo,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl
export
  gen_qaudiodeviceinfo,
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
proc fcQSoundEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QSoundEffect_trUtf8".}
proc fcQSoundEffect_supportedMimeTypes(): struct_miqt_array {.importc: "QSoundEffect_supportedMimeTypes".}
proc fcQSoundEffect_source(self: pointer, ): pointer {.importc: "QSoundEffect_source".}
proc fcQSoundEffect_setSource(self: pointer, url: pointer): void {.importc: "QSoundEffect_setSource".}
proc fcQSoundEffect_loopCount(self: pointer, ): cint {.importc: "QSoundEffect_loopCount".}
proc fcQSoundEffect_loopsRemaining(self: pointer, ): cint {.importc: "QSoundEffect_loopsRemaining".}
proc fcQSoundEffect_setLoopCount(self: pointer, loopCount: cint): void {.importc: "QSoundEffect_setLoopCount".}
proc fcQSoundEffect_volume(self: pointer, ): float64 {.importc: "QSoundEffect_volume".}
proc fcQSoundEffect_setVolume(self: pointer, volume: float64): void {.importc: "QSoundEffect_setVolume".}
proc fcQSoundEffect_isMuted(self: pointer, ): bool {.importc: "QSoundEffect_isMuted".}
proc fcQSoundEffect_setMuted(self: pointer, muted: bool): void {.importc: "QSoundEffect_setMuted".}
proc fcQSoundEffect_isLoaded(self: pointer, ): bool {.importc: "QSoundEffect_isLoaded".}
proc fcQSoundEffect_isPlaying(self: pointer, ): bool {.importc: "QSoundEffect_isPlaying".}
proc fcQSoundEffect_status(self: pointer, ): cint {.importc: "QSoundEffect_status".}
proc fcQSoundEffect_category(self: pointer, ): struct_miqt_string {.importc: "QSoundEffect_category".}
proc fcQSoundEffect_setCategory(self: pointer, category: struct_miqt_string): void {.importc: "QSoundEffect_setCategory".}
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
proc fcQSoundEffect_categoryChanged(self: pointer, ): void {.importc: "QSoundEffect_categoryChanged".}
proc fQSoundEffect_connect_categoryChanged(self: pointer, slot: int) {.importc: "QSoundEffect_connect_categoryChanged".}
proc fcQSoundEffect_play(self: pointer, ): void {.importc: "QSoundEffect_play".}
proc fcQSoundEffect_stop(self: pointer, ): void {.importc: "QSoundEffect_stop".}
proc fcQSoundEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSoundEffect_tr2".}
proc fcQSoundEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSoundEffect_tr3".}
proc fcQSoundEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSoundEffect_trUtf82".}
proc fcQSoundEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSoundEffect_trUtf83".}
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


func init*(T: type QSoundEffect, h: ptr cQSoundEffect): QSoundEffect =
  T(h: h)
proc create*(T: type QSoundEffect, ): QSoundEffect =

  QSoundEffect.init(fcQSoundEffect_new())
proc create*(T: type QSoundEffect, audioDevice: gen_qaudiodeviceinfo.QAudioDeviceInfo): QSoundEffect =

  QSoundEffect.init(fcQSoundEffect_new2(audioDevice.h))
proc create2*(T: type QSoundEffect, parent: gen_qobject.QObject): QSoundEffect =

  QSoundEffect.init(fcQSoundEffect_new3(parent.h))
proc create*(T: type QSoundEffect, audioDevice: gen_qaudiodeviceinfo.QAudioDeviceInfo, parent: gen_qobject.QObject): QSoundEffect =

  QSoundEffect.init(fcQSoundEffect_new4(audioDevice.h, parent.h))
proc metaObject*(self: QSoundEffect, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSoundEffect_metaObject(self.h))

proc metacast*(self: QSoundEffect, param1: cstring): pointer =

  fcQSoundEffect_metacast(self.h, param1)

proc metacall*(self: QSoundEffect, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSoundEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSoundEffect, s: cstring): string =

  let v_ms = fcQSoundEffect_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QSoundEffect, s: cstring): string =

  let v_ms = fcQSoundEffect_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedMimeTypes*(_: type QSoundEffect, ): seq[string] =

  var v_ma = fcQSoundEffect_supportedMimeTypes()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc source*(self: QSoundEffect, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQSoundEffect_source(self.h))

proc setSource*(self: QSoundEffect, url: gen_qurl.QUrl): void =

  fcQSoundEffect_setSource(self.h, url.h)

proc loopCount*(self: QSoundEffect, ): cint =

  fcQSoundEffect_loopCount(self.h)

proc loopsRemaining*(self: QSoundEffect, ): cint =

  fcQSoundEffect_loopsRemaining(self.h)

proc setLoopCount*(self: QSoundEffect, loopCount: cint): void =

  fcQSoundEffect_setLoopCount(self.h, loopCount)

proc volume*(self: QSoundEffect, ): float64 =

  fcQSoundEffect_volume(self.h)

proc setVolume*(self: QSoundEffect, volume: float64): void =

  fcQSoundEffect_setVolume(self.h, volume)

proc isMuted*(self: QSoundEffect, ): bool =

  fcQSoundEffect_isMuted(self.h)

proc setMuted*(self: QSoundEffect, muted: bool): void =

  fcQSoundEffect_setMuted(self.h, muted)

proc isLoaded*(self: QSoundEffect, ): bool =

  fcQSoundEffect_isLoaded(self.h)

proc isPlaying*(self: QSoundEffect, ): bool =

  fcQSoundEffect_isPlaying(self.h)

proc status*(self: QSoundEffect, ): QSoundEffectStatus =

  QSoundEffectStatus(fcQSoundEffect_status(self.h))

proc category*(self: QSoundEffect, ): string =

  let v_ms = fcQSoundEffect_category(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCategory*(self: QSoundEffect, category: string): void =

  fcQSoundEffect_setCategory(self.h, struct_miqt_string(data: category, len: csize_t(len(category))))

proc sourceChanged*(self: QSoundEffect, ): void =

  fcQSoundEffect_sourceChanged(self.h)

proc miqt_exec_callback_QSoundEffect_sourceChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsourceChanged*(self: QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_sourceChanged(self.h, cast[int](addr tmp[]))
proc loopCountChanged*(self: QSoundEffect, ): void =

  fcQSoundEffect_loopCountChanged(self.h)

proc miqt_exec_callback_QSoundEffect_loopCountChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloopCountChanged*(self: QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_loopCountChanged(self.h, cast[int](addr tmp[]))
proc loopsRemainingChanged*(self: QSoundEffect, ): void =

  fcQSoundEffect_loopsRemainingChanged(self.h)

proc miqt_exec_callback_QSoundEffect_loopsRemainingChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloopsRemainingChanged*(self: QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_loopsRemainingChanged(self.h, cast[int](addr tmp[]))
proc volumeChanged*(self: QSoundEffect, ): void =

  fcQSoundEffect_volumeChanged(self.h)

proc miqt_exec_callback_QSoundEffect_volumeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvolumeChanged*(self: QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_volumeChanged(self.h, cast[int](addr tmp[]))
proc mutedChanged*(self: QSoundEffect, ): void =

  fcQSoundEffect_mutedChanged(self.h)

proc miqt_exec_callback_QSoundEffect_mutedChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmutedChanged*(self: QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_mutedChanged(self.h, cast[int](addr tmp[]))
proc loadedChanged*(self: QSoundEffect, ): void =

  fcQSoundEffect_loadedChanged(self.h)

proc miqt_exec_callback_QSoundEffect_loadedChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloadedChanged*(self: QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_loadedChanged(self.h, cast[int](addr tmp[]))
proc playingChanged*(self: QSoundEffect, ): void =

  fcQSoundEffect_playingChanged(self.h)

proc miqt_exec_callback_QSoundEffect_playingChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onplayingChanged*(self: QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_playingChanged(self.h, cast[int](addr tmp[]))
proc statusChanged*(self: QSoundEffect, ): void =

  fcQSoundEffect_statusChanged(self.h)

proc miqt_exec_callback_QSoundEffect_statusChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onstatusChanged*(self: QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_statusChanged(self.h, cast[int](addr tmp[]))
proc categoryChanged*(self: QSoundEffect, ): void =

  fcQSoundEffect_categoryChanged(self.h)

proc miqt_exec_callback_QSoundEffect_categoryChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncategoryChanged*(self: QSoundEffect, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSoundEffect_connect_categoryChanged(self.h, cast[int](addr tmp[]))
proc play*(self: QSoundEffect, ): void =

  fcQSoundEffect_play(self.h)

proc stop*(self: QSoundEffect, ): void =

  fcQSoundEffect_stop(self.h)

proc tr2*(_: type QSoundEffect, s: cstring, c: cstring): string =

  let v_ms = fcQSoundEffect_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSoundEffect, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSoundEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QSoundEffect, s: cstring, c: cstring): string =

  let v_ms = fcQSoundEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QSoundEffect, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSoundEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QSoundEffect, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQSoundEffect_virtualbase_metaObject(self.h))

type QSoundEffectmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QSoundEffect, slot: proc(super: QSoundEffectmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QSoundEffectmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_metaObject(self: ptr cQSoundEffect, slot: int): pointer {.exportc: "miqt_exec_callback_QSoundEffect_metaObject ".} =
  type Cb = proc(super: QSoundEffectmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QSoundEffect(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QSoundEffect, param1: cstring): pointer =


  fQSoundEffect_virtualbase_metacast(self.h, param1)

type QSoundEffectmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QSoundEffect, slot: proc(super: QSoundEffectmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QSoundEffectmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_metacast(self: ptr cQSoundEffect, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSoundEffect_metacast ".} =
  type Cb = proc(super: QSoundEffectmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QSoundEffect(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QSoundEffect, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSoundEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSoundEffectmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSoundEffect, slot: proc(super: QSoundEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSoundEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_metacall(self: ptr cQSoundEffect, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSoundEffect_metacall ".} =
  type Cb = proc(super: QSoundEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSoundEffect(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QSoundEffect, event: gen_qcoreevent.QEvent): bool =


  fQSoundEffect_virtualbase_event(self.h, event.h)

type QSoundEffecteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSoundEffect, slot: proc(super: QSoundEffecteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSoundEffecteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_event(self: ptr cQSoundEffect, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSoundEffect_event ".} =
  type Cb = proc(super: QSoundEffecteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSoundEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSoundEffect, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSoundEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSoundEffecteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSoundEffect, slot: proc(super: QSoundEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSoundEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_eventFilter(self: ptr cQSoundEffect, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSoundEffect_eventFilter ".} =
  type Cb = proc(super: QSoundEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSoundEffect(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSoundEffect, event: gen_qcoreevent.QTimerEvent): void =


  fQSoundEffect_virtualbase_timerEvent(self.h, event.h)

type QSoundEffecttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSoundEffect, slot: proc(super: QSoundEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSoundEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_timerEvent(self: ptr cQSoundEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSoundEffect_timerEvent ".} =
  type Cb = proc(super: QSoundEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSoundEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSoundEffect, event: gen_qcoreevent.QChildEvent): void =


  fQSoundEffect_virtualbase_childEvent(self.h, event.h)

type QSoundEffectchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSoundEffect, slot: proc(super: QSoundEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSoundEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_childEvent(self: ptr cQSoundEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSoundEffect_childEvent ".} =
  type Cb = proc(super: QSoundEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSoundEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSoundEffect, event: gen_qcoreevent.QEvent): void =


  fQSoundEffect_virtualbase_customEvent(self.h, event.h)

type QSoundEffectcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSoundEffect, slot: proc(super: QSoundEffectcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSoundEffectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_customEvent(self: ptr cQSoundEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSoundEffect_customEvent ".} =
  type Cb = proc(super: QSoundEffectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSoundEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSoundEffect, signal: gen_qmetaobject.QMetaMethod): void =


  fQSoundEffect_virtualbase_connectNotify(self.h, signal.h)

type QSoundEffectconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSoundEffect, slot: proc(super: QSoundEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSoundEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_connectNotify(self: ptr cQSoundEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSoundEffect_connectNotify ".} =
  type Cb = proc(super: QSoundEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSoundEffect(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSoundEffect, signal: gen_qmetaobject.QMetaMethod): void =


  fQSoundEffect_virtualbase_disconnectNotify(self.h, signal.h)

type QSoundEffectdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSoundEffect, slot: proc(super: QSoundEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSoundEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSoundEffect_disconnectNotify(self: ptr cQSoundEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSoundEffect_disconnectNotify ".} =
  type Cb = proc(super: QSoundEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSoundEffect(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSoundEffect): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSoundEffect_staticMetaObject())
proc delete*(self: QSoundEffect) =
  fcQSoundEffect_delete(self.h)
