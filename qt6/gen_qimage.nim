import Qt6Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6Widgets")
{.compile("gen_qimage.cpp", cflags).}


type QImageInvertMode* = cint
const
  QImageInvertRgb* = 0
  QImageInvertRgba* = 1



type QImageFormat* = cint
const
  QImageFormat_Invalid* = 0
  QImageFormat_Mono* = 1
  QImageFormat_MonoLSB* = 2
  QImageFormat_Indexed8* = 3
  QImageFormat_RGB32* = 4
  QImageFormat_ARGB32* = 5
  QImageFormat_ARGB32_Premultiplied* = 6
  QImageFormat_RGB16* = 7
  QImageFormat_ARGB8565_Premultiplied* = 8
  QImageFormat_RGB666* = 9
  QImageFormat_ARGB6666_Premultiplied* = 10
  QImageFormat_RGB555* = 11
  QImageFormat_ARGB8555_Premultiplied* = 12
  QImageFormat_RGB888* = 13
  QImageFormat_RGB444* = 14
  QImageFormat_ARGB4444_Premultiplied* = 15
  QImageFormat_RGBX8888* = 16
  QImageFormat_RGBA8888* = 17
  QImageFormat_RGBA8888_Premultiplied* = 18
  QImageFormat_BGR30* = 19
  QImageFormat_A2BGR30_Premultiplied* = 20
  QImageFormat_RGB30* = 21
  QImageFormat_A2RGB30_Premultiplied* = 22
  QImageFormat_Alpha8* = 23
  QImageFormat_Grayscale8* = 24
  QImageFormat_RGBX64* = 25
  QImageFormat_RGBA64* = 26
  QImageFormat_RGBA64_Premultiplied* = 27
  QImageFormat_Grayscale16* = 28
  QImageFormat_BGR888* = 29
  QImageFormat_RGBX16FPx4* = 30
  QImageFormat_RGBA16FPx4* = 31
  QImageFormat_RGBA16FPx4_Premultiplied* = 32
  QImageFormat_RGBX32FPx4* = 33
  QImageFormat_RGBA32FPx4* = 34
  QImageFormat_RGBA32FPx4_Premultiplied* = 35
  QImageNImageFormats* = 36



import gen_qimage_types
export gen_qimage_types

import
  gen_qbytearrayview,
  gen_qcolor,
  gen_qcolorspace,
  gen_qcolortransform,
  gen_qiodevice,
  gen_qnamespace,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpixelformat,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qtransform,
  gen_qvariant
export
  gen_qbytearrayview,
  gen_qcolor,
  gen_qcolorspace,
  gen_qcolortransform,
  gen_qiodevice,
  gen_qnamespace,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpixelformat,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qtransform,
  gen_qvariant

type cQImage*{.exportc: "QImage", incompleteStruct.} = object

