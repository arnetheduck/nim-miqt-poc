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
{.compile("gen_qcamera.cpp", cflags).}


type QCameraError* = cint
const
  QCameraNoError* = 0
  QCameraCameraError* = 1



type QCameraFocusMode* = cint
const
  QCameraFocusModeAuto* = 0
  QCameraFocusModeAutoNear* = 1
  QCameraFocusModeAutoFar* = 2
  QCameraFocusModeHyperfocal* = 3
  QCameraFocusModeInfinity* = 4
  QCameraFocusModeManual* = 5



type QCameraFlashMode* = cint
const
  QCameraFlashOff* = 0
  QCameraFlashOn* = 1
  QCameraFlashAuto* = 2



type QCameraTorchMode* = cint
const
  QCameraTorchOff* = 0
  QCameraTorchOn* = 1
  QCameraTorchAuto* = 2



type QCameraExposureMode* = cint
const
  QCameraExposureAuto* = 0
  QCameraExposureManual* = 1
  QCameraExposurePortrait* = 2
  QCameraExposureNight* = 3
  QCameraExposureSports* = 4
  QCameraExposureSnow* = 5
  QCameraExposureBeach* = 6
  QCameraExposureAction* = 7
  QCameraExposureLandscape* = 8
  QCameraExposureNightPortrait* = 9
  QCameraExposureTheatre* = 10
  QCameraExposureSunset* = 11
  QCameraExposureSteadyPhoto* = 12
  QCameraExposureFireworks* = 13
  QCameraExposureParty* = 14
  QCameraExposureCandlelight* = 15
  QCameraExposureBarcode* = 16



type QCameraWhiteBalanceMode* = cint
const
  QCameraWhiteBalanceAuto* = 0
  QCameraWhiteBalanceManual* = 1
  QCameraWhiteBalanceSunlight* = 2
  QCameraWhiteBalanceCloudy* = 3
  QCameraWhiteBalanceShade* = 4
  QCameraWhiteBalanceTungsten* = 5
  QCameraWhiteBalanceFluorescent* = 6
  QCameraWhiteBalanceFlash* = 7
  QCameraWhiteBalanceSunset* = 8



type QCameraFeature* = cint
const
  QCameraColorTemperature* = 1
  QCameraExposureCompensation* = 2
  QCameraIsoSensitivity* = 4
  QCameraManualExposureTime* = 8
  QCameraCustomFocusPoint* = 16
  QCameraFocusDistance* = 32



import gen_qcamera_types
export gen_qcamera_types

import
  gen_qcameradevice,
  gen_qcoreevent,
  gen_qmediacapturesession,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint
export
  gen_qcameradevice,
  gen_qcoreevent,
  gen_qmediacapturesession,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint

type cQCamera*{.exportc: "QCamera", incompleteStruct.} = object

