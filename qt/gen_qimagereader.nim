import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qimagereader.cpp", cflags).}


type QImageReaderImageReaderError* = cint
const
  QImageReaderUnknownError* = 0
  QImageReaderFileNotFoundError* = 1
  QImageReaderDeviceError* = 2
  QImageReaderUnsupportedFormatError* = 3
  QImageReaderInvalidDataError* = 4



import gen_qimagereader_types
export gen_qimagereader_types

import
  gen_qcolor,
  gen_qimage,
  gen_qimageiohandler,
  gen_qiodevice,
  gen_qrect,
  gen_qsize
export
  gen_qcolor,
  gen_qimage,
  gen_qimageiohandler,
  gen_qiodevice,
  gen_qrect,
  gen_qsize

type cQImageReader*{.exportc: "QImageReader", incompleteStruct.} = object

proc fcQImageReader_new(): ptr cQImageReader {.importc: "QImageReader_new".}
proc fcQImageReader_new2(device: pointer): ptr cQImageReader {.importc: "QImageReader_new2".}
proc fcQImageReader_new3(fileName: struct_miqt_string): ptr cQImageReader {.importc: "QImageReader_new3".}
proc fcQImageReader_new4(device: pointer, format: struct_miqt_string): ptr cQImageReader {.importc: "QImageReader_new4".}
proc fcQImageReader_new5(fileName: struct_miqt_string, format: struct_miqt_string): ptr cQImageReader {.importc: "QImageReader_new5".}
proc fcQImageReader_tr(sourceText: cstring): struct_miqt_string {.importc: "QImageReader_tr".}
proc fcQImageReader_trUtf8(sourceText: cstring): struct_miqt_string {.importc: "QImageReader_trUtf8".}
proc fcQImageReader_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QImageReader_setFormat".}
proc fcQImageReader_format(self: pointer, ): struct_miqt_string {.importc: "QImageReader_format".}
proc fcQImageReader_setAutoDetectImageFormat(self: pointer, enabled: bool): void {.importc: "QImageReader_setAutoDetectImageFormat".}
proc fcQImageReader_autoDetectImageFormat(self: pointer, ): bool {.importc: "QImageReader_autoDetectImageFormat".}
proc fcQImageReader_setDecideFormatFromContent(self: pointer, ignored: bool): void {.importc: "QImageReader_setDecideFormatFromContent".}
proc fcQImageReader_decideFormatFromContent(self: pointer, ): bool {.importc: "QImageReader_decideFormatFromContent".}
proc fcQImageReader_setDevice(self: pointer, device: pointer): void {.importc: "QImageReader_setDevice".}
proc fcQImageReader_device(self: pointer, ): pointer {.importc: "QImageReader_device".}
proc fcQImageReader_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QImageReader_setFileName".}
proc fcQImageReader_fileName(self: pointer, ): struct_miqt_string {.importc: "QImageReader_fileName".}
proc fcQImageReader_size(self: pointer, ): pointer {.importc: "QImageReader_size".}
proc fcQImageReader_imageFormat(self: pointer, ): cint {.importc: "QImageReader_imageFormat".}
proc fcQImageReader_textKeys(self: pointer, ): struct_miqt_array {.importc: "QImageReader_textKeys".}
proc fcQImageReader_text(self: pointer, key: struct_miqt_string): struct_miqt_string {.importc: "QImageReader_text".}
proc fcQImageReader_setClipRect(self: pointer, rect: pointer): void {.importc: "QImageReader_setClipRect".}
proc fcQImageReader_clipRect(self: pointer, ): pointer {.importc: "QImageReader_clipRect".}
proc fcQImageReader_setScaledSize(self: pointer, size: pointer): void {.importc: "QImageReader_setScaledSize".}
proc fcQImageReader_scaledSize(self: pointer, ): pointer {.importc: "QImageReader_scaledSize".}
proc fcQImageReader_setQuality(self: pointer, quality: cint): void {.importc: "QImageReader_setQuality".}
proc fcQImageReader_quality(self: pointer, ): cint {.importc: "QImageReader_quality".}
proc fcQImageReader_setScaledClipRect(self: pointer, rect: pointer): void {.importc: "QImageReader_setScaledClipRect".}
proc fcQImageReader_scaledClipRect(self: pointer, ): pointer {.importc: "QImageReader_scaledClipRect".}
proc fcQImageReader_setBackgroundColor(self: pointer, color: pointer): void {.importc: "QImageReader_setBackgroundColor".}
proc fcQImageReader_backgroundColor(self: pointer, ): pointer {.importc: "QImageReader_backgroundColor".}
proc fcQImageReader_supportsAnimation(self: pointer, ): bool {.importc: "QImageReader_supportsAnimation".}
proc fcQImageReader_transformation(self: pointer, ): cint {.importc: "QImageReader_transformation".}
proc fcQImageReader_setAutoTransform(self: pointer, enabled: bool): void {.importc: "QImageReader_setAutoTransform".}
proc fcQImageReader_autoTransform(self: pointer, ): bool {.importc: "QImageReader_autoTransform".}
proc fcQImageReader_setGamma(self: pointer, gamma: float32): void {.importc: "QImageReader_setGamma".}
proc fcQImageReader_gamma(self: pointer, ): float32 {.importc: "QImageReader_gamma".}
proc fcQImageReader_subType(self: pointer, ): struct_miqt_string {.importc: "QImageReader_subType".}
proc fcQImageReader_supportedSubTypes(self: pointer, ): struct_miqt_array {.importc: "QImageReader_supportedSubTypes".}
proc fcQImageReader_canRead(self: pointer, ): bool {.importc: "QImageReader_canRead".}
proc fcQImageReader_read(self: pointer, ): pointer {.importc: "QImageReader_read".}
proc fcQImageReader_readWithImage(self: pointer, image: pointer): bool {.importc: "QImageReader_readWithImage".}
proc fcQImageReader_jumpToNextImage(self: pointer, ): bool {.importc: "QImageReader_jumpToNextImage".}
proc fcQImageReader_jumpToImage(self: pointer, imageNumber: cint): bool {.importc: "QImageReader_jumpToImage".}
proc fcQImageReader_loopCount(self: pointer, ): cint {.importc: "QImageReader_loopCount".}
proc fcQImageReader_imageCount(self: pointer, ): cint {.importc: "QImageReader_imageCount".}
proc fcQImageReader_nextImageDelay(self: pointer, ): cint {.importc: "QImageReader_nextImageDelay".}
proc fcQImageReader_currentImageNumber(self: pointer, ): cint {.importc: "QImageReader_currentImageNumber".}
proc fcQImageReader_currentImageRect(self: pointer, ): pointer {.importc: "QImageReader_currentImageRect".}
proc fcQImageReader_error(self: pointer, ): cint {.importc: "QImageReader_error".}
proc fcQImageReader_errorString(self: pointer, ): struct_miqt_string {.importc: "QImageReader_errorString".}
proc fcQImageReader_supportsOption(self: pointer, option: cint): bool {.importc: "QImageReader_supportsOption".}
proc fcQImageReader_imageFormatWithFileName(fileName: struct_miqt_string): struct_miqt_string {.importc: "QImageReader_imageFormatWithFileName".}
proc fcQImageReader_imageFormatWithDevice(device: pointer): struct_miqt_string {.importc: "QImageReader_imageFormatWithDevice".}
proc fcQImageReader_supportedImageFormats(): struct_miqt_array {.importc: "QImageReader_supportedImageFormats".}
proc fcQImageReader_supportedMimeTypes(): struct_miqt_array {.importc: "QImageReader_supportedMimeTypes".}
proc fcQImageReader_imageFormatsForMimeType(mimeType: struct_miqt_string): struct_miqt_array {.importc: "QImageReader_imageFormatsForMimeType".}
proc fcQImageReader_tr2(sourceText: cstring, disambiguation: cstring): struct_miqt_string {.importc: "QImageReader_tr2".}
proc fcQImageReader_tr3(sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QImageReader_tr3".}
proc fcQImageReader_trUtf82(sourceText: cstring, disambiguation: cstring): struct_miqt_string {.importc: "QImageReader_trUtf82".}
proc fcQImageReader_trUtf83(sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QImageReader_trUtf83".}
proc fcQImageReader_delete(self: pointer) {.importc: "QImageReader_delete".}


func init*(T: type QImageReader, h: ptr cQImageReader): QImageReader =
  T(h: h)
proc create*(T: type QImageReader, ): QImageReader =

  QImageReader.init(fcQImageReader_new())
proc create*(T: type QImageReader, device: gen_qiodevice.QIODevice): QImageReader =

  QImageReader.init(fcQImageReader_new2(device.h))
proc create*(T: type QImageReader, fileName: string): QImageReader =

  QImageReader.init(fcQImageReader_new3(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))
proc create*(T: type QImageReader, device: gen_qiodevice.QIODevice, format: seq[byte]): QImageReader =

  QImageReader.init(fcQImageReader_new4(device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))))