proc fcQImage_new(): ptr cQImage {.importc: "QImage_new".}
proc fcQImage_new2(size: pointer, format: cint): ptr cQImage {.importc: "QImage_new2".}
proc fcQImage_new3(width: cint, height: cint, format: cint): ptr cQImage {.importc: "QImage_new3".}
proc fcQImage_new4(data: ptr uint8, width: cint, height: cint, format: cint): ptr cQImage {.importc: "QImage_new4".}
proc fcQImage_new5(data: ptr uint8, width: cint, height: cint, format: cint): ptr cQImage {.importc: "QImage_new5".}
proc fcQImage_new6(data: ptr uint8, width: cint, height: cint, bytesPerLine: int64, format: cint): ptr cQImage {.importc: "QImage_new6".}
proc fcQImage_new7(data: ptr uint8, width: cint, height: cint, bytesPerLine: int64, format: cint): ptr cQImage {.importc: "QImage_new7".}
proc fcQImage_new8(fileName: struct_miqt_string): ptr cQImage {.importc: "QImage_new8".}
proc fcQImage_new9(param1: pointer): ptr cQImage {.importc: "QImage_new9".}
proc fcQImage_new10(fileName: struct_miqt_string, format: cstring): ptr cQImage {.importc: "QImage_new10".}
proc fcQImage_operatorAssign(self: pointer, param1: pointer): void {.importc: "QImage_operatorAssign".}
proc fcQImage_swap(self: pointer, other: pointer): void {.importc: "QImage_swap".}
proc fcQImage_isNull(self: pointer, ): bool {.importc: "QImage_isNull".}
proc fcQImage_devType(self: pointer, ): cint {.importc: "QImage_devType".}
proc fcQImage_operatorEqual(self: pointer, param1: pointer): bool {.importc: "QImage_operatorEqual".}
proc fcQImage_operatorNotEqual(self: pointer, param1: pointer): bool {.importc: "QImage_operatorNotEqual".}
proc fcQImage_ToQVariant(self: pointer, ): pointer {.importc: "QImage_ToQVariant".}
proc fcQImage_detach(self: pointer, ): void {.importc: "QImage_detach".}
proc fcQImage_isDetached(self: pointer, ): bool {.importc: "QImage_isDetached".}
proc fcQImage_copy(self: pointer, ): pointer {.importc: "QImage_copy".}
proc fcQImage_copy2(self: pointer, x: cint, y: cint, w: cint, h: cint): pointer {.importc: "QImage_copy2".}
proc fcQImage_format(self: pointer, ): cint {.importc: "QImage_format".}
proc fcQImage_convertToFormat(self: pointer, f: cint): pointer {.importc: "QImage_convertToFormat".}
proc fcQImage_convertToFormat2(self: pointer, f: cint, colorTable: struct_miqt_array): pointer {.importc: "QImage_convertToFormat2".}
proc fcQImage_reinterpretAsFormat(self: pointer, f: cint): bool {.importc: "QImage_reinterpretAsFormat".}
proc fcQImage_convertedTo(self: pointer, f: cint): pointer {.importc: "QImage_convertedTo".}
proc fcQImage_convertTo(self: pointer, f: cint): void {.importc: "QImage_convertTo".}
proc fcQImage_width(self: pointer, ): cint {.importc: "QImage_width".}
proc fcQImage_height(self: pointer, ): cint {.importc: "QImage_height".}
proc fcQImage_size(self: pointer, ): pointer {.importc: "QImage_size".}
proc fcQImage_rect(self: pointer, ): pointer {.importc: "QImage_rect".}
proc fcQImage_depth(self: pointer, ): cint {.importc: "QImage_depth".}
proc fcQImage_colorCount(self: pointer, ): cint {.importc: "QImage_colorCount".}
proc fcQImage_bitPlaneCount(self: pointer, ): cint {.importc: "QImage_bitPlaneCount".}
proc fcQImage_color(self: pointer, i: cint): cuint {.importc: "QImage_color".}
proc fcQImage_setColor(self: pointer, i: cint, c: cuint): void {.importc: "QImage_setColor".}
proc fcQImage_setColorCount(self: pointer, colorCount: cint): void {.importc: "QImage_setColorCount".}
proc fcQImage_allGray(self: pointer, ): bool {.importc: "QImage_allGray".}
proc fcQImage_isGrayscale(self: pointer, ): bool {.importc: "QImage_isGrayscale".}
proc fcQImage_bits(self: pointer, ): ptr uint8 {.importc: "QImage_bits".}
proc fcQImage_bits2(self: pointer, ): ptr uint8 {.importc: "QImage_bits2".}
proc fcQImage_constBits(self: pointer, ): ptr uint8 {.importc: "QImage_constBits".}
proc fcQImage_sizeInBytes(self: pointer, ): int64 {.importc: "QImage_sizeInBytes".}
proc fcQImage_scanLine(self: pointer, param1: cint): ptr uint8 {.importc: "QImage_scanLine".}
proc fcQImage_scanLineWithInt(self: pointer, param1: cint): ptr uint8 {.importc: "QImage_scanLineWithInt".}
proc fcQImage_constScanLine(self: pointer, param1: cint): ptr uint8 {.importc: "QImage_constScanLine".}
proc fcQImage_bytesPerLine(self: pointer, ): int64 {.importc: "QImage_bytesPerLine".}
proc fcQImage_valid(self: pointer, x: cint, y: cint): bool {.importc: "QImage_valid".}
proc fcQImage_validWithPt(self: pointer, pt: pointer): bool {.importc: "QImage_validWithPt".}
proc fcQImage_pixelIndex(self: pointer, x: cint, y: cint): cint {.importc: "QImage_pixelIndex".}
proc fcQImage_pixelIndexWithPt(self: pointer, pt: pointer): cint {.importc: "QImage_pixelIndexWithPt".}
proc fcQImage_pixel(self: pointer, x: cint, y: cint): cuint {.importc: "QImage_pixel".}
proc fcQImage_pixelWithPt(self: pointer, pt: pointer): cuint {.importc: "QImage_pixelWithPt".}
proc fcQImage_setPixel(self: pointer, x: cint, y: cint, index_or_rgb: cuint): void {.importc: "QImage_setPixel".}
proc fcQImage_setPixel2(self: pointer, pt: pointer, index_or_rgb: cuint): void {.importc: "QImage_setPixel2".}
proc fcQImage_pixelColor(self: pointer, x: cint, y: cint): pointer {.importc: "QImage_pixelColor".}
proc fcQImage_pixelColorWithPt(self: pointer, pt: pointer): pointer {.importc: "QImage_pixelColorWithPt".}
proc fcQImage_setPixelColor(self: pointer, x: cint, y: cint, c: pointer): void {.importc: "QImage_setPixelColor".}
proc fcQImage_setPixelColor2(self: pointer, pt: pointer, c: pointer): void {.importc: "QImage_setPixelColor2".}
proc fcQImage_colorTable(self: pointer, ): struct_miqt_array {.importc: "QImage_colorTable".}
proc fcQImage_setColorTable(self: pointer, colors: struct_miqt_array): void {.importc: "QImage_setColorTable".}
proc fcQImage_devicePixelRatio(self: pointer, ): float64 {.importc: "QImage_devicePixelRatio".}
proc fcQImage_setDevicePixelRatio(self: pointer, scaleFactor: float64): void {.importc: "QImage_setDevicePixelRatio".}
proc fcQImage_deviceIndependentSize(self: pointer, ): pointer {.importc: "QImage_deviceIndependentSize".}
proc fcQImage_fill(self: pointer, pixel: cuint): void {.importc: "QImage_fill".}
proc fcQImage_fillWithColor(self: pointer, color: pointer): void {.importc: "QImage_fillWithColor".}
proc fcQImage_fill2(self: pointer, color: cint): void {.importc: "QImage_fill2".}
proc fcQImage_hasAlphaChannel(self: pointer, ): bool {.importc: "QImage_hasAlphaChannel".}
proc fcQImage_setAlphaChannel(self: pointer, alphaChannel: pointer): void {.importc: "QImage_setAlphaChannel".}
proc fcQImage_createAlphaMask(self: pointer, ): pointer {.importc: "QImage_createAlphaMask".}
proc fcQImage_createHeuristicMask(self: pointer, ): pointer {.importc: "QImage_createHeuristicMask".}
proc fcQImage_createMaskFromColor(self: pointer, color: cuint): pointer {.importc: "QImage_createMaskFromColor".}
proc fcQImage_scaled(self: pointer, w: cint, h: cint): pointer {.importc: "QImage_scaled".}
proc fcQImage_scaledWithQSize(self: pointer, s: pointer): pointer {.importc: "QImage_scaledWithQSize".}
proc fcQImage_scaledToWidth(self: pointer, w: cint): pointer {.importc: "QImage_scaledToWidth".}
proc fcQImage_scaledToHeight(self: pointer, h: cint): pointer {.importc: "QImage_scaledToHeight".}
proc fcQImage_transformed(self: pointer, matrix: pointer): pointer {.importc: "QImage_transformed".}
proc fcQImage_trueMatrix(param1: pointer, w: cint, h: cint): pointer {.importc: "QImage_trueMatrix".}
proc fcQImage_mirrored(self: pointer, ): pointer {.importc: "QImage_mirrored".}
proc fcQImage_rgbSwapped(self: pointer, ): pointer {.importc: "QImage_rgbSwapped".}
proc fcQImage_mirror(self: pointer, ): void {.importc: "QImage_mirror".}
proc fcQImage_rgbSwap(self: pointer, ): void {.importc: "QImage_rgbSwap".}
proc fcQImage_invertPixels(self: pointer, ): void {.importc: "QImage_invertPixels".}
proc fcQImage_colorSpace(self: pointer, ): pointer {.importc: "QImage_colorSpace".}
proc fcQImage_convertedToColorSpace(self: pointer, param1: pointer): pointer {.importc: "QImage_convertedToColorSpace".}
proc fcQImage_convertToColorSpace(self: pointer, param1: pointer): void {.importc: "QImage_convertToColorSpace".}
proc fcQImage_setColorSpace(self: pointer, colorSpace: pointer): void {.importc: "QImage_setColorSpace".}
proc fcQImage_colorTransformed(self: pointer, transform: pointer): pointer {.importc: "QImage_colorTransformed".}
proc fcQImage_applyColorTransform(self: pointer, transform: pointer): void {.importc: "QImage_applyColorTransform".}
proc fcQImage_load(self: pointer, device: pointer, format: cstring): bool {.importc: "QImage_load".}
proc fcQImage_loadWithFileName(self: pointer, fileName: struct_miqt_string): bool {.importc: "QImage_loadWithFileName".}
proc fcQImage_loadFromData(self: pointer, data: pointer): bool {.importc: "QImage_loadFromData".}
proc fcQImage_loadFromData2(self: pointer, buf: ptr uint8, len: cint): bool {.importc: "QImage_loadFromData2".}
proc fcQImage_loadFromDataWithData(self: pointer, data: struct_miqt_string): bool {.importc: "QImage_loadFromDataWithData".}
proc fcQImage_save(self: pointer, fileName: struct_miqt_string): bool {.importc: "QImage_save".}
proc fcQImage_saveWithDevice(self: pointer, device: pointer): bool {.importc: "QImage_saveWithDevice".}
proc fcQImage_fromData(data: pointer): pointer {.importc: "QImage_fromData".}
proc fcQImage_fromData2(data: ptr uint8, size: cint): pointer {.importc: "QImage_fromData2".}
proc fcQImage_fromDataWithData(data: struct_miqt_string): pointer {.importc: "QImage_fromDataWithData".}
proc fcQImage_cacheKey(self: pointer, ): clonglong {.importc: "QImage_cacheKey".}
proc fcQImage_paintEngine(self: pointer, ): pointer {.importc: "QImage_paintEngine".}
proc fcQImage_dotsPerMeterX(self: pointer, ): cint {.importc: "QImage_dotsPerMeterX".}
proc fcQImage_dotsPerMeterY(self: pointer, ): cint {.importc: "QImage_dotsPerMeterY".}
proc fcQImage_setDotsPerMeterX(self: pointer, dotsPerMeterX: cint): void {.importc: "QImage_setDotsPerMeterX".}
proc fcQImage_setDotsPerMeterY(self: pointer, dotsPerMeterY: cint): void {.importc: "QImage_setDotsPerMeterY".}
proc fcQImage_offset(self: pointer, ): pointer {.importc: "QImage_offset".}
proc fcQImage_setOffset(self: pointer, offset: pointer): void {.importc: "QImage_setOffset".}
proc fcQImage_textKeys(self: pointer, ): struct_miqt_array {.importc: "QImage_textKeys".}
proc fcQImage_text(self: pointer, ): struct_miqt_string {.importc: "QImage_text".}
proc fcQImage_setText(self: pointer, key: struct_miqt_string, value: struct_miqt_string): void {.importc: "QImage_setText".}
proc fcQImage_pixelFormat(self: pointer, ): pointer {.importc: "QImage_pixelFormat".}
proc fcQImage_toPixelFormat(format: cint): pointer {.importc: "QImage_toPixelFormat".}
proc fcQImage_toImageFormat(format: pointer): cint {.importc: "QImage_toImageFormat".}
proc fcQImage_copy1(self: pointer, rect: pointer): pointer {.importc: "QImage_copy1".}
proc fcQImage_convertToFormat22(self: pointer, f: cint, flags: cint): pointer {.importc: "QImage_convertToFormat22".}
proc fcQImage_convertToFormat3(self: pointer, f: cint, colorTable: struct_miqt_array, flags: cint): pointer {.importc: "QImage_convertToFormat3".}
proc fcQImage_convertedTo2(self: pointer, f: cint, flags: cint): pointer {.importc: "QImage_convertedTo2".}
proc fcQImage_convertTo2(self: pointer, f: cint, flags: cint): void {.importc: "QImage_convertTo2".}
proc fcQImage_createAlphaMask1(self: pointer, flags: cint): pointer {.importc: "QImage_createAlphaMask1".}
proc fcQImage_createHeuristicMask1(self: pointer, clipTight: bool): pointer {.importc: "QImage_createHeuristicMask1".}
proc fcQImage_createMaskFromColor2(self: pointer, color: cuint, mode: cint): pointer {.importc: "QImage_createMaskFromColor2".}
proc fcQImage_scaled3(self: pointer, w: cint, h: cint, aspectMode: cint): pointer {.importc: "QImage_scaled3".}
proc fcQImage_scaled4(self: pointer, w: cint, h: cint, aspectMode: cint, mode: cint): pointer {.importc: "QImage_scaled4".}
proc fcQImage_scaled2(self: pointer, s: pointer, aspectMode: cint): pointer {.importc: "QImage_scaled2".}
proc fcQImage_scaled32(self: pointer, s: pointer, aspectMode: cint, mode: cint): pointer {.importc: "QImage_scaled32".}
proc fcQImage_scaledToWidth2(self: pointer, w: cint, mode: cint): pointer {.importc: "QImage_scaledToWidth2".}
proc fcQImage_scaledToHeight2(self: pointer, h: cint, mode: cint): pointer {.importc: "QImage_scaledToHeight2".}
proc fcQImage_transformed2(self: pointer, matrix: pointer, mode: cint): pointer {.importc: "QImage_transformed2".}
proc fcQImage_mirrored1(self: pointer, horizontally: bool): pointer {.importc: "QImage_mirrored1".}
proc fcQImage_mirrored2(self: pointer, horizontally: bool, vertically: bool): pointer {.importc: "QImage_mirrored2".}
proc fcQImage_mirror1(self: pointer, horizontally: bool): void {.importc: "QImage_mirror1".}
proc fcQImage_mirror2(self: pointer, horizontally: bool, vertically: bool): void {.importc: "QImage_mirror2".}
proc fcQImage_invertPixels1(self: pointer, param1: cint): void {.importc: "QImage_invertPixels1".}
proc fcQImage_load2(self: pointer, fileName: struct_miqt_string, format: cstring): bool {.importc: "QImage_load2".}
proc fcQImage_loadFromData22(self: pointer, data: pointer, format: cstring): bool {.importc: "QImage_loadFromData22".}
proc fcQImage_loadFromData3(self: pointer, buf: ptr uint8, len: cint, format: cstring): bool {.importc: "QImage_loadFromData3".}
proc fcQImage_loadFromData23(self: pointer, data: struct_miqt_string, format: cstring): bool {.importc: "QImage_loadFromData23".}
proc fcQImage_save2(self: pointer, fileName: struct_miqt_string, format: cstring): bool {.importc: "QImage_save2".}
proc fcQImage_save3(self: pointer, fileName: struct_miqt_string, format: cstring, quality: cint): bool {.importc: "QImage_save3".}
proc fcQImage_save22(self: pointer, device: pointer, format: cstring): bool {.importc: "QImage_save22".}
proc fcQImage_save32(self: pointer, device: pointer, format: cstring, quality: cint): bool {.importc: "QImage_save32".}
proc fcQImage_fromData22(data: pointer, format: cstring): pointer {.importc: "QImage_fromData22".}
proc fcQImage_fromData3(data: ptr uint8, size: cint, format: cstring): pointer {.importc: "QImage_fromData3".}
proc fcQImage_fromData23(data: struct_miqt_string, format: cstring): pointer {.importc: "QImage_fromData23".}
proc fcQImage_text1(self: pointer, key: struct_miqt_string): struct_miqt_string {.importc: "QImage_text1".}
proc fQImage_virtualbase_devType(self: pointer, ): cint{.importc: "QImage_virtualbase_devType".}
proc fcQImage_override_virtual_devType(self: pointer, slot: int) {.importc: "QImage_override_virtual_devType".}
proc fQImage_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QImage_virtualbase_paintEngine".}
proc fcQImage_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QImage_override_virtual_paintEngine".}
proc fQImage_virtualbase_metric(self: pointer, metric: cint): cint{.importc: "QImage_virtualbase_metric".}
proc fcQImage_override_virtual_metric(self: pointer, slot: int) {.importc: "QImage_override_virtual_metric".}
proc fQImage_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QImage_virtualbase_initPainter".}
proc fcQImage_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QImage_override_virtual_initPainter".}
proc fQImage_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QImage_virtualbase_redirected".}
proc fcQImage_override_virtual_redirected(self: pointer, slot: int) {.importc: "QImage_override_virtual_redirected".}
proc fQImage_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QImage_virtualbase_sharedPainter".}
proc fcQImage_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QImage_override_virtual_sharedPainter".}
proc fcQImage_delete(self: pointer) {.importc: "QImage_delete".}


