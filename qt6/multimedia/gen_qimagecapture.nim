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


type QImageCaptureErrorEnum* = distinct cint
template NoError*(_: type QImageCaptureErrorEnum): untyped = 0
template NotReadyError*(_: type QImageCaptureErrorEnum): untyped = 1
template ResourceError*(_: type QImageCaptureErrorEnum): untyped = 2
template OutOfSpaceError*(_: type QImageCaptureErrorEnum): untyped = 3
template NotSupportedFeatureError*(_: type QImageCaptureErrorEnum): untyped = 4
template FormatError*(_: type QImageCaptureErrorEnum): untyped = 5


type QImageCaptureQualityEnum* = distinct cint
template VeryLowQuality*(_: type QImageCaptureQualityEnum): untyped = 0
template LowQuality*(_: type QImageCaptureQualityEnum): untyped = 1
template NormalQuality*(_: type QImageCaptureQualityEnum): untyped = 2
template HighQuality*(_: type QImageCaptureQualityEnum): untyped = 3
template VeryHighQuality*(_: type QImageCaptureQualityEnum): untyped = 4


type QImageCaptureFileFormatEnum* = distinct cint
template UnspecifiedFormat*(_: type QImageCaptureFileFormatEnum): untyped = 0
template JPEG*(_: type QImageCaptureFileFormatEnum): untyped = 1
template PNG*(_: type QImageCaptureFileFormatEnum): untyped = 2
template WebP*(_: type QImageCaptureFileFormatEnum): untyped = 3
template Tiff*(_: type QImageCaptureFileFormatEnum): untyped = 4
template LastFileFormat*(_: type QImageCaptureFileFormatEnum): untyped = 4


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
proc fQImageCapture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QImageCapture_virtualbase_metaObject".}
proc fcQImageCapture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QImageCapture_override_virtual_metaObject".}
proc fQImageCapture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QImageCapture_virtualbase_metacast".}
proc fcQImageCapture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QImageCapture_override_virtual_metacast".}
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


func init*(T: type gen_qimagecapture_types.QImageCapture, h: ptr cQImageCapture): gen_qimagecapture_types.QImageCapture =
  T(h: h)
proc create*(T: type gen_qimagecapture_types.QImageCapture, ): gen_qimagecapture_types.QImageCapture =

  gen_qimagecapture_types.QImageCapture.init(fcQImageCapture_new())
proc create*(T: type gen_qimagecapture_types.QImageCapture, parent: gen_qobject.QObject): gen_qimagecapture_types.QImageCapture =

  gen_qimagecapture_types.QImageCapture.init(fcQImageCapture_new2(parent.h))
proc metaObject*(self: gen_qimagecapture_types.QImageCapture, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQImageCapture_metaObject(self.h))

proc metacast*(self: gen_qimagecapture_types.QImageCapture, param1: cstring): pointer =

  fcQImageCapture_metacast(self.h, param1)

proc metacall*(self: gen_qimagecapture_types.QImageCapture, param1: cint, param2: cint, param3: pointer): cint =

  fcQImageCapture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qimagecapture_types.QImageCapture, s: cstring): string =

  let v_ms = fcQImageCapture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: gen_qimagecapture_types.QImageCapture, ): bool =

  fcQImageCapture_isAvailable(self.h)

proc captureSession*(self: gen_qimagecapture_types.QImageCapture, ): gen_qmediacapturesession.QMediaCaptureSession =

  gen_qmediacapturesession.QMediaCaptureSession(h: fcQImageCapture_captureSession(self.h))

proc error*(self: gen_qimagecapture_types.QImageCapture, ): cint =

  cint(fcQImageCapture_error(self.h))

proc errorString*(self: gen_qimagecapture_types.QImageCapture, ): string =

  let v_ms = fcQImageCapture_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isReadyForCapture*(self: gen_qimagecapture_types.QImageCapture, ): bool =

  fcQImageCapture_isReadyForCapture(self.h)

proc fileFormat*(self: gen_qimagecapture_types.QImageCapture, ): cint =

  cint(fcQImageCapture_fileFormat(self.h))

proc setFileFormat*(self: gen_qimagecapture_types.QImageCapture, format: cint): void =

  fcQImageCapture_setFileFormat(self.h, cint(format))

proc supportedFormats*(_: type gen_qimagecapture_types.QImageCapture, ): seq[cint] =

  var v_ma = fcQImageCapture_supportedFormats()
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  vx_ret

