import Qt6SpatialAudio_libs

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

const cflags = gorge("pkg-config -cflags Qt6SpatialAudio")
{.compile("gen_qspatialsound.cpp", cflags).}


type QSpatialSoundLoops* = cint
const
  QSpatialSoundInfinite* = -1
  QSpatialSoundOnce* = 1



type QSpatialSoundDistanceModel* = cint
const
  QSpatialSoundLogarithmic* = 0
  QSpatialSoundLinear* = 1
  QSpatialSoundManualAttenuation* = 2



import gen_qspatialsound_types
export gen_qspatialsound_types

import
  gen_qaudioengine,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qquaternion,
  gen_qurl,
  gen_qvectornd
export
  gen_qaudioengine,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qquaternion,
  gen_qurl,
  gen_qvectornd

type cQSpatialSound*{.exportc: "QSpatialSound", incompleteStruct.} = object

proc fcQSpatialSound_new(engine: pointer): ptr cQSpatialSound {.importc: "QSpatialSound_new".}
proc fcQSpatialSound_metaObject(self: pointer, ): pointer {.importc: "QSpatialSound_metaObject".}
proc fcQSpatialSound_metacast(self: pointer, param1: cstring): pointer {.importc: "QSpatialSound_metacast".}
proc fcQSpatialSound_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSpatialSound_metacall".}
proc fcQSpatialSound_tr(s: cstring): struct_miqt_string {.importc: "QSpatialSound_tr".}
proc fcQSpatialSound_setSource(self: pointer, url: pointer): void {.importc: "QSpatialSound_setSource".}
proc fcQSpatialSound_source(self: pointer, ): pointer {.importc: "QSpatialSound_source".}
proc fcQSpatialSound_loops(self: pointer, ): cint {.importc: "QSpatialSound_loops".}
proc fcQSpatialSound_setLoops(self: pointer, loops: cint): void {.importc: "QSpatialSound_setLoops".}
proc fcQSpatialSound_autoPlay(self: pointer, ): bool {.importc: "QSpatialSound_autoPlay".}
proc fcQSpatialSound_setAutoPlay(self: pointer, autoPlay: bool): void {.importc: "QSpatialSound_setAutoPlay".}
proc fcQSpatialSound_setPosition(self: pointer, pos: pointer): void {.importc: "QSpatialSound_setPosition".}
proc fcQSpatialSound_position(self: pointer, ): pointer {.importc: "QSpatialSound_position".}
proc fcQSpatialSound_setRotation(self: pointer, q: pointer): void {.importc: "QSpatialSound_setRotation".}
proc fcQSpatialSound_rotation(self: pointer, ): pointer {.importc: "QSpatialSound_rotation".}
proc fcQSpatialSound_setVolume(self: pointer, volume: float32): void {.importc: "QSpatialSound_setVolume".}
proc fcQSpatialSound_volume(self: pointer, ): float32 {.importc: "QSpatialSound_volume".}
proc fcQSpatialSound_setDistanceModel(self: pointer, model: cint): void {.importc: "QSpatialSound_setDistanceModel".}
proc fcQSpatialSound_distanceModel(self: pointer, ): cint {.importc: "QSpatialSound_distanceModel".}
proc fcQSpatialSound_setSize(self: pointer, size: float32): void {.importc: "QSpatialSound_setSize".}
proc fcQSpatialSound_size(self: pointer, ): float32 {.importc: "QSpatialSound_size".}
proc fcQSpatialSound_setDistanceCutoff(self: pointer, cutoff: float32): void {.importc: "QSpatialSound_setDistanceCutoff".}
proc fcQSpatialSound_distanceCutoff(self: pointer, ): float32 {.importc: "QSpatialSound_distanceCutoff".}
proc fcQSpatialSound_setManualAttenuation(self: pointer, attenuation: float32): void {.importc: "QSpatialSound_setManualAttenuation".}
proc fcQSpatialSound_manualAttenuation(self: pointer, ): float32 {.importc: "QSpatialSound_manualAttenuation".}
proc fcQSpatialSound_setOcclusionIntensity(self: pointer, occlusion: float32): void {.importc: "QSpatialSound_setOcclusionIntensity".}
proc fcQSpatialSound_occlusionIntensity(self: pointer, ): float32 {.importc: "QSpatialSound_occlusionIntensity".}
proc fcQSpatialSound_setDirectivity(self: pointer, alpha: float32): void {.importc: "QSpatialSound_setDirectivity".}
proc fcQSpatialSound_directivity(self: pointer, ): float32 {.importc: "QSpatialSound_directivity".}
proc fcQSpatialSound_setDirectivityOrder(self: pointer, alpha: float32): void {.importc: "QSpatialSound_setDirectivityOrder".}
proc fcQSpatialSound_directivityOrder(self: pointer, ): float32 {.importc: "QSpatialSound_directivityOrder".}
proc fcQSpatialSound_setNearFieldGain(self: pointer, gain: float32): void {.importc: "QSpatialSound_setNearFieldGain".}
proc fcQSpatialSound_nearFieldGain(self: pointer, ): float32 {.importc: "QSpatialSound_nearFieldGain".}
proc fcQSpatialSound_engine(self: pointer, ): pointer {.importc: "QSpatialSound_engine".}
proc fcQSpatialSound_sourceChanged(self: pointer, ): void {.importc: "QSpatialSound_sourceChanged".}
proc fQSpatialSound_connect_sourceChanged(self: pointer, slot: int) {.importc: "QSpatialSound_connect_sourceChanged".}
proc fcQSpatialSound_loopsChanged(self: pointer, ): void {.importc: "QSpatialSound_loopsChanged".}
proc fQSpatialSound_connect_loopsChanged(self: pointer, slot: int) {.importc: "QSpatialSound_connect_loopsChanged".}
proc fcQSpatialSound_autoPlayChanged(self: pointer, ): void {.importc: "QSpatialSound_autoPlayChanged".}
proc fQSpatialSound_connect_autoPlayChanged(self: pointer, slot: int) {.importc: "QSpatialSound_connect_autoPlayChanged".}
proc fcQSpatialSound_positionChanged(self: pointer, ): void {.importc: "QSpatialSound_positionChanged".}
proc fQSpatialSound_connect_positionChanged(self: pointer, slot: int) {.importc: "QSpatialSound_connect_positionChanged".}
proc fcQSpatialSound_rotationChanged(self: pointer, ): void {.importc: "QSpatialSound_rotationChanged".}
proc fQSpatialSound_connect_rotationChanged(self: pointer, slot: int) {.importc: "QSpatialSound_connect_rotationChanged".}
proc fcQSpatialSound_volumeChanged(self: pointer, ): void {.importc: "QSpatialSound_volumeChanged".}
proc fQSpatialSound_connect_volumeChanged(self: pointer, slot: int) {.importc: "QSpatialSound_connect_volumeChanged".}
proc fcQSpatialSound_distanceModelChanged(self: pointer, ): void {.importc: "QSpatialSound_distanceModelChanged".}
proc fQSpatialSound_connect_distanceModelChanged(self: pointer, slot: int) {.importc: "QSpatialSound_connect_distanceModelChanged".}
proc fcQSpatialSound_sizeChanged(self: pointer, ): void {.importc: "QSpatialSound_sizeChanged".}
proc fQSpatialSound_connect_sizeChanged(self: pointer, slot: int) {.importc: "QSpatialSound_connect_sizeChanged".}
proc fcQSpatialSound_distanceCutoffChanged(self: pointer, ): void {.importc: "QSpatialSound_distanceCutoffChanged".}
proc fQSpatialSound_connect_distanceCutoffChanged(self: pointer, slot: int) {.importc: "QSpatialSound_connect_distanceCutoffChanged".}
proc fcQSpatialSound_manualAttenuationChanged(self: pointer, ): void {.importc: "QSpatialSound_manualAttenuationChanged".}
proc fQSpatialSound_connect_manualAttenuationChanged(self: pointer, slot: int) {.importc: "QSpatialSound_connect_manualAttenuationChanged".}
proc fcQSpatialSound_occlusionIntensityChanged(self: pointer, ): void {.importc: "QSpatialSound_occlusionIntensityChanged".}
proc fQSpatialSound_connect_occlusionIntensityChanged(self: pointer, slot: int) {.importc: "QSpatialSound_connect_occlusionIntensityChanged".}
proc fcQSpatialSound_directivityChanged(self: pointer, ): void {.importc: "QSpatialSound_directivityChanged".}
proc fQSpatialSound_connect_directivityChanged(self: pointer, slot: int) {.importc: "QSpatialSound_connect_directivityChanged".}
proc fcQSpatialSound_directivityOrderChanged(self: pointer, ): void {.importc: "QSpatialSound_directivityOrderChanged".}
proc fQSpatialSound_connect_directivityOrderChanged(self: pointer, slot: int) {.importc: "QSpatialSound_connect_directivityOrderChanged".}
proc fcQSpatialSound_nearFieldGainChanged(self: pointer, ): void {.importc: "QSpatialSound_nearFieldGainChanged".}
proc fQSpatialSound_connect_nearFieldGainChanged(self: pointer, slot: int) {.importc: "QSpatialSound_connect_nearFieldGainChanged".}
proc fcQSpatialSound_play(self: pointer, ): void {.importc: "QSpatialSound_play".}
proc fcQSpatialSound_pause(self: pointer, ): void {.importc: "QSpatialSound_pause".}
proc fcQSpatialSound_stop(self: pointer, ): void {.importc: "QSpatialSound_stop".}
proc fcQSpatialSound_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSpatialSound_tr2".}
proc fcQSpatialSound_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSpatialSound_tr3".}
proc fQSpatialSound_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSpatialSound_virtualbase_metaObject".}
proc fcQSpatialSound_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSpatialSound_override_virtual_metaObject".}
proc fQSpatialSound_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSpatialSound_virtualbase_metacast".}
proc fcQSpatialSound_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSpatialSound_override_virtual_metacast".}
proc fQSpatialSound_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSpatialSound_virtualbase_metacall".}
proc fcQSpatialSound_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSpatialSound_override_virtual_metacall".}
proc fQSpatialSound_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSpatialSound_virtualbase_event".}
proc fcQSpatialSound_override_virtual_event(self: pointer, slot: int) {.importc: "QSpatialSound_override_virtual_event".}
proc fQSpatialSound_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSpatialSound_virtualbase_eventFilter".}
proc fcQSpatialSound_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSpatialSound_override_virtual_eventFilter".}
proc fQSpatialSound_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSpatialSound_virtualbase_timerEvent".}
proc fcQSpatialSound_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSpatialSound_override_virtual_timerEvent".}
proc fQSpatialSound_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSpatialSound_virtualbase_childEvent".}
proc fcQSpatialSound_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSpatialSound_override_virtual_childEvent".}
proc fQSpatialSound_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSpatialSound_virtualbase_customEvent".}
proc fcQSpatialSound_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSpatialSound_override_virtual_customEvent".}
proc fQSpatialSound_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSpatialSound_virtualbase_connectNotify".}
proc fcQSpatialSound_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSpatialSound_override_virtual_connectNotify".}
proc fQSpatialSound_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSpatialSound_virtualbase_disconnectNotify".}
proc fcQSpatialSound_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSpatialSound_override_virtual_disconnectNotify".}
proc fcQSpatialSound_staticMetaObject(): pointer {.importc: "QSpatialSound_staticMetaObject".}
proc fcQSpatialSound_delete(self: pointer) {.importc: "QSpatialSound_delete".}