proc fcQCamera_new(): ptr cQCamera {.importc: "QCamera_new".}
proc fcQCamera_new2(cameraDevice: pointer): ptr cQCamera {.importc: "QCamera_new2".}
proc fcQCamera_new3(position: cint): ptr cQCamera {.importc: "QCamera_new3".}
proc fcQCamera_new4(parent: pointer): ptr cQCamera {.importc: "QCamera_new4".}
proc fcQCamera_new5(cameraDevice: pointer, parent: pointer): ptr cQCamera {.importc: "QCamera_new5".}
proc fcQCamera_new6(position: cint, parent: pointer): ptr cQCamera {.importc: "QCamera_new6".}
proc fcQCamera_metaObject(self: pointer, ): pointer {.importc: "QCamera_metaObject".}
proc fcQCamera_metacast(self: pointer, param1: cstring): pointer {.importc: "QCamera_metacast".}
proc fcQCamera_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCamera_metacall".}
proc fcQCamera_tr(s: cstring): struct_miqt_string {.importc: "QCamera_tr".}
proc fcQCamera_isAvailable(self: pointer, ): bool {.importc: "QCamera_isAvailable".}
proc fcQCamera_isActive(self: pointer, ): bool {.importc: "QCamera_isActive".}
proc fcQCamera_captureSession(self: pointer, ): pointer {.importc: "QCamera_captureSession".}
proc fcQCamera_cameraDevice(self: pointer, ): pointer {.importc: "QCamera_cameraDevice".}
proc fcQCamera_setCameraDevice(self: pointer, cameraDevice: pointer): void {.importc: "QCamera_setCameraDevice".}
proc fcQCamera_cameraFormat(self: pointer, ): pointer {.importc: "QCamera_cameraFormat".}
proc fcQCamera_setCameraFormat(self: pointer, format: pointer): void {.importc: "QCamera_setCameraFormat".}
proc fcQCamera_error(self: pointer, ): cint {.importc: "QCamera_error".}
proc fcQCamera_errorString(self: pointer, ): struct_miqt_string {.importc: "QCamera_errorString".}
proc fcQCamera_supportedFeatures(self: pointer, ): cint {.importc: "QCamera_supportedFeatures".}
proc fcQCamera_focusMode(self: pointer, ): cint {.importc: "QCamera_focusMode".}
proc fcQCamera_setFocusMode(self: pointer, mode: cint): void {.importc: "QCamera_setFocusMode".}
proc fcQCamera_isFocusModeSupported(self: pointer, mode: cint): bool {.importc: "QCamera_isFocusModeSupported".}
proc fcQCamera_focusPoint(self: pointer, ): pointer {.importc: "QCamera_focusPoint".}
proc fcQCamera_customFocusPoint(self: pointer, ): pointer {.importc: "QCamera_customFocusPoint".}
proc fcQCamera_setCustomFocusPoint(self: pointer, point: pointer): void {.importc: "QCamera_setCustomFocusPoint".}
proc fcQCamera_setFocusDistance(self: pointer, d: float32): void {.importc: "QCamera_setFocusDistance".}
proc fcQCamera_focusDistance(self: pointer, ): float32 {.importc: "QCamera_focusDistance".}
proc fcQCamera_minimumZoomFactor(self: pointer, ): float32 {.importc: "QCamera_minimumZoomFactor".}
proc fcQCamera_maximumZoomFactor(self: pointer, ): float32 {.importc: "QCamera_maximumZoomFactor".}
proc fcQCamera_zoomFactor(self: pointer, ): float32 {.importc: "QCamera_zoomFactor".}
proc fcQCamera_setZoomFactor(self: pointer, factor: float32): void {.importc: "QCamera_setZoomFactor".}
proc fcQCamera_flashMode(self: pointer, ): cint {.importc: "QCamera_flashMode".}
proc fcQCamera_isFlashModeSupported(self: pointer, mode: cint): bool {.importc: "QCamera_isFlashModeSupported".}
proc fcQCamera_isFlashReady(self: pointer, ): bool {.importc: "QCamera_isFlashReady".}
proc fcQCamera_torchMode(self: pointer, ): cint {.importc: "QCamera_torchMode".}
proc fcQCamera_isTorchModeSupported(self: pointer, mode: cint): bool {.importc: "QCamera_isTorchModeSupported".}
proc fcQCamera_exposureMode(self: pointer, ): cint {.importc: "QCamera_exposureMode".}
proc fcQCamera_isExposureModeSupported(self: pointer, mode: cint): bool {.importc: "QCamera_isExposureModeSupported".}
proc fcQCamera_exposureCompensation(self: pointer, ): float32 {.importc: "QCamera_exposureCompensation".}
proc fcQCamera_isoSensitivity(self: pointer, ): cint {.importc: "QCamera_isoSensitivity".}
proc fcQCamera_manualIsoSensitivity(self: pointer, ): cint {.importc: "QCamera_manualIsoSensitivity".}
proc fcQCamera_exposureTime(self: pointer, ): float32 {.importc: "QCamera_exposureTime".}
proc fcQCamera_manualExposureTime(self: pointer, ): float32 {.importc: "QCamera_manualExposureTime".}
proc fcQCamera_minimumIsoSensitivity(self: pointer, ): cint {.importc: "QCamera_minimumIsoSensitivity".}
proc fcQCamera_maximumIsoSensitivity(self: pointer, ): cint {.importc: "QCamera_maximumIsoSensitivity".}
proc fcQCamera_minimumExposureTime(self: pointer, ): float32 {.importc: "QCamera_minimumExposureTime".}
proc fcQCamera_maximumExposureTime(self: pointer, ): float32 {.importc: "QCamera_maximumExposureTime".}
proc fcQCamera_whiteBalanceMode(self: pointer, ): cint {.importc: "QCamera_whiteBalanceMode".}
proc fcQCamera_isWhiteBalanceModeSupported(self: pointer, mode: cint): bool {.importc: "QCamera_isWhiteBalanceModeSupported".}
proc fcQCamera_colorTemperature(self: pointer, ): cint {.importc: "QCamera_colorTemperature".}
proc fcQCamera_setActive(self: pointer, active: bool): void {.importc: "QCamera_setActive".}
proc fcQCamera_start(self: pointer, ): void {.importc: "QCamera_start".}
proc fcQCamera_stop(self: pointer, ): void {.importc: "QCamera_stop".}
proc fcQCamera_zoomTo(self: pointer, zoom: float32, rate: float32): void {.importc: "QCamera_zoomTo".}
proc fcQCamera_setFlashMode(self: pointer, mode: cint): void {.importc: "QCamera_setFlashMode".}
proc fcQCamera_setTorchMode(self: pointer, mode: cint): void {.importc: "QCamera_setTorchMode".}
proc fcQCamera_setExposureMode(self: pointer, mode: cint): void {.importc: "QCamera_setExposureMode".}
proc fcQCamera_setExposureCompensation(self: pointer, ev: float32): void {.importc: "QCamera_setExposureCompensation".}
proc fcQCamera_setManualIsoSensitivity(self: pointer, iso: cint): void {.importc: "QCamera_setManualIsoSensitivity".}
proc fcQCamera_setAutoIsoSensitivity(self: pointer, ): void {.importc: "QCamera_setAutoIsoSensitivity".}
proc fcQCamera_setManualExposureTime(self: pointer, seconds: float32): void {.importc: "QCamera_setManualExposureTime".}
proc fcQCamera_setAutoExposureTime(self: pointer, ): void {.importc: "QCamera_setAutoExposureTime".}
proc fcQCamera_setWhiteBalanceMode(self: pointer, mode: cint): void {.importc: "QCamera_setWhiteBalanceMode".}
proc fcQCamera_setColorTemperature(self: pointer, colorTemperature: cint): void {.importc: "QCamera_setColorTemperature".}
proc fcQCamera_activeChanged(self: pointer, param1: bool): void {.importc: "QCamera_activeChanged".}
proc fQCamera_connect_activeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_activeChanged".}
proc fcQCamera_errorChanged(self: pointer, ): void {.importc: "QCamera_errorChanged".}
proc fQCamera_connect_errorChanged(self: pointer, slot: int) {.importc: "QCamera_connect_errorChanged".}
proc fcQCamera_errorOccurred(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QCamera_errorOccurred".}
proc fQCamera_connect_errorOccurred(self: pointer, slot: int) {.importc: "QCamera_connect_errorOccurred".}
proc fcQCamera_cameraDeviceChanged(self: pointer, ): void {.importc: "QCamera_cameraDeviceChanged".}
proc fQCamera_connect_cameraDeviceChanged(self: pointer, slot: int) {.importc: "QCamera_connect_cameraDeviceChanged".}
proc fcQCamera_cameraFormatChanged(self: pointer, ): void {.importc: "QCamera_cameraFormatChanged".}
proc fQCamera_connect_cameraFormatChanged(self: pointer, slot: int) {.importc: "QCamera_connect_cameraFormatChanged".}
proc fcQCamera_supportedFeaturesChanged(self: pointer, ): void {.importc: "QCamera_supportedFeaturesChanged".}
proc fQCamera_connect_supportedFeaturesChanged(self: pointer, slot: int) {.importc: "QCamera_connect_supportedFeaturesChanged".}
proc fcQCamera_focusModeChanged(self: pointer, ): void {.importc: "QCamera_focusModeChanged".}
proc fQCamera_connect_focusModeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_focusModeChanged".}
proc fcQCamera_zoomFactorChanged(self: pointer, param1: float32): void {.importc: "QCamera_zoomFactorChanged".}
proc fQCamera_connect_zoomFactorChanged(self: pointer, slot: int) {.importc: "QCamera_connect_zoomFactorChanged".}
proc fcQCamera_minimumZoomFactorChanged(self: pointer, param1: float32): void {.importc: "QCamera_minimumZoomFactorChanged".}
proc fQCamera_connect_minimumZoomFactorChanged(self: pointer, slot: int) {.importc: "QCamera_connect_minimumZoomFactorChanged".}
proc fcQCamera_maximumZoomFactorChanged(self: pointer, param1: float32): void {.importc: "QCamera_maximumZoomFactorChanged".}
proc fQCamera_connect_maximumZoomFactorChanged(self: pointer, slot: int) {.importc: "QCamera_connect_maximumZoomFactorChanged".}
proc fcQCamera_focusDistanceChanged(self: pointer, param1: float32): void {.importc: "QCamera_focusDistanceChanged".}
proc fQCamera_connect_focusDistanceChanged(self: pointer, slot: int) {.importc: "QCamera_connect_focusDistanceChanged".}
proc fcQCamera_focusPointChanged(self: pointer, ): void {.importc: "QCamera_focusPointChanged".}
proc fQCamera_connect_focusPointChanged(self: pointer, slot: int) {.importc: "QCamera_connect_focusPointChanged".}
proc fcQCamera_customFocusPointChanged(self: pointer, ): void {.importc: "QCamera_customFocusPointChanged".}
proc fQCamera_connect_customFocusPointChanged(self: pointer, slot: int) {.importc: "QCamera_connect_customFocusPointChanged".}
proc fcQCamera_flashReady(self: pointer, param1: bool): void {.importc: "QCamera_flashReady".}
proc fQCamera_connect_flashReady(self: pointer, slot: int) {.importc: "QCamera_connect_flashReady".}
proc fcQCamera_flashModeChanged(self: pointer, ): void {.importc: "QCamera_flashModeChanged".}
proc fQCamera_connect_flashModeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_flashModeChanged".}
proc fcQCamera_torchModeChanged(self: pointer, ): void {.importc: "QCamera_torchModeChanged".}
proc fQCamera_connect_torchModeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_torchModeChanged".}
proc fcQCamera_exposureTimeChanged(self: pointer, speed: float32): void {.importc: "QCamera_exposureTimeChanged".}
proc fQCamera_connect_exposureTimeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_exposureTimeChanged".}
proc fcQCamera_manualExposureTimeChanged(self: pointer, speed: float32): void {.importc: "QCamera_manualExposureTimeChanged".}
proc fQCamera_connect_manualExposureTimeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_manualExposureTimeChanged".}
proc fcQCamera_isoSensitivityChanged(self: pointer, param1: cint): void {.importc: "QCamera_isoSensitivityChanged".}
proc fQCamera_connect_isoSensitivityChanged(self: pointer, slot: int) {.importc: "QCamera_connect_isoSensitivityChanged".}
proc fcQCamera_manualIsoSensitivityChanged(self: pointer, param1: cint): void {.importc: "QCamera_manualIsoSensitivityChanged".}
proc fQCamera_connect_manualIsoSensitivityChanged(self: pointer, slot: int) {.importc: "QCamera_connect_manualIsoSensitivityChanged".}
proc fcQCamera_exposureCompensationChanged(self: pointer, param1: float32): void {.importc: "QCamera_exposureCompensationChanged".}
proc fQCamera_connect_exposureCompensationChanged(self: pointer, slot: int) {.importc: "QCamera_connect_exposureCompensationChanged".}
proc fcQCamera_exposureModeChanged(self: pointer, ): void {.importc: "QCamera_exposureModeChanged".}
proc fQCamera_connect_exposureModeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_exposureModeChanged".}
proc fcQCamera_whiteBalanceModeChanged(self: pointer, ): void {.importc: "QCamera_whiteBalanceModeChanged".}
proc fQCamera_connect_whiteBalanceModeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_whiteBalanceModeChanged".}
proc fcQCamera_colorTemperatureChanged(self: pointer, ): void {.importc: "QCamera_colorTemperatureChanged".}
proc fQCamera_connect_colorTemperatureChanged(self: pointer, slot: int) {.importc: "QCamera_connect_colorTemperatureChanged".}
proc fcQCamera_brightnessChanged(self: pointer, ): void {.importc: "QCamera_brightnessChanged".}
proc fQCamera_connect_brightnessChanged(self: pointer, slot: int) {.importc: "QCamera_connect_brightnessChanged".}
proc fcQCamera_contrastChanged(self: pointer, ): void {.importc: "QCamera_contrastChanged".}
proc fQCamera_connect_contrastChanged(self: pointer, slot: int) {.importc: "QCamera_connect_contrastChanged".}
proc fcQCamera_saturationChanged(self: pointer, ): void {.importc: "QCamera_saturationChanged".}
proc fQCamera_connect_saturationChanged(self: pointer, slot: int) {.importc: "QCamera_connect_saturationChanged".}
proc fcQCamera_hueChanged(self: pointer, ): void {.importc: "QCamera_hueChanged".}
proc fQCamera_connect_hueChanged(self: pointer, slot: int) {.importc: "QCamera_connect_hueChanged".}
proc fcQCamera_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCamera_tr2".}
proc fcQCamera_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCamera_tr3".}
proc fQCamera_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCamera_virtualbase_metacall".}
proc fcQCamera_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCamera_override_virtual_metacall".}
proc fQCamera_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QCamera_virtualbase_event".}
proc fcQCamera_override_virtual_event(self: pointer, slot: int) {.importc: "QCamera_override_virtual_event".}
proc fQCamera_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCamera_virtualbase_eventFilter".}
proc fcQCamera_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCamera_override_virtual_eventFilter".}
proc fQCamera_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QCamera_virtualbase_timerEvent".}
proc fcQCamera_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCamera_override_virtual_timerEvent".}
proc fQCamera_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCamera_virtualbase_childEvent".}
proc fcQCamera_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCamera_override_virtual_childEvent".}
proc fQCamera_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCamera_virtualbase_customEvent".}
proc fcQCamera_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCamera_override_virtual_customEvent".}
proc fQCamera_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCamera_virtualbase_connectNotify".}
proc fcQCamera_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCamera_override_virtual_connectNotify".}
proc fQCamera_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCamera_virtualbase_disconnectNotify".}
proc fcQCamera_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCamera_override_virtual_disconnectNotify".}
proc fcQCamera_delete(self: pointer) {.importc: "QCamera_delete".}


func init*(T: type QCamera, h: ptr cQCamera): QCamera =
  T(h: h)
proc create*(T: type QCamera, ): QCamera =

  QCamera.init(fcQCamera_new())
proc create*(T: type QCamera, cameraDevice: gen_qcameradevice.QCameraDevice): QCamera =

  QCamera.init(fcQCamera_new2(cameraDevice.h))
proc create*(T: type QCamera, position: gen_qcameradevice.QCameraDevicePosition): QCamera =

  QCamera.init(fcQCamera_new3(cint(position)))
proc create2*(T: type QCamera, parent: gen_qobject.QObject): QCamera =

  QCamera.init(fcQCamera_new4(parent.h))
proc create*(T: type QCamera, cameraDevice: gen_qcameradevice.QCameraDevice, parent: gen_qobject.QObject): QCamera =

  QCamera.init(fcQCamera_new5(cameraDevice.h, parent.h))
proc create*(T: type QCamera, position: gen_qcameradevice.QCameraDevicePosition, parent: gen_qobject.QObject): QCamera =

  QCamera.init(fcQCamera_new6(cint(position), parent.h))
proc metaObject*(self: QCamera, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCamera_metaObject(self.h))

proc metacast*(self: QCamera, param1: cstring): pointer =

  fcQCamera_metacast(self.h, param1)

proc metacall*(self: QCamera, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCamera_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCamera, s: cstring): string =

  let v_ms = fcQCamera_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: QCamera, ): bool =

  fcQCamera_isAvailable(self.h)

