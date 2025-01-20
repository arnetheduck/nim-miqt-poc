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
{.compile("gen_qaudioengine.cpp", cflags).}


type QAudioEngineOutputMode* = cint
const
  QAudioEngineSurround* = 0
  QAudioEngineStereo* = 1
  QAudioEngineHeadphone* = 2



import gen_qaudioengine_types
export gen_qaudioengine_types

import
  gen_qaudiodevice,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qaudiodevice,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQAudioEngine*{.exportc: "QAudioEngine", incompleteStruct.} = object

proc fcQAudioEngine_new(): ptr cQAudioEngine {.importc: "QAudioEngine_new".}
proc fcQAudioEngine_new2(parent: pointer): ptr cQAudioEngine {.importc: "QAudioEngine_new2".}
proc fcQAudioEngine_new3(sampleRate: cint): ptr cQAudioEngine {.importc: "QAudioEngine_new3".}
proc fcQAudioEngine_new4(sampleRate: cint, parent: pointer): ptr cQAudioEngine {.importc: "QAudioEngine_new4".}
proc fcQAudioEngine_metaObject(self: pointer, ): pointer {.importc: "QAudioEngine_metaObject".}
proc fcQAudioEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioEngine_metacast".}
proc fcQAudioEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioEngine_metacall".}
proc fcQAudioEngine_tr(s: cstring): struct_miqt_string {.importc: "QAudioEngine_tr".}
proc fcQAudioEngine_setOutputMode(self: pointer, mode: cint): void {.importc: "QAudioEngine_setOutputMode".}
proc fcQAudioEngine_outputMode(self: pointer, ): cint {.importc: "QAudioEngine_outputMode".}
proc fcQAudioEngine_sampleRate(self: pointer, ): cint {.importc: "QAudioEngine_sampleRate".}
proc fcQAudioEngine_setOutputDevice(self: pointer, device: pointer): void {.importc: "QAudioEngine_setOutputDevice".}
proc fcQAudioEngine_outputDevice(self: pointer, ): pointer {.importc: "QAudioEngine_outputDevice".}
proc fcQAudioEngine_setMasterVolume(self: pointer, volume: float32): void {.importc: "QAudioEngine_setMasterVolume".}
proc fcQAudioEngine_masterVolume(self: pointer, ): float32 {.importc: "QAudioEngine_masterVolume".}
proc fcQAudioEngine_setPaused(self: pointer, paused: bool): void {.importc: "QAudioEngine_setPaused".}
proc fcQAudioEngine_paused(self: pointer, ): bool {.importc: "QAudioEngine_paused".}
proc fcQAudioEngine_setRoomEffectsEnabled(self: pointer, enabled: bool): void {.importc: "QAudioEngine_setRoomEffectsEnabled".}
proc fcQAudioEngine_roomEffectsEnabled(self: pointer, ): bool {.importc: "QAudioEngine_roomEffectsEnabled".}
proc fcQAudioEngine_setDistanceScale(self: pointer, scale: float32): void {.importc: "QAudioEngine_setDistanceScale".}
proc fcQAudioEngine_distanceScale(self: pointer, ): float32 {.importc: "QAudioEngine_distanceScale".}
proc fcQAudioEngine_outputModeChanged(self: pointer, ): void {.importc: "QAudioEngine_outputModeChanged".}
proc fQAudioEngine_connect_outputModeChanged(self: pointer, slot: int) {.importc: "QAudioEngine_connect_outputModeChanged".}
proc fcQAudioEngine_outputDeviceChanged(self: pointer, ): void {.importc: "QAudioEngine_outputDeviceChanged".}
proc fQAudioEngine_connect_outputDeviceChanged(self: pointer, slot: int) {.importc: "QAudioEngine_connect_outputDeviceChanged".}
proc fcQAudioEngine_masterVolumeChanged(self: pointer, ): void {.importc: "QAudioEngine_masterVolumeChanged".}
proc fQAudioEngine_connect_masterVolumeChanged(self: pointer, slot: int) {.importc: "QAudioEngine_connect_masterVolumeChanged".}
proc fcQAudioEngine_pausedChanged(self: pointer, ): void {.importc: "QAudioEngine_pausedChanged".}
proc fQAudioEngine_connect_pausedChanged(self: pointer, slot: int) {.importc: "QAudioEngine_connect_pausedChanged".}
proc fcQAudioEngine_distanceScaleChanged(self: pointer, ): void {.importc: "QAudioEngine_distanceScaleChanged".}
proc fQAudioEngine_connect_distanceScaleChanged(self: pointer, slot: int) {.importc: "QAudioEngine_connect_distanceScaleChanged".}
proc fcQAudioEngine_start(self: pointer, ): void {.importc: "QAudioEngine_start".}
proc fcQAudioEngine_stop(self: pointer, ): void {.importc: "QAudioEngine_stop".}
proc fcQAudioEngine_pause(self: pointer, ): void {.importc: "QAudioEngine_pause".}
proc fcQAudioEngine_resume(self: pointer, ): void {.importc: "QAudioEngine_resume".}
proc fcQAudioEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioEngine_tr2".}
proc fcQAudioEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioEngine_tr3".}
proc fQAudioEngine_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAudioEngine_virtualbase_metaObject".}
proc fcQAudioEngine_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_metaObject".}
proc fQAudioEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAudioEngine_virtualbase_metacast".}
proc fcQAudioEngine_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_metacast".}
proc fQAudioEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioEngine_virtualbase_metacall".}
proc fcQAudioEngine_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_metacall".}
proc fQAudioEngine_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioEngine_virtualbase_event".}
proc fcQAudioEngine_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_event".}
proc fQAudioEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioEngine_virtualbase_eventFilter".}
proc fcQAudioEngine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_eventFilter".}
proc fQAudioEngine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioEngine_virtualbase_timerEvent".}
proc fcQAudioEngine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_timerEvent".}
proc fQAudioEngine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioEngine_virtualbase_childEvent".}
proc fcQAudioEngine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_childEvent".}
proc fQAudioEngine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioEngine_virtualbase_customEvent".}
proc fcQAudioEngine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_customEvent".}
proc fQAudioEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioEngine_virtualbase_connectNotify".}
proc fcQAudioEngine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_connectNotify".}
proc fQAudioEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioEngine_virtualbase_disconnectNotify".}
proc fcQAudioEngine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_disconnectNotify".}
proc fcQAudioEngine_staticMetaObject(): pointer {.importc: "QAudioEngine_staticMetaObject".}
proc fcQAudioEngine_delete(self: pointer) {.importc: "QAudioEngine_delete".}