func init*(T: type QSpatialSound, h: ptr cQSpatialSound): QSpatialSound =
  T(h: h)
proc create*(T: type QSpatialSound, engine: gen_qaudioengine.QAudioEngine): QSpatialSound =

  QSpatialSound.init(fcQSpatialSound_new(engine.h))
proc metaObject*(self: QSpatialSound, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSpatialSound_metaObject(self.h))

proc metacast*(self: QSpatialSound, param1: cstring): pointer =

  fcQSpatialSound_metacast(self.h, param1)

proc metacall*(self: QSpatialSound, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSpatialSound_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSpatialSound, s: cstring): string =

  let v_ms = fcQSpatialSound_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: QSpatialSound, url: gen_qurl.QUrl): void =

  fcQSpatialSound_setSource(self.h, url.h)

proc source*(self: QSpatialSound, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQSpatialSound_source(self.h))

proc loops*(self: QSpatialSound, ): cint =

  fcQSpatialSound_loops(self.h)

proc setLoops*(self: QSpatialSound, loops: cint): void =

  fcQSpatialSound_setLoops(self.h, loops)

proc autoPlay*(self: QSpatialSound, ): bool =

  fcQSpatialSound_autoPlay(self.h)

proc setAutoPlay*(self: QSpatialSound, autoPlay: bool): void =

  fcQSpatialSound_setAutoPlay(self.h, autoPlay)