proc isActive*(self: QCamera, ): bool =

  fcQCamera_isActive(self.h)

proc captureSession*(self: QCamera, ): gen_qmediacapturesession.QMediaCaptureSession =

  gen_qmediacapturesession.QMediaCaptureSession(h: fcQCamera_captureSession(self.h))

proc cameraDevice*(self: QCamera, ): gen_qcameradevice.QCameraDevice =

  gen_qcameradevice.QCameraDevice(h: fcQCamera_cameraDevice(self.h))

proc setCameraDevice*(self: QCamera, cameraDevice: gen_qcameradevice.QCameraDevice): void =

  fcQCamera_setCameraDevice(self.h, cameraDevice.h)

proc cameraFormat*(self: QCamera, ): gen_qcameradevice.QCameraFormat =

  gen_qcameradevice.QCameraFormat(h: fcQCamera_cameraFormat(self.h))

proc setCameraFormat*(self: QCamera, format: gen_qcameradevice.QCameraFormat): void =

  fcQCamera_setCameraFormat(self.h, format.h)

proc error*(self: QCamera, ): QCameraError =

  QCameraError(fcQCamera_error(self.h))

proc errorString*(self: QCamera, ): string =

  let v_ms = fcQCamera_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedFeatures*(self: QCamera, ): QCameraFeature =

  QCameraFeature(fcQCamera_supportedFeatures(self.h))

