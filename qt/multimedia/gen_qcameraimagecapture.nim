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
{.compile("gen_qcameraimagecapture.cpp", cflags).}


type QCameraImageCaptureError* = cint
const
  QCameraImageCaptureNoError* = 0
  QCameraImageCaptureNotReadyError* = 1
  QCameraImageCaptureResourceError* = 2
  QCameraImageCaptureOutOfSpaceError* = 3
  QCameraImageCaptureNotSupportedFeatureError* = 4
  QCameraImageCaptureFormatError* = 5



type QCameraImageCaptureDriveMode* = cint
const
  QCameraImageCaptureSingleImageCapture* = 0



type QCameraImageCaptureCaptureDestination* = cint
const
  QCameraImageCaptureCaptureToFile* = 1
  QCameraImageCaptureCaptureToBuffer* = 2



import gen_qcameraimagecapture_types
export gen_qcameraimagecapture_types

import
  gen_qcoreevent,
  gen_qimage,
  gen_qmediaencodersettings,
  gen_qmediaobject,
  gen_qmetaobject,
  gen_qmultimedia,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvariant,
  gen_qvideoframe
export
  gen_qcoreevent,
  gen_qimage,
  gen_qmediaencodersettings,
  gen_qmediaobject,
  gen_qmetaobject,
  gen_qmultimedia,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvariant,
  gen_qvideoframe

type cQCameraImageCapture*{.exportc: "QCameraImageCapture", incompleteStruct.} = object

