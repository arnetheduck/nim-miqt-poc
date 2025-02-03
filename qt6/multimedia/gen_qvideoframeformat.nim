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
{.compile("gen_qvideoframeformat.cpp", cflags).}


type QVideoFrameFormatPixelFormat* = cint
const
  QVideoFrameFormatFormat_Invalid* = 0
  QVideoFrameFormatFormat_ARGB8888* = 1
  QVideoFrameFormatFormat_ARGB8888_Premultiplied* = 2
  QVideoFrameFormatFormat_XRGB8888* = 3
  QVideoFrameFormatFormat_BGRA8888* = 4
  QVideoFrameFormatFormat_BGRA8888_Premultiplied* = 5
  QVideoFrameFormatFormat_BGRX8888* = 6
  QVideoFrameFormatFormat_ABGR8888* = 7
  QVideoFrameFormatFormat_XBGR8888* = 8
  QVideoFrameFormatFormat_RGBA8888* = 9
  QVideoFrameFormatFormat_RGBX8888* = 10
  QVideoFrameFormatFormat_AYUV* = 11
  QVideoFrameFormatFormat_AYUV_Premultiplied* = 12
  QVideoFrameFormatFormat_YUV420P* = 13
  QVideoFrameFormatFormat_YUV422P* = 14
  QVideoFrameFormatFormat_YV12* = 15
  QVideoFrameFormatFormat_UYVY* = 16
  QVideoFrameFormatFormat_YUYV* = 17
  QVideoFrameFormatFormat_NV12* = 18
  QVideoFrameFormatFormat_NV21* = 19
  QVideoFrameFormatFormat_IMC1* = 20
  QVideoFrameFormatFormat_IMC2* = 21
  QVideoFrameFormatFormat_IMC3* = 22
  QVideoFrameFormatFormat_IMC4* = 23
  QVideoFrameFormatFormat_Y8* = 24
  QVideoFrameFormatFormat_Y16* = 25
  QVideoFrameFormatFormat_P010* = 26
  QVideoFrameFormatFormat_P016* = 27
  QVideoFrameFormatFormat_SamplerExternalOES* = 28
  QVideoFrameFormatFormat_Jpeg* = 29
  QVideoFrameFormatFormat_SamplerRect* = 30
  QVideoFrameFormatFormat_YUV420P10* = 31



type QVideoFrameFormatDirection* = cint
const
  QVideoFrameFormatTopToBottom* = 0
  QVideoFrameFormatBottomToTop* = 1



type QVideoFrameFormatYCbCrColorSpace* = cint
const
  QVideoFrameFormatYCbCr_Undefined* = 0
  QVideoFrameFormatYCbCr_BT601* = 1
  QVideoFrameFormatYCbCr_BT709* = 2
  QVideoFrameFormatYCbCr_xvYCC601* = 3
  QVideoFrameFormatYCbCr_xvYCC709* = 4
  QVideoFrameFormatYCbCr_JPEG* = 5
  QVideoFrameFormatYCbCr_BT2020* = 6



type QVideoFrameFormatColorSpace* = cint
const
  QVideoFrameFormatColorSpace_Undefined* = 0
  QVideoFrameFormatColorSpace_BT601* = 1
  QVideoFrameFormatColorSpace_BT709* = 2
  QVideoFrameFormatColorSpace_AdobeRgb* = 5
  QVideoFrameFormatColorSpace_BT2020* = 6



type QVideoFrameFormatColorTransfer* = cint
const
  QVideoFrameFormatColorTransfer_Unknown* = 0
  QVideoFrameFormatColorTransfer_BT709* = 1
  QVideoFrameFormatColorTransfer_BT601* = 2
  QVideoFrameFormatColorTransfer_Linear* = 3
  QVideoFrameFormatColorTransfer_Gamma22* = 4
  QVideoFrameFormatColorTransfer_Gamma28* = 5
  QVideoFrameFormatColorTransfer_ST2084* = 6
  QVideoFrameFormatColorTransfer_STD_B67* = 7



type QVideoFrameFormatColorRange* = cint
const
  QVideoFrameFormatColorRange_Unknown* = 0
  QVideoFrameFormatColorRange_Video* = 1
  QVideoFrameFormatColorRange_Full* = 2



import gen_qvideoframeformat_types
export gen_qvideoframeformat_types

import
  gen_qimage,
  gen_qrect,
  gen_qsize
export
  gen_qimage,
  gen_qrect,
  gen_qsize