func init*(T: type QImage, h: ptr cQImage): QImage =
  T(h: h)
proc create*(T: type QImage, ): QImage =

  QImage.init(fcQImage_new())
proc create*(T: type QImage, size: gen_qsize.QSize, format: QImageFormat): QImage =

  QImage.init(fcQImage_new2(size.h, cint(format)))
proc create*(T: type QImage, width: cint, height: cint, format: QImageFormat): QImage =

  QImage.init(fcQImage_new3(width, height, cint(format)))
proc create*(T: type QImage, data: ptr uint8, width: cint, height: cint, format: QImageFormat): QImage =

  QImage.init(fcQImage_new4(data, width, height, cint(format)))
proc create2*(T: type QImage, data: ptr uint8, width: cint, height: cint, format: QImageFormat): QImage =

  QImage.init(fcQImage_new5(data, width, height, cint(format)))
proc create*(T: type QImage, data: ptr uint8, width: cint, height: cint, bytesPerLine: int64, format: QImageFormat): QImage =

  QImage.init(fcQImage_new6(data, width, height, bytesPerLine, cint(format)))
proc create2*(T: type QImage, data: ptr uint8, width: cint, height: cint, bytesPerLine: int64, format: QImageFormat): QImage =

  QImage.init(fcQImage_new7(data, width, height, bytesPerLine, cint(format)))
