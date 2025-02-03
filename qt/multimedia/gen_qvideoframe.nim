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
{.compile("gen_qvideoframe.cpp", cflags).}


type QVideoFrameFieldType* = cint
const
  QVideoFrameProgressiveFrame* = 0
  QVideoFrameTopField* = 1
  QVideoFrameBottomField* = 2
  QVideoFrameInterlacedFrame* = 3



type QVideoFramePixelFormat* = cint
const
  QVideoFrameFormat_Invalid* = 0
  QVideoFrameFormat_ARGB32* = 1
  QVideoFrameFormat_ARGB32_Premultiplied* = 2
  QVideoFrameFormat_RGB32* = 3
  QVideoFrameFormat_RGB24* = 4
  QVideoFrameFormat_RGB565* = 5
  QVideoFrameFormat_RGB555* = 6
  QVideoFrameFormat_ARGB8565_Premultiplied* = 7
  QVideoFrameFormat_BGRA32* = 8
  QVideoFrameFormat_BGRA32_Premultiplied* = 9
  QVideoFrameFormat_BGR32* = 10
  QVideoFrameFormat_BGR24* = 11
  QVideoFrameFormat_BGR565* = 12
  QVideoFrameFormat_BGR555* = 13
  QVideoFrameFormat_BGRA5658_Premultiplied* = 14
  QVideoFrameFormat_AYUV444* = 15
  QVideoFrameFormat_AYUV444_Premultiplied* = 16
  QVideoFrameFormat_YUV444* = 17
  QVideoFrameFormat_YUV420P* = 18
  QVideoFrameFormat_YV12* = 19
  QVideoFrameFormat_UYVY* = 20
  QVideoFrameFormat_YUYV* = 21
  QVideoFrameFormat_NV12* = 22
  QVideoFrameFormat_NV21* = 23
  QVideoFrameFormat_IMC1* = 24
  QVideoFrameFormat_IMC2* = 25
  QVideoFrameFormat_IMC3* = 26
  QVideoFrameFormat_IMC4* = 27
  QVideoFrameFormat_Y8* = 28
  QVideoFrameFormat_Y16* = 29
  QVideoFrameFormat_Jpeg* = 30
  QVideoFrameFormat_CameraRaw* = 31
  QVideoFrameFormat_AdobeDng* = 32
  QVideoFrameFormat_ABGR32* = 33
  QVideoFrameFormat_YUV422P* = 34
  QVideoFrameNPixelFormats* = 35
  QVideoFrameFormat_User* = 1000



import gen_qvideoframe_types
export gen_qvideoframe_types

import
  gen_qabstractvideobuffer,
  gen_qimage,
  gen_qsize,
  gen_qvariant,
  std/tables
export
  gen_qabstractvideobuffer,
  gen_qimage,
  gen_qsize,
  gen_qvariant

type cQVideoFrame*{.exportc: "QVideoFrame", incompleteStruct.} = object

