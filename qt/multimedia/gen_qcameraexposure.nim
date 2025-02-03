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
{.compile("gen_qcameraexposure.cpp", cflags).}


type QCameraExposureFlashMode* = cint
const
  QCameraExposureFlashAuto* = 1
  QCameraExposureFlashOff* = 2
  QCameraExposureFlashOn* = 4
  QCameraExposureFlashRedEyeReduction* = 8
  QCameraExposureFlashFill* = 16
  QCameraExposureFlashTorch* = 32
  QCameraExposureFlashVideoLight* = 64
  QCameraExposureFlashSlowSyncFrontCurtain* = 128
  QCameraExposureFlashSlowSyncRearCurtain* = 256
  QCameraExposureFlashManual* = 512



type QCameraExposureExposureMode* = cint
const
  QCameraExposureExposureAuto* = 0
  QCameraExposureExposureManual* = 1
  QCameraExposureExposurePortrait* = 2
  QCameraExposureExposureNight* = 3
  QCameraExposureExposureBacklight* = 4
  QCameraExposureExposureSpotlight* = 5
  QCameraExposureExposureSports* = 6
  QCameraExposureExposureSnow* = 7
  QCameraExposureExposureBeach* = 8
  QCameraExposureExposureLargeAperture* = 9
  QCameraExposureExposureSmallAperture* = 10
  QCameraExposureExposureAction* = 11
  QCameraExposureExposureLandscape* = 12
  QCameraExposureExposureNightPortrait* = 13
  QCameraExposureExposureTheatre* = 14
  QCameraExposureExposureSunset* = 15
  QCameraExposureExposureSteadyPhoto* = 16
  QCameraExposureExposureFireworks* = 17
  QCameraExposureExposureParty* = 18
  QCameraExposureExposureCandlelight* = 19
  QCameraExposureExposureBarcode* = 20
  QCameraExposureExposureModeVendor* = 1000



type QCameraExposureMeteringMode* = cint
const
  QCameraExposureMeteringMatrix* = 1
  QCameraExposureMeteringAverage* = 2
  QCameraExposureMeteringSpot* = 3



import gen_qcameraexposure_types
export gen_qcameraexposure_types

import
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint
export
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint

type cQCameraExposure*{.exportc: "QCameraExposure", incompleteStruct.} = object

