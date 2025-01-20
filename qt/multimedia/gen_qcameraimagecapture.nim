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


type QCameraImageCaptureErrorEnum* = distinct cint
template NoError*(_: type QCameraImageCaptureErrorEnum): untyped = 0
template NotReadyError*(_: type QCameraImageCaptureErrorEnum): untyped = 1
template ResourceError*(_: type QCameraImageCaptureErrorEnum): untyped = 2
template OutOfSpaceError*(_: type QCameraImageCaptureErrorEnum): untyped = 3
template NotSupportedFeatureError*(_: type QCameraImageCaptureErrorEnum): untyped = 4
template FormatError*(_: type QCameraImageCaptureErrorEnum): untyped = 5


type QCameraImageCaptureDriveModeEnum* = distinct cint
template SingleImageCapture*(_: type QCameraImageCaptureDriveModeEnum): untyped = 0


type QCameraImageCaptureCaptureDestinationEnum* = distinct cint
template CaptureToFile*(_: type QCameraImageCaptureCaptureDestinationEnum): untyped = 1
template CaptureToBuffer*(_: type QCameraImageCaptureCaptureDestinationEnum): untyped = 2


import gen_qcameraimagecapture_types
export gen_qcameraimagecapture_types

import
  gen_qcoreevent,
  gen_qimage,
  gen_qmediaencodersettings,
  gen_qmediaobject,
  gen_qmetaobject,
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


func init*(T: type gen_qcameraimagecapture_types.QCameraImageCapture, h: ptr cQCameraImageCapture): gen_qcameraimagecapture_types.QCameraImageCapture =
  T(h: h)
proc create*(T: type gen_qcameraimagecapture_types.QCameraImageCapture, mediaObject: gen_qmediaobject.QMediaObject): gen_qcameraimagecapture_types.QCameraImageCapture =

  gen_qcameraimagecapture_types.QCameraImageCapture.init(fcQCameraImageCapture_new(mediaObject.h))
proc create*(T: type gen_qcameraimagecapture_types.QCameraImageCapture, mediaObject: gen_qmediaobject.QMediaObject, parent: gen_qobject.QObject): gen_qcameraimagecapture_types.QCameraImageCapture =

  gen_qcameraimagecapture_types.QCameraImageCapture.init(fcQCameraImageCapture_new2(mediaObject.h, parent.h))
proc metaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCameraImageCapture_metaObject(self.h))

proc metacast*(self: gen_qcameraimagecapture_types.QCameraImageCapture, param1: cstring): pointer =

  fcQCameraImageCapture_metacast(self.h, param1)

proc metacall*(self: gen_qcameraimagecapture_types.QCameraImageCapture, param1: cint, param2: cint, param3: pointer): cint =

  fcQCameraImageCapture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring): string =

  let v_ms = fcQCameraImageCapture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring): string =

  let v_ms = fcQCameraImageCapture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): bool =

  fcQCameraImageCapture_isAvailable(self.h)

proc availability*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): cint =

  cint(fcQCameraImageCapture_availability(self.h))

proc mediaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): gen_qmediaobject.QMediaObject =

  gen_qmediaobject.QMediaObject(h: fcQCameraImageCapture_mediaObject(self.h))

proc error*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): cint =

  cint(fcQCameraImageCapture_error(self.h))

proc errorString*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): string =

  let v_ms = fcQCameraImageCapture_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isReadyForCapture*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): bool =

  fcQCameraImageCapture_isReadyForCapture(self.h)

proc supportedImageCodecs*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): seq[string] =

  var v_ma = fcQCameraImageCapture_supportedImageCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc imageCodecDescription*(self: gen_qcameraimagecapture_types.QCameraImageCapture, codecName: string): string =

  let v_ms = fcQCameraImageCapture_imageCodecDescription(self.h, struct_miqt_string(data: codecName, len: csize_t(len(codecName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedResolutions*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): seq[gen_qsize.QSize] =

  var v_ma = fcQCameraImageCapture_supportedResolutions(self.h)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc encodingSettings*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): gen_qmediaencodersettings.QImageEncoderSettings =

  gen_qmediaencodersettings.QImageEncoderSettings(h: fcQCameraImageCapture_encodingSettings(self.h))

proc setEncodingSettings*(self: gen_qcameraimagecapture_types.QCameraImageCapture, settings: gen_qmediaencodersettings.QImageEncoderSettings): void =

  fcQCameraImageCapture_setEncodingSettings(self.h, settings.h)

proc supportedBufferFormats*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): seq[cint] =

  var v_ma = fcQCameraImageCapture_supportedBufferFormats(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  vx_ret

proc bufferFormat*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): cint =

  cint(fcQCameraImageCapture_bufferFormat(self.h))

proc setBufferFormat*(self: gen_qcameraimagecapture_types.QCameraImageCapture, format: cint): void =

  fcQCameraImageCapture_setBufferFormat(self.h, cint(format))

proc isCaptureDestinationSupported*(self: gen_qcameraimagecapture_types.QCameraImageCapture, destination: cint): bool =

  fcQCameraImageCapture_isCaptureDestinationSupported(self.h, cint(destination))

proc captureDestination*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): cint =

  cint(fcQCameraImageCapture_captureDestination(self.h))