func init*(T: type QAudioEngine, h: ptr cQAudioEngine): QAudioEngine =
  T(h: h)
proc create*(T: type QAudioEngine, ): QAudioEngine =

  QAudioEngine.init(fcQAudioEngine_new())
proc create*(T: type QAudioEngine, parent: gen_qobject.QObject): QAudioEngine =

  QAudioEngine.init(fcQAudioEngine_new2(parent.h))
proc create*(T: type QAudioEngine, sampleRate: cint): QAudioEngine =

  QAudioEngine.init(fcQAudioEngine_new3(sampleRate))
proc create*(T: type QAudioEngine, sampleRate: cint, parent: gen_qobject.QObject): QAudioEngine =

  QAudioEngine.init(fcQAudioEngine_new4(sampleRate, parent.h))
proc metaObject*(self: QAudioEngine, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAudioEngine_metaObject(self.h))

proc metacast*(self: QAudioEngine, param1: cstring): pointer =

  fcQAudioEngine_metacast(self.h, param1)

proc metacall*(self: QAudioEngine, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAudioEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAudioEngine, s: cstring): string =

  let v_ms = fcQAudioEngine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOutputMode*(self: QAudioEngine, mode: QAudioEngineOutputMode): void =

  fcQAudioEngine_setOutputMode(self.h, cint(mode))

