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
{.compile("gen_qimagecapture.cpp", cflags).}


type QImageCaptureError* = cint
const
  QImageCaptureNoError* = 0
  QImageCaptureNotReadyError* = 1
  QImageCaptureResourceError* = 2
  QImageCaptureOutOfSpaceError* = 3
  QImageCaptureNotSupportedFeatureError* = 4
  QImageCaptureFormatError* = 5



type QImageCaptureQuality* = cint
const
  QImageCaptureVeryLowQuality* = 0
  QImageCaptureLowQuality* = 1
  QImageCaptureNormalQuality* = 2
  QImageCaptureHighQuality* = 3
  QImageCaptureVeryHighQuality* = 4



type QImageCaptureFileFormat* = cint
const
  QImageCaptureUnspecifiedFormat* = 0
  QImageCaptureJPEG* = 1
  QImageCapturePNG* = 2
  QImageCaptureWebP* = 3
  QImageCaptureTiff* = 4
  QImageCaptureLastFileFormat* = 4



import gen_qimagecapture_types
export gen_qimagecapture_types

import
  gen_qcoreevent,
  gen_qimage,
  gen_qmediacapturesession,
  gen_qmediametadata,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvideoframe
export
  gen_qcoreevent,
  gen_qimage,
  gen_qmediacapturesession,
  gen_qmediametadata,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvideoframe

type cQImageCapture*{.exportc: "QImageCapture", incompleteStruct.} = object