proc create*(T: type QImage, fileName: string): QImage =

  QImage.init(fcQImage_new8(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))
proc create*(T: type QImage, param1: QImage): QImage =

  QImage.init(fcQImage_new9(param1.h))
proc create*(T: type QImage, fileName: string, format: cstring): QImage =

  QImage.init(fcQImage_new10(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format))
proc operatorAssign*(self: QImage, param1: QImage): void =

  fcQImage_operatorAssign(self.h, param1.h)

proc swap*(self: QImage, other: QImage): void =

  fcQImage_swap(self.h, other.h)

proc isNull*(self: QImage, ): bool =

  fcQImage_isNull(self.h)

proc devType*(self: QImage, ): cint =

  fcQImage_devType(self.h)

proc operatorEqual*(self: QImage, param1: QImage): bool =

  fcQImage_operatorEqual(self.h, param1.h)

proc operatorNotEqual*(self: QImage, param1: QImage): bool =

  fcQImage_operatorNotEqual(self.h, param1.h)

proc ToQVariant*(self: QImage, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQImage_ToQVariant(self.h))

proc detach*(self: QImage, ): void =

  fcQImage_detach(self.h)

proc isDetached*(self: QImage, ): bool =

  fcQImage_isDetached(self.h)

proc copy*(self: QImage, ): QImage =

  QImage(h: fcQImage_copy(self.h))