proc fileFormatName*(_: type gen_qimagecapture_types.QImageCapture, c: cint): string =

  let v_ms = fcQImageCapture_fileFormatName(cint(c))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileFormatDescription*(_: type gen_qimagecapture_types.QImageCapture, c: cint): string =

  let v_ms = fcQImageCapture_fileFormatDescription(cint(c))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resolution*(self: gen_qimagecapture_types.QImageCapture, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQImageCapture_resolution(self.h))

proc setResolution*(self: gen_qimagecapture_types.QImageCapture, resolution: gen_qsize.QSize): void =

  fcQImageCapture_setResolution(self.h, resolution.h)

proc setResolution2*(self: gen_qimagecapture_types.QImageCapture, width: cint, height: cint): void =

  fcQImageCapture_setResolution2(self.h, width, height)

proc quality*(self: gen_qimagecapture_types.QImageCapture, ): cint =

  cint(fcQImageCapture_quality(self.h))

proc setQuality*(self: gen_qimagecapture_types.QImageCapture, quality: cint): void =

  fcQImageCapture_setQuality(self.h, cint(quality))

proc metaData*(self: gen_qimagecapture_types.QImageCapture, ): gen_qmediametadata.QMediaMetaData =

  gen_qmediametadata.QMediaMetaData(h: fcQImageCapture_metaData(self.h))

proc setMetaData*(self: gen_qimagecapture_types.QImageCapture, metaData: gen_qmediametadata.QMediaMetaData): void =

  fcQImageCapture_setMetaData(self.h, metaData.h)

proc addMetaData*(self: gen_qimagecapture_types.QImageCapture, metaData: gen_qmediametadata.QMediaMetaData): void =

  fcQImageCapture_addMetaData(self.h, metaData.h)

proc captureToFile*(self: gen_qimagecapture_types.QImageCapture, ): cint =

  fcQImageCapture_captureToFile(self.h)

proc capture*(self: gen_qimagecapture_types.QImageCapture, ): cint =

  fcQImageCapture_capture(self.h)

proc errorChanged*(self: gen_qimagecapture_types.QImageCapture, ): void =

  fcQImageCapture_errorChanged(self.h)

