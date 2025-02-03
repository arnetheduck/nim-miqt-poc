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
{.compile("gen_qcamera.cpp", cflags).}


type QCameraStatus* = cint
const
  QCameraUnavailableStatus* = 0
  QCameraUnloadedStatus* = 1
  QCameraLoadingStatus* = 2
  QCameraUnloadingStatus* = 3
  QCameraLoadedStatus* = 4
  QCameraStandbyStatus* = 5
  QCameraStartingStatus* = 6
  QCameraStoppingStatus* = 7
  QCameraActiveStatus* = 8



type QCameraState* = cint
const
  QCameraUnloadedState* = 0
  QCameraLoadedState* = 1
  QCameraActiveState* = 2



type QCameraCaptureMode* = cint
const
  QCameraCaptureViewfinder* = 0
  QCameraCaptureStillImage* = 1
  QCameraCaptureVideo* = 2



type QCameraError* = cint
const
  QCameraNoError* = 0
  QCameraCameraError* = 1
  QCameraInvalidRequestError* = 2
  QCameraServiceMissingError* = 3
  QCameraNotSupportedFeatureError* = 4



type QCameraLockStatus* = cint
const
  QCameraUnlocked* = 0
  QCameraSearching* = 1
  QCameraLocked* = 2



type QCameraLockChangeReason* = cint
const
  QCameraUserRequest* = 0
  QCameraLockAcquired* = 1
  QCameraLockFailed* = 2
  QCameraLockLost* = 3
  QCameraLockTemporaryLost* = 4



type QCameraLockType* = cint
const
  QCameraNoLock* = 0
  QCameraLockExposure* = 1
  QCameraLockWhiteBalance* = 2
  QCameraLockFocus* = 4



type QCameraPosition* = cint
const
  QCameraUnspecifiedPosition* = 0
  QCameraBackFace* = 1
  QCameraFrontFace* = 2



import gen_qcamera_types
export gen_qcamera_types

import
  gen_qabstractvideosurface,
  gen_qcameraexposure,
  gen_qcamerafocus,
  gen_qcameraimageprocessing,
  gen_qcamerainfo,
  gen_qcameraviewfindersettings,
  gen_qcoreevent,
  gen_qgraphicsvideoitem,
  gen_qmediaobject,
  gen_qmediaservice,
  gen_qmetaobject,
  gen_qmultimedia,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvideoframe,
  gen_qvideowidget
export
  gen_qabstractvideosurface,
  gen_qcameraexposure,
  gen_qcamerafocus,
  gen_qcameraimageprocessing,
  gen_qcamerainfo,
  gen_qcameraviewfindersettings,
  gen_qcoreevent,
  gen_qgraphicsvideoitem,
  gen_qmediaobject,
  gen_qmediaservice,
  gen_qmetaobject,
  gen_qmultimedia,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvideoframe,
  gen_qvideowidget

type cQCamera*{.exportc: "QCamera", incompleteStruct.} = object
type cQCameraFrameRateRange*{.exportc: "QCamera__FrameRateRange", incompleteStruct.} = object