proc copy2*(self: QImage, x: cint, y: cint, w: cint, h: cint): QImage =

  QImage(h: fcQImage_copy2(self.h, x, y, w, h))

proc format*(self: QImage, ): QImageFormat =

  QImageFormat(fcQImage_format(self.h))

proc convertToFormat*(self: QImage, f: QImageFormat): QImage =

  QImage(h: fcQImage_convertToFormat(self.h, cint(f)))

proc convertToFormat2*(self: QImage, f: QImageFormat, colorTable: seq[cuint]): QImage =

  var colorTable_CArray = newSeq[cuint](len(colorTable))
  for i in 0..<len(colorTable):
    colorTable_CArray[i] = colorTable[i]

  QImage(h: fcQImage_convertToFormat2(self.h, cint(f), struct_miqt_array(len: csize_t(len(colorTable)), data: if len(colorTable) == 0: nil else: addr(colorTable_CArray[0]))))

proc reinterpretAsFormat*(self: QImage, f: QImageFormat): bool =

  fcQImage_reinterpretAsFormat(self.h, cint(f))

proc convertedTo*(self: QImage, f: QImageFormat): QImage =

  QImage(h: fcQImage_convertedTo(self.h, cint(f)))

proc convertTo*(self: QImage, f: QImageFormat): void =

  fcQImage_convertTo(self.h, cint(f))

proc width*(self: QImage, ): cint =

  fcQImage_width(self.h)

proc height*(self: QImage, ): cint =

  fcQImage_height(self.h)

proc size*(self: QImage, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQImage_size(self.h))

proc rect*(self: QImage, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQImage_rect(self.h))

proc depth*(self: QImage, ): cint =

  fcQImage_depth(self.h)

proc colorCount*(self: QImage, ): cint =

  fcQImage_colorCount(self.h)

proc bitPlaneCount*(self: QImage, ): cint =

  fcQImage_bitPlaneCount(self.h)

proc color*(self: QImage, i: cint): cuint =

  fcQImage_color(self.h, i)

proc setColor*(self: QImage, i: cint, c: cuint): void =

  fcQImage_setColor(self.h, i, c)

proc setColorCount*(self: QImage, colorCount: cint): void =

  fcQImage_setColorCount(self.h, colorCount)

proc allGray*(self: QImage, ): bool =

  fcQImage_allGray(self.h)

proc isGrayscale*(self: QImage, ): bool =

  fcQImage_isGrayscale(self.h)

proc bits*(self: QImage, ): ptr uint8 =

  fcQImage_bits(self.h)

proc bits2*(self: QImage, ): ptr uint8 =

  fcQImage_bits2(self.h)

proc constBits*(self: QImage, ): ptr uint8 =

  fcQImage_constBits(self.h)

proc sizeInBytes*(self: QImage, ): int64 =

  fcQImage_sizeInBytes(self.h)

proc scanLine*(self: QImage, param1: cint): ptr uint8 =

  fcQImage_scanLine(self.h, param1)

proc scanLineWithInt*(self: QImage, param1: cint): ptr uint8 =

  fcQImage_scanLineWithInt(self.h, param1)

proc constScanLine*(self: QImage, param1: cint): ptr uint8 =

  fcQImage_constScanLine(self.h, param1)

proc bytesPerLine*(self: QImage, ): int64 =

  fcQImage_bytesPerLine(self.h)

proc valid*(self: QImage, x: cint, y: cint): bool =

  fcQImage_valid(self.h, x, y)

proc validWithPt*(self: QImage, pt: gen_qpoint.QPoint): bool =

  fcQImage_validWithPt(self.h, pt.h)

proc pixelIndex*(self: QImage, x: cint, y: cint): cint =

  fcQImage_pixelIndex(self.h, x, y)

proc pixelIndexWithPt*(self: QImage, pt: gen_qpoint.QPoint): cint =

  fcQImage_pixelIndexWithPt(self.h, pt.h)

proc pixel*(self: QImage, x: cint, y: cint): cuint =

  fcQImage_pixel(self.h, x, y)

