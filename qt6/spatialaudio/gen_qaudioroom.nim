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
{.compile("gen_qaudioroom.cpp", cflags).}


type QAudioRoomMaterial* = cint
const
  QAudioRoomTransparent* = 0
  QAudioRoomAcousticCeilingTiles* = 1
  QAudioRoomBrickBare* = 2
  QAudioRoomBrickPainted* = 3
  QAudioRoomConcreteBlockCoarse* = 4
  QAudioRoomConcreteBlockPainted* = 5
  QAudioRoomCurtainHeavy* = 6
  QAudioRoomFiberGlassInsulation* = 7
  QAudioRoomGlassThin* = 8
  QAudioRoomGlassThick* = 9
  QAudioRoomGrass* = 10
  QAudioRoomLinoleumOnConcrete* = 11
  QAudioRoomMarble* = 12
  QAudioRoomMetal* = 13
  QAudioRoomParquetOnConcrete* = 14
  QAudioRoomPlasterRough* = 15
  QAudioRoomPlasterSmooth* = 16
  QAudioRoomPlywoodPanel* = 17
  QAudioRoomPolishedConcreteOrTile* = 18
  QAudioRoomSheetrock* = 19
  QAudioRoomWaterOrIceSurface* = 20
  QAudioRoomWoodCeiling* = 21
  QAudioRoomWoodPanel* = 22
  QAudioRoomUniformMaterial* = 23



type QAudioRoomWall* = cint
const
  QAudioRoomLeftWall* = 0
  QAudioRoomRightWall* = 1
  QAudioRoomFloor* = 2
  QAudioRoomCeiling* = 3
  QAudioRoomFrontWall* = 4
  QAudioRoomBackWall* = 5



import gen_qaudioroom_types
export gen_qaudioroom_types

import
  gen_qaudioengine,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qquaternion,
  gen_qvectornd
export
  gen_qaudioengine,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qquaternion,
  gen_qvectornd

type cQAudioRoom*{.exportc: "QAudioRoom", incompleteStruct.} = object