proc focusMode*(self: QCamera, ): QCameraFocusMode =

  QCameraFocusMode(fcQCamera_focusMode(self.h))

proc setFocusMode*(self: QCamera, mode: QCameraFocusMode): void =

  fcQCamera_setFocusMode(self.h, cint(mode))

proc isFocusModeSupported*(self: QCamera, mode: QCameraFocusMode): bool =

  fcQCamera_isFocusModeSupported(self.h, cint(mode))

proc focusPoint*(self: QCamera, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQCamera_focusPoint(self.h))

proc customFocusPoint*(self: QCamera, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQCamera_customFocusPoint(self.h))

proc setCustomFocusPoint*(self: QCamera, point: gen_qpoint.QPointF): void =

  fcQCamera_setCustomFocusPoint(self.h, point.h)

proc setFocusDistance*(self: QCamera, d: float32): void =

  fcQCamera_setFocusDistance(self.h, d)

proc focusDistance*(self: QCamera, ): float32 =

  fcQCamera_focusDistance(self.h)

proc minimumZoomFactor*(self: QCamera, ): float32 =

  fcQCamera_minimumZoomFactor(self.h)

proc maximumZoomFactor*(self: QCamera, ): float32 =

  fcQCamera_maximumZoomFactor(self.h)

proc zoomFactor*(self: QCamera, ): float32 =

  fcQCamera_zoomFactor(self.h)