proc pixelWithPt*(self: QImage, pt: gen_qpoint.QPoint): cuint =

  fcQImage_pixelWithPt(self.h, pt.h)

proc setPixel*(self: QImage, x: cint, y: cint, index_or_rgb: cuint): void =

  fcQImage_setPixel(self.h, x, y, index_or_rgb)

proc setPixel2*(self: QImage, pt: gen_qpoint.QPoint, index_or_rgb: cuint): void =

  fcQImage_setPixel2(self.h, pt.h, index_or_rgb)

proc pixelColor*(self: QImage, x: cint, y: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQImage_pixelColor(self.h, x, y))

proc pixelColorWithPt*(self: QImage, pt: gen_qpoint.QPoint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQImage_pixelColorWithPt(self.h, pt.h))

proc setPixelColor*(self: QImage, x: cint, y: cint, c: gen_qcolor.QColor): void =

  fcQImage_setPixelColor(self.h, x, y, c.h)

proc setPixelColor2*(self: QImage, pt: gen_qpoint.QPoint, c: gen_qcolor.QColor): void =

  fcQImage_setPixelColor2(self.h, pt.h, c.h)

proc colorTable*(self: QImage, ): seq[cuint] =

  var v_ma = fcQImage_colorTable(self.h)
  var vx_ret = newSeq[cuint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cuint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc setColorTable*(self: QImage, colors: seq[cuint]): void =

  var colors_CArray = newSeq[cuint](len(colors))
  for i in 0..<len(colors):
    colors_CArray[i] = colors[i]

  fcQImage_setColorTable(self.h, struct_miqt_array(len: csize_t(len(colors)), data: if len(colors) == 0: nil else: addr(colors_CArray[0])))

proc devicePixelRatio*(self: QImage, ): float64 =

  fcQImage_devicePixelRatio(self.h)

proc setDevicePixelRatio*(self: QImage, scaleFactor: float64): void =

  fcQImage_setDevicePixelRatio(self.h, scaleFactor)

proc deviceIndependentSize*(self: QImage, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQImage_deviceIndependentSize(self.h))

proc fill*(self: QImage, pixel: cuint): void =

  fcQImage_fill(self.h, pixel)

proc fillWithColor*(self: QImage, color: gen_qcolor.QColor): void =

  fcQImage_fillWithColor(self.h, color.h)

proc fill2*(self: QImage, color: gen_qnamespace.GlobalColor): void =

  fcQImage_fill2(self.h, cint(color))

proc hasAlphaChannel*(self: QImage, ): bool =

  fcQImage_hasAlphaChannel(self.h)

proc setAlphaChannel*(self: QImage, alphaChannel: QImage): void =

  fcQImage_setAlphaChannel(self.h, alphaChannel.h)

proc createAlphaMask*(self: QImage, ): QImage =

  QImage(h: fcQImage_createAlphaMask(self.h))

proc createHeuristicMask*(self: QImage, ): QImage =

  QImage(h: fcQImage_createHeuristicMask(self.h))

proc createMaskFromColor*(self: QImage, color: cuint): QImage =

  QImage(h: fcQImage_createMaskFromColor(self.h, color))

proc scaled*(self: QImage, w: cint, h: cint): QImage =

  QImage(h: fcQImage_scaled(self.h, w, h))

proc scaledWithQSize*(self: QImage, s: gen_qsize.QSize): QImage =

  QImage(h: fcQImage_scaledWithQSize(self.h, s.h))

proc scaledToWidth*(self: QImage, w: cint): QImage =

  QImage(h: fcQImage_scaledToWidth(self.h, w))

proc scaledToHeight*(self: QImage, h: cint): QImage =

  QImage(h: fcQImage_scaledToHeight(self.h, h))

proc transformed*(self: QImage, matrix: gen_qtransform.QTransform): QImage =

  QImage(h: fcQImage_transformed(self.h, matrix.h))

proc trueMatrix*(_: type QImage, param1: gen_qtransform.QTransform, w: cint, h: cint): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQImage_trueMatrix(param1.h, w, h))

proc mirrored*(self: QImage, ): QImage =

  QImage(h: fcQImage_mirrored(self.h))

proc rgbSwapped*(self: QImage, ): QImage =

  QImage(h: fcQImage_rgbSwapped(self.h))

proc mirror*(self: QImage, ): void =

  fcQImage_mirror(self.h)

proc rgbSwap*(self: QImage, ): void =

  fcQImage_rgbSwap(self.h)

proc invertPixels*(self: QImage, ): void =

  fcQImage_invertPixels(self.h)

proc colorSpace*(self: QImage, ): gen_qcolorspace.QColorSpace =

  gen_qcolorspace.QColorSpace(h: fcQImage_colorSpace(self.h))

proc convertedToColorSpace*(self: QImage, param1: gen_qcolorspace.QColorSpace): QImage =

  QImage(h: fcQImage_convertedToColorSpace(self.h, param1.h))

proc convertToColorSpace*(self: QImage, param1: gen_qcolorspace.QColorSpace): void =

  fcQImage_convertToColorSpace(self.h, param1.h)

proc setColorSpace*(self: QImage, colorSpace: gen_qcolorspace.QColorSpace): void =

  fcQImage_setColorSpace(self.h, colorSpace.h)

proc colorTransformed*(self: QImage, transform: gen_qcolortransform.QColorTransform): QImage =

  QImage(h: fcQImage_colorTransformed(self.h, transform.h))

proc applyColorTransform*(self: QImage, transform: gen_qcolortransform.QColorTransform): void =

  fcQImage_applyColorTransform(self.h, transform.h)

proc load*(self: QImage, device: gen_qiodevice.QIODevice, format: cstring): bool =

  fcQImage_load(self.h, device.h, format)