proc setCaptureDestination*(self: gen_qcameraimagecapture_types.QCameraImageCapture, destination: cint): void =

  fcQCameraImageCapture_setCaptureDestination(self.h, cint(destination))

proc capture*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): cint =

  fcQCameraImageCapture_capture(self.h)

proc cancelCapture*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): void =

  fcQCameraImageCapture_cancelCapture(self.h)

proc error2*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, error: cint, errorString: string): void =

  fcQCameraImageCapture_error2(self.h, id, cint(error), struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc miqt_exec_callback_QCameraImageCapture_error2(slot: int, id: cint, error: cint, errorString: struct_miqt_string) {.exportc.} =
  type Cb = proc(id: cint, error: cint, errorString: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = cint(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval3 = verrorStringx_ret


  nimfunc[](slotval1, slotval2, slotval3)

proc onerror2*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: proc(id: cint, error: cint, errorString: string)) =
  type Cb = proc(id: cint, error: cint, errorString: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_error2(self.h, cast[int](addr tmp[]))
proc readyForCaptureChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ready: bool): void =

  fcQCameraImageCapture_readyForCaptureChanged(self.h, ready)

proc miqt_exec_callback_QCameraImageCapture_readyForCaptureChanged(slot: int, ready: bool) {.exportc.} =
  type Cb = proc(ready: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ready


  nimfunc[](slotval1)

proc onreadyForCaptureChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: proc(ready: bool)) =
  type Cb = proc(ready: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_readyForCaptureChanged(self.h, cast[int](addr tmp[]))
proc bufferFormatChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, format: cint): void =

  fcQCameraImageCapture_bufferFormatChanged(self.h, cint(format))

proc miqt_exec_callback_QCameraImageCapture_bufferFormatChanged(slot: int, format: cint) {.exportc.} =
  type Cb = proc(format: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(format)


  nimfunc[](slotval1)

proc onbufferFormatChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: proc(format: cint)) =
  type Cb = proc(format: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_bufferFormatChanged(self.h, cast[int](addr tmp[]))
proc captureDestinationChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, destination: cint): void =

  fcQCameraImageCapture_captureDestinationChanged(self.h, cint(destination))

proc miqt_exec_callback_QCameraImageCapture_captureDestinationChanged(slot: int, destination: cint) {.exportc.} =
  type Cb = proc(destination: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(destination)


  nimfunc[](slotval1)

proc oncaptureDestinationChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: proc(destination: cint)) =
  type Cb = proc(destination: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_captureDestinationChanged(self.h, cast[int](addr tmp[]))
proc imageExposed*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint): void =

  fcQCameraImageCapture_imageExposed(self.h, id)

proc miqt_exec_callback_QCameraImageCapture_imageExposed(slot: int, id: cint) {.exportc.} =
  type Cb = proc(id: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id


  nimfunc[](slotval1)

proc onimageExposed*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: proc(id: cint)) =
  type Cb = proc(id: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_imageExposed(self.h, cast[int](addr tmp[]))
proc imageCaptured*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, preview: gen_qimage.QImage): void =

  fcQCameraImageCapture_imageCaptured(self.h, id, preview.h)

proc miqt_exec_callback_QCameraImageCapture_imageCaptured(slot: int, id: cint, preview: pointer) {.exportc.} =
  type Cb = proc(id: cint, preview: gen_qimage.QImage)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qimage.QImage(h: preview)


  nimfunc[](slotval1, slotval2)

proc onimageCaptured*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: proc(id: cint, preview: gen_qimage.QImage)) =
  type Cb = proc(id: cint, preview: gen_qimage.QImage)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_imageCaptured(self.h, cast[int](addr tmp[]))
proc imageMetadataAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, key: string, value: gen_qvariant.QVariant): void =

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