proc setPosition*(self: QSpatialSound, pos: gen_qvectornd.QVector3D): void =

  fcQSpatialSound_setPosition(self.h, pos.h)

proc position*(self: QSpatialSound, ): gen_qvectornd.QVector3D =

  gen_qvectornd.QVector3D(h: fcQSpatialSound_position(self.h))

proc setRotation*(self: QSpatialSound, q: gen_qquaternion.QQuaternion): void =

  fcQSpatialSound_setRotation(self.h, q.h)

proc rotation*(self: QSpatialSound, ): gen_qquaternion.QQuaternion =

  gen_qquaternion.QQuaternion(h: fcQSpatialSound_rotation(self.h))

proc setVolume*(self: QSpatialSound, volume: float32): void =

  fcQSpatialSound_setVolume(self.h, volume)

proc volume*(self: QSpatialSound, ): float32 =

  fcQSpatialSound_volume(self.h)

proc setDistanceModel*(self: QSpatialSound, model: QSpatialSoundDistanceModel): void =

  fcQSpatialSound_setDistanceModel(self.h, cint(model))

proc distanceModel*(self: QSpatialSound, ): QSpatialSoundDistanceModel =

  QSpatialSoundDistanceModel(fcQSpatialSound_distanceModel(self.h))

proc setSize*(self: QSpatialSound, size: float32): void =

  fcQSpatialSound_setSize(self.h, size)