proc loadWithFileName*(self: QImage, fileName: string): bool =

  fcQImage_loadWithFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc loadFromData*(self: QImage, data: gen_qbytearrayview.QByteArrayView): bool =

  fcQImage_loadFromData(self.h, data.h)

proc loadFromData2*(self: QImage, buf: ptr uint8, len: cint): bool =

  fcQImage_loadFromData2(self.h, buf, len)

proc loadFromDataWithData*(self: QImage, data: seq[byte]): bool =

  fcQImage_loadFromDataWithData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc save*(self: QImage, fileName: string): bool =

  fcQImage_save(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc saveWithDevice*(self: QImage, device: gen_qiodevice.QIODevice): bool =

  fcQImage_saveWithDevice(self.h, device.h)

proc fromData*(_: type QImage, data: gen_qbytearrayview.QByteArrayView): QImage =

  QImage(h: fcQImage_fromData(data.h))

proc fromData2*(_: type QImage, data: ptr uint8, size: cint): QImage =

  QImage(h: fcQImage_fromData2(data, size))

proc fromDataWithData*(_: type QImage, data: seq[byte]): QImage =

  QImage(h: fcQImage_fromDataWithData(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))

proc cacheKey*(self: QImage, ): clonglong =

  fcQImage_cacheKey(self.h)

proc paintEngine*(self: QImage, ): gen_qpaintengine.QPaintEngine =

  gen_qpaintengine.QPaintEngine(h: fcQImage_paintEngine(self.h))

proc dotsPerMeterX*(self: QImage, ): cint =

  fcQImage_dotsPerMeterX(self.h)

proc dotsPerMeterY*(self: QImage, ): cint =

  fcQImage_dotsPerMeterY(self.h)

proc setDotsPerMeterX*(self: QImage, dotsPerMeterX: cint): void =

  fcQImage_setDotsPerMeterX(self.h, dotsPerMeterX)

proc setDotsPerMeterY*(self: QImage, dotsPerMeterY: cint): void =

  fcQImage_setDotsPerMeterY(self.h, dotsPerMeterY)

proc offset*(self: QImage, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQImage_offset(self.h))

proc setOffset*(self: QImage, offset: gen_qpoint.QPoint): void =

  fcQImage_setOffset(self.h, offset.h)

proc textKeys*(self: QImage, ): seq[string] =

  var v_ma = fcQImage_textKeys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc text*(self: QImage, ): string =

  let v_ms = fcQImage_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: QImage, key: string, value: string): void =

  fcQImage_setText(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc pixelFormat*(self: QImage, ): gen_qpixelformat.QPixelFormat =

  gen_qpixelformat.QPixelFormat(h: fcQImage_pixelFormat(self.h))

proc toPixelFormat*(_: type QImage, format: QImageFormat): gen_qpixelformat.QPixelFormat =

  gen_qpixelformat.QPixelFormat(h: fcQImage_toPixelFormat(cint(format)))

proc toImageFormat*(_: type QImage, format: gen_qpixelformat.QPixelFormat): QImageFormat =

  QImageFormat(fcQImage_toImageFormat(format.h))

proc copy1*(self: QImage, rect: gen_qrect.QRect): QImage =

  QImage(h: fcQImage_copy1(self.h, rect.h))

proc convertToFormat22*(self: QImage, f: QImageFormat, flags: gen_qnamespace.ImageConversionFlag): QImage =

  QImage(h: fcQImage_convertToFormat22(self.h, cint(f), cint(flags)))

proc convertToFormat3*(self: QImage, f: QImageFormat, colorTable: seq[cuint], flags: gen_qnamespace.ImageConversionFlag): QImage =

  var colorTable_CArray = newSeq[cuint](len(colorTable))
  for i in 0..<len(colorTable):
    colorTable_CArray[i] = colorTable[i]

  QImage(h: fcQImage_convertToFormat3(self.h, cint(f), struct_miqt_array(len: csize_t(len(colorTable)), data: if len(colorTable) == 0: nil else: addr(colorTable_CArray[0])), cint(flags)))

proc convertedTo2*(self: QImage, f: QImageFormat, flags: gen_qnamespace.ImageConversionFlag): QImage =

  QImage(h: fcQImage_convertedTo2(self.h, cint(f), cint(flags)))

proc convertTo2*(self: QImage, f: QImageFormat, flags: gen_qnamespace.ImageConversionFlag): void =

  fcQImage_convertTo2(self.h, cint(f), cint(flags))

proc createAlphaMask1*(self: QImage, flags: gen_qnamespace.ImageConversionFlag): QImage =

  QImage(h: fcQImage_createAlphaMask1(self.h, cint(flags)))

proc createHeuristicMask1*(self: QImage, clipTight: bool): QImage =

  QImage(h: fcQImage_createHeuristicMask1(self.h, clipTight))

proc createMaskFromColor2*(self: QImage, color: cuint, mode: gen_qnamespace.MaskMode): QImage =

  QImage(h: fcQImage_createMaskFromColor2(self.h, color, cint(mode)))

proc scaled3*(self: QImage, w: cint, h: cint, aspectMode: gen_qnamespace.AspectRatioMode): QImage =

  QImage(h: fcQImage_scaled3(self.h, w, h, cint(aspectMode)))

proc scaled4*(self: QImage, w: cint, h: cint, aspectMode: gen_qnamespace.AspectRatioMode, mode: gen_qnamespace.TransformationMode): QImage =

  QImage(h: fcQImage_scaled4(self.h, w, h, cint(aspectMode), cint(mode)))

proc scaled2*(self: QImage, s: gen_qsize.QSize, aspectMode: gen_qnamespace.AspectRatioMode): QImage =

  QImage(h: fcQImage_scaled2(self.h, s.h, cint(aspectMode)))

proc scaled32*(self: QImage, s: gen_qsize.QSize, aspectMode: gen_qnamespace.AspectRatioMode, mode: gen_qnamespace.TransformationMode): QImage =

  QImage(h: fcQImage_scaled32(self.h, s.h, cint(aspectMode), cint(mode)))

proc scaledToWidth2*(self: QImage, w: cint, mode: gen_qnamespace.TransformationMode): QImage =

  QImage(h: fcQImage_scaledToWidth2(self.h, w, cint(mode)))

proc scaledToHeight2*(self: QImage, h: cint, mode: gen_qnamespace.TransformationMode): QImage =

  QImage(h: fcQImage_scaledToHeight2(self.h, h, cint(mode)))

proc transformed2*(self: QImage, matrix: gen_qtransform.QTransform, mode: gen_qnamespace.TransformationMode): QImage =

  QImage(h: fcQImage_transformed2(self.h, matrix.h, cint(mode)))

proc mirrored1*(self: QImage, horizontally: bool): QImage =

  QImage(h: fcQImage_mirrored1(self.h, horizontally))

proc mirrored2*(self: QImage, horizontally: bool, vertically: bool): QImage =

  QImage(h: fcQImage_mirrored2(self.h, horizontally, vertically))

proc mirror1*(self: QImage, horizontally: bool): void =

  fcQImage_mirror1(self.h, horizontally)

proc mirror2*(self: QImage, horizontally: bool, vertically: bool): void =

  fcQImage_mirror2(self.h, horizontally, vertically)

proc invertPixels1*(self: QImage, param1: QImageInvertMode): void =

  fcQImage_invertPixels1(self.h, cint(param1))

proc load2*(self: QImage, fileName: string, format: cstring): bool =

  fcQImage_load2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format)