proc create*(T: type QImageReader, fileName: string, format: seq[byte]): QImageReader =

  QImageReader.init(fcQImageReader_new5(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))))
proc tr*(_: type QImageReader, sourceText: cstring): string =

  let v_ms = fcQImageReader_tr(sourceText)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QImageReader, sourceText: cstring): string =

  let v_ms = fcQImageReader_trUtf8(sourceText)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFormat*(self: QImageReader, format: seq[byte]): void =

  fcQImageReader_setFormat(self.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))

proc format*(self: QImageReader, ): seq[byte] =

  var v_bytearray = fcQImageReader_format(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setAutoDetectImageFormat*(self: QImageReader, enabled: bool): void =

  fcQImageReader_setAutoDetectImageFormat(self.h, enabled)

proc autoDetectImageFormat*(self: QImageReader, ): bool =

  fcQImageReader_autoDetectImageFormat(self.h)

proc setDecideFormatFromContent*(self: QImageReader, ignored: bool): void =

  fcQImageReader_setDecideFormatFromContent(self.h, ignored)

proc decideFormatFromContent*(self: QImageReader, ): bool =

  fcQImageReader_decideFormatFromContent(self.h)

proc setDevice*(self: QImageReader, device: gen_qiodevice.QIODevice): void =

  fcQImageReader_setDevice(self.h, device.h)

proc device*(self: QImageReader, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQImageReader_device(self.h))

proc setFileName*(self: QImageReader, fileName: string): void =

  fcQImageReader_setFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc fileName*(self: QImageReader, ): string =

  let v_ms = fcQImageReader_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc size*(self: QImageReader, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQImageReader_size(self.h))

proc imageFormat*(self: QImageReader, ): gen_qimage.QImageFormat =

  gen_qimage.QImageFormat(fcQImageReader_imageFormat(self.h))

proc textKeys*(self: QImageReader, ): seq[string] =

  var v_ma = fcQImageReader_textKeys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc text*(self: QImageReader, key: string): string =

  let v_ms = fcQImageReader_text(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setClipRect*(self: QImageReader, rect: gen_qrect.QRect): void =

  fcQImageReader_setClipRect(self.h, rect.h)

proc clipRect*(self: QImageReader, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQImageReader_clipRect(self.h))

proc setScaledSize*(self: QImageReader, size: gen_qsize.QSize): void =

  fcQImageReader_setScaledSize(self.h, size.h)

proc scaledSize*(self: QImageReader, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQImageReader_scaledSize(self.h))

proc setQuality*(self: QImageReader, quality: cint): void =

  fcQImageReader_setQuality(self.h, quality)

proc quality*(self: QImageReader, ): cint =

  fcQImageReader_quality(self.h)

proc setScaledClipRect*(self: QImageReader, rect: gen_qrect.QRect): void =

  fcQImageReader_setScaledClipRect(self.h, rect.h)

proc scaledClipRect*(self: QImageReader, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQImageReader_scaledClipRect(self.h))

proc setBackgroundColor*(self: QImageReader, color: gen_qcolor.QColor): void =

  fcQImageReader_setBackgroundColor(self.h, color.h)

proc backgroundColor*(self: QImageReader, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQImageReader_backgroundColor(self.h))

proc supportsAnimation*(self: QImageReader, ): bool =

  fcQImageReader_supportsAnimation(self.h)

proc transformation*(self: QImageReader, ): gen_qimageiohandler.QImageIOHandlerTransformation =

  gen_qimageiohandler.QImageIOHandlerTransformation(fcQImageReader_transformation(self.h))

proc setAutoTransform*(self: QImageReader, enabled: bool): void =

  fcQImageReader_setAutoTransform(self.h, enabled)

proc autoTransform*(self: QImageReader, ): bool =

  fcQImageReader_autoTransform(self.h)

proc setGamma*(self: QImageReader, gamma: float32): void =

  fcQImageReader_setGamma(self.h, gamma)

proc gamma*(self: QImageReader, ): float32 =

  fcQImageReader_gamma(self.h)

proc subType*(self: QImageReader, ): seq[byte] =

  var v_bytearray = fcQImageReader_subType(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc supportedSubTypes*(self: QImageReader, ): seq[seq[byte]] =

  var v_ma = fcQImageReader_supportedSubTypes(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc canRead*(self: QImageReader, ): bool =

  fcQImageReader_canRead(self.h)

proc read*(self: QImageReader, ): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQImageReader_read(self.h))

proc readWithImage*(self: QImageReader, image: gen_qimage.QImage): bool =

  fcQImageReader_readWithImage(self.h, image.h)

proc jumpToNextImage*(self: QImageReader, ): bool =

  fcQImageReader_jumpToNextImage(self.h)

proc jumpToImage*(self: QImageReader, imageNumber: cint): bool =

  fcQImageReader_jumpToImage(self.h, imageNumber)

proc loopCount*(self: QImageReader, ): cint =

  fcQImageReader_loopCount(self.h)

proc imageCount*(self: QImageReader, ): cint =

  fcQImageReader_imageCount(self.h)

proc nextImageDelay*(self: QImageReader, ): cint =

  fcQImageReader_nextImageDelay(self.h)

proc currentImageNumber*(self: QImageReader, ): cint =

  fcQImageReader_currentImageNumber(self.h)

proc currentImageRect*(self: QImageReader, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQImageReader_currentImageRect(self.h))

proc error*(self: QImageReader, ): QImageReaderImageReaderError =

  QImageReaderImageReaderError(fcQImageReader_error(self.h))

proc errorString*(self: QImageReader, ): string =

  let v_ms = fcQImageReader_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportsOption*(self: QImageReader, option: gen_qimageiohandler.QImageIOHandlerImageOption): bool =

  fcQImageReader_supportsOption(self.h, cint(option))

proc imageFormatWithFileName*(_: type QImageReader, fileName: string): seq[byte] =

  var v_bytearray = fcQImageReader_imageFormatWithFileName(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc imageFormatWithDevice*(_: type QImageReader, device: gen_qiodevice.QIODevice): seq[byte] =

  var v_bytearray = fcQImageReader_imageFormatWithDevice(device.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc supportedImageFormats*(_: type QImageReader, ): seq[seq[byte]] =

  var v_ma = fcQImageReader_supportedImageFormats()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc supportedMimeTypes*(_: type QImageReader, ): seq[seq[byte]] =

  var v_ma = fcQImageReader_supportedMimeTypes()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc imageFormatsForMimeType*(_: type QImageReader, mimeType: seq[byte]): seq[seq[byte]] =

  var v_ma = fcQImageReader_imageFormatsForMimeType(struct_miqt_string(data: cast[cstring](if len(mimeType) == 0: nil else: unsafeAddr mimeType[0]), len: csize_t(len(mimeType))))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc tr2*(_: type QImageReader, sourceText: cstring, disambiguation: cstring): string =

  let v_ms = fcQImageReader_tr2(sourceText, disambiguation)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QImageReader, sourceText: cstring, disambiguation: cstring, n: cint): string =

  let v_ms = fcQImageReader_tr3(sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QImageReader, sourceText: cstring, disambiguation: cstring): string =

  let v_ms = fcQImageReader_trUtf82(sourceText, disambiguation)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QImageReader, sourceText: cstring, disambiguation: cstring, n: cint): string =

  let v_ms = fcQImageReader_trUtf83(sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QImageReader) =
  fcQImageReader_delete(self.h)