proc fcQCamera_new(): ptr cQCamera {.importc: "QCamera_new".}
proc fcQCamera_new2(deviceName: struct_miqt_string): ptr cQCamera {.importc: "QCamera_new2".}
proc fcQCamera_new3(cameraInfo: pointer): ptr cQCamera {.importc: "QCamera_new3".}
proc fcQCamera_new4(position: cint): ptr cQCamera {.importc: "QCamera_new4".}
proc fcQCamera_new5(parent: pointer): ptr cQCamera {.importc: "QCamera_new5".}
proc fcQCamera_new6(deviceName: struct_miqt_string, parent: pointer): ptr cQCamera {.importc: "QCamera_new6".}
proc fcQCamera_new7(cameraInfo: pointer, parent: pointer): ptr cQCamera {.importc: "QCamera_new7".}
proc fcQCamera_new8(position: cint, parent: pointer): ptr cQCamera {.importc: "QCamera_new8".}
proc fcQCamera_metaObject(self: pointer, ): pointer {.importc: "QCamera_metaObject".}
proc fcQCamera_metacast(self: pointer, param1: cstring): pointer {.importc: "QCamera_metacast".}
proc fcQCamera_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCamera_metacall".}
proc fcQCamera_tr(s: cstring): struct_miqt_string {.importc: "QCamera_tr".}
proc fcQCamera_trUtf8(s: cstring): struct_miqt_string {.importc: "QCamera_trUtf8".}
proc fcQCamera_availableDevices(): struct_miqt_array {.importc: "QCamera_availableDevices".}
proc fcQCamera_deviceDescription(device: struct_miqt_string): struct_miqt_string {.importc: "QCamera_deviceDescription".}
proc fcQCamera_availability(self: pointer, ): cint {.importc: "QCamera_availability".}
proc fcQCamera_state(self: pointer, ): cint {.importc: "QCamera_state".}
proc fcQCamera_status(self: pointer, ): cint {.importc: "QCamera_status".}
proc fcQCamera_captureMode(self: pointer, ): cint {.importc: "QCamera_captureMode".}
proc fcQCamera_isCaptureModeSupported(self: pointer, mode: cint): bool {.importc: "QCamera_isCaptureModeSupported".}
proc fcQCamera_exposure(self: pointer, ): pointer {.importc: "QCamera_exposure".}
proc fcQCamera_focus(self: pointer, ): pointer {.importc: "QCamera_focus".}
proc fcQCamera_imageProcessing(self: pointer, ): pointer {.importc: "QCamera_imageProcessing".}
proc fcQCamera_setViewfinder(self: pointer, viewfinder: pointer): void {.importc: "QCamera_setViewfinder".}
proc fcQCamera_setViewfinderWithViewfinder(self: pointer, viewfinder: pointer): void {.importc: "QCamera_setViewfinderWithViewfinder".}
proc fcQCamera_setViewfinderWithSurface(self: pointer, surface: pointer): void {.importc: "QCamera_setViewfinderWithSurface".}
proc fcQCamera_viewfinderSettings(self: pointer, ): pointer {.importc: "QCamera_viewfinderSettings".}
proc fcQCamera_setViewfinderSettings(self: pointer, settings: pointer): void {.importc: "QCamera_setViewfinderSettings".}
proc fcQCamera_supportedViewfinderSettings(self: pointer, ): struct_miqt_array {.importc: "QCamera_supportedViewfinderSettings".}
proc fcQCamera_supportedViewfinderResolutions(self: pointer, ): struct_miqt_array {.importc: "QCamera_supportedViewfinderResolutions".}
proc fcQCamera_supportedViewfinderFrameRateRanges(self: pointer, ): struct_miqt_array {.importc: "QCamera_supportedViewfinderFrameRateRanges".}
proc fcQCamera_supportedViewfinderPixelFormats(self: pointer, ): struct_miqt_array {.importc: "QCamera_supportedViewfinderPixelFormats".}
proc fcQCamera_error(self: pointer, ): cint {.importc: "QCamera_error".}
proc fcQCamera_errorString(self: pointer, ): struct_miqt_string {.importc: "QCamera_errorString".}
proc fcQCamera_supportedLocks(self: pointer, ): cint {.importc: "QCamera_supportedLocks".}
proc fcQCamera_requestedLocks(self: pointer, ): cint {.importc: "QCamera_requestedLocks".}
proc fcQCamera_lockStatus(self: pointer, ): cint {.importc: "QCamera_lockStatus".}
proc fcQCamera_lockStatusWithLock(self: pointer, lock: cint): cint {.importc: "QCamera_lockStatusWithLock".}
proc fcQCamera_setCaptureMode(self: pointer, mode: cint): void {.importc: "QCamera_setCaptureMode".}
proc fcQCamera_load(self: pointer, ): void {.importc: "QCamera_load".}
proc fcQCamera_unload(self: pointer, ): void {.importc: "QCamera_unload".}
proc fcQCamera_start(self: pointer, ): void {.importc: "QCamera_start".}
proc fcQCamera_stop(self: pointer, ): void {.importc: "QCamera_stop".}
proc fcQCamera_searchAndLock(self: pointer, ): void {.importc: "QCamera_searchAndLock".}
proc fcQCamera_unlock(self: pointer, ): void {.importc: "QCamera_unlock".}
proc fcQCamera_searchAndLockWithLocks(self: pointer, locks: cint): void {.importc: "QCamera_searchAndLockWithLocks".}
proc fcQCamera_unlockWithLocks(self: pointer, locks: cint): void {.importc: "QCamera_unlockWithLocks".}
proc fcQCamera_stateChanged(self: pointer, state: cint): void {.importc: "QCamera_stateChanged".}
proc fQCamera_connect_stateChanged(self: pointer, slot: int) {.importc: "QCamera_connect_stateChanged".}
proc fcQCamera_captureModeChanged(self: pointer, param1: cint): void {.importc: "QCamera_captureModeChanged".}
proc fQCamera_connect_captureModeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_captureModeChanged".}
proc fcQCamera_statusChanged(self: pointer, status: cint): void {.importc: "QCamera_statusChanged".}
proc fQCamera_connect_statusChanged(self: pointer, slot: int) {.importc: "QCamera_connect_statusChanged".}
proc fcQCamera_locked(self: pointer, ): void {.importc: "QCamera_locked".}
proc fQCamera_connect_locked(self: pointer, slot: int) {.importc: "QCamera_connect_locked".}
proc fcQCamera_lockFailed(self: pointer, ): void {.importc: "QCamera_lockFailed".}
proc fQCamera_connect_lockFailed(self: pointer, slot: int) {.importc: "QCamera_connect_lockFailed".}
proc fcQCamera_lockStatusChanged(self: pointer, status: cint, reason: cint): void {.importc: "QCamera_lockStatusChanged".}
proc fQCamera_connect_lockStatusChanged(self: pointer, slot: int) {.importc: "QCamera_connect_lockStatusChanged".}
proc fcQCamera_lockStatusChanged2(self: pointer, lock: cint, status: cint, reason: cint): void {.importc: "QCamera_lockStatusChanged2".}
proc fQCamera_connect_lockStatusChanged2(self: pointer, slot: int) {.importc: "QCamera_connect_lockStatusChanged2".}
proc fcQCamera_errorWithQCameraError(self: pointer, param1: cint): void {.importc: "QCamera_errorWithQCameraError".}
proc fQCamera_connect_errorWithQCameraError(self: pointer, slot: int) {.importc: "QCamera_connect_errorWithQCameraError".}
proc fcQCamera_errorOccurred(self: pointer, param1: cint): void {.importc: "QCamera_errorOccurred".}
proc fQCamera_connect_errorOccurred(self: pointer, slot: int) {.importc: "QCamera_connect_errorOccurred".}
proc fcQCamera_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCamera_tr2".}
proc fcQCamera_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCamera_tr3".}
proc fcQCamera_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCamera_trUtf82".}
proc fcQCamera_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCamera_trUtf83".}
proc fcQCamera_supportedViewfinderSettings1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCamera_supportedViewfinderSettings1".}
proc fcQCamera_supportedViewfinderResolutions1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCamera_supportedViewfinderResolutions1".}
proc fcQCamera_supportedViewfinderFrameRateRanges1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCamera_supportedViewfinderFrameRateRanges1".}
proc fcQCamera_supportedViewfinderPixelFormats1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCamera_supportedViewfinderPixelFormats1".}
proc fQCamera_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCamera_virtualbase_metacall".}
proc fcQCamera_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCamera_override_virtual_metacall".}
proc fQCamera_virtualbase_availability(self: pointer, ): cint{.importc: "QCamera_virtualbase_availability".}
proc fcQCamera_override_virtual_availability(self: pointer, slot: int) {.importc: "QCamera_override_virtual_availability".}
proc fQCamera_virtualbase_isAvailable(self: pointer, ): bool{.importc: "QCamera_virtualbase_isAvailable".}
proc fcQCamera_override_virtual_isAvailable(self: pointer, slot: int) {.importc: "QCamera_override_virtual_isAvailable".}
proc fQCamera_virtualbase_service(self: pointer, ): pointer{.importc: "QCamera_virtualbase_service".}
proc fcQCamera_override_virtual_service(self: pointer, slot: int) {.importc: "QCamera_override_virtual_service".}
proc fQCamera_virtualbase_bind(self: pointer, param1: pointer): bool{.importc: "QCamera_virtualbase_bind".}
proc fcQCamera_override_virtual_bindX(self: pointer, slot: int) {.importc: "QCamera_override_virtual_bind".}
proc fQCamera_virtualbase_unbind(self: pointer, param1: pointer): void{.importc: "QCamera_virtualbase_unbind".}
proc fcQCamera_override_virtual_unbind(self: pointer, slot: int) {.importc: "QCamera_override_virtual_unbind".}
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
proc fcQCameraFrameRateRange_new(): ptr cQCameraFrameRateRange {.importc: "QCamera__FrameRateRange_new".}
proc fcQCameraFrameRateRange_new2(minimum: float64, maximum: float64): ptr cQCameraFrameRateRange {.importc: "QCamera__FrameRateRange_new2".}
proc fcQCameraFrameRateRange_new3(param1: pointer): ptr cQCameraFrameRateRange {.importc: "QCamera__FrameRateRange_new3".}
proc fcQCameraFrameRateRange_delete(self: pointer) {.importc: "QCamera__FrameRateRange_delete".}


