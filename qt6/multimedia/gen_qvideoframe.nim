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
{.compile("gen_qvideoframe.cpp", cflags).}


type QVideoFrameHandleType* = cint
const
  QVideoFrameNoHandle* = 0
  QVideoFrameRhiTextureHandle* = 1



type QVideoFrameMapMode* = cint
const
  QVideoFrameNotMapped* = 0
  QVideoFrameReadOnly* = 1
  QVideoFrameWriteOnly* = 2
  QVideoFrameReadWrite* = 3



type QVideoFrameRotationAngle* = cint
const
  QVideoFrameRotation0* = 0
  QVideoFrameRotation90* = 90
  QVideoFrameRotation180* = 180
  QVideoFrameRotation270* = 270



type QVideoFramePaintOptionsPaintFlag* = cint
const
  QVideoFramePaintOptionsDontDrawSubtitles* = 1



import gen_qvideoframe_types
export gen_qvideoframe_types

import
  gen_qimage,
  gen_qpainter,
  gen_qrect,
  gen_qsize,
  gen_qvideoframeformat
export
  gen_qimage,
  gen_qpainter,
  gen_qrect,
  gen_qsize,
  gen_qvideoframeformat

type cQVideoFrame*{.exportc: "QVideoFrame", incompleteStruct.} = object
type cQVideoFramePaintOptions*{.exportc: "QVideoFrame__PaintOptions", incompleteStruct.} = object

proc fcQVideoFrame_new(): ptr cQVideoFrame {.importc: "QVideoFrame_new".}
proc fcQVideoFrame_new2(format: pointer): ptr cQVideoFrame {.importc: "QVideoFrame_new2".}
proc fcQVideoFrame_new3(other: pointer): ptr cQVideoFrame {.importc: "QVideoFrame_new3".}
proc fcQVideoFrame_swap(self: pointer, other: pointer): void {.importc: "QVideoFrame_swap".}
proc fcQVideoFrame_operatorAssign(self: pointer, other: pointer): void {.importc: "QVideoFrame_operatorAssign".}
proc fcQVideoFrame_operatorEqual(self: pointer, other: pointer): bool {.importc: "QVideoFrame_operatorEqual".}
proc fcQVideoFrame_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QVideoFrame_operatorNotEqual".}
proc fcQVideoFrame_isValid(self: pointer, ): bool {.importc: "QVideoFrame_isValid".}
proc fcQVideoFrame_pixelFormat(self: pointer, ): cint {.importc: "QVideoFrame_pixelFormat".}
proc fcQVideoFrame_surfaceFormat(self: pointer, ): pointer {.importc: "QVideoFrame_surfaceFormat".}
proc fcQVideoFrame_handleType(self: pointer, ): cint {.importc: "QVideoFrame_handleType".}
proc fcQVideoFrame_size(self: pointer, ): pointer {.importc: "QVideoFrame_size".}
proc fcQVideoFrame_width(self: pointer, ): cint {.importc: "QVideoFrame_width".}
proc fcQVideoFrame_height(self: pointer, ): cint {.importc: "QVideoFrame_height".}
proc fcQVideoFrame_isMapped(self: pointer, ): bool {.importc: "QVideoFrame_isMapped".}
proc fcQVideoFrame_isReadable(self: pointer, ): bool {.importc: "QVideoFrame_isReadable".}
proc fcQVideoFrame_isWritable(self: pointer, ): bool {.importc: "QVideoFrame_isWritable".}
proc fcQVideoFrame_mapMode(self: pointer, ): cint {.importc: "QVideoFrame_mapMode".}
proc fcQVideoFrame_map(self: pointer, mode: cint): bool {.importc: "QVideoFrame_map".}
proc fcQVideoFrame_unmap(self: pointer, ): void {.importc: "QVideoFrame_unmap".}
proc fcQVideoFrame_bytesPerLine(self: pointer, plane: cint): cint {.importc: "QVideoFrame_bytesPerLine".}
proc fcQVideoFrame_bits(self: pointer, plane: cint): ptr uint8 {.importc: "QVideoFrame_bits".}
proc fcQVideoFrame_bitsWithPlane(self: pointer, plane: cint): ptr uint8 {.importc: "QVideoFrame_bitsWithPlane".}
proc fcQVideoFrame_mappedBytes(self: pointer, plane: cint): cint {.importc: "QVideoFrame_mappedBytes".}
proc fcQVideoFrame_planeCount(self: pointer, ): cint {.importc: "QVideoFrame_planeCount".}
proc fcQVideoFrame_startTime(self: pointer, ): clonglong {.importc: "QVideoFrame_startTime".}
proc fcQVideoFrame_setStartTime(self: pointer, time: clonglong): void {.importc: "QVideoFrame_setStartTime".}
proc fcQVideoFrame_endTime(self: pointer, ): clonglong {.importc: "QVideoFrame_endTime".}
proc fcQVideoFrame_setEndTime(self: pointer, time: clonglong): void {.importc: "QVideoFrame_setEndTime".}
proc fcQVideoFrame_setRotationAngle(self: pointer, rotationAngle: cint): void {.importc: "QVideoFrame_setRotationAngle".}
proc fcQVideoFrame_rotationAngle(self: pointer, ): cint {.importc: "QVideoFrame_rotationAngle".}
proc fcQVideoFrame_setMirrored(self: pointer, mirrored: bool): void {.importc: "QVideoFrame_setMirrored".}
proc fcQVideoFrame_mirrored(self: pointer, ): bool {.importc: "QVideoFrame_mirrored".}
proc fcQVideoFrame_toImage(self: pointer, ): pointer {.importc: "QVideoFrame_toImage".}
proc fcQVideoFrame_subtitleText(self: pointer, ): struct_miqt_string {.importc: "QVideoFrame_subtitleText".}
proc fcQVideoFrame_setSubtitleText(self: pointer, text: struct_miqt_string): void {.importc: "QVideoFrame_setSubtitleText".}
proc fcQVideoFrame_paint(self: pointer, painter: pointer, rect: pointer, options: pointer): void {.importc: "QVideoFrame_paint".}
proc fcQVideoFrame_delete(self: pointer) {.importc: "QVideoFrame_delete".}
proc fcQVideoFramePaintOptions_delete(self: pointer) {.importc: "QVideoFrame__PaintOptions_delete".}