proc miqt_exec_callback_QImageCapture_errorChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onerrorChanged*(self: gen_qimagecapture_types.QImageCapture, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_errorChanged(self.h, cast[int](addr tmp[]))
proc errorOccurred*(self: gen_qimagecapture_types.QImageCapture, id: cint, error: cint, errorString: string): void =

  fcQImageCapture_errorOccurred(self.h, id, cint(error), struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc miqt_exec_callback_QImageCapture_errorOccurred(slot: int, id: cint, error: cint, errorString: struct_miqt_string) {.exportc.} =
  type Cb = proc(id: cint, error: cint, errorString: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = cint(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval3 = verrorStringx_ret


  nimfunc[](slotval1, slotval2, slotval3)

proc onerrorOccurred*(self: gen_qimagecapture_types.QImageCapture, slot: proc(id: cint, error: cint, errorString: string)) =
  type Cb = proc(id: cint, error: cint, errorString: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_errorOccurred(self.h, cast[int](addr tmp[]))
proc readyForCaptureChanged*(self: gen_qimagecapture_types.QImageCapture, ready: bool): void =

  fcQImageCapture_readyForCaptureChanged(self.h, ready)

proc miqt_exec_callback_QImageCapture_readyForCaptureChanged(slot: int, ready: bool) {.exportc.} =
  type Cb = proc(ready: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ready


  nimfunc[](slotval1)

proc onreadyForCaptureChanged*(self: gen_qimagecapture_types.QImageCapture, slot: proc(ready: bool)) =
  type Cb = proc(ready: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_readyForCaptureChanged(self.h, cast[int](addr tmp[]))
proc metaDataChanged*(self: gen_qimagecapture_types.QImageCapture, ): void =

  fcQImageCapture_metaDataChanged(self.h)

proc miqt_exec_callback_QImageCapture_metaDataChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmetaDataChanged*(self: gen_qimagecapture_types.QImageCapture, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_metaDataChanged(self.h, cast[int](addr tmp[]))
proc fileFormatChanged*(self: gen_qimagecapture_types.QImageCapture, ): void =

  fcQImageCapture_fileFormatChanged(self.h)

proc miqt_exec_callback_QImageCapture_fileFormatChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfileFormatChanged*(self: gen_qimagecapture_types.QImageCapture, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_fileFormatChanged(self.h, cast[int](addr tmp[]))
proc qualityChanged*(self: gen_qimagecapture_types.QImageCapture, ): void =

  fcQImageCapture_qualityChanged(self.h)

proc miqt_exec_callback_QImageCapture_qualityChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onqualityChanged*(self: gen_qimagecapture_types.QImageCapture, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_qualityChanged(self.h, cast[int](addr tmp[]))
proc resolutionChanged*(self: gen_qimagecapture_types.QImageCapture, ): void =

  fcQImageCapture_resolutionChanged(self.h)

proc miqt_exec_callback_QImageCapture_resolutionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onresolutionChanged*(self: gen_qimagecapture_types.QImageCapture, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_resolutionChanged(self.h, cast[int](addr tmp[]))
proc imageExposed*(self: gen_qimagecapture_types.QImageCapture, id: cint): void =

  fcQImageCapture_imageExposed(self.h, id)

proc miqt_exec_callback_QImageCapture_imageExposed(slot: int, id: cint) {.exportc.} =
  type Cb = proc(id: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id


  nimfunc[](slotval1)

proc onimageExposed*(self: gen_qimagecapture_types.QImageCapture, slot: proc(id: cint)) =
  type Cb = proc(id: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_imageExposed(self.h, cast[int](addr tmp[]))
proc imageCaptured*(self: gen_qimagecapture_types.QImageCapture, id: cint, preview: gen_qimage.QImage): void =

  fcQImageCapture_imageCaptured(self.h, id, preview.h)

proc miqt_exec_callback_QImageCapture_imageCaptured(slot: int, id: cint, preview: pointer) {.exportc.} =
  type Cb = proc(id: cint, preview: gen_qimage.QImage)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qimage.QImage(h: preview)


  nimfunc[](slotval1, slotval2)

proc onimageCaptured*(self: gen_qimagecapture_types.QImageCapture, slot: proc(id: cint, preview: gen_qimage.QImage)) =
  type Cb = proc(id: cint, preview: gen_qimage.QImage)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_imageCaptured(self.h, cast[int](addr tmp[]))
proc imageMetadataAvailable*(self: gen_qimagecapture_types.QImageCapture, id: cint, metaData: gen_qmediametadata.QMediaMetaData): void =

  fcQImageCapture_imageMetadataAvailable(self.h, id, metaData.h)

proc miqt_exec_callback_QImageCapture_imageMetadataAvailable(slot: int, id: cint, metaData: pointer) {.exportc.} =
  type Cb = proc(id: cint, metaData: gen_qmediametadata.QMediaMetaData)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qmediametadata.QMediaMetaData(h: metaData)


  nimfunc[](slotval1, slotval2)

proc onimageMetadataAvailable*(self: gen_qimagecapture_types.QImageCapture, slot: proc(id: cint, metaData: gen_qmediametadata.QMediaMetaData)) =
  type Cb = proc(id: cint, metaData: gen_qmediametadata.QMediaMetaData)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_imageMetadataAvailable(self.h, cast[int](addr tmp[]))
proc imageAvailable*(self: gen_qimagecapture_types.QImageCapture, id: cint, frame: gen_qvideoframe.QVideoFrame): void =

  fcQImageCapture_imageAvailable(self.h, id, frame.h)

proc miqt_exec_callback_QImageCapture_imageAvailable(slot: int, id: cint, frame: pointer) {.exportc.} =
  type Cb = proc(id: cint, frame: gen_qvideoframe.QVideoFrame)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qvideoframe.QVideoFrame(h: frame)


  nimfunc[](slotval1, slotval2)

proc onimageAvailable*(self: gen_qimagecapture_types.QImageCapture, slot: proc(id: cint, frame: gen_qvideoframe.QVideoFrame)) =
  type Cb = proc(id: cint, frame: gen_qvideoframe.QVideoFrame)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_imageAvailable(self.h, cast[int](addr tmp[]))
proc imageSaved*(self: gen_qimagecapture_types.QImageCapture, id: cint, fileName: string): void =

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

proc onimageSaved*(self: gen_qimagecapture_types.QImageCapture, slot: proc(id: cint, fileName: string)) =
  type Cb = proc(id: cint, fileName: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQImageCapture_connect_imageSaved(self.h, cast[int](addr tmp[]))
proc tr2*(_: type gen_qimagecapture_types.QImageCapture, s: cstring, c: cstring): string =

  let v_ms = fcQImageCapture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qimagecapture_types.QImageCapture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQImageCapture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc captureToFile1*(self: gen_qimagecapture_types.QImageCapture, location: string): cint =

  fcQImageCapture_captureToFile1(self.h, struct_miqt_string(data: location, len: csize_t(len(location))))

proc QImageCapturemetaObject*(self: gen_qimagecapture_types.QImageCapture, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQImageCapture_virtualbase_metaObject(self.h))

type QImageCapturemetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCapturemetaObjectProc) =
  # TODO check subclass
  var tmp = new QImageCapturemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_metaObject(self: ptr cQImageCapture, slot: int): pointer {.exportc: "miqt_exec_callback_QImageCapture_metaObject ".} =
  var nimfunc = cast[ptr QImageCapturemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QImageCapturemetacast*(self: gen_qimagecapture_types.QImageCapture, param1: cstring): pointer =

  fQImageCapture_virtualbase_metacast(self.h, param1)

type QImageCapturemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCapturemetacastProc) =
  # TODO check subclass
  var tmp = new QImageCapturemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_metacast(self: ptr cQImageCapture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QImageCapture_metacast ".} =
  var nimfunc = cast[ptr QImageCapturemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QImageCapturemetacall*(self: gen_qimagecapture_types.QImageCapture, param1: cint, param2: cint, param3: pointer): cint =

  fQImageCapture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QImageCapturemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCapturemetacallProc) =
  # TODO check subclass
  var tmp = new QImageCapturemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_metacall(self: ptr cQImageCapture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QImageCapture_metacall ".} =
  var nimfunc = cast[ptr QImageCapturemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QImageCaptureevent*(self: gen_qimagecapture_types.QImageCapture, event: gen_qcoreevent.QEvent): bool =

  fQImageCapture_virtualbase_event(self.h, event.h)

type QImageCaptureeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCaptureeventProc) =
  # TODO check subclass
  var tmp = new QImageCaptureeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_event(self: ptr cQImageCapture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QImageCapture_event ".} =
  var nimfunc = cast[ptr QImageCaptureeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QImageCaptureeventFilter*(self: gen_qimagecapture_types.QImageCapture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQImageCapture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QImageCaptureeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCaptureeventFilterProc) =
  # TODO check subclass
  var tmp = new QImageCaptureeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_eventFilter(self: ptr cQImageCapture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QImageCapture_eventFilter ".} =
  var nimfunc = cast[ptr QImageCaptureeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QImageCapturetimerEvent*(self: gen_qimagecapture_types.QImageCapture, event: gen_qcoreevent.QTimerEvent): void =

  fQImageCapture_virtualbase_timerEvent(self.h, event.h)

type QImageCapturetimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCapturetimerEventProc) =
  # TODO check subclass
  var tmp = new QImageCapturetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_timerEvent(self: ptr cQImageCapture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QImageCapture_timerEvent ".} =
  var nimfunc = cast[ptr QImageCapturetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QImageCapturechildEvent*(self: gen_qimagecapture_types.QImageCapture, event: gen_qcoreevent.QChildEvent): void =

  fQImageCapture_virtualbase_childEvent(self.h, event.h)

type QImageCapturechildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCapturechildEventProc) =
  # TODO check subclass
  var tmp = new QImageCapturechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_childEvent(self: ptr cQImageCapture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QImageCapture_childEvent ".} =
  var nimfunc = cast[ptr QImageCapturechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QImageCapturecustomEvent*(self: gen_qimagecapture_types.QImageCapture, event: gen_qcoreevent.QEvent): void =

  fQImageCapture_virtualbase_customEvent(self.h, event.h)

type QImageCapturecustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCapturecustomEventProc) =
  # TODO check subclass
  var tmp = new QImageCapturecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_customEvent(self: ptr cQImageCapture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QImageCapture_customEvent ".} =
  var nimfunc = cast[ptr QImageCapturecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QImageCaptureconnectNotify*(self: gen_qimagecapture_types.QImageCapture, signal: gen_qmetaobject.QMetaMethod): void =

  fQImageCapture_virtualbase_connectNotify(self.h, signal.h)

type QImageCaptureconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCaptureconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QImageCaptureconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_connectNotify(self: ptr cQImageCapture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QImageCapture_connectNotify ".} =
  var nimfunc = cast[ptr QImageCaptureconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QImageCapturedisconnectNotify*(self: gen_qimagecapture_types.QImageCapture, signal: gen_qmetaobject.QMetaMethod): void =

  fQImageCapture_virtualbase_disconnectNotify(self.h, signal.h)

type QImageCapturedisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCapturedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QImageCapturedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageCapture_disconnectNotify(self: ptr cQImageCapture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QImageCapture_disconnectNotify ".} =
  var nimfunc = cast[ptr QImageCapturedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qimagecapture_types.QImageCapture): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQImageCapture_staticMetaObject())
proc delete*(self: gen_qimagecapture_types.QImageCapture) =
  fcQImageCapture_delete(self.h)