proc size*(self: QSpatialSound, ): float32 =

  fcQSpatialSound_size(self.h)

proc setDistanceCutoff*(self: QSpatialSound, cutoff: float32): void =

  fcQSpatialSound_setDistanceCutoff(self.h, cutoff)

proc distanceCutoff*(self: QSpatialSound, ): float32 =

  fcQSpatialSound_distanceCutoff(self.h)

proc setManualAttenuation*(self: QSpatialSound, attenuation: float32): void =

  fcQSpatialSound_setManualAttenuation(self.h, attenuation)

proc manualAttenuation*(self: QSpatialSound, ): float32 =

  fcQSpatialSound_manualAttenuation(self.h)

proc setOcclusionIntensity*(self: QSpatialSound, occlusion: float32): void =

  fcQSpatialSound_setOcclusionIntensity(self.h, occlusion)

proc occlusionIntensity*(self: QSpatialSound, ): float32 =

  fcQSpatialSound_occlusionIntensity(self.h)

proc setDirectivity*(self: QSpatialSound, alpha: float32): void =

  fcQSpatialSound_setDirectivity(self.h, alpha)

proc directivity*(self: QSpatialSound, ): float32 =

  fcQSpatialSound_directivity(self.h)

proc setDirectivityOrder*(self: QSpatialSound, alpha: float32): void =

  fcQSpatialSound_setDirectivityOrder(self.h, alpha)

proc directivityOrder*(self: QSpatialSound, ): float32 =

  fcQSpatialSound_directivityOrder(self.h)

proc setNearFieldGain*(self: QSpatialSound, gain: float32): void =

  fcQSpatialSound_setNearFieldGain(self.h, gain)

proc nearFieldGain*(self: QSpatialSound, ): float32 =

  fcQSpatialSound_nearFieldGain(self.h)

proc engine*(self: QSpatialSound, ): gen_qaudioengine.QAudioEngine =

  gen_qaudioengine.QAudioEngine(h: fcQSpatialSound_engine(self.h))

proc sourceChanged*(self: QSpatialSound, ): void =

  fcQSpatialSound_sourceChanged(self.h)