func init*(T: type QCamera, h: ptr cQCamera): QCamera =
  T(h: h)
proc create*(T: type QCamera, ): QCamera =

  QCamera.init(fcQCamera_new())
proc create*(T: type QCamera, deviceName: seq[byte]): QCamera =

  QCamera.init(fcQCamera_new2(struct_miqt_string(data: cast[cstring](if len(deviceName) == 0: nil else: unsafeAddr deviceName[0]), len: csize_t(len(deviceName)))))
proc create*(T: type QCamera, cameraInfo: gen_qcamerainfo.QCameraInfo): QCamera =

  QCamera.init(fcQCamera_new3(cameraInfo.h))
proc create*(T: type QCamera, position: QCameraPosition): QCamera =

  QCamera.init(fcQCamera_new4(cint(position)))
proc create2*(T: type QCamera, parent: gen_qobject.QObject): QCamera =

  QCamera.init(fcQCamera_new5(parent.h))
proc create*(T: type QCamera, deviceName: seq[byte], parent: gen_qobject.QObject): QCamera =

  QCamera.init(fcQCamera_new6(struct_miqt_string(data: cast[cstring](if len(deviceName) == 0: nil else: unsafeAddr deviceName[0]), len: csize_t(len(deviceName))), parent.h))
proc create*(T: type QCamera, cameraInfo: gen_qcamerainfo.QCameraInfo, parent: gen_qobject.QObject): QCamera =

  QCamera.init(fcQCamera_new7(cameraInfo.h, parent.h))