proc loadFromData22*(self: QImage, data: gen_qbytearrayview.QByteArrayView, format: cstring): bool =

  fcQImage_loadFromData22(self.h, data.h, format)

proc loadFromData3*(self: QImage, buf: ptr uint8, len: cint, format: cstring): bool =

  fcQImage_loadFromData3(self.h, buf, len, format)

proc loadFromData23*(self: QImage, data: seq[byte], format: cstring): bool =

  fcQImage_loadFromData23(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), format)

proc save2*(self: QImage, fileName: string, format: cstring): bool =

  fcQImage_save2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format)

proc save3*(self: QImage, fileName: string, format: cstring, quality: cint): bool =

  fcQImage_save3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format, quality)

proc save22*(self: QImage, device: gen_qiodevice.QIODevice, format: cstring): bool =

  fcQImage_save22(self.h, device.h, format)

proc save32*(self: QImage, device: gen_qiodevice.QIODevice, format: cstring, quality: cint): bool =

  fcQImage_save32(self.h, device.h, format, quality)

proc fromData22*(_: type QImage, data: gen_qbytearrayview.QByteArrayView, format: cstring): QImage =

  QImage(h: fcQImage_fromData22(data.h, format))

proc fromData3*(_: type QImage, data: ptr uint8, size: cint, format: cstring): QImage =

  QImage(h: fcQImage_fromData3(data, size, format))

proc fromData23*(_: type QImage, data: seq[byte], format: cstring): QImage =

  QImage(h: fcQImage_fromData23(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), format))

proc text1*(self: QImage, key: string): string =

  let v_ms = fcQImage_text1(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_devType(self: QImage, ): cint =


  fQImage_virtualbase_devType(self.h)

type QImagedevTypeBase* = proc(): cint
proc ondevType*(self: QImage, slot: proc(super: QImagedevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QImagedevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImage_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImage_devType(self: ptr cQImage, slot: int): cint {.exportc: "miqt_exec_callback_QImage_devType ".} =
  type Cb = proc(super: QImagedevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QImage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QImage, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQImage_virtualbase_paintEngine(self.h))

type QImagepaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QImage, slot: proc(super: QImagepaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QImagepaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImage_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImage_paintEngine(self: ptr cQImage, slot: int): pointer {.exportc: "miqt_exec_callback_QImage_paintEngine ".} =
  type Cb = proc(super: QImagepaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QImage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metric(self: QImage, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQImage_virtualbase_metric(self.h, cint(metric))

type QImagemetricBase* = proc(metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QImage, slot: proc(super: QImagemetricBase, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QImagemetricBase, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImage_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImage_metric(self: ptr cQImage, slot: int, metric: cint): cint {.exportc: "miqt_exec_callback_QImage_metric ".} =
  type Cb = proc(super: QImagemetricBase, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QImage(h: self), metric)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(metric)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QImage, painter: gen_qpainter.QPainter): void =


  fQImage_virtualbase_initPainter(self.h, painter.h)

type QImageinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QImage, slot: proc(super: QImageinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QImageinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImage_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImage_initPainter(self: ptr cQImage, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QImage_initPainter ".} =
  type Cb = proc(super: QImageinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QImage(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QImage, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQImage_virtualbase_redirected(self.h, offset.h))

type QImageredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QImage, slot: proc(super: QImageredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QImageredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImage_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImage_redirected(self: ptr cQImage, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QImage_redirected ".} =
  type Cb = proc(super: QImageredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QImage(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QImage, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQImage_virtualbase_sharedPainter(self.h))

type QImagesharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QImage, slot: proc(super: QImagesharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QImagesharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImage_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImage_sharedPainter(self: ptr cQImage, slot: int): pointer {.exportc: "miqt_exec_callback_QImage_sharedPainter ".} =
  type Cb = proc(super: QImagesharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QImage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QImage) =
  fcQImage_delete(self.h)