proc onimageMetadataAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: proc(id: cint, key: string, value: gen_qvariant.QVariant)) =
  type Cb = proc(id: cint, key: string, value: gen_qvariant.QVariant)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_imageMetadataAvailable(self.h, cast[int](addr tmp[]))
proc imageAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, frame: gen_qvideoframe.QVideoFrame): void =

  fcQCameraImageCapture_imageAvailable(self.h, id, frame.h)

proc miqt_exec_callback_QCameraImageCapture_imageAvailable(slot: int, id: cint, frame: pointer) {.exportc.} =
  type Cb = proc(id: cint, frame: gen_qvideoframe.QVideoFrame)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qvideoframe.QVideoFrame(h: frame)


  nimfunc[](slotval1, slotval2)

proc onimageAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: proc(id: cint, frame: gen_qvideoframe.QVideoFrame)) =
  type Cb = proc(id: cint, frame: gen_qvideoframe.QVideoFrame)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_imageAvailable(self.h, cast[int](addr tmp[]))
proc imageSaved*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, fileName: string): void =

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

proc onimageSaved*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: proc(id: cint, fileName: string)) =
  type Cb = proc(id: cint, fileName: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCapture_connect_imageSaved(self.h, cast[int](addr tmp[]))
proc tr2*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring, c: cstring): string =

  let v_ms = fcQCameraImageCapture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraImageCapture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring, c: cstring): string =

  let v_ms = fcQCameraImageCapture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraImageCapture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedResolutions1*(self: gen_qcameraimagecapture_types.QCameraImageCapture, settings: gen_qmediaencodersettings.QImageEncoderSettings): seq[gen_qsize.QSize] =

  var v_ma = fcQCameraImageCapture_supportedResolutions1(self.h, settings.h)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc supportedResolutions2*(self: gen_qcameraimagecapture_types.QCameraImageCapture, settings: gen_qmediaencodersettings.QImageEncoderSettings, continuous: ptr bool): seq[gen_qsize.QSize] =

  var v_ma = fcQCameraImageCapture_supportedResolutions2(self.h, settings.h, continuous)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc capture1*(self: gen_qcameraimagecapture_types.QCameraImageCapture, location: string): cint =

  fcQCameraImageCapture_capture1(self.h, struct_miqt_string(data: location, len: csize_t(len(location))))

proc QCameraImageCapturemetaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQCameraImageCapture_virtualbase_metaObject(self.h))

type QCameraImageCapturemetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturemetaObjectProc) =
  # TODO check subclass
  var tmp = new QCameraImageCapturemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_metaObject(self: ptr cQCameraImageCapture, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraImageCapture_metaObject ".} =
  var nimfunc = cast[ptr QCameraImageCapturemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCameraImageCapturemetacast*(self: gen_qcameraimagecapture_types.QCameraImageCapture, param1: cstring): pointer =

  fQCameraImageCapture_virtualbase_metacast(self.h, param1)

type QCameraImageCapturemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturemetacastProc) =
  # TODO check subclass
  var tmp = new QCameraImageCapturemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_metacast(self: ptr cQCameraImageCapture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QCameraImageCapture_metacast ".} =
  var nimfunc = cast[ptr QCameraImageCapturemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCameraImageCapturemetacall*(self: gen_qcameraimagecapture_types.QCameraImageCapture, param1: cint, param2: cint, param3: pointer): cint =

  fQCameraImageCapture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCameraImageCapturemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturemetacallProc) =
  # TODO check subclass
  var tmp = new QCameraImageCapturemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_metacall(self: ptr cQCameraImageCapture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCameraImageCapture_metacall ".} =
  var nimfunc = cast[ptr QCameraImageCapturemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QCameraImageCapturemediaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): gen_qmediaobject.QMediaObject =

  gen_qmediaobject.QMediaObject(h: fQCameraImageCapture_virtualbase_mediaObject(self.h))

type QCameraImageCapturemediaObjectProc* = proc(): gen_qmediaobject.QMediaObject
proc onmediaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturemediaObjectProc) =
  # TODO check subclass
  var tmp = new QCameraImageCapturemediaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_mediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_mediaObject(self: ptr cQCameraImageCapture, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraImageCapture_mediaObject ".} =
  var nimfunc = cast[ptr QCameraImageCapturemediaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCameraImageCapturesetMediaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture, mediaObject: gen_qmediaobject.QMediaObject): bool =

  fQCameraImageCapture_virtualbase_setMediaObject(self.h, mediaObject.h)

type QCameraImageCapturesetMediaObjectProc* = proc(mediaObject: gen_qmediaobject.QMediaObject): bool
proc onsetMediaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturesetMediaObjectProc) =
  # TODO check subclass
  var tmp = new QCameraImageCapturesetMediaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_setMediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_setMediaObject(self: ptr cQCameraImageCapture, slot: int, mediaObject: pointer): bool {.exportc: "miqt_exec_callback_QCameraImageCapture_setMediaObject ".} =
  var nimfunc = cast[ptr QCameraImageCapturesetMediaObjectProc](cast[pointer](slot))
  let slotval1 = gen_qmediaobject.QMediaObject(h: mediaObject)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCameraImageCaptureevent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, event: gen_qcoreevent.QEvent): bool =

  fQCameraImageCapture_virtualbase_event(self.h, event.h)

type QCameraImageCaptureeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureeventProc) =
  # TODO check subclass
  var tmp = new QCameraImageCaptureeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_event(self: ptr cQCameraImageCapture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QCameraImageCapture_event ".} =
  var nimfunc = cast[ptr QCameraImageCaptureeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCameraImageCaptureeventFilter*(self: gen_qcameraimagecapture_types.QCameraImageCapture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQCameraImageCapture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCameraImageCaptureeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureeventFilterProc) =
  # TODO check subclass
  var tmp = new QCameraImageCaptureeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_eventFilter(self: ptr cQCameraImageCapture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCameraImageCapture_eventFilter ".} =
  var nimfunc = cast[ptr QCameraImageCaptureeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QCameraImageCapturetimerEvent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, event: gen_qcoreevent.QTimerEvent): void =

  fQCameraImageCapture_virtualbase_timerEvent(self.h, event.h)

type QCameraImageCapturetimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturetimerEventProc) =
  # TODO check subclass
  var tmp = new QCameraImageCapturetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_timerEvent(self: ptr cQCameraImageCapture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraImageCapture_timerEvent ".} =
  var nimfunc = cast[ptr QCameraImageCapturetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QCameraImageCapturechildEvent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, event: gen_qcoreevent.QChildEvent): void =

  fQCameraImageCapture_virtualbase_childEvent(self.h, event.h)

type QCameraImageCapturechildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturechildEventProc) =
  # TODO check subclass
  var tmp = new QCameraImageCapturechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_childEvent(self: ptr cQCameraImageCapture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraImageCapture_childEvent ".} =
  var nimfunc = cast[ptr QCameraImageCapturechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QCameraImageCapturecustomEvent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, event: gen_qcoreevent.QEvent): void =

  fQCameraImageCapture_virtualbase_customEvent(self.h, event.h)

type QCameraImageCapturecustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturecustomEventProc) =
  # TODO check subclass
  var tmp = new QCameraImageCapturecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_customEvent(self: ptr cQCameraImageCapture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraImageCapture_customEvent ".} =
  var nimfunc = cast[ptr QCameraImageCapturecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QCameraImageCaptureconnectNotify*(self: gen_qcameraimagecapture_types.QCameraImageCapture, signal: gen_qmetaobject.QMetaMethod): void =

  fQCameraImageCapture_virtualbase_connectNotify(self.h, signal.h)

type QCameraImageCaptureconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCameraImageCaptureconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_connectNotify(self: ptr cQCameraImageCapture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCameraImageCapture_connectNotify ".} =
  var nimfunc = cast[ptr QCameraImageCaptureconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QCameraImageCapturedisconnectNotify*(self: gen_qcameraimagecapture_types.QCameraImageCapture, signal: gen_qmetaobject.QMetaMethod): void =

  fQCameraImageCapture_virtualbase_disconnectNotify(self.h, signal.h)

type QCameraImageCapturedisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCameraImageCapturedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraImageCapture_disconnectNotify(self: ptr cQCameraImageCapture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCameraImageCapture_disconnectNotify ".} =
  var nimfunc = cast[ptr QCameraImageCapturedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qcameraimagecapture_types.QCameraImageCapture): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCameraImageCapture_staticMetaObject())
proc delete*(self: gen_qcameraimagecapture_types.QCameraImageCapture) =
  fcQCameraImageCapture_delete(self.h)