proc fcQImageCapture_new(): ptr cQImageCapture {.importc: "QImageCapture_new".}
proc fcQImageCapture_new2(parent: pointer): ptr cQImageCapture {.importc: "QImageCapture_new2".}
proc fcQImageCapture_metaObject(self: pointer, ): pointer {.importc: "QImageCapture_metaObject".}
proc fcQImageCapture_metacast(self: pointer, param1: cstring): pointer {.importc: "QImageCapture_metacast".}
proc fcQImageCapture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QImageCapture_metacall".}
proc fcQImageCapture_tr(s: cstring): struct_miqt_string {.importc: "QImageCapture_tr".}
proc fcQImageCapture_isAvailable(self: pointer, ): bool {.importc: "QImageCapture_isAvailable".}
proc fcQImageCapture_captureSession(self: pointer, ): pointer {.importc: "QImageCapture_captureSession".}
proc fcQImageCapture_error(self: pointer, ): cint {.importc: "QImageCapture_error".}
proc fcQImageCapture_errorString(self: pointer, ): struct_miqt_string {.importc: "QImageCapture_errorString".}
proc fcQImageCapture_isReadyForCapture(self: pointer, ): bool {.importc: "QImageCapture_isReadyForCapture".}
proc fcQImageCapture_fileFormat(self: pointer, ): cint {.importc: "QImageCapture_fileFormat".}
proc fcQImageCapture_setFileFormat(self: pointer, format: cint): void {.importc: "QImageCapture_setFileFormat".}
proc fcQImageCapture_supportedFormats(): struct_miqt_array {.importc: "QImageCapture_supportedFormats".}
proc fcQImageCapture_fileFormatName(c: cint): struct_miqt_string {.importc: "QImageCapture_fileFormatName".}
proc fcQImageCapture_fileFormatDescription(c: cint): struct_miqt_string {.importc: "QImageCapture_fileFormatDescription".}
proc fcQImageCapture_resolution(self: pointer, ): pointer {.importc: "QImageCapture_resolution".}
proc fcQImageCapture_setResolution(self: pointer, resolution: pointer): void {.importc: "QImageCapture_setResolution".}
proc fcQImageCapture_setResolution2(self: pointer, width: cint, height: cint): void {.importc: "QImageCapture_setResolution2".}
proc fcQImageCapture_quality(self: pointer, ): cint {.importc: "QImageCapture_quality".}
proc fcQImageCapture_setQuality(self: pointer, quality: cint): void {.importc: "QImageCapture_setQuality".}
proc fcQImageCapture_metaData(self: pointer, ): pointer {.importc: "QImageCapture_metaData".}
proc fcQImageCapture_setMetaData(self: pointer, metaData: pointer): void {.importc: "QImageCapture_setMetaData".}
proc fcQImageCapture_addMetaData(self: pointer, metaData: pointer): void {.importc: "QImageCapture_addMetaData".}
proc fcQImageCapture_captureToFile(self: pointer, ): cint {.importc: "QImageCapture_captureToFile".}
proc fcQImageCapture_capture(self: pointer, ): cint {.importc: "QImageCapture_capture".}
proc fcQImageCapture_errorChanged(self: pointer, ): void {.importc: "QImageCapture_errorChanged".}
proc fQImageCapture_connect_errorChanged(self: pointer, slot: int) {.importc: "QImageCapture_connect_errorChanged".}
proc fcQImageCapture_errorOccurred(self: pointer, id: cint, error: cint, errorString: struct_miqt_string): void {.importc: "QImageCapture_errorOccurred".}
proc fQImageCapture_connect_errorOccurred(self: pointer, slot: int) {.importc: "QImageCapture_connect_errorOccurred".}
proc fcQImageCapture_readyForCaptureChanged(self: pointer, ready: bool): void {.importc: "QImageCapture_readyForCaptureChanged".}
proc fQImageCapture_connect_readyForCaptureChanged(self: pointer, slot: int) {.importc: "QImageCapture_connect_readyForCaptureChanged".}
proc fcQImageCapture_metaDataChanged(self: pointer, ): void {.importc: "QImageCapture_metaDataChanged".}
proc fQImageCapture_connect_metaDataChanged(self: pointer, slot: int) {.importc: "QImageCapture_connect_metaDataChanged".}
proc fcQImageCapture_fileFormatChanged(self: pointer, ): void {.importc: "QImageCapture_fileFormatChanged".}
proc fQImageCapture_connect_fileFormatChanged(self: pointer, slot: int) {.importc: "QImageCapture_connect_fileFormatChanged".}
proc fcQImageCapture_qualityChanged(self: pointer, ): void {.importc: "QImageCapture_qualityChanged".}
proc fQImageCapture_connect_qualityChanged(self: pointer, slot: int) {.importc: "QImageCapture_connect_qualityChanged".}
proc fcQImageCapture_resolutionChanged(self: pointer, ): void {.importc: "QImageCapture_resolutionChanged".}
proc fQImageCapture_connect_resolutionChanged(self: pointer, slot: int) {.importc: "QImageCapture_connect_resolutionChanged".}
proc fcQImageCapture_imageExposed(self: pointer, id: cint): void {.importc: "QImageCapture_imageExposed".}
proc fQImageCapture_connect_imageExposed(self: pointer, slot: int) {.importc: "QImageCapture_connect_imageExposed".}
proc fcQImageCapture_imageCaptured(self: pointer, id: cint, preview: pointer): void {.importc: "QImageCapture_imageCaptured".}
proc fQImageCapture_connect_imageCaptured(self: pointer, slot: int) {.importc: "QImageCapture_connect_imageCaptured".}
proc fcQImageCapture_imageMetadataAvailable(self: pointer, id: cint, metaData: pointer): void {.importc: "QImageCapture_imageMetadataAvailable".}
proc fQImageCapture_connect_imageMetadataAvailable(self: pointer, slot: int) {.importc: "QImageCapture_connect_imageMetadataAvailable".}
proc fcQImageCapture_imageAvailable(self: pointer, id: cint, frame: pointer): void {.importc: "QImageCapture_imageAvailable".}
proc fQImageCapture_connect_imageAvailable(self: pointer, slot: int) {.importc: "QImageCapture_connect_imageAvailable".}
proc fcQImageCapture_imageSaved(self: pointer, id: cint, fileName: struct_miqt_string): void {.importc: "QImageCapture_imageSaved".}
proc fQImageCapture_connect_imageSaved(self: pointer, slot: int) {.importc: "QImageCapture_connect_imageSaved".}
proc fcQImageCapture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QImageCapture_tr2".}
proc fcQImageCapture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QImageCapture_tr3".}
proc fcQImageCapture_captureToFile1(self: pointer, location: struct_miqt_string): cint {.importc: "QImageCapture_captureToFile1".}
proc fQImageCapture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QImageCapture_virtualbase_metacall".}
proc fcQImageCapture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QImageCapture_override_virtual_metacall".}
proc fQImageCapture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QImageCapture_virtualbase_event".}
proc fcQImageCapture_override_virtual_event(self: pointer, slot: int) {.importc: "QImageCapture_override_virtual_event".}
proc fQImageCapture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QImageCapture_virtualbase_eventFilter".}
proc fcQImageCapture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QImageCapture_override_virtual_eventFilter".}
proc fQImageCapture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QImageCapture_virtualbase_timerEvent".}
proc fcQImageCapture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QImageCapture_override_virtual_timerEvent".}
proc fQImageCapture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QImageCapture_virtualbase_childEvent".}
proc fcQImageCapture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QImageCapture_override_virtual_childEvent".}
proc fQImageCapture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QImageCapture_virtualbase_customEvent".}
proc fcQImageCapture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QImageCapture_override_virtual_customEvent".}
proc fQImageCapture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QImageCapture_virtualbase_connectNotify".}
proc fcQImageCapture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QImageCapture_override_virtual_connectNotify".}
proc fQImageCapture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QImageCapture_virtualbase_disconnectNotify".}
proc fcQImageCapture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QImageCapture_override_virtual_disconnectNotify".}
proc fcQImageCapture_staticMetaObject(): pointer {.importc: "QImageCapture_staticMetaObject".}
proc fcQImageCapture_delete(self: pointer) {.importc: "QImageCapture_delete".}