proc create*(T: type QCamera, position: QCameraPosition, parent: gen_qobject.QObject): QCamera =

  QCamera.init(fcQCamera_new8(cint(position), parent.h))
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

proc trUtf8*(_: type QCamera, s: cstring): string =

  let v_ms = fcQCamera_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availableDevices*(_: type QCamera, ): seq[seq[byte]] =

  var v_ma = fcQCamera_availableDevices()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc deviceDescription*(_: type QCamera, device: seq[byte]): string =

  let v_ms = fcQCamera_deviceDescription(struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availability*(self: QCamera, ): gen_qmultimedia.QMultimediaAvailabilityStatus =

  gen_qmultimedia.QMultimediaAvailabilityStatus(fcQCamera_availability(self.h))

proc state*(self: QCamera, ): QCameraState =

  QCameraState(fcQCamera_state(self.h))

proc status*(self: QCamera, ): QCameraStatus =

  QCameraStatus(fcQCamera_status(self.h))

proc captureMode*(self: QCamera, ): QCameraCaptureMode =

  QCameraCaptureMode(fcQCamera_captureMode(self.h))

proc isCaptureModeSupported*(self: QCamera, mode: QCameraCaptureMode): bool =

  fcQCamera_isCaptureModeSupported(self.h, cint(mode))

proc exposure*(self: QCamera, ): gen_qcameraexposure.QCameraExposure =

  gen_qcameraexposure.QCameraExposure(h: fcQCamera_exposure(self.h))

proc focus*(self: QCamera, ): gen_qcamerafocus.QCameraFocus =

  gen_qcamerafocus.QCameraFocus(h: fcQCamera_focus(self.h))

proc imageProcessing*(self: QCamera, ): gen_qcameraimageprocessing.QCameraImageProcessing =

  gen_qcameraimageprocessing.QCameraImageProcessing(h: fcQCamera_imageProcessing(self.h))

proc setViewfinder*(self: QCamera, viewfinder: gen_qvideowidget.QVideoWidget): void =

  fcQCamera_setViewfinder(self.h, viewfinder.h)

proc setViewfinderWithViewfinder*(self: QCamera, viewfinder: gen_qgraphicsvideoitem.QGraphicsVideoItem): void =

  fcQCamera_setViewfinderWithViewfinder(self.h, viewfinder.h)

proc setViewfinderWithSurface*(self: QCamera, surface: gen_qabstractvideosurface.QAbstractVideoSurface): void =

  fcQCamera_setViewfinderWithSurface(self.h, surface.h)

proc viewfinderSettings*(self: QCamera, ): gen_qcameraviewfindersettings.QCameraViewfinderSettings =

  gen_qcameraviewfindersettings.QCameraViewfinderSettings(h: fcQCamera_viewfinderSettings(self.h))

proc setViewfinderSettings*(self: QCamera, settings: gen_qcameraviewfindersettings.QCameraViewfinderSettings): void =

  fcQCamera_setViewfinderSettings(self.h, settings.h)

proc supportedViewfinderSettings*(self: QCamera, ): seq[gen_qcameraviewfindersettings.QCameraViewfinderSettings] =

  var v_ma = fcQCamera_supportedViewfinderSettings(self.h)
  var vx_ret = newSeq[gen_qcameraviewfindersettings.QCameraViewfinderSettings](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcameraviewfindersettings.QCameraViewfinderSettings(h: v_outCast[i])
  vx_ret

proc supportedViewfinderResolutions*(self: QCamera, ): seq[gen_qsize.QSize] =

  var v_ma = fcQCamera_supportedViewfinderResolutions(self.h)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc supportedViewfinderFrameRateRanges*(self: QCamera, ): seq[QCameraFrameRateRange] =

  var v_ma = fcQCamera_supportedViewfinderFrameRateRanges(self.h)
  var vx_ret = newSeq[QCameraFrameRateRange](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QCameraFrameRateRange(h: v_outCast[i])
  vx_ret

proc supportedViewfinderPixelFormats*(self: QCamera, ): seq[gen_qvideoframe.QVideoFramePixelFormat] =

  var v_ma = fcQCamera_supportedViewfinderPixelFormats(self.h)
  var vx_ret = newSeq[gen_qvideoframe.QVideoFramePixelFormat](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvideoframe.QVideoFramePixelFormat(v_outCast[i])
  vx_ret

proc error*(self: QCamera, ): QCameraError =

  QCameraError(fcQCamera_error(self.h))

proc errorString*(self: QCamera, ): string =

  let v_ms = fcQCamera_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedLocks*(self: QCamera, ): QCameraLockType =

  QCameraLockType(fcQCamera_supportedLocks(self.h))

proc requestedLocks*(self: QCamera, ): QCameraLockType =

  QCameraLockType(fcQCamera_requestedLocks(self.h))

proc lockStatus*(self: QCamera, ): QCameraLockStatus =

  QCameraLockStatus(fcQCamera_lockStatus(self.h))

proc lockStatusWithLock*(self: QCamera, lock: QCameraLockType): QCameraLockStatus =

  QCameraLockStatus(fcQCamera_lockStatusWithLock(self.h, cint(lock)))

proc setCaptureMode*(self: QCamera, mode: QCameraCaptureMode): void =

  fcQCamera_setCaptureMode(self.h, cint(mode))

proc load*(self: QCamera, ): void =

  fcQCamera_load(self.h)

proc unload*(self: QCamera, ): void =

  fcQCamera_unload(self.h)

proc start*(self: QCamera, ): void =

  fcQCamera_start(self.h)

proc stop*(self: QCamera, ): void =

  fcQCamera_stop(self.h)

proc searchAndLock*(self: QCamera, ): void =

  fcQCamera_searchAndLock(self.h)

proc unlock*(self: QCamera, ): void =

  fcQCamera_unlock(self.h)

proc searchAndLockWithLocks*(self: QCamera, locks: QCameraLockType): void =

  fcQCamera_searchAndLockWithLocks(self.h, cint(locks))

proc unlockWithLocks*(self: QCamera, locks: QCameraLockType): void =

  fcQCamera_unlockWithLocks(self.h, cint(locks))

proc stateChanged*(self: QCamera, state: QCameraState): void =

  fcQCamera_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QCamera_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: QCameraState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QCameraState(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: QCamera, slot: proc(state: QCameraState)) =
  type Cb = proc(state: QCameraState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc captureModeChanged*(self: QCamera, param1: QCameraCaptureMode): void =

  fcQCamera_captureModeChanged(self.h, cint(param1))

proc miqt_exec_callback_QCamera_captureModeChanged(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: QCameraCaptureMode)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QCameraCaptureMode(param1)


  nimfunc[](slotval1)

proc oncaptureModeChanged*(self: QCamera, slot: proc(param1: QCameraCaptureMode)) =
  type Cb = proc(param1: QCameraCaptureMode)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_captureModeChanged(self.h, cast[int](addr tmp[]))
proc statusChanged*(self: QCamera, status: QCameraStatus): void =

  fcQCamera_statusChanged(self.h, cint(status))

proc miqt_exec_callback_QCamera_statusChanged(slot: int, status: cint) {.exportc.} =
  type Cb = proc(status: QCameraStatus)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QCameraStatus(status)


  nimfunc[](slotval1)

proc onstatusChanged*(self: QCamera, slot: proc(status: QCameraStatus)) =
  type Cb = proc(status: QCameraStatus)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_statusChanged(self.h, cast[int](addr tmp[]))
proc locked*(self: QCamera, ): void =

  fcQCamera_locked(self.h)

proc miqt_exec_callback_QCamera_locked(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onlocked*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_locked(self.h, cast[int](addr tmp[]))
proc lockFailed*(self: QCamera, ): void =

  fcQCamera_lockFailed(self.h)

proc miqt_exec_callback_QCamera_lockFailed(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onlockFailed*(self: QCamera, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_lockFailed(self.h, cast[int](addr tmp[]))
proc lockStatusChanged*(self: QCamera, status: QCameraLockStatus, reason: QCameraLockChangeReason): void =

  fcQCamera_lockStatusChanged(self.h, cint(status), cint(reason))

proc miqt_exec_callback_QCamera_lockStatusChanged(slot: int, status: cint, reason: cint) {.exportc.} =
  type Cb = proc(status: QCameraLockStatus, reason: QCameraLockChangeReason)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QCameraLockStatus(status)

  let slotval2 = QCameraLockChangeReason(reason)


  nimfunc[](slotval1, slotval2)

proc onlockStatusChanged*(self: QCamera, slot: proc(status: QCameraLockStatus, reason: QCameraLockChangeReason)) =
  type Cb = proc(status: QCameraLockStatus, reason: QCameraLockChangeReason)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_lockStatusChanged(self.h, cast[int](addr tmp[]))
proc lockStatusChanged2*(self: QCamera, lock: QCameraLockType, status: QCameraLockStatus, reason: QCameraLockChangeReason): void =

  fcQCamera_lockStatusChanged2(self.h, cint(lock), cint(status), cint(reason))

proc miqt_exec_callback_QCamera_lockStatusChanged2(slot: int, lock: cint, status: cint, reason: cint) {.exportc.} =
  type Cb = proc(lock: QCameraLockType, status: QCameraLockStatus, reason: QCameraLockChangeReason)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QCameraLockType(lock)

  let slotval2 = QCameraLockStatus(status)

  let slotval3 = QCameraLockChangeReason(reason)


  nimfunc[](slotval1, slotval2, slotval3)

proc onlockStatusChanged2*(self: QCamera, slot: proc(lock: QCameraLockType, status: QCameraLockStatus, reason: QCameraLockChangeReason)) =
  type Cb = proc(lock: QCameraLockType, status: QCameraLockStatus, reason: QCameraLockChangeReason)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_lockStatusChanged2(self.h, cast[int](addr tmp[]))
proc errorWithQCameraError*(self: QCamera, param1: QCameraError): void =

  fcQCamera_errorWithQCameraError(self.h, cint(param1))

proc miqt_exec_callback_QCamera_errorWithQCameraError(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: QCameraError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QCameraError(param1)


  nimfunc[](slotval1)

proc onerrorWithQCameraError*(self: QCamera, slot: proc(param1: QCameraError)) =
  type Cb = proc(param1: QCameraError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_errorWithQCameraError(self.h, cast[int](addr tmp[]))
proc errorOccurred*(self: QCamera, param1: QCameraError): void =

  fcQCamera_errorOccurred(self.h, cint(param1))

proc miqt_exec_callback_QCamera_errorOccurred(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: QCameraError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QCameraError(param1)


  nimfunc[](slotval1)

proc onerrorOccurred*(self: QCamera, slot: proc(param1: QCameraError)) =
  type Cb = proc(param1: QCameraError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCamera_connect_errorOccurred(self.h, cast[int](addr tmp[]))
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

proc trUtf82*(_: type QCamera, s: cstring, c: cstring): string =

  let v_ms = fcQCamera_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCamera, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCamera_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedViewfinderSettings1*(self: QCamera, settings: gen_qcameraviewfindersettings.QCameraViewfinderSettings): seq[gen_qcameraviewfindersettings.QCameraViewfinderSettings] =

  var v_ma = fcQCamera_supportedViewfinderSettings1(self.h, settings.h)
  var vx_ret = newSeq[gen_qcameraviewfindersettings.QCameraViewfinderSettings](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcameraviewfindersettings.QCameraViewfinderSettings(h: v_outCast[i])
  vx_ret

proc supportedViewfinderResolutions1*(self: QCamera, settings: gen_qcameraviewfindersettings.QCameraViewfinderSettings): seq[gen_qsize.QSize] =

  var v_ma = fcQCamera_supportedViewfinderResolutions1(self.h, settings.h)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc supportedViewfinderFrameRateRanges1*(self: QCamera, settings: gen_qcameraviewfindersettings.QCameraViewfinderSettings): seq[QCameraFrameRateRange] =

  var v_ma = fcQCamera_supportedViewfinderFrameRateRanges1(self.h, settings.h)
  var vx_ret = newSeq[QCameraFrameRateRange](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QCameraFrameRateRange(h: v_outCast[i])
  vx_ret

proc supportedViewfinderPixelFormats1*(self: QCamera, settings: gen_qcameraviewfindersettings.QCameraViewfinderSettings): seq[gen_qvideoframe.QVideoFramePixelFormat] =

  var v_ma = fcQCamera_supportedViewfinderPixelFormats1(self.h, settings.h)
  var vx_ret = newSeq[gen_qvideoframe.QVideoFramePixelFormat](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvideoframe.QVideoFramePixelFormat(v_outCast[i])
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
proc callVirtualBase_availability(self: QCamera, ): gen_qmultimedia.QMultimediaAvailabilityStatus =


  gen_qmultimedia.QMultimediaAvailabilityStatus(fQCamera_virtualbase_availability(self.h))

type QCameraavailabilityBase* = proc(): gen_qmultimedia.QMultimediaAvailabilityStatus
proc onavailability*(self: QCamera, slot: proc(super: QCameraavailabilityBase): gen_qmultimedia.QMultimediaAvailabilityStatus) =
  # TODO check subclass
  type Cb = proc(super: QCameraavailabilityBase): gen_qmultimedia.QMultimediaAvailabilityStatus
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_availability(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_availability(self: ptr cQCamera, slot: int): cint {.exportc: "miqt_exec_callback_QCamera_availability ".} =
  type Cb = proc(super: QCameraavailabilityBase): gen_qmultimedia.QMultimediaAvailabilityStatus
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_availability(QCamera(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_isAvailable(self: QCamera, ): bool =


  fQCamera_virtualbase_isAvailable(self.h)

type QCameraisAvailableBase* = proc(): bool
proc onisAvailable*(self: QCamera, slot: proc(super: QCameraisAvailableBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QCameraisAvailableBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_isAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_isAvailable(self: ptr cQCamera, slot: int): bool {.exportc: "miqt_exec_callback_QCamera_isAvailable ".} =
  type Cb = proc(super: QCameraisAvailableBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isAvailable(QCamera(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_service(self: QCamera, ): gen_qmediaservice.QMediaService =


  gen_qmediaservice.QMediaService(h: fQCamera_virtualbase_service(self.h))

type QCameraserviceBase* = proc(): gen_qmediaservice.QMediaService
proc onservice*(self: QCamera, slot: proc(super: QCameraserviceBase): gen_qmediaservice.QMediaService) =
  # TODO check subclass
  type Cb = proc(super: QCameraserviceBase): gen_qmediaservice.QMediaService
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_service(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_service(self: ptr cQCamera, slot: int): pointer {.exportc: "miqt_exec_callback_QCamera_service ".} =
  type Cb = proc(super: QCameraserviceBase): gen_qmediaservice.QMediaService
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_service(QCamera(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_bindX(self: QCamera, param1: gen_qobject.QObject): bool =


  fQCamera_virtualbase_bind(self.h, param1.h)

type QCamerabindXBase* = proc(param1: gen_qobject.QObject): bool
proc onbindX*(self: QCamera, slot: proc(super: QCamerabindXBase, param1: gen_qobject.QObject): bool) =
  # TODO check subclass
  type Cb = proc(super: QCamerabindXBase, param1: gen_qobject.QObject): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_bindX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_bind(self: ptr cQCamera, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QCamera_bind ".} =
  type Cb = proc(super: QCamerabindXBase, param1: gen_qobject.QObject): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject): auto =
    callVirtualBase_bindX(QCamera(h: self), param1)
  let slotval1 = gen_qobject.QObject(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_unbind(self: QCamera, param1: gen_qobject.QObject): void =


  fQCamera_virtualbase_unbind(self.h, param1.h)

type QCameraunbindBase* = proc(param1: gen_qobject.QObject): void
proc onunbind*(self: QCamera, slot: proc(super: QCameraunbindBase, param1: gen_qobject.QObject): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraunbindBase, param1: gen_qobject.QObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_unbind(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_unbind(self: ptr cQCamera, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCamera_unbind ".} =
  type Cb = proc(super: QCameraunbindBase, param1: gen_qobject.QObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject): auto =
    callVirtualBase_unbind(QCamera(h: self), param1)
  let slotval1 = gen_qobject.QObject(h: param1)


  nimfunc[](superCall, slotval1)
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

func init*(T: type QCameraFrameRateRange, h: ptr cQCameraFrameRateRange): QCameraFrameRateRange =
  T(h: h)
proc create*(T: type QCameraFrameRateRange, ): QCameraFrameRateRange =

  QCameraFrameRateRange.init(fcQCameraFrameRateRange_new())
proc create*(T: type QCameraFrameRateRange, minimum: float64, maximum: float64): QCameraFrameRateRange =

  QCameraFrameRateRange.init(fcQCameraFrameRateRange_new2(minimum, maximum))
proc create*(T: type QCameraFrameRateRange, param1: QCameraFrameRateRange): QCameraFrameRateRange =

  QCameraFrameRateRange.init(fcQCameraFrameRateRange_new3(param1.h))
proc delete*(self: QCameraFrameRateRange) =
  fcQCameraFrameRateRange_delete(self.h)