proc fcQVideoFrame_new(): ptr cQVideoFrame {.importc: "QVideoFrame_new".}
proc fcQVideoFrame_new2(bytes: cint, size: pointer, bytesPerLine: cint, format: cint): ptr cQVideoFrame {.importc: "QVideoFrame_new2".}
proc fcQVideoFrame_new3(image: pointer): ptr cQVideoFrame {.importc: "QVideoFrame_new3".}
proc fcQVideoFrame_new4(other: pointer): ptr cQVideoFrame {.importc: "QVideoFrame_new4".}
proc fcQVideoFrame_operatorAssign(self: pointer, other: pointer): void {.importc: "QVideoFrame_operatorAssign".}
proc fcQVideoFrame_operatorEqual(self: pointer, other: pointer): bool {.importc: "QVideoFrame_operatorEqual".}
proc fcQVideoFrame_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QVideoFrame_operatorNotEqual".}
proc fcQVideoFrame_isValid(self: pointer, ): bool {.importc: "QVideoFrame_isValid".}
proc fcQVideoFrame_pixelFormat(self: pointer, ): cint {.importc: "QVideoFrame_pixelFormat".}
proc fcQVideoFrame_handleType(self: pointer, ): cint {.importc: "QVideoFrame_handleType".}
proc fcQVideoFrame_size(self: pointer, ): pointer {.importc: "QVideoFrame_size".}
proc fcQVideoFrame_width(self: pointer, ): cint {.importc: "QVideoFrame_width".}
proc fcQVideoFrame_height(self: pointer, ): cint {.importc: "QVideoFrame_height".}
proc fcQVideoFrame_fieldType(self: pointer, ): cint {.importc: "QVideoFrame_fieldType".}
proc fcQVideoFrame_setFieldType(self: pointer, fieldType: cint): void {.importc: "QVideoFrame_setFieldType".}
proc fcQVideoFrame_isMapped(self: pointer, ): bool {.importc: "QVideoFrame_isMapped".}
proc fcQVideoFrame_isReadable(self: pointer, ): bool {.importc: "QVideoFrame_isReadable".}
proc fcQVideoFrame_isWritable(self: pointer, ): bool {.importc: "QVideoFrame_isWritable".}
proc fcQVideoFrame_mapMode(self: pointer, ): cint {.importc: "QVideoFrame_mapMode".}
proc fcQVideoFrame_map(self: pointer, mode: cint): bool {.importc: "QVideoFrame_map".}
proc fcQVideoFrame_unmap(self: pointer, ): void {.importc: "QVideoFrame_unmap".}
proc fcQVideoFrame_bytesPerLine(self: pointer, ): cint {.importc: "QVideoFrame_bytesPerLine".}
proc fcQVideoFrame_bytesPerLineWithPlane(self: pointer, plane: cint): cint {.importc: "QVideoFrame_bytesPerLineWithPlane".}
proc fcQVideoFrame_bits(self: pointer, ): ptr uint8 {.importc: "QVideoFrame_bits".}
proc fcQVideoFrame_bitsWithPlane(self: pointer, plane: cint): ptr uint8 {.importc: "QVideoFrame_bitsWithPlane".}
proc fcQVideoFrame_bits2(self: pointer, ): ptr uint8 {.importc: "QVideoFrame_bits2".}
proc fcQVideoFrame_bits3(self: pointer, plane: cint): ptr uint8 {.importc: "QVideoFrame_bits3".}
proc fcQVideoFrame_mappedBytes(self: pointer, ): cint {.importc: "QVideoFrame_mappedBytes".}
proc fcQVideoFrame_planeCount(self: pointer, ): cint {.importc: "QVideoFrame_planeCount".}
proc fcQVideoFrame_handle(self: pointer, ): pointer {.importc: "QVideoFrame_handle".}
proc fcQVideoFrame_startTime(self: pointer, ): clonglong {.importc: "QVideoFrame_startTime".}
proc fcQVideoFrame_setStartTime(self: pointer, time: clonglong): void {.importc: "QVideoFrame_setStartTime".}
proc fcQVideoFrame_endTime(self: pointer, ): clonglong {.importc: "QVideoFrame_endTime".}
proc fcQVideoFrame_setEndTime(self: pointer, time: clonglong): void {.importc: "QVideoFrame_setEndTime".}
proc fcQVideoFrame_availableMetaData(self: pointer, ): struct_miqt_map {.importc: "QVideoFrame_availableMetaData".}
proc fcQVideoFrame_metaData(self: pointer, key: struct_miqt_string): pointer {.importc: "QVideoFrame_metaData".}
proc fcQVideoFrame_setMetaData(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QVideoFrame_setMetaData".}
proc fcQVideoFrame_image(self: pointer, ): pointer {.importc: "QVideoFrame_image".}
proc fcQVideoFrame_pixelFormatFromImageFormat(format: cint): cint {.importc: "QVideoFrame_pixelFormatFromImageFormat".}
proc fcQVideoFrame_imageFormatFromPixelFormat(format: cint): cint {.importc: "QVideoFrame_imageFormatFromPixelFormat".}
proc fcQVideoFrame_delete(self: pointer) {.importc: "QVideoFrame_delete".}


func init*(T: type QVideoFrame, h: ptr cQVideoFrame): QVideoFrame =
  T(h: h)
proc create*(T: type QVideoFrame, ): QVideoFrame =

  QVideoFrame.init(fcQVideoFrame_new())
proc create*(T: type QVideoFrame, bytes: cint, size: gen_qsize.QSize, bytesPerLine: cint, format: QVideoFramePixelFormat): QVideoFrame =

  QVideoFrame.init(fcQVideoFrame_new2(bytes, size.h, bytesPerLine, cint(format)))
proc create*(T: type QVideoFrame, image: gen_qimage.QImage): QVideoFrame =

  QVideoFrame.init(fcQVideoFrame_new3(image.h))
proc create2*(T: type QVideoFrame, other: QVideoFrame): QVideoFrame =

  QVideoFrame.init(fcQVideoFrame_new4(other.h))
proc operatorAssign*(self: QVideoFrame, other: QVideoFrame): void =

  fcQVideoFrame_operatorAssign(self.h, other.h)

proc operatorEqual*(self: QVideoFrame, other: QVideoFrame): bool =

  fcQVideoFrame_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QVideoFrame, other: QVideoFrame): bool =

  fcQVideoFrame_operatorNotEqual(self.h, other.h)

proc isValid*(self: QVideoFrame, ): bool =

  fcQVideoFrame_isValid(self.h)

proc pixelFormat*(self: QVideoFrame, ): QVideoFramePixelFormat =

  QVideoFramePixelFormat(fcQVideoFrame_pixelFormat(self.h))