func init*(T: type QImageCapture, h: ptr cQImageCapture): QImageCapture =
  T(h: h)
proc create*(T: type QImageCapture, ): QImageCapture =

  QImageCapture.init(fcQImageCapture_new())
proc create*(T: type QImageCapture, parent: gen_qobject.QObject): QImageCapture =

  QImageCapture.init(fcQImageCapture_new2(parent.h))
proc metaObject*(self: QImageCapture, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQImageCapture_metaObject(self.h))

proc metacast*(self: QImageCapture, param1: cstring): pointer =

  fcQImageCapture_metacast(self.h, param1)

proc metacall*(self: QImageCapture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQImageCapture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QImageCapture, s: cstring): string =

  let v_ms = fcQImageCapture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: QImageCapture, ): bool =

  fcQImageCapture_isAvailable(self.h)

proc captureSession*(self: QImageCapture, ): gen_qmediacapturesession.QMediaCaptureSession =

  gen_qmediacapturesession.QMediaCaptureSession(h: fcQImageCapture_captureSession(self.h))

proc error*(self: QImageCapture, ): QImageCaptureError =

  QImageCaptureError(fcQImageCapture_error(self.h))

proc errorString*(self: QImageCapture, ): string =

  let v_ms = fcQImageCapture_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isReadyForCapture*(self: QImageCapture, ): bool =

  fcQImageCapture_isReadyForCapture(self.h)

proc fileFormat*(self: QImageCapture, ): QImageCaptureFileFormat =

  QImageCaptureFileFormat(fcQImageCapture_fileFormat(self.h))

proc setFileFormat*(self: QImageCapture, format: QImageCaptureFileFormat): void =

  fcQImageCapture_setFileFormat(self.h, cint(format))