type cQVideoFrameFormat*{.exportc: "QVideoFrameFormat", incompleteStruct.} = object

proc fcQVideoFrameFormat_new(): ptr cQVideoFrameFormat {.importc: "QVideoFrameFormat_new".}
proc fcQVideoFrameFormat_new2(size: pointer, pixelFormat: cint): ptr cQVideoFrameFormat {.importc: "QVideoFrameFormat_new2".}
proc fcQVideoFrameFormat_new3(format: pointer): ptr cQVideoFrameFormat {.importc: "QVideoFrameFormat_new3".}
proc fcQVideoFrameFormat_swap(self: pointer, other: pointer): void {.importc: "QVideoFrameFormat_swap".}
proc fcQVideoFrameFormat_detach(self: pointer, ): void {.importc: "QVideoFrameFormat_detach".}
proc fcQVideoFrameFormat_operatorAssign(self: pointer, format: pointer): void {.importc: "QVideoFrameFormat_operatorAssign".}
proc fcQVideoFrameFormat_operatorEqual(self: pointer, format: pointer): bool {.importc: "QVideoFrameFormat_operatorEqual".}
proc fcQVideoFrameFormat_operatorNotEqual(self: pointer, format: pointer): bool {.importc: "QVideoFrameFormat_operatorNotEqual".}
proc fcQVideoFrameFormat_isValid(self: pointer, ): bool {.importc: "QVideoFrameFormat_isValid".}
proc fcQVideoFrameFormat_pixelFormat(self: pointer, ): cint {.importc: "QVideoFrameFormat_pixelFormat".}
proc fcQVideoFrameFormat_frameSize(self: pointer, ): pointer {.importc: "QVideoFrameFormat_frameSize".}
proc fcQVideoFrameFormat_setFrameSize(self: pointer, size: pointer): void {.importc: "QVideoFrameFormat_setFrameSize".}
proc fcQVideoFrameFormat_setFrameSize2(self: pointer, width: cint, height: cint): void {.importc: "QVideoFrameFormat_setFrameSize2".}
proc fcQVideoFrameFormat_frameWidth(self: pointer, ): cint {.importc: "QVideoFrameFormat_frameWidth".}
proc fcQVideoFrameFormat_frameHeight(self: pointer, ): cint {.importc: "QVideoFrameFormat_frameHeight".}
proc fcQVideoFrameFormat_planeCount(self: pointer, ): cint {.importc: "QVideoFrameFormat_planeCount".}
proc fcQVideoFrameFormat_viewport(self: pointer, ): pointer {.importc: "QVideoFrameFormat_viewport".}
proc fcQVideoFrameFormat_setViewport(self: pointer, viewport: pointer): void {.importc: "QVideoFrameFormat_setViewport".}
proc fcQVideoFrameFormat_scanLineDirection(self: pointer, ): cint {.importc: "QVideoFrameFormat_scanLineDirection".}
proc fcQVideoFrameFormat_setScanLineDirection(self: pointer, direction: cint): void {.importc: "QVideoFrameFormat_setScanLineDirection".}
proc fcQVideoFrameFormat_frameRate(self: pointer, ): float64 {.importc: "QVideoFrameFormat_frameRate".}
proc fcQVideoFrameFormat_setFrameRate(self: pointer, rate: float64): void {.importc: "QVideoFrameFormat_setFrameRate".}
proc fcQVideoFrameFormat_yCbCrColorSpace(self: pointer, ): cint {.importc: "QVideoFrameFormat_yCbCrColorSpace".}
proc fcQVideoFrameFormat_setYCbCrColorSpace(self: pointer, colorSpace: cint): void {.importc: "QVideoFrameFormat_setYCbCrColorSpace".}
proc fcQVideoFrameFormat_colorSpace(self: pointer, ): cint {.importc: "QVideoFrameFormat_colorSpace".}
proc fcQVideoFrameFormat_setColorSpace(self: pointer, colorSpace: cint): void {.importc: "QVideoFrameFormat_setColorSpace".}
proc fcQVideoFrameFormat_colorTransfer(self: pointer, ): cint {.importc: "QVideoFrameFormat_colorTransfer".}
proc fcQVideoFrameFormat_setColorTransfer(self: pointer, colorTransfer: cint): void {.importc: "QVideoFrameFormat_setColorTransfer".}
proc fcQVideoFrameFormat_colorRange(self: pointer, ): cint {.importc: "QVideoFrameFormat_colorRange".}
proc fcQVideoFrameFormat_setColorRange(self: pointer, range: cint): void {.importc: "QVideoFrameFormat_setColorRange".}
proc fcQVideoFrameFormat_isMirrored(self: pointer, ): bool {.importc: "QVideoFrameFormat_isMirrored".}
proc fcQVideoFrameFormat_setMirrored(self: pointer, mirrored: bool): void {.importc: "QVideoFrameFormat_setMirrored".}
proc fcQVideoFrameFormat_vertexShaderFileName(self: pointer, ): struct_miqt_string {.importc: "QVideoFrameFormat_vertexShaderFileName".}
proc fcQVideoFrameFormat_fragmentShaderFileName(self: pointer, ): struct_miqt_string {.importc: "QVideoFrameFormat_fragmentShaderFileName".}
proc fcQVideoFrameFormat_maxLuminance(self: pointer, ): float32 {.importc: "QVideoFrameFormat_maxLuminance".}
proc fcQVideoFrameFormat_setMaxLuminance(self: pointer, lum: float32): void {.importc: "QVideoFrameFormat_setMaxLuminance".}
proc fcQVideoFrameFormat_pixelFormatFromImageFormat(format: cint): cint {.importc: "QVideoFrameFormat_pixelFormatFromImageFormat".}
proc fcQVideoFrameFormat_imageFormatFromPixelFormat(format: cint): cint {.importc: "QVideoFrameFormat_imageFormatFromPixelFormat".}
proc fcQVideoFrameFormat_pixelFormatToString(pixelFormat: cint): struct_miqt_string {.importc: "QVideoFrameFormat_pixelFormatToString".}
proc fcQVideoFrameFormat_delete(self: pointer) {.importc: "QVideoFrameFormat_delete".}