proc outputMode*(self: QAudioEngine, ): QAudioEngineOutputMode =

  QAudioEngineOutputMode(fcQAudioEngine_outputMode(self.h))

proc sampleRate*(self: QAudioEngine, ): cint =

  fcQAudioEngine_sampleRate(self.h)

proc setOutputDevice*(self: QAudioEngine, device: gen_qaudiodevice.QAudioDevice): void =

  fcQAudioEngine_setOutputDevice(self.h, device.h)

proc outputDevice*(self: QAudioEngine, ): gen_qaudiodevice.QAudioDevice =

  gen_qaudiodevice.QAudioDevice(h: fcQAudioEngine_outputDevice(self.h))

proc setMasterVolume*(self: QAudioEngine, volume: float32): void =

  fcQAudioEngine_setMasterVolume(self.h, volume)

proc masterVolume*(self: QAudioEngine, ): float32 =

  fcQAudioEngine_masterVolume(self.h)

proc setPaused*(self: QAudioEngine, paused: bool): void =

  fcQAudioEngine_setPaused(self.h, paused)

proc paused*(self: QAudioEngine, ): bool =

  fcQAudioEngine_paused(self.h)

proc setRoomEffectsEnabled*(self: QAudioEngine, enabled: bool): void =

  fcQAudioEngine_setRoomEffectsEnabled(self.h, enabled)

proc roomEffectsEnabled*(self: QAudioEngine, ): bool =

  fcQAudioEngine_roomEffectsEnabled(self.h)

proc setDistanceScale*(self: QAudioEngine, scale: float32): void =

  fcQAudioEngine_setDistanceScale(self.h, scale)

proc distanceScale*(self: QAudioEngine, ): float32 =

  fcQAudioEngine_distanceScale(self.h)

proc outputModeChanged*(self: QAudioEngine, ): void =

  fcQAudioEngine_outputModeChanged(self.h)