proc miqt_exec_callback_QSpatialSound_sourceChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsourceChanged*(self: QSpatialSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpatialSound_connect_sourceChanged(self.h, cast[int](addr tmp[]))
proc loopsChanged*(self: QSpatialSound, ): void =

  fcQSpatialSound_loopsChanged(self.h)

proc miqt_exec_callback_QSpatialSound_loopsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloopsChanged*(self: QSpatialSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpatialSound_connect_loopsChanged(self.h, cast[int](addr tmp[]))
proc autoPlayChanged*(self: QSpatialSound, ): void =

  fcQSpatialSound_autoPlayChanged(self.h)

proc miqt_exec_callback_QSpatialSound_autoPlayChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onautoPlayChanged*(self: QSpatialSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpatialSound_connect_autoPlayChanged(self.h, cast[int](addr tmp[]))
proc positionChanged*(self: QSpatialSound, ): void =

  fcQSpatialSound_positionChanged(self.h)

proc miqt_exec_callback_QSpatialSound_positionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onpositionChanged*(self: QSpatialSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpatialSound_connect_positionChanged(self.h, cast[int](addr tmp[]))
proc rotationChanged*(self: QSpatialSound, ): void =

  fcQSpatialSound_rotationChanged(self.h)

proc miqt_exec_callback_QSpatialSound_rotationChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onrotationChanged*(self: QSpatialSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpatialSound_connect_rotationChanged(self.h, cast[int](addr tmp[]))
proc volumeChanged*(self: QSpatialSound, ): void =

  fcQSpatialSound_volumeChanged(self.h)

proc miqt_exec_callback_QSpatialSound_volumeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvolumeChanged*(self: QSpatialSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpatialSound_connect_volumeChanged(self.h, cast[int](addr tmp[]))
proc distanceModelChanged*(self: QSpatialSound, ): void =

  fcQSpatialSound_distanceModelChanged(self.h)

proc miqt_exec_callback_QSpatialSound_distanceModelChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondistanceModelChanged*(self: QSpatialSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpatialSound_connect_distanceModelChanged(self.h, cast[int](addr tmp[]))
proc sizeChanged*(self: QSpatialSound, ): void =

  fcQSpatialSound_sizeChanged(self.h)

proc miqt_exec_callback_QSpatialSound_sizeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsizeChanged*(self: QSpatialSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpatialSound_connect_sizeChanged(self.h, cast[int](addr tmp[]))
proc distanceCutoffChanged*(self: QSpatialSound, ): void =

  fcQSpatialSound_distanceCutoffChanged(self.h)

proc miqt_exec_callback_QSpatialSound_distanceCutoffChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondistanceCutoffChanged*(self: QSpatialSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpatialSound_connect_distanceCutoffChanged(self.h, cast[int](addr tmp[]))
proc manualAttenuationChanged*(self: QSpatialSound, ): void =

  fcQSpatialSound_manualAttenuationChanged(self.h)

proc miqt_exec_callback_QSpatialSound_manualAttenuationChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmanualAttenuationChanged*(self: QSpatialSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpatialSound_connect_manualAttenuationChanged(self.h, cast[int](addr tmp[]))
proc occlusionIntensityChanged*(self: QSpatialSound, ): void =

  fcQSpatialSound_occlusionIntensityChanged(self.h)

proc miqt_exec_callback_QSpatialSound_occlusionIntensityChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onocclusionIntensityChanged*(self: QSpatialSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpatialSound_connect_occlusionIntensityChanged(self.h, cast[int](addr tmp[]))
proc directivityChanged*(self: QSpatialSound, ): void =

  fcQSpatialSound_directivityChanged(self.h)

proc miqt_exec_callback_QSpatialSound_directivityChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondirectivityChanged*(self: QSpatialSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpatialSound_connect_directivityChanged(self.h, cast[int](addr tmp[]))
proc directivityOrderChanged*(self: QSpatialSound, ): void =

  fcQSpatialSound_directivityOrderChanged(self.h)

proc miqt_exec_callback_QSpatialSound_directivityOrderChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondirectivityOrderChanged*(self: QSpatialSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpatialSound_connect_directivityOrderChanged(self.h, cast[int](addr tmp[]))
proc nearFieldGainChanged*(self: QSpatialSound, ): void =

  fcQSpatialSound_nearFieldGainChanged(self.h)

proc miqt_exec_callback_QSpatialSound_nearFieldGainChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onnearFieldGainChanged*(self: QSpatialSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpatialSound_connect_nearFieldGainChanged(self.h, cast[int](addr tmp[]))
proc play*(self: QSpatialSound, ): void =

  fcQSpatialSound_play(self.h)

proc pause*(self: QSpatialSound, ): void =

  fcQSpatialSound_pause(self.h)

proc stop*(self: QSpatialSound, ): void =

  fcQSpatialSound_stop(self.h)

proc tr2*(_: type QSpatialSound, s: cstring, c: cstring): string =

  let v_ms = fcQSpatialSound_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSpatialSound, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSpatialSound_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QSpatialSound, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQSpatialSound_virtualbase_metaObject(self.h))

type QSpatialSoundmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QSpatialSound, slot: proc(super: QSpatialSoundmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QSpatialSoundmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpatialSound_metaObject(self: ptr cQSpatialSound, slot: int): pointer {.exportc: "miqt_exec_callback_QSpatialSound_metaObject ".} =
  type Cb = proc(super: QSpatialSoundmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QSpatialSound(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QSpatialSound, param1: cstring): pointer =


  fQSpatialSound_virtualbase_metacast(self.h, param1)

type QSpatialSoundmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QSpatialSound, slot: proc(super: QSpatialSoundmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QSpatialSoundmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpatialSound_metacast(self: ptr cQSpatialSound, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSpatialSound_metacast ".} =
  type Cb = proc(super: QSpatialSoundmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QSpatialSound(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QSpatialSound, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSpatialSound_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSpatialSoundmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSpatialSound, slot: proc(super: QSpatialSoundmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSpatialSoundmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpatialSound_metacall(self: ptr cQSpatialSound, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSpatialSound_metacall ".} =
  type Cb = proc(super: QSpatialSoundmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSpatialSound(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QSpatialSound, event: gen_qcoreevent.QEvent): bool =


  fQSpatialSound_virtualbase_event(self.h, event.h)

type QSpatialSoundeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSpatialSound, slot: proc(super: QSpatialSoundeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSpatialSoundeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpatialSound_event(self: ptr cQSpatialSound, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSpatialSound_event ".} =
  type Cb = proc(super: QSpatialSoundeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSpatialSound(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSpatialSound, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSpatialSound_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSpatialSoundeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSpatialSound, slot: proc(super: QSpatialSoundeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSpatialSoundeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpatialSound_eventFilter(self: ptr cQSpatialSound, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSpatialSound_eventFilter ".} =
  type Cb = proc(super: QSpatialSoundeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSpatialSound(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSpatialSound, event: gen_qcoreevent.QTimerEvent): void =


  fQSpatialSound_virtualbase_timerEvent(self.h, event.h)

type QSpatialSoundtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSpatialSound, slot: proc(super: QSpatialSoundtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpatialSoundtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpatialSound_timerEvent(self: ptr cQSpatialSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpatialSound_timerEvent ".} =
  type Cb = proc(super: QSpatialSoundtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSpatialSound(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSpatialSound, event: gen_qcoreevent.QChildEvent): void =


  fQSpatialSound_virtualbase_childEvent(self.h, event.h)

type QSpatialSoundchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSpatialSound, slot: proc(super: QSpatialSoundchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpatialSoundchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpatialSound_childEvent(self: ptr cQSpatialSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpatialSound_childEvent ".} =
  type Cb = proc(super: QSpatialSoundchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSpatialSound(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSpatialSound, event: gen_qcoreevent.QEvent): void =


  fQSpatialSound_virtualbase_customEvent(self.h, event.h)

type QSpatialSoundcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSpatialSound, slot: proc(super: QSpatialSoundcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpatialSoundcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpatialSound_customEvent(self: ptr cQSpatialSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpatialSound_customEvent ".} =
  type Cb = proc(super: QSpatialSoundcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSpatialSound(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSpatialSound, signal: gen_qmetaobject.QMetaMethod): void =


  fQSpatialSound_virtualbase_connectNotify(self.h, signal.h)

type QSpatialSoundconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSpatialSound, slot: proc(super: QSpatialSoundconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSpatialSoundconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpatialSound_connectNotify(self: ptr cQSpatialSound, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSpatialSound_connectNotify ".} =
  type Cb = proc(super: QSpatialSoundconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSpatialSound(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSpatialSound, signal: gen_qmetaobject.QMetaMethod): void =


  fQSpatialSound_virtualbase_disconnectNotify(self.h, signal.h)

type QSpatialSounddisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSpatialSound, slot: proc(super: QSpatialSounddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSpatialSounddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpatialSound_disconnectNotify(self: ptr cQSpatialSound, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSpatialSound_disconnectNotify ".} =
  type Cb = proc(super: QSpatialSounddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSpatialSound(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSpatialSound): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSpatialSound_staticMetaObject())
proc delete*(self: QSpatialSound) =
  fcQSpatialSound_delete(self.h)