proc handleType*(self: QVideoFrame, ): gen_qabstractvideobuffer.QAbstractVideoBufferHandleType =

  gen_qabstractvideobuffer.QAbstractVideoBufferHandleType(fcQVideoFrame_handleType(self.h))

proc size*(self: QVideoFrame, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQVideoFrame_size(self.h))

proc width*(self: QVideoFrame, ): cint =

  fcQVideoFrame_width(self.h)

proc height*(self: QVideoFrame, ): cint =

  fcQVideoFrame_height(self.h)

proc fieldType*(self: QVideoFrame, ): QVideoFrameFieldType =

  QVideoFrameFieldType(fcQVideoFrame_fieldType(self.h))

proc setFieldType*(self: QVideoFrame, fieldType: QVideoFrameFieldType): void =

  fcQVideoFrame_setFieldType(self.h, cint(fieldType))

proc isMapped*(self: QVideoFrame, ): bool =

  fcQVideoFrame_isMapped(self.h)

proc isReadable*(self: QVideoFrame, ): bool =

  fcQVideoFrame_isReadable(self.h)

proc isWritable*(self: QVideoFrame, ): bool =

  fcQVideoFrame_isWritable(self.h)

proc mapMode*(self: QVideoFrame, ): gen_qabstractvideobuffer.QAbstractVideoBufferMapMode =

  gen_qabstractvideobuffer.QAbstractVideoBufferMapMode(fcQVideoFrame_mapMode(self.h))

proc map*(self: QVideoFrame, mode: gen_qabstractvideobuffer.QAbstractVideoBufferMapMode): bool =

  fcQVideoFrame_map(self.h, cint(mode))

proc unmap*(self: QVideoFrame, ): void =

  fcQVideoFrame_unmap(self.h)

proc bytesPerLine*(self: QVideoFrame, ): cint =

  fcQVideoFrame_bytesPerLine(self.h)

proc bytesPerLineWithPlane*(self: QVideoFrame, plane: cint): cint =

  fcQVideoFrame_bytesPerLineWithPlane(self.h, plane)

proc bits*(self: QVideoFrame, ): ptr uint8 =

  fcQVideoFrame_bits(self.h)

proc bitsWithPlane*(self: QVideoFrame, plane: cint): ptr uint8 =

  fcQVideoFrame_bitsWithPlane(self.h, plane)

proc bits2*(self: QVideoFrame, ): ptr uint8 =

  fcQVideoFrame_bits2(self.h)

proc bits3*(self: QVideoFrame, plane: cint): ptr uint8 =

  fcQVideoFrame_bits3(self.h, plane)

proc mappedBytes*(self: QVideoFrame, ): cint =

  fcQVideoFrame_mappedBytes(self.h)

proc planeCount*(self: QVideoFrame, ): cint =

  fcQVideoFrame_planeCount(self.h)

proc handle*(self: QVideoFrame, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQVideoFrame_handle(self.h))

proc startTime*(self: QVideoFrame, ): clonglong =

  fcQVideoFrame_startTime(self.h)

proc setStartTime*(self: QVideoFrame, time: clonglong): void =

  fcQVideoFrame_setStartTime(self.h, time)

proc endTime*(self: QVideoFrame, ): clonglong =

  fcQVideoFrame_endTime(self.h)

proc setEndTime*(self: QVideoFrame, time: clonglong): void =

  fcQVideoFrame_setEndTime(self.h, time)

proc availableMetaData*(self: QVideoFrame, ): Table[string,gen_qvariant.QVariant] =

  var v_mm = fcQVideoFrame_availableMetaData(self.h)
  var vx_ret: Table[string, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_mapkey_ms = v_Keys[i]
    let vx_mapkeyx_ret = string.fromBytes(toOpenArrayByte(vx_mapkey_ms.data, 0, int(vx_mapkey_ms.len)-1))
    c_free(vx_mapkey_ms.data)
    var v_entry_Key = vx_mapkeyx_ret

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc metaData*(self: QVideoFrame, key: string): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQVideoFrame_metaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc setMetaData*(self: QVideoFrame, key: string, value: gen_qvariant.QVariant): void =

  fcQVideoFrame_setMetaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc image*(self: QVideoFrame, ): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQVideoFrame_image(self.h))

proc pixelFormatFromImageFormat*(_: type QVideoFrame, format: gen_qimage.QImageFormat): QVideoFramePixelFormat =

  QVideoFramePixelFormat(fcQVideoFrame_pixelFormatFromImageFormat(cint(format)))

proc imageFormatFromPixelFormat*(_: type QVideoFrame, format: QVideoFramePixelFormat): gen_qimage.QImageFormat =

  gen_qimage.QImageFormat(fcQVideoFrame_imageFormatFromPixelFormat(cint(format)))

proc delete*(self: QVideoFrame) =
  fcQVideoFrame_delete(self.h)
