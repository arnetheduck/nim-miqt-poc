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
{.compile("gen_qcameradevice.cpp", cflags).}


type QCameraDevicePosition* = cint
const
  QCameraDeviceUnspecifiedPosition* = 0
  QCameraDeviceBackFace* = 1
  QCameraDeviceFrontFace* = 2



import gen_qcameradevice_types
export gen_qcameradevice_types

import
  gen_qobjectdefs,
  gen_qsize,
  gen_qvideoframeformat
export
  gen_qobjectdefs,
  gen_qsize,
  gen_qvideoframeformat

type cQCameraFormat*{.exportc: "QCameraFormat", incompleteStruct.} = object
type cQCameraDevice*{.exportc: "QCameraDevice", incompleteStruct.} = object

proc fcQCameraFormat_new(): ptr cQCameraFormat {.importc: "QCameraFormat_new".}
proc fcQCameraFormat_new2(other: pointer): ptr cQCameraFormat {.importc: "QCameraFormat_new2".}
proc fcQCameraFormat_operatorAssign(self: pointer, other: pointer): void {.importc: "QCameraFormat_operatorAssign".}
proc fcQCameraFormat_pixelFormat(self: pointer, ): cint {.importc: "QCameraFormat_pixelFormat".}
proc fcQCameraFormat_resolution(self: pointer, ): pointer {.importc: "QCameraFormat_resolution".}
proc fcQCameraFormat_minFrameRate(self: pointer, ): float32 {.importc: "QCameraFormat_minFrameRate".}
proc fcQCameraFormat_maxFrameRate(self: pointer, ): float32 {.importc: "QCameraFormat_maxFrameRate".}
proc fcQCameraFormat_isNull(self: pointer, ): bool {.importc: "QCameraFormat_isNull".}
proc fcQCameraFormat_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCameraFormat_operatorEqual".}
proc fcQCameraFormat_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCameraFormat_operatorNotEqual".}
proc fcQCameraFormat_staticMetaObject(): pointer {.importc: "QCameraFormat_staticMetaObject".}
proc fcQCameraFormat_delete(self: pointer) {.importc: "QCameraFormat_delete".}
proc fcQCameraDevice_new(): ptr cQCameraDevice {.importc: "QCameraDevice_new".}
proc fcQCameraDevice_new2(other: pointer): ptr cQCameraDevice {.importc: "QCameraDevice_new2".}
proc fcQCameraDevice_operatorAssign(self: pointer, other: pointer): void {.importc: "QCameraDevice_operatorAssign".}
proc fcQCameraDevice_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCameraDevice_operatorEqual".}
proc fcQCameraDevice_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCameraDevice_operatorNotEqual".}
proc fcQCameraDevice_isNull(self: pointer, ): bool {.importc: "QCameraDevice_isNull".}
proc fcQCameraDevice_id(self: pointer, ): struct_miqt_string {.importc: "QCameraDevice_id".}
proc fcQCameraDevice_description(self: pointer, ): struct_miqt_string {.importc: "QCameraDevice_description".}
proc fcQCameraDevice_isDefault(self: pointer, ): bool {.importc: "QCameraDevice_isDefault".}
proc fcQCameraDevice_position(self: pointer, ): cint {.importc: "QCameraDevice_position".}
proc fcQCameraDevice_photoResolutions(self: pointer, ): struct_miqt_array {.importc: "QCameraDevice_photoResolutions".}
proc fcQCameraDevice_videoFormats(self: pointer, ): struct_miqt_array {.importc: "QCameraDevice_videoFormats".}
proc fcQCameraDevice_staticMetaObject(): pointer {.importc: "QCameraDevice_staticMetaObject".}
proc fcQCameraDevice_delete(self: pointer) {.importc: "QCameraDevice_delete".}


func init*(T: type QCameraFormat, h: ptr cQCameraFormat): QCameraFormat =
  T(h: h)
proc create*(T: type QCameraFormat, ): QCameraFormat =

  QCameraFormat.init(fcQCameraFormat_new())
proc create*(T: type QCameraFormat, other: QCameraFormat): QCameraFormat =

  QCameraFormat.init(fcQCameraFormat_new2(other.h))
proc operatorAssign*(self: QCameraFormat, other: QCameraFormat): void =

  fcQCameraFormat_operatorAssign(self.h, other.h)

proc pixelFormat*(self: QCameraFormat, ): gen_qvideoframeformat.QVideoFrameFormatPixelFormat =

  gen_qvideoframeformat.QVideoFrameFormatPixelFormat(fcQCameraFormat_pixelFormat(self.h))

proc resolution*(self: QCameraFormat, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQCameraFormat_resolution(self.h))

proc minFrameRate*(self: QCameraFormat, ): float32 =

  fcQCameraFormat_minFrameRate(self.h)

proc maxFrameRate*(self: QCameraFormat, ): float32 =

  fcQCameraFormat_maxFrameRate(self.h)

proc isNull*(self: QCameraFormat, ): bool =

  fcQCameraFormat_isNull(self.h)

proc operatorEqual*(self: QCameraFormat, other: QCameraFormat): bool =

  fcQCameraFormat_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QCameraFormat, other: QCameraFormat): bool =

  fcQCameraFormat_operatorNotEqual(self.h, other.h)

proc staticMetaObject*(_: type QCameraFormat): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCameraFormat_staticMetaObject())
proc delete*(self: QCameraFormat) =
  fcQCameraFormat_delete(self.h)

func init*(T: type QCameraDevice, h: ptr cQCameraDevice): QCameraDevice =
  T(h: h)
proc create*(T: type QCameraDevice, ): QCameraDevice =

  QCameraDevice.init(fcQCameraDevice_new())
proc create*(T: type QCameraDevice, other: QCameraDevice): QCameraDevice =

  QCameraDevice.init(fcQCameraDevice_new2(other.h))
proc operatorAssign*(self: QCameraDevice, other: QCameraDevice): void =

  fcQCameraDevice_operatorAssign(self.h, other.h)

proc operatorEqual*(self: QCameraDevice, other: QCameraDevice): bool =

  fcQCameraDevice_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QCameraDevice, other: QCameraDevice): bool =

  fcQCameraDevice_operatorNotEqual(self.h, other.h)

proc isNull*(self: QCameraDevice, ): bool =

  fcQCameraDevice_isNull(self.h)

proc id*(self: QCameraDevice, ): seq[byte] =

  var v_bytearray = fcQCameraDevice_id(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc description*(self: QCameraDevice, ): string =

  let v_ms = fcQCameraDevice_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isDefault*(self: QCameraDevice, ): bool =

  fcQCameraDevice_isDefault(self.h)

proc position*(self: QCameraDevice, ): QCameraDevicePosition =

  QCameraDevicePosition(fcQCameraDevice_position(self.h))

proc photoResolutions*(self: QCameraDevice, ): seq[gen_qsize.QSize] =

  var v_ma = fcQCameraDevice_photoResolutions(self.h)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc videoFormats*(self: QCameraDevice, ): seq[QCameraFormat] =

  var v_ma = fcQCameraDevice_videoFormats(self.h)
  var vx_ret = newSeq[QCameraFormat](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QCameraFormat(h: v_outCast[i])
  vx_ret

proc staticMetaObject*(_: type QCameraDevice): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCameraDevice_staticMetaObject())
proc delete*(self: QCameraDevice) =
  fcQCameraDevice_delete(self.h)