proc fcQCameraExposure_metaObject(self: pointer, ): pointer {.importc: "QCameraExposure_metaObject".}
proc fcQCameraExposure_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraExposure_metacast".}
proc fcQCameraExposure_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraExposure_metacall".}
proc fcQCameraExposure_tr(s: cstring): struct_miqt_string {.importc: "QCameraExposure_tr".}
proc fcQCameraExposure_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraExposure_trUtf8".}
proc fcQCameraExposure_isAvailable(self: pointer, ): bool {.importc: "QCameraExposure_isAvailable".}
proc fcQCameraExposure_flashMode(self: pointer, ): cint {.importc: "QCameraExposure_flashMode".}
proc fcQCameraExposure_isFlashModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraExposure_isFlashModeSupported".}
proc fcQCameraExposure_isFlashReady(self: pointer, ): bool {.importc: "QCameraExposure_isFlashReady".}
proc fcQCameraExposure_exposureMode(self: pointer, ): cint {.importc: "QCameraExposure_exposureMode".}
proc fcQCameraExposure_isExposureModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraExposure_isExposureModeSupported".}
proc fcQCameraExposure_exposureCompensation(self: pointer, ): float64 {.importc: "QCameraExposure_exposureCompensation".}
proc fcQCameraExposure_meteringMode(self: pointer, ): cint {.importc: "QCameraExposure_meteringMode".}
proc fcQCameraExposure_isMeteringModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraExposure_isMeteringModeSupported".}
proc fcQCameraExposure_spotMeteringPoint(self: pointer, ): pointer {.importc: "QCameraExposure_spotMeteringPoint".}
proc fcQCameraExposure_setSpotMeteringPoint(self: pointer, point: pointer): void {.importc: "QCameraExposure_setSpotMeteringPoint".}
proc fcQCameraExposure_isoSensitivity(self: pointer, ): cint {.importc: "QCameraExposure_isoSensitivity".}
proc fcQCameraExposure_aperture(self: pointer, ): float64 {.importc: "QCameraExposure_aperture".}
proc fcQCameraExposure_shutterSpeed(self: pointer, ): float64 {.importc: "QCameraExposure_shutterSpeed".}
proc fcQCameraExposure_requestedIsoSensitivity(self: pointer, ): cint {.importc: "QCameraExposure_requestedIsoSensitivity".}
proc fcQCameraExposure_requestedAperture(self: pointer, ): float64 {.importc: "QCameraExposure_requestedAperture".}
proc fcQCameraExposure_requestedShutterSpeed(self: pointer, ): float64 {.importc: "QCameraExposure_requestedShutterSpeed".}
proc fcQCameraExposure_supportedIsoSensitivities(self: pointer, ): struct_miqt_array {.importc: "QCameraExposure_supportedIsoSensitivities".}
proc fcQCameraExposure_supportedApertures(self: pointer, ): struct_miqt_array {.importc: "QCameraExposure_supportedApertures".}
proc fcQCameraExposure_supportedShutterSpeeds(self: pointer, ): struct_miqt_array {.importc: "QCameraExposure_supportedShutterSpeeds".}
proc fcQCameraExposure_setFlashMode(self: pointer, mode: cint): void {.importc: "QCameraExposure_setFlashMode".}
proc fcQCameraExposure_setExposureMode(self: pointer, mode: cint): void {.importc: "QCameraExposure_setExposureMode".}
proc fcQCameraExposure_setMeteringMode(self: pointer, mode: cint): void {.importc: "QCameraExposure_setMeteringMode".}
proc fcQCameraExposure_setExposureCompensation(self: pointer, ev: float64): void {.importc: "QCameraExposure_setExposureCompensation".}
proc fcQCameraExposure_setManualIsoSensitivity(self: pointer, iso: cint): void {.importc: "QCameraExposure_setManualIsoSensitivity".}
proc fcQCameraExposure_setAutoIsoSensitivity(self: pointer, ): void {.importc: "QCameraExposure_setAutoIsoSensitivity".}
proc fcQCameraExposure_setManualAperture(self: pointer, aperture: float64): void {.importc: "QCameraExposure_setManualAperture".}
proc fcQCameraExposure_setAutoAperture(self: pointer, ): void {.importc: "QCameraExposure_setAutoAperture".}
proc fcQCameraExposure_setManualShutterSpeed(self: pointer, seconds: float64): void {.importc: "QCameraExposure_setManualShutterSpeed".}
proc fcQCameraExposure_setAutoShutterSpeed(self: pointer, ): void {.importc: "QCameraExposure_setAutoShutterSpeed".}
proc fcQCameraExposure_flashReady(self: pointer, param1: bool): void {.importc: "QCameraExposure_flashReady".}
proc fQCameraExposure_connect_flashReady(self: pointer, slot: int) {.importc: "QCameraExposure_connect_flashReady".}
proc fcQCameraExposure_apertureChanged(self: pointer, param1: float64): void {.importc: "QCameraExposure_apertureChanged".}
proc fQCameraExposure_connect_apertureChanged(self: pointer, slot: int) {.importc: "QCameraExposure_connect_apertureChanged".}
proc fcQCameraExposure_apertureRangeChanged(self: pointer, ): void {.importc: "QCameraExposure_apertureRangeChanged".}
proc fQCameraExposure_connect_apertureRangeChanged(self: pointer, slot: int) {.importc: "QCameraExposure_connect_apertureRangeChanged".}
proc fcQCameraExposure_shutterSpeedChanged(self: pointer, speed: float64): void {.importc: "QCameraExposure_shutterSpeedChanged".}
proc fQCameraExposure_connect_shutterSpeedChanged(self: pointer, slot: int) {.importc: "QCameraExposure_connect_shutterSpeedChanged".}
proc fcQCameraExposure_shutterSpeedRangeChanged(self: pointer, ): void {.importc: "QCameraExposure_shutterSpeedRangeChanged".}
proc fQCameraExposure_connect_shutterSpeedRangeChanged(self: pointer, slot: int) {.importc: "QCameraExposure_connect_shutterSpeedRangeChanged".}
proc fcQCameraExposure_isoSensitivityChanged(self: pointer, param1: cint): void {.importc: "QCameraExposure_isoSensitivityChanged".}
proc fQCameraExposure_connect_isoSensitivityChanged(self: pointer, slot: int) {.importc: "QCameraExposure_connect_isoSensitivityChanged".}
proc fcQCameraExposure_exposureCompensationChanged(self: pointer, param1: float64): void {.importc: "QCameraExposure_exposureCompensationChanged".}
proc fQCameraExposure_connect_exposureCompensationChanged(self: pointer, slot: int) {.importc: "QCameraExposure_connect_exposureCompensationChanged".}
proc fcQCameraExposure_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraExposure_tr2".}
proc fcQCameraExposure_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraExposure_tr3".}
proc fcQCameraExposure_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraExposure_trUtf82".}
proc fcQCameraExposure_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraExposure_trUtf83".}
proc fcQCameraExposure_supportedIsoSensitivities1(self: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QCameraExposure_supportedIsoSensitivities1".}
proc fcQCameraExposure_supportedApertures1(self: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QCameraExposure_supportedApertures1".}
proc fcQCameraExposure_supportedShutterSpeeds1(self: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QCameraExposure_supportedShutterSpeeds1".}


func init*(T: type QCameraExposure, h: ptr cQCameraExposure): QCameraExposure =
  T(h: h)
proc metaObject*(self: QCameraExposure, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCameraExposure_metaObject(self.h))

proc metacast*(self: QCameraExposure, param1: cstring): pointer =

  fcQCameraExposure_metacast(self.h, param1)

proc metacall*(self: QCameraExposure, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCameraExposure_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCameraExposure, s: cstring): string =

  let v_ms = fcQCameraExposure_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCameraExposure, s: cstring): string =

  let v_ms = fcQCameraExposure_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: QCameraExposure, ): bool =

  fcQCameraExposure_isAvailable(self.h)

proc flashMode*(self: QCameraExposure, ): QCameraExposureFlashMode =

  QCameraExposureFlashMode(fcQCameraExposure_flashMode(self.h))

proc isFlashModeSupported*(self: QCameraExposure, mode: QCameraExposureFlashMode): bool =

  fcQCameraExposure_isFlashModeSupported(self.h, cint(mode))

proc isFlashReady*(self: QCameraExposure, ): bool =

  fcQCameraExposure_isFlashReady(self.h)

proc exposureMode*(self: QCameraExposure, ): QCameraExposureExposureMode =

  QCameraExposureExposureMode(fcQCameraExposure_exposureMode(self.h))

proc isExposureModeSupported*(self: QCameraExposure, mode: QCameraExposureExposureMode): bool =

  fcQCameraExposure_isExposureModeSupported(self.h, cint(mode))

proc exposureCompensation*(self: QCameraExposure, ): float64 =

  fcQCameraExposure_exposureCompensation(self.h)

proc meteringMode*(self: QCameraExposure, ): QCameraExposureMeteringMode =

  QCameraExposureMeteringMode(fcQCameraExposure_meteringMode(self.h))

proc isMeteringModeSupported*(self: QCameraExposure, mode: QCameraExposureMeteringMode): bool =

  fcQCameraExposure_isMeteringModeSupported(self.h, cint(mode))

proc spotMeteringPoint*(self: QCameraExposure, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQCameraExposure_spotMeteringPoint(self.h))

proc setSpotMeteringPoint*(self: QCameraExposure, point: gen_qpoint.QPointF): void =

  fcQCameraExposure_setSpotMeteringPoint(self.h, point.h)

proc isoSensitivity*(self: QCameraExposure, ): cint =

  fcQCameraExposure_isoSensitivity(self.h)

proc aperture*(self: QCameraExposure, ): float64 =

  fcQCameraExposure_aperture(self.h)

proc shutterSpeed*(self: QCameraExposure, ): float64 =

  fcQCameraExposure_shutterSpeed(self.h)

proc requestedIsoSensitivity*(self: QCameraExposure, ): cint =

  fcQCameraExposure_requestedIsoSensitivity(self.h)

proc requestedAperture*(self: QCameraExposure, ): float64 =

  fcQCameraExposure_requestedAperture(self.h)

proc requestedShutterSpeed*(self: QCameraExposure, ): float64 =

  fcQCameraExposure_requestedShutterSpeed(self.h)

proc supportedIsoSensitivities*(self: QCameraExposure, ): seq[cint] =

  var v_ma = fcQCameraExposure_supportedIsoSensitivities(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedApertures*(self: QCameraExposure, ): seq[float64] =

  var v_ma = fcQCameraExposure_supportedApertures(self.h)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedShutterSpeeds*(self: QCameraExposure, ): seq[float64] =

  var v_ma = fcQCameraExposure_supportedShutterSpeeds(self.h)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc setFlashMode*(self: QCameraExposure, mode: QCameraExposureFlashMode): void =

  fcQCameraExposure_setFlashMode(self.h, cint(mode))

proc setExposureMode*(self: QCameraExposure, mode: QCameraExposureExposureMode): void =

  fcQCameraExposure_setExposureMode(self.h, cint(mode))

proc setMeteringMode*(self: QCameraExposure, mode: QCameraExposureMeteringMode): void =

  fcQCameraExposure_setMeteringMode(self.h, cint(mode))

proc setExposureCompensation*(self: QCameraExposure, ev: float64): void =

  fcQCameraExposure_setExposureCompensation(self.h, ev)

proc setManualIsoSensitivity*(self: QCameraExposure, iso: cint): void =

  fcQCameraExposure_setManualIsoSensitivity(self.h, iso)

proc setAutoIsoSensitivity*(self: QCameraExposure, ): void =

  fcQCameraExposure_setAutoIsoSensitivity(self.h)

proc setManualAperture*(self: QCameraExposure, aperture: float64): void =

  fcQCameraExposure_setManualAperture(self.h, aperture)

proc setAutoAperture*(self: QCameraExposure, ): void =

  fcQCameraExposure_setAutoAperture(self.h)

proc setManualShutterSpeed*(self: QCameraExposure, seconds: float64): void =

  fcQCameraExposure_setManualShutterSpeed(self.h, seconds)

proc setAutoShutterSpeed*(self: QCameraExposure, ): void =

  fcQCameraExposure_setAutoShutterSpeed(self.h)

proc flashReady*(self: QCameraExposure, param1: bool): void =

  fcQCameraExposure_flashReady(self.h, param1)

proc miqt_exec_callback_QCameraExposure_flashReady(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onflashReady*(self: QCameraExposure, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraExposure_connect_flashReady(self.h, cast[int](addr tmp[]))
proc apertureChanged*(self: QCameraExposure, param1: float64): void =

  fcQCameraExposure_apertureChanged(self.h, param1)

proc miqt_exec_callback_QCameraExposure_apertureChanged(slot: int, param1: float64) {.exportc.} =
  type Cb = proc(param1: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onapertureChanged*(self: QCameraExposure, slot: proc(param1: float64)) =
  type Cb = proc(param1: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraExposure_connect_apertureChanged(self.h, cast[int](addr tmp[]))
proc apertureRangeChanged*(self: QCameraExposure, ): void =

  fcQCameraExposure_apertureRangeChanged(self.h)

proc miqt_exec_callback_QCameraExposure_apertureRangeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onapertureRangeChanged*(self: QCameraExposure, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraExposure_connect_apertureRangeChanged(self.h, cast[int](addr tmp[]))
proc shutterSpeedChanged*(self: QCameraExposure, speed: float64): void =

  fcQCameraExposure_shutterSpeedChanged(self.h, speed)

proc miqt_exec_callback_QCameraExposure_shutterSpeedChanged(slot: int, speed: float64) {.exportc.} =
  type Cb = proc(speed: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = speed


  nimfunc[](slotval1)

proc onshutterSpeedChanged*(self: QCameraExposure, slot: proc(speed: float64)) =
  type Cb = proc(speed: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraExposure_connect_shutterSpeedChanged(self.h, cast[int](addr tmp[]))
proc shutterSpeedRangeChanged*(self: QCameraExposure, ): void =

  fcQCameraExposure_shutterSpeedRangeChanged(self.h)

proc miqt_exec_callback_QCameraExposure_shutterSpeedRangeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onshutterSpeedRangeChanged*(self: QCameraExposure, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraExposure_connect_shutterSpeedRangeChanged(self.h, cast[int](addr tmp[]))
proc isoSensitivityChanged*(self: QCameraExposure, param1: cint): void =

  fcQCameraExposure_isoSensitivityChanged(self.h, param1)

proc miqt_exec_callback_QCameraExposure_isoSensitivityChanged(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onisoSensitivityChanged*(self: QCameraExposure, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraExposure_connect_isoSensitivityChanged(self.h, cast[int](addr tmp[]))
proc exposureCompensationChanged*(self: QCameraExposure, param1: float64): void =

  fcQCameraExposure_exposureCompensationChanged(self.h, param1)

proc miqt_exec_callback_QCameraExposure_exposureCompensationChanged(slot: int, param1: float64) {.exportc.} =
  type Cb = proc(param1: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onexposureCompensationChanged*(self: QCameraExposure, slot: proc(param1: float64)) =
  type Cb = proc(param1: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraExposure_connect_exposureCompensationChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QCameraExposure, s: cstring, c: cstring): string =

  let v_ms = fcQCameraExposure_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCameraExposure, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraExposure_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCameraExposure, s: cstring, c: cstring): string =

  let v_ms = fcQCameraExposure_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCameraExposure, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraExposure_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedIsoSensitivities1*(self: QCameraExposure, continuous: ptr bool): seq[cint] =

  var v_ma = fcQCameraExposure_supportedIsoSensitivities1(self.h, continuous)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedApertures1*(self: QCameraExposure, continuous: ptr bool): seq[float64] =

  var v_ma = fcQCameraExposure_supportedApertures1(self.h, continuous)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedShutterSpeeds1*(self: QCameraExposure, continuous: ptr bool): seq[float64] =

  var v_ma = fcQCameraExposure_supportedShutterSpeeds1(self.h, continuous)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