proc setZoomFactor*(self: QCamera, factor: float32): void =

  fcQCamera_setZoomFactor(self.h, factor)

proc flashMode*(self: QCamera, ): QCameraFlashMode =

  QCameraFlashMode(fcQCamera_flashMode(self.h))

proc isFlashModeSupported*(self: QCamera, mode: QCameraFlashMode): bool =

  fcQCamera_isFlashModeSupported(self.h, cint(mode))

proc isFlashReady*(self: QCamera, ): bool =

  fcQCamera_isFlashReady(self.h)

proc torchMode*(self: QCamera, ): QCameraTorchMode =

  QCameraTorchMode(fcQCamera_torchMode(self.h))

proc isTorchModeSupported*(self: QCamera, mode: QCameraTorchMode): bool =

  fcQCamera_isTorchModeSupported(self.h, cint(mode))

proc exposureMode*(self: QCamera, ): QCameraExposureMode =

  QCameraExposureMode(fcQCamera_exposureMode(self.h))

proc isExposureModeSupported*(self: QCamera, mode: QCameraExposureMode): bool =

  fcQCamera_isExposureModeSupported(self.h, cint(mode))

proc exposureCompensation*(self: QCamera, ): float32 =

  fcQCamera_exposureCompensation(self.h)

proc isoSensitivity*(self: QCamera, ): cint =

  fcQCamera_isoSensitivity(self.h)

proc manualIsoSensitivity*(self: QCamera, ): cint =

  fcQCamera_manualIsoSensitivity(self.h)

proc exposureTime*(self: QCamera, ): float32 =

  fcQCamera_exposureTime(self.h)

proc manualExposureTime*(self: QCamera, ): float32 =

  fcQCamera_manualExposureTime(self.h)

proc minimumIsoSensitivity*(self: QCamera, ): cint =

  fcQCamera_minimumIsoSensitivity(self.h)

proc maximumIsoSensitivity*(self: QCamera, ): cint =

  fcQCamera_maximumIsoSensitivity(self.h)