proc supportedFormats*(_: type QImageCapture, ): seq[QImageCaptureFileFormat] =

  var v_ma = fcQImageCapture_supportedFormats()
  var vx_ret = newSeq[QImageCaptureFileFormat](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QImageCaptureFileFormat(v_outCast[i])
  vx_ret

proc fileFormatName*(_: type QImageCapture, c: QImageCaptureFileFormat): string =

  let v_ms = fcQImageCapture_fileFormatName(cint(c))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileFormatDescription*(_: type QImageCapture, c: QImageCaptureFileFormat): string =

  let v_ms = fcQImageCapture_fileFormatDescription(cint(c))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resolution*(self: QImageCapture, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQImageCapture_resolution(self.h))

proc setResolution*(self: QImageCapture, resolution: gen_qsize.QSize): void =

  fcQImageCapture_setResolution(self.h, resolution.h)

proc setResolution2*(self: QImageCapture, width: cint, height: cint): void =

  fcQImageCapture_setResolution2(self.h, width, height)

proc quality*(self: QImageCapture, ): QImageCaptureQuality =

  QImageCaptureQuality(fcQImageCapture_quality(self.h))

proc setQuality*(self: QImageCapture, quality: QImageCaptureQuality): void =

  fcQImageCapture_setQuality(self.h, cint(quality))

proc metaData*(self: QImageCapture, ): gen_qmediametadata.QMediaMetaData =

  gen_qmediametadata.QMediaMetaData(h: fcQImageCapture_metaData(self.h))

proc setMetaData*(self: QImageCapture, metaData: gen_qmediametadata.QMediaMetaData): void =

  fcQImageCapture_setMetaData(self.h, metaData.h)

proc addMetaData*(self: QImageCapture, metaData: gen_qmediametadata.QMediaMetaData): void =

  fcQImageCapture_addMetaData(self.h, metaData.h)

proc captureToFile*(self: QImageCapture, ): cint =

  fcQImageCapture_captureToFile(self.h)

proc capture*(self: QImageCapture, ): cint =

  fcQImageCapture_capture(self.h)

proc errorChanged*(self: QImageCapture, ): void =

  fcQImageCapture_errorChanged(self.h)

proc miqt_exec_callback_QImageCapture_errorChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onerrorChanged*(self: QImageCapture, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_errorChanged(self.h, cast[int](addr tmp[]))
proc errorOccurred*(self: QImageCapture, id: cint, error: QImageCaptureError, errorString: string): void =

  fcQImageCapture_errorOccurred(self.h, id, cint(error), struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc miqt_exec_callback_QImageCapture_errorOccurred(slot: int, id: cint, error: cint, errorString: struct_miqt_string) {.exportc.} =
  type Cb = proc(id: cint, error: QImageCaptureError, errorString: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = QImageCaptureError(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval3 = verrorStringx_ret


  nimfunc[](slotval1, slotval2, slotval3)

proc onerrorOccurred*(self: QImageCapture, slot: proc(id: cint, error: QImageCaptureError, errorString: string)) =
  type Cb = proc(id: cint, error: QImageCaptureError, errorString: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_errorOccurred(self.h, cast[int](addr tmp[]))
proc readyForCaptureChanged*(self: QImageCapture, ready: bool): void =

  fcQImageCapture_readyForCaptureChanged(self.h, ready)

proc miqt_exec_callback_QImageCapture_readyForCaptureChanged(slot: int, ready: bool) {.exportc.} =
  type Cb = proc(ready: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ready


  nimfunc[](slotval1)

proc onreadyForCaptureChanged*(self: QImageCapture, slot: proc(ready: bool)) =
  type Cb = proc(ready: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_readyForCaptureChanged(self.h, cast[int](addr tmp[]))
proc metaDataChanged*(self: QImageCapture, ): void =

  fcQImageCapture_metaDataChanged(self.h)

proc miqt_exec_callback_QImageCapture_metaDataChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmetaDataChanged*(self: QImageCapture, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_metaDataChanged(self.h, cast[int](addr tmp[]))
proc fileFormatChanged*(self: QImageCapture, ): void =

  fcQImageCapture_fileFormatChanged(self.h)

proc miqt_exec_callback_QImageCapture_fileFormatChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfileFormatChanged*(self: QImageCapture, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_fileFormatChanged(self.h, cast[int](addr tmp[]))
proc qualityChanged*(self: QImageCapture, ): void =

  fcQImageCapture_qualityChanged(self.h)

proc miqt_exec_callback_QImageCapture_qualityChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onqualityChanged*(self: QImageCapture, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_qualityChanged(self.h, cast[int](addr tmp[]))
proc resolutionChanged*(self: QImageCapture, ): void =

  fcQImageCapture_resolutionChanged(self.h)

proc miqt_exec_callback_QImageCapture_resolutionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onresolutionChanged*(self: QImageCapture, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_resolutionChanged(self.h, cast[int](addr tmp[]))
proc imageExposed*(self: QImageCapture, id: cint): void =

  fcQImageCapture_imageExposed(self.h, id)

proc miqt_exec_callback_QImageCapture_imageExposed(slot: int, id: cint) {.exportc.} =
  type Cb = proc(id: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id


  nimfunc[](slotval1)

proc onimageExposed*(self: QImageCapture, slot: proc(id: cint)) =
  type Cb = proc(id: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_imageExposed(self.h, cast[int](addr tmp[]))
proc imageCaptured*(self: QImageCapture, id: cint, preview: gen_qimage.QImage): void =

  fcQImageCapture_imageCaptured(self.h, id, preview.h)

proc miqt_exec_callback_QImageCapture_imageCaptured(slot: int, id: cint, preview: pointer) {.exportc.} =
  type Cb = proc(id: cint, preview: gen_qimage.QImage)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qimage.QImage(h: preview)


  nimfunc[](slotval1, slotval2)

proc onimageCaptured*(self: QImageCapture, slot: proc(id: cint, preview: gen_qimage.QImage)) =
  type Cb = proc(id: cint, preview: gen_qimage.QImage)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_imageCaptured(self.h, cast[int](addr tmp[]))
proc imageMetadataAvailable*(self: QImageCapture, id: cint, metaData: gen_qmediametadata.QMediaMetaData): void =

  fcQImageCapture_imageMetadataAvailable(self.h, id, metaData.h)

proc miqt_exec_callback_QImageCapture_imageMetadataAvailable(slot: int, id: cint, metaData: pointer) {.exportc.} =
  type Cb = proc(id: cint, metaData: gen_qmediametadata.QMediaMetaData)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qmediametadata.QMediaMetaData(h: metaData)


  nimfunc[](slotval1, slotval2)

proc onimageMetadataAvailable*(self: QImageCapture, slot: proc(id: cint, metaData: gen_qmediametadata.QMediaMetaData)) =
  type Cb = proc(id: cint, metaData: gen_qmediametadata.QMediaMetaData)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_imageMetadataAvailable(self.h, cast[int](addr tmp[]))
proc imageAvailable*(self: QImageCapture, id: cint, frame: gen_qvideoframe.QVideoFrame): void =

  fcQImageCapture_imageAvailable(self.h, id, frame.h)

proc miqt_exec_callback_QImageCapture_imageAvailable(slot: int, id: cint, frame: pointer) {.exportc.} =
  type Cb = proc(id: cint, frame: gen_qvideoframe.QVideoFrame)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qvideoframe.QVideoFrame(h: frame)


  nimfunc[](slotval1, slotval2)

proc onimageAvailable*(self: QImageCapture, slot: proc(id: cint, frame: gen_qvideoframe.QVideoFrame)) =
  type Cb = proc(id: cint, frame: gen_qvideoframe.QVideoFrame)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_imageAvailable(self.h, cast[int](addr tmp[]))
proc imageSaved*(self: QImageCapture, id: cint, fileName: string): void =

  fcQImageCapture_imageSaved(self.h, id, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc miqt_exec_callback_QImageCapture_imageSaved(slot: int, id: cint, fileName: struct_miqt_string) {.exportc.} =
  type Cb = proc(id: cint, fileName: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(toOpenArrayByte(vfileName_ms.data, 0, int(vfileName_ms.len)-1))
  c_free(vfileName_ms.data)
  let slotval2 = vfileNamex_ret


  nimfunc[](slotval1, slotval2)

proc onimageSaved*(self: QImageCapture, slot: proc(id: cint, fileName: string)) =
  type Cb = proc(id: cint, fileName: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_imageSaved(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QImageCapture, s: cstring, c: cstring): string =

  let v_ms = fcQImageCapture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QImageCapture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQImageCapture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc captureToFile1*(self: QImageCapture, location: string): cint =

  fcQImageCapture_captureToFile1(self.h, struct_miqt_string(data: location, len: csize_t(len(location))))

proc callVirtualBase_metacall(self: QImageCapture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQImageCapture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QImageCapturemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QImageCapture, slot: proc(super: QImageCapturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QImageCapturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_metacall(self: ptr cQImageCapture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QImageCapture_metacall ".} =
  type Cb = proc(super: QImageCapturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QImageCapture(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QImageCapture, event: gen_qcoreevent.QEvent): bool =


  fQImageCapture_virtualbase_event(self.h, event.h)

type QImageCaptureeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QImageCapture, slot: proc(super: QImageCaptureeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QImageCaptureeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_event(self: ptr cQImageCapture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QImageCapture_event ".} =
  type Cb = proc(super: QImageCaptureeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QImageCapture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QImageCapture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQImageCapture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QImageCaptureeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QImageCapture, slot: proc(super: QImageCaptureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QImageCaptureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_eventFilter(self: ptr cQImageCapture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QImageCapture_eventFilter ".} =
  type Cb = proc(super: QImageCaptureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QImageCapture(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QImageCapture, event: gen_qcoreevent.QTimerEvent): void =


  fQImageCapture_virtualbase_timerEvent(self.h, event.h)

type QImageCapturetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QImageCapture, slot: proc(super: QImageCapturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QImageCapturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_timerEvent(self: ptr cQImageCapture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QImageCapture_timerEvent ".} =
  type Cb = proc(super: QImageCapturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QImageCapture(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QImageCapture, event: gen_qcoreevent.QChildEvent): void =


  fQImageCapture_virtualbase_childEvent(self.h, event.h)

type QImageCapturechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QImageCapture, slot: proc(super: QImageCapturechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QImageCapturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_childEvent(self: ptr cQImageCapture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QImageCapture_childEvent ".} =
  type Cb = proc(super: QImageCapturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QImageCapture(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QImageCapture, event: gen_qcoreevent.QEvent): void =


  fQImageCapture_virtualbase_customEvent(self.h, event.h)

type QImageCapturecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QImageCapture, slot: proc(super: QImageCapturecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QImageCapturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_customEvent(self: ptr cQImageCapture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QImageCapture_customEvent ".} =
  type Cb = proc(super: QImageCapturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QImageCapture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QImageCapture, signal: gen_qmetaobject.QMetaMethod): void =


  fQImageCapture_virtualbase_connectNotify(self.h, signal.h)

type QImageCaptureconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QImageCapture, slot: proc(super: QImageCaptureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QImageCaptureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_connectNotify(self: ptr cQImageCapture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QImageCapture_connectNotify ".} =
  type Cb = proc(super: QImageCaptureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QImageCapture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QImageCapture, signal: gen_qmetaobject.QMetaMethod): void =


  fQImageCapture_virtualbase_disconnectNotify(self.h, signal.h)

type QImageCapturedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QImageCapture, slot: proc(super: QImageCapturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QImageCapturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_disconnectNotify(self: ptr cQImageCapture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QImageCapture_disconnectNotify ".} =
  type Cb = proc(super: QImageCapturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QImageCapture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QImageCapture): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQImageCapture_staticMetaObject())
proc delete*(self: QImageCapture) =
  fcQImageCapture_delete(self.h)