proc fcQAudioRoom_new(engine: pointer): ptr cQAudioRoom {.importc: "QAudioRoom_new".}
proc fcQAudioRoom_metaObject(self: pointer, ): pointer {.importc: "QAudioRoom_metaObject".}
proc fcQAudioRoom_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioRoom_metacast".}
proc fcQAudioRoom_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioRoom_metacall".}
proc fcQAudioRoom_tr(s: cstring): struct_miqt_string {.importc: "QAudioRoom_tr".}
proc fcQAudioRoom_setPosition(self: pointer, pos: pointer): void {.importc: "QAudioRoom_setPosition".}
proc fcQAudioRoom_position(self: pointer, ): pointer {.importc: "QAudioRoom_position".}
proc fcQAudioRoom_setDimensions(self: pointer, dim: pointer): void {.importc: "QAudioRoom_setDimensions".}
proc fcQAudioRoom_dimensions(self: pointer, ): pointer {.importc: "QAudioRoom_dimensions".}
proc fcQAudioRoom_setRotation(self: pointer, q: pointer): void {.importc: "QAudioRoom_setRotation".}
proc fcQAudioRoom_rotation(self: pointer, ): pointer {.importc: "QAudioRoom_rotation".}
proc fcQAudioRoom_setWallMaterial(self: pointer, wall: cint, material: cint): void {.importc: "QAudioRoom_setWallMaterial".}
proc fcQAudioRoom_wallMaterial(self: pointer, wall: cint): cint {.importc: "QAudioRoom_wallMaterial".}
proc fcQAudioRoom_setReflectionGain(self: pointer, factor: float32): void {.importc: "QAudioRoom_setReflectionGain".}
proc fcQAudioRoom_reflectionGain(self: pointer, ): float32 {.importc: "QAudioRoom_reflectionGain".}
proc fcQAudioRoom_setReverbGain(self: pointer, factor: float32): void {.importc: "QAudioRoom_setReverbGain".}
proc fcQAudioRoom_reverbGain(self: pointer, ): float32 {.importc: "QAudioRoom_reverbGain".}
proc fcQAudioRoom_setReverbTime(self: pointer, factor: float32): void {.importc: "QAudioRoom_setReverbTime".}
proc fcQAudioRoom_reverbTime(self: pointer, ): float32 {.importc: "QAudioRoom_reverbTime".}
proc fcQAudioRoom_setReverbBrightness(self: pointer, factor: float32): void {.importc: "QAudioRoom_setReverbBrightness".}
proc fcQAudioRoom_reverbBrightness(self: pointer, ): float32 {.importc: "QAudioRoom_reverbBrightness".}
proc fcQAudioRoom_positionChanged(self: pointer, ): void {.importc: "QAudioRoom_positionChanged".}
proc fQAudioRoom_connect_positionChanged(self: pointer, slot: int) {.importc: "QAudioRoom_connect_positionChanged".}
proc fcQAudioRoom_dimensionsChanged(self: pointer, ): void {.importc: "QAudioRoom_dimensionsChanged".}
proc fQAudioRoom_connect_dimensionsChanged(self: pointer, slot: int) {.importc: "QAudioRoom_connect_dimensionsChanged".}
proc fcQAudioRoom_rotationChanged(self: pointer, ): void {.importc: "QAudioRoom_rotationChanged".}
proc fQAudioRoom_connect_rotationChanged(self: pointer, slot: int) {.importc: "QAudioRoom_connect_rotationChanged".}
proc fcQAudioRoom_wallsChanged(self: pointer, ): void {.importc: "QAudioRoom_wallsChanged".}
proc fQAudioRoom_connect_wallsChanged(self: pointer, slot: int) {.importc: "QAudioRoom_connect_wallsChanged".}
proc fcQAudioRoom_reflectionGainChanged(self: pointer, ): void {.importc: "QAudioRoom_reflectionGainChanged".}
proc fQAudioRoom_connect_reflectionGainChanged(self: pointer, slot: int) {.importc: "QAudioRoom_connect_reflectionGainChanged".}
proc fcQAudioRoom_reverbGainChanged(self: pointer, ): void {.importc: "QAudioRoom_reverbGainChanged".}
proc fQAudioRoom_connect_reverbGainChanged(self: pointer, slot: int) {.importc: "QAudioRoom_connect_reverbGainChanged".}
proc fcQAudioRoom_reverbTimeChanged(self: pointer, ): void {.importc: "QAudioRoom_reverbTimeChanged".}
proc fQAudioRoom_connect_reverbTimeChanged(self: pointer, slot: int) {.importc: "QAudioRoom_connect_reverbTimeChanged".}
proc fcQAudioRoom_reverbBrightnessChanged(self: pointer, ): void {.importc: "QAudioRoom_reverbBrightnessChanged".}
proc fQAudioRoom_connect_reverbBrightnessChanged(self: pointer, slot: int) {.importc: "QAudioRoom_connect_reverbBrightnessChanged".}
proc fcQAudioRoom_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRoom_tr2".}
proc fcQAudioRoom_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRoom_tr3".}
proc fQAudioRoom_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioRoom_virtualbase_metacall".}
proc fcQAudioRoom_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioRoom_override_virtual_metacall".}
proc fQAudioRoom_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioRoom_virtualbase_event".}
proc fcQAudioRoom_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioRoom_override_virtual_event".}
proc fQAudioRoom_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioRoom_virtualbase_eventFilter".}
proc fcQAudioRoom_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioRoom_override_virtual_eventFilter".}
proc fQAudioRoom_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioRoom_virtualbase_timerEvent".}
proc fcQAudioRoom_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioRoom_override_virtual_timerEvent".}
proc fQAudioRoom_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioRoom_virtualbase_childEvent".}
proc fcQAudioRoom_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioRoom_override_virtual_childEvent".}
proc fQAudioRoom_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioRoom_virtualbase_customEvent".}
proc fcQAudioRoom_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioRoom_override_virtual_customEvent".}
proc fQAudioRoom_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioRoom_virtualbase_connectNotify".}
proc fcQAudioRoom_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioRoom_override_virtual_connectNotify".}
proc fQAudioRoom_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioRoom_virtualbase_disconnectNotify".}
proc fcQAudioRoom_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioRoom_override_virtual_disconnectNotify".}
proc fcQAudioRoom_delete(self: pointer) {.importc: "QAudioRoom_delete".}


func init*(T: type QAudioRoom, h: ptr cQAudioRoom): QAudioRoom =
  T(h: h)
proc create*(T: type QAudioRoom, engine: gen_qaudioengine.QAudioEngine): QAudioRoom =

  QAudioRoom.init(fcQAudioRoom_new(engine.h))