proc minimumExposureTime*(self: QCamera, ): float32 =

  fcQCamera_minimumExposureTime(self.h)

proc maximumExposureTime*(self: QCamera, ): float32 =

  fcQCamera_maximumExposureTime(self.h)

proc whiteBalanceMode*(self: QCamera, ): QCameraWhiteBalanceMode =

  QCameraWhiteBalanceMode(fcQCamera_whiteBalanceMode(self.h))

proc isWhiteBalanceModeSupported*(self: QCamera, mode: QCameraWhiteBalanceMode): bool =

  fcQCamera_isWhiteBalanceModeSupported(self.h, cint(mode))

proc colorTemperature*(self: QCamera, ): cint =

  fcQCamera_colorTemperature(self.h)

proc setActive*(self: QCamera, active: bool): void =

  fcQCamera_setActive(self.h, active)

proc start*(self: QCamera, ): void =

  fcQCamera_start(self.h)

proc stop*(self: QCamera, ): void =

  fcQCamera_stop(self.h)

proc zoomTo*(self: QCamera, zoom: float32, rate: float32): void =

  fcQCamera_zoomTo(self.h, zoom, rate)

proc setFlashMode*(self: QCamera, mode: QCameraFlashMode): void =

  fcQCamera_setFlashMode(self.h, cint(mode))

proc setTorchMode*(self: QCamera, mode: QCameraTorchMode): void =

  fcQCamera_setTorchMode(self.h, cint(mode))

proc setExposureMode*(self: QCamera, mode: QCameraExposureMode): void =

  fcQCamera_setExposureMode(self.h, cint(mode))

proc setExposureCompensation*(self: QCamera, ev: float32): void =

  fcQCamera_setExposureCompensation(self.h, ev)

proc setManualIsoSensitivity*(self: QCamera, iso: cint): void =

  fcQCamera_setManualIsoSensitivity(self.h, iso)

proc setAutoIsoSensitivity*(self: QCamera, ): void =

  fcQCamera_setAutoIsoSensitivity(self.h)

proc setManualExposureTime*(self: QCamera, seconds: float32): void =

  fcQCamera_setManualExposureTime(self.h, seconds)

proc setAutoExposureTime*(self: QCamera, ): void =

  fcQCamera_setAutoExposureTime(self.h)

proc setWhiteBalanceMode*(self: QCamera, mode: QCameraWhiteBalanceMode): void =

  fcQCamera_setWhiteBalanceMode(self.h, cint(mode))

proc setColorTemperature*(self: QCamera, colorTemperature: cint): void =

  fcQCamera_setColorTemperature(self.h, colorTemperature)

proc activeChanged*(self: QCamera, param1: bool): void =

  fcQCamera_activeChanged(self.h, param1)