proc miqt_exec_callback_QAudioEngine_outputModeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onoutputModeChanged*(self: QAudioEngine, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioEngine_connect_outputModeChanged(self.h, cast[int](addr tmp[]))
proc outputDeviceChanged*(self: QAudioEngine, ): void =

  fcQAudioEngine_outputDeviceChanged(self.h)

proc miqt_exec_callback_QAudioEngine_outputDeviceChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onoutputDeviceChanged*(self: QAudioEngine, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioEngine_connect_outputDeviceChanged(self.h, cast[int](addr tmp[]))
proc masterVolumeChanged*(self: QAudioEngine, ): void =

  fcQAudioEngine_masterVolumeChanged(self.h)

proc miqt_exec_callback_QAudioEngine_masterVolumeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmasterVolumeChanged*(self: QAudioEngine, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioEngine_connect_masterVolumeChanged(self.h, cast[int](addr tmp[]))
proc pausedChanged*(self: QAudioEngine, ): void =

  fcQAudioEngine_pausedChanged(self.h)

proc miqt_exec_callback_QAudioEngine_pausedChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onpausedChanged*(self: QAudioEngine, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioEngine_connect_pausedChanged(self.h, cast[int](addr tmp[]))
proc distanceScaleChanged*(self: QAudioEngine, ): void =

  fcQAudioEngine_distanceScaleChanged(self.h)

proc miqt_exec_callback_QAudioEngine_distanceScaleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondistanceScaleChanged*(self: QAudioEngine, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioEngine_connect_distanceScaleChanged(self.h, cast[int](addr tmp[]))
proc start*(self: QAudioEngine, ): void =

  fcQAudioEngine_start(self.h)

proc stop*(self: QAudioEngine, ): void =

  fcQAudioEngine_stop(self.h)

proc pause*(self: QAudioEngine, ): void =

  fcQAudioEngine_pause(self.h)

proc resume*(self: QAudioEngine, ): void =

  fcQAudioEngine_resume(self.h)

proc tr2*(_: type QAudioEngine, s: cstring, c: cstring): string =

  let v_ms = fcQAudioEngine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAudioEngine, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QAudioEngine, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQAudioEngine_virtualbase_metaObject(self.h))

type QAudioEnginemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QAudioEngine, slot: proc(super: QAudioEnginemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QAudioEnginemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_metaObject(self: ptr cQAudioEngine, slot: int): pointer {.exportc: "miqt_exec_callback_QAudioEngine_metaObject ".} =
  type Cb = proc(super: QAudioEnginemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QAudioEngine(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QAudioEngine, param1: cstring): pointer =


  fQAudioEngine_virtualbase_metacast(self.h, param1)

type QAudioEnginemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QAudioEngine, slot: proc(super: QAudioEnginemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QAudioEnginemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_metacast(self: ptr cQAudioEngine, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAudioEngine_metacast ".} =
  type Cb = proc(super: QAudioEnginemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QAudioEngine(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QAudioEngine, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAudioEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioEnginemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAudioEngine, slot: proc(super: QAudioEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAudioEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_metacall(self: ptr cQAudioEngine, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioEngine_metacall ".} =
  type Cb = proc(super: QAudioEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAudioEngine(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QAudioEngine, event: gen_qcoreevent.QEvent): bool =


  fQAudioEngine_virtualbase_event(self.h, event.h)

type QAudioEngineeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAudioEngine, slot: proc(super: QAudioEngineeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioEngineeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_event(self: ptr cQAudioEngine, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioEngine_event ".} =
  type Cb = proc(super: QAudioEngineeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAudioEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAudioEngine, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAudioEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioEngineeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAudioEngine, slot: proc(super: QAudioEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_eventFilter(self: ptr cQAudioEngine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioEngine_eventFilter ".} =
  type Cb = proc(super: QAudioEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAudioEngine(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAudioEngine, event: gen_qcoreevent.QTimerEvent): void =


  fQAudioEngine_virtualbase_timerEvent(self.h, event.h)

type QAudioEnginetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAudioEngine, slot: proc(super: QAudioEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_timerEvent(self: ptr cQAudioEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioEngine_timerEvent ".} =
  type Cb = proc(super: QAudioEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAudioEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAudioEngine, event: gen_qcoreevent.QChildEvent): void =


  fQAudioEngine_virtualbase_childEvent(self.h, event.h)

type QAudioEnginechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAudioEngine, slot: proc(super: QAudioEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_childEvent(self: ptr cQAudioEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioEngine_childEvent ".} =
  type Cb = proc(super: QAudioEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAudioEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAudioEngine, event: gen_qcoreevent.QEvent): void =


  fQAudioEngine_virtualbase_customEvent(self.h, event.h)

type QAudioEnginecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAudioEngine, slot: proc(super: QAudioEnginecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioEnginecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_customEvent(self: ptr cQAudioEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioEngine_customEvent ".} =
  type Cb = proc(super: QAudioEnginecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAudioEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAudioEngine, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioEngine_virtualbase_connectNotify(self.h, signal.h)

type QAudioEngineconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAudioEngine, slot: proc(super: QAudioEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_connectNotify(self: ptr cQAudioEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioEngine_connectNotify ".} =
  type Cb = proc(super: QAudioEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAudioEngine(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAudioEngine, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioEngine_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioEnginedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAudioEngine, slot: proc(super: QAudioEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_disconnectNotify(self: ptr cQAudioEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioEngine_disconnectNotify ".} =
  type Cb = proc(super: QAudioEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAudioEngine(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAudioEngine): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAudioEngine_staticMetaObject())
proc delete*(self: QAudioEngine) =
  fcQAudioEngine_delete(self.h)