proc metaObject*(self: QAudioRoom, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAudioRoom_metaObject(self.h))

proc metacast*(self: QAudioRoom, param1: cstring): pointer =

  fcQAudioRoom_metacast(self.h, param1)

proc metacall*(self: QAudioRoom, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAudioRoom_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAudioRoom, s: cstring): string =

  let v_ms = fcQAudioRoom_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPosition*(self: QAudioRoom, pos: gen_qvectornd.QVector3D): void =

  fcQAudioRoom_setPosition(self.h, pos.h)

proc position*(self: QAudioRoom, ): gen_qvectornd.QVector3D =

  gen_qvectornd.QVector3D(h: fcQAudioRoom_position(self.h))

proc setDimensions*(self: QAudioRoom, dim: gen_qvectornd.QVector3D): void =

  fcQAudioRoom_setDimensions(self.h, dim.h)

proc dimensions*(self: QAudioRoom, ): gen_qvectornd.QVector3D =

  gen_qvectornd.QVector3D(h: fcQAudioRoom_dimensions(self.h))

proc setRotation*(self: QAudioRoom, q: gen_qquaternion.QQuaternion): void =

  fcQAudioRoom_setRotation(self.h, q.h)

proc rotation*(self: QAudioRoom, ): gen_qquaternion.QQuaternion =

  gen_qquaternion.QQuaternion(h: fcQAudioRoom_rotation(self.h))

proc setWallMaterial*(self: QAudioRoom, wall: QAudioRoomWall, material: QAudioRoomMaterial): void =

  fcQAudioRoom_setWallMaterial(self.h, cint(wall), cint(material))

proc wallMaterial*(self: QAudioRoom, wall: QAudioRoomWall): QAudioRoomMaterial =

  QAudioRoomMaterial(fcQAudioRoom_wallMaterial(self.h, cint(wall)))

proc setReflectionGain*(self: QAudioRoom, factor: float32): void =

  fcQAudioRoom_setReflectionGain(self.h, factor)

proc reflectionGain*(self: QAudioRoom, ): float32 =

  fcQAudioRoom_reflectionGain(self.h)

proc setReverbGain*(self: QAudioRoom, factor: float32): void =

  fcQAudioRoom_setReverbGain(self.h, factor)

proc reverbGain*(self: QAudioRoom, ): float32 =

  fcQAudioRoom_reverbGain(self.h)

proc setReverbTime*(self: QAudioRoom, factor: float32): void =

  fcQAudioRoom_setReverbTime(self.h, factor)

proc reverbTime*(self: QAudioRoom, ): float32 =

  fcQAudioRoom_reverbTime(self.h)

proc setReverbBrightness*(self: QAudioRoom, factor: float32): void =

  fcQAudioRoom_setReverbBrightness(self.h, factor)

proc reverbBrightness*(self: QAudioRoom, ): float32 =

  fcQAudioRoom_reverbBrightness(self.h)

proc positionChanged*(self: QAudioRoom, ): void =

  fcQAudioRoom_positionChanged(self.h)

