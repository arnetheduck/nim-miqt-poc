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
{.compile("gen_qambientsound.cpp", cflags).}


type QAmbientSoundLoops* = cint
const
  QAmbientSoundInfinite* = -1
  QAmbientSoundOnce* = 1



import gen_qambientsound_types
export gen_qambientsound_types

import
  gen_qaudioengine,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl
export
  gen_qaudioengine,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl

type cQAmbientSound*{.exportc: "QAmbientSound", incompleteStruct.} = object

proc fcQAmbientSound_new(engine: pointer): ptr cQAmbientSound {.importc: "QAmbientSound_new".}
proc fcQAmbientSound_metaObject(self: pointer, ): pointer {.importc: "QAmbientSound_metaObject".}
proc fcQAmbientSound_metacast(self: pointer, param1: cstring): pointer {.importc: "QAmbientSound_metacast".}
proc fcQAmbientSound_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAmbientSound_metacall".}
proc fcQAmbientSound_tr(s: cstring): struct_miqt_string {.importc: "QAmbientSound_tr".}
proc fcQAmbientSound_setSource(self: pointer, url: pointer): void {.importc: "QAmbientSound_setSource".}
proc fcQAmbientSound_source(self: pointer, ): pointer {.importc: "QAmbientSound_source".}
proc fcQAmbientSound_loops(self: pointer, ): cint {.importc: "QAmbientSound_loops".}
proc fcQAmbientSound_setLoops(self: pointer, loops: cint): void {.importc: "QAmbientSound_setLoops".}
proc fcQAmbientSound_autoPlay(self: pointer, ): bool {.importc: "QAmbientSound_autoPlay".}
proc fcQAmbientSound_setAutoPlay(self: pointer, autoPlay: bool): void {.importc: "QAmbientSound_setAutoPlay".}
proc fcQAmbientSound_setVolume(self: pointer, volume: float32): void {.importc: "QAmbientSound_setVolume".}
proc fcQAmbientSound_volume(self: pointer, ): float32 {.importc: "QAmbientSound_volume".}
proc fcQAmbientSound_engine(self: pointer, ): pointer {.importc: "QAmbientSound_engine".}
proc fcQAmbientSound_sourceChanged(self: pointer, ): void {.importc: "QAmbientSound_sourceChanged".}
proc fQAmbientSound_connect_sourceChanged(self: pointer, slot: int) {.importc: "QAmbientSound_connect_sourceChanged".}
proc fcQAmbientSound_loopsChanged(self: pointer, ): void {.importc: "QAmbientSound_loopsChanged".}
proc fQAmbientSound_connect_loopsChanged(self: pointer, slot: int) {.importc: "QAmbientSound_connect_loopsChanged".}
proc fcQAmbientSound_autoPlayChanged(self: pointer, ): void {.importc: "QAmbientSound_autoPlayChanged".}
proc fQAmbientSound_connect_autoPlayChanged(self: pointer, slot: int) {.importc: "QAmbientSound_connect_autoPlayChanged".}
proc fcQAmbientSound_volumeChanged(self: pointer, ): void {.importc: "QAmbientSound_volumeChanged".}
proc fQAmbientSound_connect_volumeChanged(self: pointer, slot: int) {.importc: "QAmbientSound_connect_volumeChanged".}
proc fcQAmbientSound_play(self: pointer, ): void {.importc: "QAmbientSound_play".}
proc fcQAmbientSound_pause(self: pointer, ): void {.importc: "QAmbientSound_pause".}
proc fcQAmbientSound_stop(self: pointer, ): void {.importc: "QAmbientSound_stop".}
proc fcQAmbientSound_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAmbientSound_tr2".}
proc fcQAmbientSound_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAmbientSound_tr3".}
proc fQAmbientSound_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAmbientSound_virtualbase_metaObject".}
proc fcQAmbientSound_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_metaObject".}
proc fQAmbientSound_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAmbientSound_virtualbase_metacast".}
proc fcQAmbientSound_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_metacast".}
proc fQAmbientSound_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAmbientSound_virtualbase_metacall".}
proc fcQAmbientSound_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_metacall".}
proc fQAmbientSound_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAmbientSound_virtualbase_event".}
proc fcQAmbientSound_override_virtual_event(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_event".}
proc fQAmbientSound_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAmbientSound_virtualbase_eventFilter".}
proc fcQAmbientSound_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_eventFilter".}
proc fQAmbientSound_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAmbientSound_virtualbase_timerEvent".}
proc fcQAmbientSound_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_timerEvent".}
proc fQAmbientSound_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAmbientSound_virtualbase_childEvent".}
proc fcQAmbientSound_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_childEvent".}
proc fQAmbientSound_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAmbientSound_virtualbase_customEvent".}
proc fcQAmbientSound_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_customEvent".}
proc fQAmbientSound_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAmbientSound_virtualbase_connectNotify".}
proc fcQAmbientSound_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_connectNotify".}
proc fQAmbientSound_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAmbientSound_virtualbase_disconnectNotify".}
proc fcQAmbientSound_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_disconnectNotify".}
proc fcQAmbientSound_staticMetaObject(): pointer {.importc: "QAmbientSound_staticMetaObject".}
proc fcQAmbientSound_delete(self: pointer) {.importc: "QAmbientSound_delete".}


func init*(T: type QAmbientSound, h: ptr cQAmbientSound): QAmbientSound =
  T(h: h)
proc create*(T: type QAmbientSound, engine: gen_qaudioengine.QAudioEngine): QAmbientSound =

  QAmbientSound.init(fcQAmbientSound_new(engine.h))
proc metaObject*(self: QAmbientSound, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAmbientSound_metaObject(self.h))

proc metacast*(self: QAmbientSound, param1: cstring): pointer =

  fcQAmbientSound_metacast(self.h, param1)

proc metacall*(self: QAmbientSound, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAmbientSound_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAmbientSound, s: cstring): string =

  let v_ms = fcQAmbientSound_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: QAmbientSound, url: gen_qurl.QUrl): void =

  fcQAmbientSound_setSource(self.h, url.h)