proc fcQCameraImageCapture_new(mediaObject: pointer): ptr cQCameraImageCapture {.importc: "QCameraImageCapture_new".}
proc fcQCameraImageCapture_new2(mediaObject: pointer, parent: pointer): ptr cQCameraImageCapture {.importc: "QCameraImageCapture_new2".}
proc fcQCameraImageCapture_metaObject(self: pointer, ): pointer {.importc: "QCameraImageCapture_metaObject".}
proc fcQCameraImageCapture_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraImageCapture_metacast".}
proc fcQCameraImageCapture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraImageCapture_metacall".}
proc fcQCameraImageCapture_tr(s: cstring): struct_miqt_string {.importc: "QCameraImageCapture_tr".}
proc fcQCameraImageCapture_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraImageCapture_trUtf8".}
proc fcQCameraImageCapture_isAvailable(self: pointer, ): bool {.importc: "QCameraImageCapture_isAvailable".}
proc fcQCameraImageCapture_availability(self: pointer, ): cint {.importc: "QCameraImageCapture_availability".}
proc fcQCameraImageCapture_mediaObject(self: pointer, ): pointer {.importc: "QCameraImageCapture_mediaObject".}
proc fcQCameraImageCapture_error(self: pointer, ): cint {.importc: "QCameraImageCapture_error".}
proc fcQCameraImageCapture_errorString(self: pointer, ): struct_miqt_string {.importc: "QCameraImageCapture_errorString".}
proc fcQCameraImageCapture_isReadyForCapture(self: pointer, ): bool {.importc: "QCameraImageCapture_isReadyForCapture".}
proc fcQCameraImageCapture_supportedImageCodecs(self: pointer, ): struct_miqt_array {.importc: "QCameraImageCapture_supportedImageCodecs".}
proc fcQCameraImageCapture_imageCodecDescription(self: pointer, codecName: struct_miqt_string): struct_miqt_string {.importc: "QCameraImageCapture_imageCodecDescription".}
proc fcQCameraImageCapture_supportedResolutions(self: pointer, ): struct_miqt_array {.importc: "QCameraImageCapture_supportedResolutions".}
proc fcQCameraImageCapture_encodingSettings(self: pointer, ): pointer {.importc: "QCameraImageCapture_encodingSettings".}
proc fcQCameraImageCapture_setEncodingSettings(self: pointer, settings: pointer): void {.importc: "QCameraImageCapture_setEncodingSettings".}
proc fcQCameraImageCapture_supportedBufferFormats(self: pointer, ): struct_miqt_array {.importc: "QCameraImageCapture_supportedBufferFormats".}
proc fcQCameraImageCapture_bufferFormat(self: pointer, ): cint {.importc: "QCameraImageCapture_bufferFormat".}
proc fcQCameraImageCapture_setBufferFormat(self: pointer, format: cint): void {.importc: "QCameraImageCapture_setBufferFormat".}
proc fcQCameraImageCapture_isCaptureDestinationSupported(self: pointer, destination: cint): bool {.importc: "QCameraImageCapture_isCaptureDestinationSupported".}
proc fcQCameraImageCapture_captureDestination(self: pointer, ): cint {.importc: "QCameraImageCapture_captureDestination".}
proc fcQCameraImageCapture_setCaptureDestination(self: pointer, destination: cint): void {.importc: "QCameraImageCapture_setCaptureDestination".}
proc fcQCameraImageCapture_capture(self: pointer, ): cint {.importc: "QCameraImageCapture_capture".}
proc fcQCameraImageCapture_cancelCapture(self: pointer, ): void {.importc: "QCameraImageCapture_cancelCapture".}
proc fcQCameraImageCapture_error2(self: pointer, id: cint, error: cint, errorString: struct_miqt_string): void {.importc: "QCameraImageCapture_error2".}
proc fQCameraImageCapture_connect_error2(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_error2".}
proc fcQCameraImageCapture_readyForCaptureChanged(self: pointer, ready: bool): void {.importc: "QCameraImageCapture_readyForCaptureChanged".}
proc fQCameraImageCapture_connect_readyForCaptureChanged(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_readyForCaptureChanged".}
proc fcQCameraImageCapture_bufferFormatChanged(self: pointer, format: cint): void {.importc: "QCameraImageCapture_bufferFormatChanged".}
proc fQCameraImageCapture_connect_bufferFormatChanged(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_bufferFormatChanged".}
proc fcQCameraImageCapture_captureDestinationChanged(self: pointer, destination: cint): void {.importc: "QCameraImageCapture_captureDestinationChanged".}
proc fQCameraImageCapture_connect_captureDestinationChanged(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_captureDestinationChanged".}
proc fcQCameraImageCapture_imageExposed(self: pointer, id: cint): void {.importc: "QCameraImageCapture_imageExposed".}
proc fQCameraImageCapture_connect_imageExposed(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_imageExposed".}
proc fcQCameraImageCapture_imageCaptured(self: pointer, id: cint, preview: pointer): void {.importc: "QCameraImageCapture_imageCaptured".}
proc fQCameraImageCapture_connect_imageCaptured(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_imageCaptured".}
proc fcQCameraImageCapture_imageMetadataAvailable(self: pointer, id: cint, key: struct_miqt_string, value: pointer): void {.importc: "QCameraImageCapture_imageMetadataAvailable".}
proc fQCameraImageCapture_connect_imageMetadataAvailable(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_imageMetadataAvailable".}
proc fcQCameraImageCapture_imageAvailable(self: pointer, id: cint, frame: pointer): void {.importc: "QCameraImageCapture_imageAvailable".}
proc fQCameraImageCapture_connect_imageAvailable(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_imageAvailable".}
proc fcQCameraImageCapture_imageSaved(self: pointer, id: cint, fileName: struct_miqt_string): void {.importc: "QCameraImageCapture_imageSaved".}
proc fQCameraImageCapture_connect_imageSaved(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_imageSaved".}
proc fcQCameraImageCapture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageCapture_tr2".}
proc fcQCameraImageCapture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageCapture_tr3".}
proc fcQCameraImageCapture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageCapture_trUtf82".}
proc fcQCameraImageCapture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageCapture_trUtf83".}
proc fcQCameraImageCapture_supportedResolutions1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCameraImageCapture_supportedResolutions1".}
proc fcQCameraImageCapture_supportedResolutions2(self: pointer, settings: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QCameraImageCapture_supportedResolutions2".}
proc fcQCameraImageCapture_capture1(self: pointer, location: struct_miqt_string): cint {.importc: "QCameraImageCapture_capture1".}
proc fQCameraImageCapture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QCameraImageCapture_virtualbase_metaObject".}
proc fcQCameraImageCapture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QCameraImageCapture_override_virtual_metaObject".}
proc fQCameraImageCapture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QCameraImageCapture_virtualbase_metacast".}
proc fcQCameraImageCapture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QCameraImageCapture_override_virtual_metacast".}
proc fQCameraImageCapture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCameraImageCapture_virtualbase_metacall".}
proc fcQCameraImageCapture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCameraImageCapture_override_virtual_metacall".}
proc fQCameraImageCapture_virtualbase_mediaObject(self: pointer, ): pointer{.importc: "QCameraImageCapture_virtualbase_mediaObject".}
proc fcQCameraImageCapture_override_virtual_mediaObject(self: pointer, slot: int) {.importc: "QCameraImageCapture_override_virtual_mediaObject".}
proc fQCameraImageCapture_virtualbase_setMediaObject(self: pointer, mediaObject: pointer): bool{.importc: "QCameraImageCapture_virtualbase_setMediaObject".}
proc fcQCameraImageCapture_override_virtual_setMediaObject(self: pointer, slot: int) {.importc: "QCameraImageCapture_override_virtual_setMediaObject".}
proc fQCameraImageCapture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QCameraImageCapture_virtualbase_event".}
proc fcQCameraImageCapture_override_virtual_event(self: pointer, slot: int) {.importc: "QCameraImageCapture_override_virtual_event".}
proc fQCameraImageCapture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCameraImageCapture_virtualbase_eventFilter".}
proc fcQCameraImageCapture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCameraImageCapture_override_virtual_eventFilter".}
proc fQCameraImageCapture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QCameraImageCapture_virtualbase_timerEvent".}
proc fcQCameraImageCapture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCameraImageCapture_override_virtual_timerEvent".}
proc fQCameraImageCapture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCameraImageCapture_virtualbase_childEvent".}
proc fcQCameraImageCapture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCameraImageCapture_override_virtual_childEvent".}
proc fQCameraImageCapture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCameraImageCapture_virtualbase_customEvent".}
proc fcQCameraImageCapture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCameraImageCapture_override_virtual_customEvent".}
proc fQCameraImageCapture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCameraImageCapture_virtualbase_connectNotify".}
proc fcQCameraImageCapture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCameraImageCapture_override_virtual_connectNotify".}
proc fQCameraImageCapture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCameraImageCapture_virtualbase_disconnectNotify".}
proc fcQCameraImageCapture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCameraImageCapture_override_virtual_disconnectNotify".}
proc fcQCameraImageCapture_staticMetaObject(): pointer {.importc: "QCameraImageCapture_staticMetaObject".}
proc fcQCameraImageCapture_delete(self: pointer) {.importc: "QCameraImageCapture_delete".}


func init*(T: type QCameraImageCapture, h: ptr cQCameraImageCapture): QCameraImageCapture =
  T(h: h)
proc create*(T: type QCameraImageCapture, mediaObject: gen_qmediaobject.QMediaObject): QCameraImageCapture =

  QCameraImageCapture.init(fcQCameraImageCapture_new(mediaObject.h))
proc create*(T: type QCameraImageCapture, mediaObject: gen_qmediaobject.QMediaObject, parent: gen_qobject.QObject): QCameraImageCapture =

  QCameraImageCapture.init(fcQCameraImageCapture_new2(mediaObject.h, parent.h))
proc metaObject*(self: QCameraImageCapture, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCameraImageCapture_metaObject(self.h))

proc metacast*(self: QCameraImageCapture, param1: cstring): pointer =

  fcQCameraImageCapture_metacast(self.h, param1)

proc metacall*(self: QCameraImageCapture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCameraImageCapture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCameraImageCapture, s: cstring): string =

  let v_ms = fcQCameraImageCapture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCameraImageCapture, s: cstring): string =

  let v_ms = fcQCameraImageCapture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: QCameraImageCapture, ): bool =

  fcQCameraImageCapture_isAvailable(self.h)

proc availability*(self: QCameraImageCapture, ): gen_qmultimedia.QMultimediaAvailabilityStatus =

  gen_qmultimedia.QMultimediaAvailabilityStatus(fcQCameraImageCapture_availability(self.h))

proc mediaObject*(self: QCameraImageCapture, ): gen_qmediaobject.QMediaObject =

  gen_qmediaobject.QMediaObject(h: fcQCameraImageCapture_mediaObject(self.h))

proc error*(self: QCameraImageCapture, ): QCameraImageCaptureError =

  QCameraImageCaptureError(fcQCameraImageCapture_error(self.h))

proc errorString*(self: QCameraImageCapture, ): string =

  let v_ms = fcQCameraImageCapture_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isReadyForCapture*(self: QCameraImageCapture, ): bool =

  fcQCameraImageCapture_isReadyForCapture(self.h)

proc supportedImageCodecs*(self: QCameraImageCapture, ): seq[string] =

  var v_ma = fcQCameraImageCapture_supportedImageCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc imageCodecDescription*(self: QCameraImageCapture, codecName: string): string =

  let v_ms = fcQCameraImageCapture_imageCodecDescription(self.h, struct_miqt_string(data: codecName, len: csize_t(len(codecName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedResolutions*(self: QCameraImageCapture, ): seq[gen_qsize.QSize] =

  var v_ma = fcQCameraImageCapture_supportedResolutions(self.h)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc encodingSettings*(self: QCameraImageCapture, ): gen_qmediaencodersettings.QImageEncoderSettings =

  gen_qmediaencodersettings.QImageEncoderSettings(h: fcQCameraImageCapture_encodingSettings(self.h))

proc setEncodingSettings*(self: QCameraImageCapture, settings: gen_qmediaencodersettings.QImageEncoderSettings): void =

  fcQCameraImageCapture_setEncodingSettings(self.h, settings.h)

proc supportedBufferFormats*(self: QCameraImageCapture, ): seq[gen_qvideoframe.QVideoFramePixelFormat] =

  var v_ma = fcQCameraImageCapture_supportedBufferFormats(self.h)
  var vx_ret = newSeq[gen_qvideoframe.QVideoFramePixelFormat](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvideoframe.QVideoFramePixelFormat(v_outCast[i])
  vx_ret

proc bufferFormat*(self: QCameraImageCapture, ): gen_qvideoframe.QVideoFramePixelFormat =

  gen_qvideoframe.QVideoFramePixelFormat(fcQCameraImageCapture_bufferFormat(self.h))

proc setBufferFormat*(self: QCameraImageCapture, format: gen_qvideoframe.QVideoFramePixelFormat): void =

  fcQCameraImageCapture_setBufferFormat(self.h, cint(format))

proc isCaptureDestinationSupported*(self: QCameraImageCapture, destination: QCameraImageCaptureCaptureDestination): bool =

  fcQCameraImageCapture_isCaptureDestinationSupported(self.h, cint(destination))

proc captureDestination*(self: QCameraImageCapture, ): QCameraImageCaptureCaptureDestination =

  QCameraImageCaptureCaptureDestination(fcQCameraImageCapture_captureDestination(self.h))

proc setCaptureDestination*(self: QCameraImageCapture, destination: QCameraImageCaptureCaptureDestination): void =

  fcQCameraImageCapture_setCaptureDestination(self.h, cint(destination))

proc capture*(self: QCameraImageCapture, ): cint =

  fcQCameraImageCapture_capture(self.h)

proc cancelCapture*(self: QCameraImageCapture, ): void =

  fcQCameraImageCapture_cancelCapture(self.h)

proc error2*(self: QCameraImageCapture, id: cint, error: QCameraImageCaptureError, errorString: string): void =

  fcQCameraImageCapture_error2(self.h, id, cint(error), struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc miqt_exec_callback_QCameraImageCapture_error2(slot: int, id: cint, error: cint, errorString: struct_miqt_string) {.exportc.} =
  type Cb = proc(id: cint, error: QCameraImageCaptureError, errorString: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = QCameraImageCaptureError(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval3 = verrorStringx_ret


  nimfunc[](slotval1, slotval2, slotval3)

proc onerror2*(self: QCameraImageCapture, slot: proc(id: cint, error: QCameraImageCaptureError, errorString: string)) =
  type Cb = proc(id: cint, error: QCameraImageCaptureError, errorString: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_error2(self.h, cast[int](addr tmp[]))
proc readyForCaptureChanged*(self: QCameraImageCapture, ready: bool): void =

  fcQCameraImageCapture_readyForCaptureChanged(self.h, ready)

proc miqt_exec_callback_QCameraImageCapture_readyForCaptureChanged(slot: int, ready: bool) {.exportc.} =
  type Cb = proc(ready: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ready


  nimfunc[](slotval1)

proc onreadyForCaptureChanged*(self: QCameraImageCapture, slot: proc(ready: bool)) =
  type Cb = proc(ready: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_readyForCaptureChanged(self.h, cast[int](addr tmp[]))
proc bufferFormatChanged*(self: QCameraImageCapture, format: gen_qvideoframe.QVideoFramePixelFormat): void =

  fcQCameraImageCapture_bufferFormatChanged(self.h, cint(format))

proc miqt_exec_callback_QCameraImageCapture_bufferFormatChanged(slot: int, format: cint) {.exportc.} =
  type Cb = proc(format: gen_qvideoframe.QVideoFramePixelFormat)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qvideoframe.QVideoFramePixelFormat(format)


  nimfunc[](slotval1)

proc onbufferFormatChanged*(self: QCameraImageCapture, slot: proc(format: gen_qvideoframe.QVideoFramePixelFormat)) =
  type Cb = proc(format: gen_qvideoframe.QVideoFramePixelFormat)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_bufferFormatChanged(self.h, cast[int](addr tmp[]))
proc captureDestinationChanged*(self: QCameraImageCapture, destination: QCameraImageCaptureCaptureDestination): void =

  fcQCameraImageCapture_captureDestinationChanged(self.h, cint(destination))

proc miqt_exec_callback_QCameraImageCapture_captureDestinationChanged(slot: int, destination: cint) {.exportc.} =
  type Cb = proc(destination: QCameraImageCaptureCaptureDestination)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QCameraImageCaptureCaptureDestination(destination)


  nimfunc[](slotval1)

proc oncaptureDestinationChanged*(self: QCameraImageCapture, slot: proc(destination: QCameraImageCaptureCaptureDestination)) =
  type Cb = proc(destination: QCameraImageCaptureCaptureDestination)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_captureDestinationChanged(self.h, cast[int](addr tmp[]))
proc imageExposed*(self: QCameraImageCapture, id: cint): void =

  fcQCameraImageCapture_imageExposed(self.h, id)

proc miqt_exec_callback_QCameraImageCapture_imageExposed(slot: int, id: cint) {.exportc.} =
  type Cb = proc(id: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id


  nimfunc[](slotval1)

proc onimageExposed*(self: QCameraImageCapture, slot: proc(id: cint)) =
  type Cb = proc(id: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_imageExposed(self.h, cast[int](addr tmp[]))
proc imageCaptured*(self: QCameraImageCapture, id: cint, preview: gen_qimage.QImage): void =

  fcQCameraImageCapture_imageCaptured(self.h, id, preview.h)

proc miqt_exec_callback_QCameraImageCapture_imageCaptured(slot: int, id: cint, preview: pointer) {.exportc.} =
  type Cb = proc(id: cint, preview: gen_qimage.QImage)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qimage.QImage(h: preview)


  nimfunc[](slotval1, slotval2)

proc onimageCaptured*(self: QCameraImageCapture, slot: proc(id: cint, preview: gen_qimage.QImage)) =
  type Cb = proc(id: cint, preview: gen_qimage.QImage)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_imageCaptured(self.h, cast[int](addr tmp[]))
proc imageMetadataAvailable*(self: QCameraImageCapture, id: cint, key: string, value: gen_qvariant.QVariant): void =

  fcQCameraImageCapture_imageMetadataAvailable(self.h, id, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc miqt_exec_callback_QCameraImageCapture_imageMetadataAvailable(slot: int, id: cint, key: struct_miqt_string, value: pointer) {.exportc.} =
  type Cb = proc(id: cint, key: string, value: gen_qvariant.QVariant)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval2 = vkeyx_ret

  let slotval3 = gen_qvariant.QVariant(h: value)


  nimfunc[](slotval1, slotval2, slotval3)

proc onimageMetadataAvailable*(self: QCameraImageCapture, slot: proc(id: cint, key: string, value: gen_qvariant.QVariant)) =
  type Cb = proc(id: cint, key: string, value: gen_qvariant.QVariant)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_imageMetadataAvailable(self.h, cast[int](addr tmp[]))
proc imageAvailable*(self: QCameraImageCapture, id: cint, frame: gen_qvideoframe.QVideoFrame): void =

  fcQCameraImageCapture_imageAvailable(self.h, id, frame.h)

proc miqt_exec_callback_QCameraImageCapture_imageAvailable(slot: int, id: cint, frame: pointer) {.exportc.} =
  type Cb = proc(id: cint, frame: gen_qvideoframe.QVideoFrame)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qvideoframe.QVideoFrame(h: frame)


  nimfunc[](slotval1, slotval2)

proc onimageAvailable*(self: QCameraImageCapture, slot: proc(id: cint, frame: gen_qvideoframe.QVideoFrame)) =
  type Cb = proc(id: cint, frame: gen_qvideoframe.QVideoFrame)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_imageAvailable(self.h, cast[int](addr tmp[]))
proc imageSaved*(self: QCameraImageCapture, id: cint, fileName: string): void =

  fcQCameraImageCapture_imageSaved(self.h, id, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc miqt_exec_callback_QCameraImageCapture_imageSaved(slot: int, id: cint, fileName: struct_miqt_string) {.exportc.} =
  type Cb = proc(id: cint, fileName: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(toOpenArrayByte(vfileName_ms.data, 0, int(vfileName_ms.len)-1))
  c_free(vfileName_ms.data)
  let slotval2 = vfileNamex_ret


  nimfunc[](slotval1, slotval2)

proc onimageSaved*(self: QCameraImageCapture, slot: proc(id: cint, fileName: string)) =
  type Cb = proc(id: cint, fileName: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_imageSaved(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QCameraImageCapture, s: cstring, c: cstring): string =

  let v_ms = fcQCameraImageCapture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCameraImageCapture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraImageCapture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCameraImageCapture, s: cstring, c: cstring): string =

  let v_ms = fcQCameraImageCapture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCameraImageCapture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraImageCapture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedResolutions1*(self: QCameraImageCapture, settings: gen_qmediaencodersettings.QImageEncoderSettings): seq[gen_qsize.QSize] =

  var v_ma = fcQCameraImageCapture_supportedResolutions1(self.h, settings.h)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc supportedResolutions2*(self: QCameraImageCapture, settings: gen_qmediaencodersettings.QImageEncoderSettings, continuous: ptr bool): seq[gen_qsize.QSize] =

  var v_ma = fcQCameraImageCapture_supportedResolutions2(self.h, settings.h, continuous)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc capture1*(self: QCameraImageCapture, location: string): cint =

  fcQCameraImageCapture_capture1(self.h, struct_miqt_string(data: location, len: csize_t(len(location))))

proc callVirtualBase_metaObject(self: QCameraImageCapture, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQCameraImageCapture_virtualbase_metaObject(self.h))

type QCameraImageCapturemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QCameraImageCapture, slot: proc(super: QCameraImageCapturemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QCameraImageCapturemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_metaObject(self: ptr cQCameraImageCapture, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraImageCapture_metaObject ".} =
  type Cb = proc(super: QCameraImageCapturemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QCameraImageCapture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QCameraImageCapture, param1: cstring): pointer =


  fQCameraImageCapture_virtualbase_metacast(self.h, param1)

type QCameraImageCapturemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QCameraImageCapture, slot: proc(super: QCameraImageCapturemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QCameraImageCapturemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_metacast(self: ptr cQCameraImageCapture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QCameraImageCapture_metacast ".} =
  type Cb = proc(super: QCameraImageCapturemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QCameraImageCapture(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QCameraImageCapture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQCameraImageCapture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCameraImageCapturemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QCameraImageCapture, slot: proc(super: QCameraImageCapturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QCameraImageCapturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_metacall(self: ptr cQCameraImageCapture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCameraImageCapture_metacall ".} =
  type Cb = proc(super: QCameraImageCapturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QCameraImageCapture(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_mediaObject(self: QCameraImageCapture, ): gen_qmediaobject.QMediaObject =


  gen_qmediaobject.QMediaObject(h: fQCameraImageCapture_virtualbase_mediaObject(self.h))

type QCameraImageCapturemediaObjectBase* = proc(): gen_qmediaobject.QMediaObject
proc onmediaObject*(self: QCameraImageCapture, slot: proc(super: QCameraImageCapturemediaObjectBase): gen_qmediaobject.QMediaObject) =
  # TODO check subclass
  type Cb = proc(super: QCameraImageCapturemediaObjectBase): gen_qmediaobject.QMediaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_mediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_mediaObject(self: ptr cQCameraImageCapture, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraImageCapture_mediaObject ".} =
  type Cb = proc(super: QCameraImageCapturemediaObjectBase): gen_qmediaobject.QMediaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mediaObject(QCameraImageCapture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setMediaObject(self: QCameraImageCapture, mediaObject: gen_qmediaobject.QMediaObject): bool =


  fQCameraImageCapture_virtualbase_setMediaObject(self.h, mediaObject.h)

type QCameraImageCapturesetMediaObjectBase* = proc(mediaObject: gen_qmediaobject.QMediaObject): bool
proc onsetMediaObject*(self: QCameraImageCapture, slot: proc(super: QCameraImageCapturesetMediaObjectBase, mediaObject: gen_qmediaobject.QMediaObject): bool) =
  # TODO check subclass
  type Cb = proc(super: QCameraImageCapturesetMediaObjectBase, mediaObject: gen_qmediaobject.QMediaObject): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_setMediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_setMediaObject(self: ptr cQCameraImageCapture, slot: int, mediaObject: pointer): bool {.exportc: "miqt_exec_callback_QCameraImageCapture_setMediaObject ".} =
  type Cb = proc(super: QCameraImageCapturesetMediaObjectBase, mediaObject: gen_qmediaobject.QMediaObject): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mediaObject: gen_qmediaobject.QMediaObject): auto =
    callVirtualBase_setMediaObject(QCameraImageCapture(h: self), mediaObject)
  let slotval1 = gen_qmediaobject.QMediaObject(h: mediaObject)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QCameraImageCapture, event: gen_qcoreevent.QEvent): bool =


  fQCameraImageCapture_virtualbase_event(self.h, event.h)

type QCameraImageCaptureeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QCameraImageCapture, slot: proc(super: QCameraImageCaptureeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCameraImageCaptureeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_event(self: ptr cQCameraImageCapture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QCameraImageCapture_event ".} =
  type Cb = proc(super: QCameraImageCaptureeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QCameraImageCapture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QCameraImageCapture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQCameraImageCapture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCameraImageCaptureeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QCameraImageCapture, slot: proc(super: QCameraImageCaptureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCameraImageCaptureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_eventFilter(self: ptr cQCameraImageCapture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCameraImageCapture_eventFilter ".} =
  type Cb = proc(super: QCameraImageCaptureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QCameraImageCapture(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QCameraImageCapture, event: gen_qcoreevent.QTimerEvent): void =


  fQCameraImageCapture_virtualbase_timerEvent(self.h, event.h)

type QCameraImageCapturetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QCameraImageCapture, slot: proc(super: QCameraImageCapturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraImageCapturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_timerEvent(self: ptr cQCameraImageCapture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraImageCapture_timerEvent ".} =
  type Cb = proc(super: QCameraImageCapturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QCameraImageCapture(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QCameraImageCapture, event: gen_qcoreevent.QChildEvent): void =


  fQCameraImageCapture_virtualbase_childEvent(self.h, event.h)

type QCameraImageCapturechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QCameraImageCapture, slot: proc(super: QCameraImageCapturechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraImageCapturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_childEvent(self: ptr cQCameraImageCapture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraImageCapture_childEvent ".} =
  type Cb = proc(super: QCameraImageCapturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QCameraImageCapture(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QCameraImageCapture, event: gen_qcoreevent.QEvent): void =


  fQCameraImageCapture_virtualbase_customEvent(self.h, event.h)

type QCameraImageCapturecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QCameraImageCapture, slot: proc(super: QCameraImageCapturecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraImageCapturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_customEvent(self: ptr cQCameraImageCapture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraImageCapture_customEvent ".} =
  type Cb = proc(super: QCameraImageCapturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QCameraImageCapture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QCameraImageCapture, signal: gen_qmetaobject.QMetaMethod): void =


  fQCameraImageCapture_virtualbase_connectNotify(self.h, signal.h)

type QCameraImageCaptureconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QCameraImageCapture, slot: proc(super: QCameraImageCaptureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraImageCaptureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_connectNotify(self: ptr cQCameraImageCapture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCameraImageCapture_connectNotify ".} =
  type Cb = proc(super: QCameraImageCaptureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QCameraImageCapture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QCameraImageCapture, signal: gen_qmetaobject.QMetaMethod): void =


  fQCameraImageCapture_virtualbase_disconnectNotify(self.h, signal.h)

type QCameraImageCapturedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QCameraImageCapture, slot: proc(super: QCameraImageCapturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraImageCapturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_disconnectNotify(self: ptr cQCameraImageCapture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCameraImageCapture_disconnectNotify ".} =
  type Cb = proc(super: QCameraImageCapturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QCameraImageCapture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QCameraImageCapture): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCameraImageCapture_staticMetaObject())
proc delete*(self: QCameraImageCapture) =
  fcQCameraImageCapture_delete(self.h)