proc miqt_exec_callback_QCamera_activeChanged(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onactiveChanged*(self: QCamera, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_activeChanged(self.h, cast[int](addr tmp[]))
proc errorChanged*(self: QCamera, ): void =

  fcQCamera_errorChanged(self.h)

proc miqt_exec_callback_QCamera_errorChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onerrorChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_errorChanged(self.h, cast[int](addr tmp[]))
proc errorOccurred*(self: QCamera, error: QCameraError, errorString: string): void =

  fcQCamera_errorOccurred(self.h, cint(error), struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc miqt_exec_callback_QCamera_errorOccurred(slot: int, error: cint, errorString: struct_miqt_string) {.exportc.} =
  type Cb = proc(error: QCameraError, errorString: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QCameraError(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret


  nimfunc[](slotval1, slotval2)

proc onerrorOccurred*(self: QCamera, slot: proc(error: QCameraError, errorString: string)) =
  type Cb = proc(error: QCameraError, errorString: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_errorOccurred(self.h, cast[int](addr tmp[]))
proc cameraDeviceChanged*(self: QCamera, ): void =

  fcQCamera_cameraDeviceChanged(self.h)

proc miqt_exec_callback_QCamera_cameraDeviceChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncameraDeviceChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_cameraDeviceChanged(self.h, cast[int](addr tmp[]))
proc cameraFormatChanged*(self: QCamera, ): void =

  fcQCamera_cameraFormatChanged(self.h)

proc miqt_exec_callback_QCamera_cameraFormatChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncameraFormatChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_cameraFormatChanged(self.h, cast[int](addr tmp[]))
proc supportedFeaturesChanged*(self: QCamera, ): void =

  fcQCamera_supportedFeaturesChanged(self.h)

proc miqt_exec_callback_QCamera_supportedFeaturesChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsupportedFeaturesChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_supportedFeaturesChanged(self.h, cast[int](addr tmp[]))
proc focusModeChanged*(self: QCamera, ): void =

  fcQCamera_focusModeChanged(self.h)

proc miqt_exec_callback_QCamera_focusModeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfocusModeChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_focusModeChanged(self.h, cast[int](addr tmp[]))
proc zoomFactorChanged*(self: QCamera, param1: float32): void =

  fcQCamera_zoomFactorChanged(self.h, param1)

proc miqt_exec_callback_QCamera_zoomFactorChanged(slot: int, param1: float32) {.exportc.} =
  type Cb = proc(param1: float32)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onzoomFactorChanged*(self: QCamera, slot: proc(param1: float32)) =
  type Cb = proc(param1: float32)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_zoomFactorChanged(self.h, cast[int](addr tmp[]))
proc minimumZoomFactorChanged*(self: QCamera, param1: float32): void =

  fcQCamera_minimumZoomFactorChanged(self.h, param1)

proc miqt_exec_callback_QCamera_minimumZoomFactorChanged(slot: int, param1: float32) {.exportc.} =
  type Cb = proc(param1: float32)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onminimumZoomFactorChanged*(self: QCamera, slot: proc(param1: float32)) =
  type Cb = proc(param1: float32)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_minimumZoomFactorChanged(self.h, cast[int](addr tmp[]))
proc maximumZoomFactorChanged*(self: QCamera, param1: float32): void =

  fcQCamera_maximumZoomFactorChanged(self.h, param1)

proc miqt_exec_callback_QCamera_maximumZoomFactorChanged(slot: int, param1: float32) {.exportc.} =
  type Cb = proc(param1: float32)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onmaximumZoomFactorChanged*(self: QCamera, slot: proc(param1: float32)) =
  type Cb = proc(param1: float32)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_maximumZoomFactorChanged(self.h, cast[int](addr tmp[]))
proc focusDistanceChanged*(self: QCamera, param1: float32): void =

  fcQCamera_focusDistanceChanged(self.h, param1)

proc miqt_exec_callback_QCamera_focusDistanceChanged(slot: int, param1: float32) {.exportc.} =
  type Cb = proc(param1: float32)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onfocusDistanceChanged*(self: QCamera, slot: proc(param1: float32)) =
  type Cb = proc(param1: float32)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_focusDistanceChanged(self.h, cast[int](addr tmp[]))
proc focusPointChanged*(self: QCamera, ): void =

  fcQCamera_focusPointChanged(self.h)

proc miqt_exec_callback_QCamera_focusPointChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfocusPointChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_focusPointChanged(self.h, cast[int](addr tmp[]))
proc customFocusPointChanged*(self: QCamera, ): void =

  fcQCamera_customFocusPointChanged(self.h)

proc miqt_exec_callback_QCamera_customFocusPointChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncustomFocusPointChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_customFocusPointChanged(self.h, cast[int](addr tmp[]))
proc flashReady*(self: QCamera, param1: bool): void =

  fcQCamera_flashReady(self.h, param1)

proc miqt_exec_callback_QCamera_flashReady(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onflashReady*(self: QCamera, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_flashReady(self.h, cast[int](addr tmp[]))
proc flashModeChanged*(self: QCamera, ): void =

  fcQCamera_flashModeChanged(self.h)

proc miqt_exec_callback_QCamera_flashModeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onflashModeChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_flashModeChanged(self.h, cast[int](addr tmp[]))
proc torchModeChanged*(self: QCamera, ): void =

  fcQCamera_torchModeChanged(self.h)

proc miqt_exec_callback_QCamera_torchModeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ontorchModeChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_torchModeChanged(self.h, cast[int](addr tmp[]))
proc exposureTimeChanged*(self: QCamera, speed: float32): void =

  fcQCamera_exposureTimeChanged(self.h, speed)

proc miqt_exec_callback_QCamera_exposureTimeChanged(slot: int, speed: float32) {.exportc.} =
  type Cb = proc(speed: float32)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = speed


  nimfunc[](slotval1)

proc onexposureTimeChanged*(self: QCamera, slot: proc(speed: float32)) =
  type Cb = proc(speed: float32)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_exposureTimeChanged(self.h, cast[int](addr tmp[]))
proc manualExposureTimeChanged*(self: QCamera, speed: float32): void =

  fcQCamera_manualExposureTimeChanged(self.h, speed)

proc miqt_exec_callback_QCamera_manualExposureTimeChanged(slot: int, speed: float32) {.exportc.} =
  type Cb = proc(speed: float32)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = speed


  nimfunc[](slotval1)

proc onmanualExposureTimeChanged*(self: QCamera, slot: proc(speed: float32)) =
  type Cb = proc(speed: float32)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_manualExposureTimeChanged(self.h, cast[int](addr tmp[]))
proc isoSensitivityChanged*(self: QCamera, param1: cint): void =

  fcQCamera_isoSensitivityChanged(self.h, param1)

proc miqt_exec_callback_QCamera_isoSensitivityChanged(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onisoSensitivityChanged*(self: QCamera, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_isoSensitivityChanged(self.h, cast[int](addr tmp[]))
proc manualIsoSensitivityChanged*(self: QCamera, param1: cint): void =

  fcQCamera_manualIsoSensitivityChanged(self.h, param1)

proc miqt_exec_callback_QCamera_manualIsoSensitivityChanged(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onmanualIsoSensitivityChanged*(self: QCamera, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_manualIsoSensitivityChanged(self.h, cast[int](addr tmp[]))
proc exposureCompensationChanged*(self: QCamera, param1: float32): void =

  fcQCamera_exposureCompensationChanged(self.h, param1)

proc miqt_exec_callback_QCamera_exposureCompensationChanged(slot: int, param1: float32) {.exportc.} =
  type Cb = proc(param1: float32)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onexposureCompensationChanged*(self: QCamera, slot: proc(param1: float32)) =
  type Cb = proc(param1: float32)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_exposureCompensationChanged(self.h, cast[int](addr tmp[]))
proc exposureModeChanged*(self: QCamera, ): void =

  fcQCamera_exposureModeChanged(self.h)

proc miqt_exec_callback_QCamera_exposureModeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onexposureModeChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_exposureModeChanged(self.h, cast[int](addr tmp[]))
proc whiteBalanceModeChanged*(self: QCamera, ): void =

  fcQCamera_whiteBalanceModeChanged(self.h)

proc miqt_exec_callback_QCamera_whiteBalanceModeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onwhiteBalanceModeChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_whiteBalanceModeChanged(self.h, cast[int](addr tmp[]))
proc colorTemperatureChanged*(self: QCamera, ): void =

  fcQCamera_colorTemperatureChanged(self.h)

proc miqt_exec_callback_QCamera_colorTemperatureChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncolorTemperatureChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_colorTemperatureChanged(self.h, cast[int](addr tmp[]))
proc brightnessChanged*(self: QCamera, ): void =

  fcQCamera_brightnessChanged(self.h)

proc miqt_exec_callback_QCamera_brightnessChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onbrightnessChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_brightnessChanged(self.h, cast[int](addr tmp[]))
proc contrastChanged*(self: QCamera, ): void =

  fcQCamera_contrastChanged(self.h)

proc miqt_exec_callback_QCamera_contrastChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncontrastChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_contrastChanged(self.h, cast[int](addr tmp[]))
proc saturationChanged*(self: QCamera, ): void =

  fcQCamera_saturationChanged(self.h)

proc miqt_exec_callback_QCamera_saturationChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsaturationChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_saturationChanged(self.h, cast[int](addr tmp[]))
proc hueChanged*(self: QCamera, ): void =

  fcQCamera_hueChanged(self.h)

proc miqt_exec_callback_QCamera_hueChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onhueChanged*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_hueChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QCamera, s: cstring, c: cstring): string =

  let v_ms = fcQCamera_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCamera, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCamera_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QCamera, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQCamera_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCamerametacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QCamera, slot: proc(super: QCamerametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QCamerametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_metacall(self: ptr cQCamera, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCamera_metacall ".} =
  type Cb = proc(super: QCamerametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QCamera(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QCamera, event: gen_qcoreevent.QEvent): bool =


  fQCamera_virtualbase_event(self.h, event.h)

type QCameraeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QCamera, slot: proc(super: QCameraeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCameraeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_event(self: ptr cQCamera, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QCamera_event ".} =
  type Cb = proc(super: QCameraeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QCamera(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QCamera, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQCamera_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCameraeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QCamera, slot: proc(super: QCameraeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCameraeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_eventFilter(self: ptr cQCamera, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCamera_eventFilter ".} =
  type Cb = proc(super: QCameraeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QCamera(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QCamera, event: gen_qcoreevent.QTimerEvent): void =


  fQCamera_virtualbase_timerEvent(self.h, event.h)

type QCameratimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QCamera, slot: proc(super: QCameratimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameratimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_timerEvent(self: ptr cQCamera, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCamera_timerEvent ".} =
  type Cb = proc(super: QCameratimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QCamera(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QCamera, event: gen_qcoreevent.QChildEvent): void =


  fQCamera_virtualbase_childEvent(self.h, event.h)

type QCamerachildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QCamera, slot: proc(super: QCamerachildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCamerachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_childEvent(self: ptr cQCamera, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCamera_childEvent ".} =
  type Cb = proc(super: QCamerachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QCamera(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QCamera, event: gen_qcoreevent.QEvent): void =


  fQCamera_virtualbase_customEvent(self.h, event.h)

type QCameracustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QCamera, slot: proc(super: QCameracustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameracustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_customEvent(self: ptr cQCamera, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCamera_customEvent ".} =
  type Cb = proc(super: QCameracustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QCamera(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QCamera, signal: gen_qmetaobject.QMetaMethod): void =


  fQCamera_virtualbase_connectNotify(self.h, signal.h)

type QCameraconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QCamera, slot: proc(super: QCameraconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_connectNotify(self: ptr cQCamera, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCamera_connectNotify ".} =
  type Cb = proc(super: QCameraconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QCamera(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QCamera, signal: gen_qmetaobject.QMetaMethod): void =


  fQCamera_virtualbase_disconnectNotify(self.h, signal.h)

type QCameradisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QCamera, slot: proc(super: QCameradisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCameradisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_disconnectNotify(self: ptr cQCamera, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCamera_disconnectNotify ".} =
  type Cb = proc(super: QCameradisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QCamera(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QCamera) =
  fcQCamera_delete(self.h)