proc source*(self: QAmbientSound, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQAmbientSound_source(self.h))

proc loops*(self: QAmbientSound, ): cint =

  fcQAmbientSound_loops(self.h)

proc setLoops*(self: QAmbientSound, loops: cint): void =

  fcQAmbientSound_setLoops(self.h, loops)

proc autoPlay*(self: QAmbientSound, ): bool =

  fcQAmbientSound_autoPlay(self.h)

proc setAutoPlay*(self: QAmbientSound, autoPlay: bool): void =

  fcQAmbientSound_setAutoPlay(self.h, autoPlay)

proc setVolume*(self: QAmbientSound, volume: float32): void =

  fcQAmbientSound_setVolume(self.h, volume)

proc volume*(self: QAmbientSound, ): float32 =

  fcQAmbientSound_volume(self.h)

proc engine*(self: QAmbientSound, ): gen_qaudioengine.QAudioEngine =

  gen_qaudioengine.QAudioEngine(h: fcQAmbientSound_engine(self.h))

proc sourceChanged*(self: QAmbientSound, ): void =

  fcQAmbientSound_sourceChanged(self.h)

proc miqt_exec_callback_QAmbientSound_sourceChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsourceChanged*(self: QAmbientSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAmbientSound_connect_sourceChanged(self.h, cast[int](addr tmp[]))
proc loopsChanged*(self: QAmbientSound, ): void =

  fcQAmbientSound_loopsChanged(self.h)

proc miqt_exec_callback_QAmbientSound_loopsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloopsChanged*(self: QAmbientSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAmbientSound_connect_loopsChanged(self.h, cast[int](addr tmp[]))
proc autoPlayChanged*(self: QAmbientSound, ): void =

  fcQAmbientSound_autoPlayChanged(self.h)

proc miqt_exec_callback_QAmbientSound_autoPlayChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onautoPlayChanged*(self: QAmbientSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAmbientSound_connect_autoPlayChanged(self.h, cast[int](addr tmp[]))
proc volumeChanged*(self: QAmbientSound, ): void =

  fcQAmbientSound_volumeChanged(self.h)

proc miqt_exec_callback_QAmbientSound_volumeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvolumeChanged*(self: QAmbientSound, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAmbientSound_connect_volumeChanged(self.h, cast[int](addr tmp[]))
proc play*(self: QAmbientSound, ): void =

  fcQAmbientSound_play(self.h)

proc pause*(self: QAmbientSound, ): void =

  fcQAmbientSound_pause(self.h)

proc stop*(self: QAmbientSound, ): void =

  fcQAmbientSound_stop(self.h)

proc tr2*(_: type QAmbientSound, s: cstring, c: cstring): string =

  let v_ms = fcQAmbientSound_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAmbientSound, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAmbientSound_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QAmbientSound, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQAmbientSound_virtualbase_metaObject(self.h))

type QAmbientSoundmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QAmbientSound, slot: proc(super: QAmbientSoundmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QAmbientSoundmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_metaObject(self: ptr cQAmbientSound, slot: int): pointer {.exportc: "miqt_exec_callback_QAmbientSound_metaObject ".} =
  type Cb = proc(super: QAmbientSoundmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QAmbientSound(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QAmbientSound, param1: cstring): pointer =


  fQAmbientSound_virtualbase_metacast(self.h, param1)

type QAmbientSoundmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QAmbientSound, slot: proc(super: QAmbientSoundmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QAmbientSoundmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_metacast(self: ptr cQAmbientSound, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAmbientSound_metacast ".} =
  type Cb = proc(super: QAmbientSoundmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QAmbientSound(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QAmbientSound, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAmbientSound_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAmbientSoundmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAmbientSound, slot: proc(super: QAmbientSoundmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAmbientSoundmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_metacall(self: ptr cQAmbientSound, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAmbientSound_metacall ".} =
  type Cb = proc(super: QAmbientSoundmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAmbientSound(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QAmbientSound, event: gen_qcoreevent.QEvent): bool =


  fQAmbientSound_virtualbase_event(self.h, event.h)

type QAmbientSoundeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAmbientSound, slot: proc(super: QAmbientSoundeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAmbientSoundeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_event(self: ptr cQAmbientSound, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAmbientSound_event ".} =
  type Cb = proc(super: QAmbientSoundeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAmbientSound(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAmbientSound, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAmbientSound_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAmbientSoundeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAmbientSound, slot: proc(super: QAmbientSoundeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAmbientSoundeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_eventFilter(self: ptr cQAmbientSound, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAmbientSound_eventFilter ".} =
  type Cb = proc(super: QAmbientSoundeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAmbientSound(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAmbientSound, event: gen_qcoreevent.QTimerEvent): void =


  fQAmbientSound_virtualbase_timerEvent(self.h, event.h)

type QAmbientSoundtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAmbientSound, slot: proc(super: QAmbientSoundtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAmbientSoundtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_timerEvent(self: ptr cQAmbientSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAmbientSound_timerEvent ".} =
  type Cb = proc(super: QAmbientSoundtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAmbientSound(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAmbientSound, event: gen_qcoreevent.QChildEvent): void =


  fQAmbientSound_virtualbase_childEvent(self.h, event.h)

type QAmbientSoundchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAmbientSound, slot: proc(super: QAmbientSoundchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAmbientSoundchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_childEvent(self: ptr cQAmbientSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAmbientSound_childEvent ".} =
  type Cb = proc(super: QAmbientSoundchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAmbientSound(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAmbientSound, event: gen_qcoreevent.QEvent): void =


  fQAmbientSound_virtualbase_customEvent(self.h, event.h)

type QAmbientSoundcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAmbientSound, slot: proc(super: QAmbientSoundcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAmbientSoundcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_customEvent(self: ptr cQAmbientSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAmbientSound_customEvent ".} =
  type Cb = proc(super: QAmbientSoundcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAmbientSound(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAmbientSound, signal: gen_qmetaobject.QMetaMethod): void =


  fQAmbientSound_virtualbase_connectNotify(self.h, signal.h)

type QAmbientSoundconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAmbientSound, slot: proc(super: QAmbientSoundconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAmbientSoundconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_connectNotify(self: ptr cQAmbientSound, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAmbientSound_connectNotify ".} =
  type Cb = proc(super: QAmbientSoundconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAmbientSound(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAmbientSound, signal: gen_qmetaobject.QMetaMethod): void =


  fQAmbientSound_virtualbase_disconnectNotify(self.h, signal.h)

type QAmbientSounddisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAmbientSound, slot: proc(super: QAmbientSounddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAmbientSounddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_disconnectNotify(self: ptr cQAmbientSound, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAmbientSound_disconnectNotify ".} =
  type Cb = proc(super: QAmbientSounddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAmbientSound(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAmbientSound): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAmbientSound_staticMetaObject())
proc delete*(self: QAmbientSound) =
  fcQAmbientSound_delete(self.h)