func init*(T: type QVideoFrameFormat, h: ptr cQVideoFrameFormat): QVideoFrameFormat =
  T(h: h)
proc create*(T: type QVideoFrameFormat, ): QVideoFrameFormat =

  QVideoFrameFormat.init(fcQVideoFrameFormat_new())
proc create*(T: type QVideoFrameFormat, size: gen_qsize.QSize, pixelFormat: QVideoFrameFormatPixelFormat): QVideoFrameFormat =

  QVideoFrameFormat.init(fcQVideoFrameFormat_new2(size.h, cint(pixelFormat)))
proc create*(T: type QVideoFrameFormat, format: QVideoFrameFormat): QVideoFrameFormat =

  QVideoFrameFormat.init(fcQVideoFrameFormat_new3(format.h))
proc swap*(self: QVideoFrameFormat, other: QVideoFrameFormat): void =

  fcQVideoFrameFormat_swap(self.h, other.h)

proc detach*(self: QVideoFrameFormat, ): void =

  fcQVideoFrameFormat_detach(self.h)

proc operatorAssign*(self: QVideoFrameFormat, format: QVideoFrameFormat): void =

  fcQVideoFrameFormat_operatorAssign(self.h, format.h)

proc operatorEqual*(self: QVideoFrameFormat, format: QVideoFrameFormat): bool =

  fcQVideoFrameFormat_operatorEqual(self.h, format.h)

proc operatorNotEqual*(self: QVideoFrameFormat, format: QVideoFrameFormat): bool =

  fcQVideoFrameFormat_operatorNotEqual(self.h, format.h)

proc isValid*(self: QVideoFrameFormat, ): bool =

  fcQVideoFrameFormat_isValid(self.h)

proc pixelFormat*(self: QVideoFrameFormat, ): QVideoFrameFormatPixelFormat =

  QVideoFrameFormatPixelFormat(fcQVideoFrameFormat_pixelFormat(self.h))

proc frameSize*(self: QVideoFrameFormat, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQVideoFrameFormat_frameSize(self.h))

proc setFrameSize*(self: QVideoFrameFormat, size: gen_qsize.QSize): void =

  fcQVideoFrameFormat_setFrameSize(self.h, size.h)

proc setFrameSize2*(self: QVideoFrameFormat, width: cint, height: cint): void =

  fcQVideoFrameFormat_setFrameSize2(self.h, width, height)

proc frameWidth*(self: QVideoFrameFormat, ): cint =

  fcQVideoFrameFormat_frameWidth(self.h)

proc frameHeight*(self: QVideoFrameFormat, ): cint =

  fcQVideoFrameFormat_frameHeight(self.h)

proc planeCount*(self: QVideoFrameFormat, ): cint =

  fcQVideoFrameFormat_planeCount(self.h)