func init*(T: type QVideoFrame, h: ptr cQVideoFrame): QVideoFrame =
  T(h: h)
proc create*(T: type QVideoFrame, ): QVideoFrame =

  QVideoFrame.init(fcQVideoFrame_new())
proc create*(T: type QVideoFrame, format: gen_qvideoframeformat.QVideoFrameFormat): QVideoFrame =

  QVideoFrame.init(fcQVideoFrame_new2(format.h))
proc create2*(T: type QVideoFrame, other: QVideoFrame): QVideoFrame =

  QVideoFrame.init(fcQVideoFrame_new3(other.h))
proc swap*(self: QVideoFrame, other: QVideoFrame): void =

  fcQVideoFrame_swap(self.h, other.h)

proc operatorAssign*(self: QVideoFrame, other: QVideoFrame): void =

  fcQVideoFrame_operatorAssign(self.h, other.h)

proc operatorEqual*(self: QVideoFrame, other: QVideoFrame): bool =

  fcQVideoFrame_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QVideoFrame, other: QVideoFrame): bool =

  fcQVideoFrame_operatorNotEqual(self.h, other.h)

proc isValid*(self: QVideoFrame, ): bool =

  fcQVideoFrame_isValid(self.h)

proc pixelFormat*(self: QVideoFrame, ): gen_qvideoframeformat.QVideoFrameFormatPixelFormat =

  gen_qvideoframeformat.QVideoFrameFormatPixelFormat(fcQVideoFrame_pixelFormat(self.h))

proc surfaceFormat*(self: QVideoFrame, ): gen_qvideoframeformat.QVideoFrameFormat =

  gen_qvideoframeformat.QVideoFrameFormat(h: fcQVideoFrame_surfaceFormat(self.h))