proc miqt_exec_callback_QAudioRoom_positionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onpositionChanged*(self: QAudioRoom, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioRoom_connect_positionChanged(self.h, cast[int](addr tmp[]))
proc dimensionsChanged*(self: QAudioRoom, ): void =

  fcQAudioRoom_dimensionsChanged(self.h)

proc miqt_exec_callback_QAudioRoom_dimensionsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondimensionsChanged*(self: QAudioRoom, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioRoom_connect_dimensionsChanged(self.h, cast[int](addr tmp[]))
proc rotationChanged*(self: QAudioRoom, ): void =

  fcQAudioRoom_rotationChanged(self.h)

proc miqt_exec_callback_QAudioRoom_rotationChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onrotationChanged*(self: QAudioRoom, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioRoom_connect_rotationChanged(self.h, cast[int](addr tmp[]))
proc wallsChanged*(self: QAudioRoom, ): void =

  fcQAudioRoom_wallsChanged(self.h)

proc miqt_exec_callback_QAudioRoom_wallsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onwallsChanged*(self: QAudioRoom, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioRoom_connect_wallsChanged(self.h, cast[int](addr tmp[]))
proc reflectionGainChanged*(self: QAudioRoom, ): void =

  fcQAudioRoom_reflectionGainChanged(self.h)

proc miqt_exec_callback_QAudioRoom_reflectionGainChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onreflectionGainChanged*(self: QAudioRoom, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioRoom_connect_reflectionGainChanged(self.h, cast[int](addr tmp[]))
proc reverbGainChanged*(self: QAudioRoom, ): void =

  fcQAudioRoom_reverbGainChanged(self.h)

proc miqt_exec_callback_QAudioRoom_reverbGainChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onreverbGainChanged*(self: QAudioRoom, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioRoom_connect_reverbGainChanged(self.h, cast[int](addr tmp[]))
proc reverbTimeChanged*(self: QAudioRoom, ): void =

  fcQAudioRoom_reverbTimeChanged(self.h)

proc miqt_exec_callback_QAudioRoom_reverbTimeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onreverbTimeChanged*(self: QAudioRoom, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioRoom_connect_reverbTimeChanged(self.h, cast[int](addr tmp[]))
proc reverbBrightnessChanged*(self: QAudioRoom, ): void =

  fcQAudioRoom_reverbBrightnessChanged(self.h)

proc miqt_exec_callback_QAudioRoom_reverbBrightnessChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onreverbBrightnessChanged*(self: QAudioRoom, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioRoom_connect_reverbBrightnessChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAudioRoom, s: cstring, c: cstring): string =

  let v_ms = fcQAudioRoom_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAudioRoom, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioRoom_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAudioRoom, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAudioRoom_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioRoommetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAudioRoom, slot: proc(super: QAudioRoommetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAudioRoommetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRoom_metacall(self: ptr cQAudioRoom, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioRoom_metacall ".} =
  type Cb = proc(super: QAudioRoommetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAudioRoom(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QAudioRoom, event: gen_qcoreevent.QEvent): bool =


  fQAudioRoom_virtualbase_event(self.h, event.h)

type QAudioRoomeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAudioRoom, slot: proc(super: QAudioRoomeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioRoomeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRoom_event(self: ptr cQAudioRoom, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioRoom_event ".} =
  type Cb = proc(super: QAudioRoomeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAudioRoom(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAudioRoom, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAudioRoom_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioRoomeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAudioRoom, slot: proc(super: QAudioRoomeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioRoomeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRoom_eventFilter(self: ptr cQAudioRoom, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioRoom_eventFilter ".} =
  type Cb = proc(super: QAudioRoomeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAudioRoom(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAudioRoom, event: gen_qcoreevent.QTimerEvent): void =


  fQAudioRoom_virtualbase_timerEvent(self.h, event.h)

type QAudioRoomtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAudioRoom, slot: proc(super: QAudioRoomtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioRoomtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRoom_timerEvent(self: ptr cQAudioRoom, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioRoom_timerEvent ".} =
  type Cb = proc(super: QAudioRoomtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAudioRoom(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAudioRoom, event: gen_qcoreevent.QChildEvent): void =


  fQAudioRoom_virtualbase_childEvent(self.h, event.h)

type QAudioRoomchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAudioRoom, slot: proc(super: QAudioRoomchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioRoomchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRoom_childEvent(self: ptr cQAudioRoom, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioRoom_childEvent ".} =
  type Cb = proc(super: QAudioRoomchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAudioRoom(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAudioRoom, event: gen_qcoreevent.QEvent): void =


  fQAudioRoom_virtualbase_customEvent(self.h, event.h)

type QAudioRoomcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAudioRoom, slot: proc(super: QAudioRoomcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioRoomcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRoom_customEvent(self: ptr cQAudioRoom, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioRoom_customEvent ".} =
  type Cb = proc(super: QAudioRoomcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAudioRoom(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAudioRoom, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioRoom_virtualbase_connectNotify(self.h, signal.h)

type QAudioRoomconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAudioRoom, slot: proc(super: QAudioRoomconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioRoomconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRoom_connectNotify(self: ptr cQAudioRoom, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioRoom_connectNotify ".} =
  type Cb = proc(super: QAudioRoomconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAudioRoom(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAudioRoom, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioRoom_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioRoomdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAudioRoom, slot: proc(super: QAudioRoomdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioRoomdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRoom_disconnectNotify(self: ptr cQAudioRoom, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioRoom_disconnectNotify ".} =
  type Cb = proc(super: QAudioRoomdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAudioRoom(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QAudioRoom) =
  fcQAudioRoom_delete(self.h)