proc viewport*(self: QVideoFrameFormat, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQVideoFrameFormat_viewport(self.h))

proc setViewport*(self: QVideoFrameFormat, viewport: gen_qrect.QRect): void =

  fcQVideoFrameFormat_setViewport(self.h, viewport.h)

proc scanLineDirection*(self: QVideoFrameFormat, ): QVideoFrameFormatDirection =

  QVideoFrameFormatDirection(fcQVideoFrameFormat_scanLineDirection(self.h))

proc setScanLineDirection*(self: QVideoFrameFormat, direction: QVideoFrameFormatDirection): void =

  fcQVideoFrameFormat_setScanLineDirection(self.h, cint(direction))

proc frameRate*(self: QVideoFrameFormat, ): float64 =

  fcQVideoFrameFormat_frameRate(self.h)

proc setFrameRate*(self: QVideoFrameFormat, rate: float64): void =

  fcQVideoFrameFormat_setFrameRate(self.h, rate)

proc yCbCrColorSpace*(self: QVideoFrameFormat, ): QVideoFrameFormatYCbCrColorSpace =

  QVideoFrameFormatYCbCrColorSpace(fcQVideoFrameFormat_yCbCrColorSpace(self.h))

proc setYCbCrColorSpace*(self: QVideoFrameFormat, colorSpace: QVideoFrameFormatYCbCrColorSpace): void =

  fcQVideoFrameFormat_setYCbCrColorSpace(self.h, cint(colorSpace))

proc colorSpace*(self: QVideoFrameFormat, ): QVideoFrameFormatColorSpace =

  QVideoFrameFormatColorSpace(fcQVideoFrameFormat_colorSpace(self.h))

proc setColorSpace*(self: QVideoFrameFormat, colorSpace: QVideoFrameFormatColorSpace): void =

  fcQVideoFrameFormat_setColorSpace(self.h, cint(colorSpace))

proc colorTransfer*(self: QVideoFrameFormat, ): QVideoFrameFormatColorTransfer =

  QVideoFrameFormatColorTransfer(fcQVideoFrameFormat_colorTransfer(self.h))

proc setColorTransfer*(self: QVideoFrameFormat, colorTransfer: QVideoFrameFormatColorTransfer): void =

  fcQVideoFrameFormat_setColorTransfer(self.h, cint(colorTransfer))

proc colorRange*(self: QVideoFrameFormat, ): QVideoFrameFormatColorRange =

  QVideoFrameFormatColorRange(fcQVideoFrameFormat_colorRange(self.h))

proc setColorRange*(self: QVideoFrameFormat, range: QVideoFrameFormatColorRange): void =

  fcQVideoFrameFormat_setColorRange(self.h, cint(range))

proc isMirrored*(self: QVideoFrameFormat, ): bool =

  fcQVideoFrameFormat_isMirrored(self.h)

proc setMirrored*(self: QVideoFrameFormat, mirrored: bool): void =

  fcQVideoFrameFormat_setMirrored(self.h, mirrored)

proc vertexShaderFileName*(self: QVideoFrameFormat, ): string =

  let v_ms = fcQVideoFrameFormat_vertexShaderFileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fragmentShaderFileName*(self: QVideoFrameFormat, ): string =

  let v_ms = fcQVideoFrameFormat_fragmentShaderFileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc maxLuminance*(self: QVideoFrameFormat, ): float32 =

  fcQVideoFrameFormat_maxLuminance(self.h)

proc setMaxLuminance*(self: QVideoFrameFormat, lum: float32): void =

  fcQVideoFrameFormat_setMaxLuminance(self.h, lum)

proc pixelFormatFromImageFormat*(_: type QVideoFrameFormat, format: gen_qimage.QImageFormat): QVideoFrameFormatPixelFormat =

  QVideoFrameFormatPixelFormat(fcQVideoFrameFormat_pixelFormatFromImageFormat(cint(format)))

proc imageFormatFromPixelFormat*(_: type QVideoFrameFormat, format: QVideoFrameFormatPixelFormat): gen_qimage.QImageFormat =

  gen_qimage.QImageFormat(fcQVideoFrameFormat_imageFormatFromPixelFormat(cint(format)))

proc pixelFormatToString*(_: type QVideoFrameFormat, pixelFormat: QVideoFrameFormatPixelFormat): string =

  let v_ms = fcQVideoFrameFormat_pixelFormatToString(cint(pixelFormat))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QVideoFrameFormat) =
  fcQVideoFrameFormat_delete(self.h)