proc handleType*(self: QVideoFrame, ): QVideoFrameHandleType =

  QVideoFrameHandleType(fcQVideoFrame_handleType(self.h))

proc size*(self: QVideoFrame, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQVideoFrame_size(self.h))

proc width*(self: QVideoFrame, ): cint =

  fcQVideoFrame_width(self.h)

proc height*(self: QVideoFrame, ): cint =

  fcQVideoFrame_height(self.h)

proc isMapped*(self: QVideoFrame, ): bool =

  fcQVideoFrame_isMapped(self.h)

proc isReadable*(self: QVideoFrame, ): bool =

  fcQVideoFrame_isReadable(self.h)

proc isWritable*(self: QVideoFrame, ): bool =

  fcQVideoFrame_isWritable(self.h)

proc mapMode*(self: QVideoFrame, ): QVideoFrameMapMode =

  QVideoFrameMapMode(fcQVideoFrame_mapMode(self.h))

proc map*(self: QVideoFrame, mode: QVideoFrameMapMode): bool =

  fcQVideoFrame_map(self.h, cint(mode))

proc unmap*(self: QVideoFrame, ): void =

  fcQVideoFrame_unmap(self.h)

proc bytesPerLine*(self: QVideoFrame, plane: cint): cint =

  fcQVideoFrame_bytesPerLine(self.h, plane)

proc bits*(self: QVideoFrame, plane: cint): ptr uint8 =

  fcQVideoFrame_bits(self.h, plane)

proc bitsWithPlane*(self: QVideoFrame, plane: cint): ptr uint8 =

  fcQVideoFrame_bitsWithPlane(self.h, plane)

proc mappedBytes*(self: QVideoFrame, plane: cint): cint =

  fcQVideoFrame_mappedBytes(self.h, plane)

proc planeCount*(self: QVideoFrame, ): cint =

  fcQVideoFrame_planeCount(self.h)

proc startTime*(self: QVideoFrame, ): clonglong =

  fcQVideoFrame_startTime(self.h)

proc setStartTime*(self: QVideoFrame, time: clonglong): void =

  fcQVideoFrame_setStartTime(self.h, time)

proc endTime*(self: QVideoFrame, ): clonglong =

  fcQVideoFrame_endTime(self.h)

proc setEndTime*(self: QVideoFrame, time: clonglong): void =

  fcQVideoFrame_setEndTime(self.h, time)

proc setRotationAngle*(self: QVideoFrame, rotationAngle: QVideoFrameRotationAngle): void =

  fcQVideoFrame_setRotationAngle(self.h, cint(rotationAngle))

proc rotationAngle*(self: QVideoFrame, ): QVideoFrameRotationAngle =

  QVideoFrameRotationAngle(fcQVideoFrame_rotationAngle(self.h))

proc setMirrored*(self: QVideoFrame, mirrored: bool): void =

  fcQVideoFrame_setMirrored(self.h, mirrored)

proc mirrored*(self: QVideoFrame, ): bool =

  fcQVideoFrame_mirrored(self.h)

proc toImage*(self: QVideoFrame, ): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQVideoFrame_toImage(self.h))

proc subtitleText*(self: QVideoFrame, ): string =

  let v_ms = fcQVideoFrame_subtitleText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSubtitleText*(self: QVideoFrame, text: string): void =

  fcQVideoFrame_setSubtitleText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc paint*(self: QVideoFrame, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF, options: QVideoFramePaintOptions): void =

  fcQVideoFrame_paint(self.h, painter.h, rect.h, options.h)

proc delete*(self: QVideoFrame) =
  fcQVideoFrame_delete(self.h)

func init*(T: type QVideoFramePaintOptions, h: ptr cQVideoFramePaintOptions): QVideoFramePaintOptions =
  T(h: h)
proc delete*(self: QVideoFramePaintOptions) =
  fcQVideoFramePaintOptions_delete(self.h)
