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
{.compile("gen_qimageencodercontrol.cpp", cflags).}


import gen_qimageencodercontrol_types
export gen_qimageencodercontrol_types

import
  gen_qmediacontrol,
  gen_qmediaencodersettings,
  gen_qobjectdefs,
  gen_qsize
export
  gen_qmediacontrol,
  gen_qmediaencodersettings,
  gen_qobjectdefs,
  gen_qsize

type cQImageEncoderControl*{.exportc: "QImageEncoderControl", incompleteStruct.} = object

proc fcQImageEncoderControl_metaObject(self: pointer, ): pointer {.importc: "QImageEncoderControl_metaObject".}
proc fcQImageEncoderControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QImageEncoderControl_metacast".}
proc fcQImageEncoderControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QImageEncoderControl_metacall".}
proc fcQImageEncoderControl_tr(s: cstring): struct_miqt_string {.importc: "QImageEncoderControl_tr".}
proc fcQImageEncoderControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QImageEncoderControl_trUtf8".}
proc fcQImageEncoderControl_supportedImageCodecs(self: pointer, ): struct_miqt_array {.importc: "QImageEncoderControl_supportedImageCodecs".}
proc fcQImageEncoderControl_imageCodecDescription(self: pointer, codec: struct_miqt_string): struct_miqt_string {.importc: "QImageEncoderControl_imageCodecDescription".}
proc fcQImageEncoderControl_supportedResolutions(self: pointer, settings: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QImageEncoderControl_supportedResolutions".}
proc fcQImageEncoderControl_imageSettings(self: pointer, ): pointer {.importc: "QImageEncoderControl_imageSettings".}
proc fcQImageEncoderControl_setImageSettings(self: pointer, settings: pointer): void {.importc: "QImageEncoderControl_setImageSettings".}
proc fcQImageEncoderControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QImageEncoderControl_tr2".}
proc fcQImageEncoderControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QImageEncoderControl_tr3".}
proc fcQImageEncoderControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QImageEncoderControl_trUtf82".}
proc fcQImageEncoderControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QImageEncoderControl_trUtf83".}
proc fcQImageEncoderControl_staticMetaObject(): pointer {.importc: "QImageEncoderControl_staticMetaObject".}
proc fcQImageEncoderControl_delete(self: pointer) {.importc: "QImageEncoderControl_delete".}


func init*(T: type QImageEncoderControl, h: ptr cQImageEncoderControl): QImageEncoderControl =
  T(h: h)
proc metaObject*(self: QImageEncoderControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQImageEncoderControl_metaObject(self.h))

proc metacast*(self: QImageEncoderControl, param1: cstring): pointer =

  fcQImageEncoderControl_metacast(self.h, param1)

proc metacall*(self: QImageEncoderControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQImageEncoderControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QImageEncoderControl, s: cstring): string =

  let v_ms = fcQImageEncoderControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QImageEncoderControl, s: cstring): string =

  let v_ms = fcQImageEncoderControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedImageCodecs*(self: QImageEncoderControl, ): seq[string] =

  var v_ma = fcQImageEncoderControl_supportedImageCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc imageCodecDescription*(self: QImageEncoderControl, codec: string): string =

  let v_ms = fcQImageEncoderControl_imageCodecDescription(self.h, struct_miqt_string(data: codec, len: csize_t(len(codec))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedResolutions*(self: QImageEncoderControl, settings: gen_qmediaencodersettings.QImageEncoderSettings, continuous: ptr bool): seq[gen_qsize.QSize] =

  var v_ma = fcQImageEncoderControl_supportedResolutions(self.h, settings.h, continuous)
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc imageSettings*(self: QImageEncoderControl, ): gen_qmediaencodersettings.QImageEncoderSettings =

  gen_qmediaencodersettings.QImageEncoderSettings(h: fcQImageEncoderControl_imageSettings(self.h))

proc setImageSettings*(self: QImageEncoderControl, settings: gen_qmediaencodersettings.QImageEncoderSettings): void =

  fcQImageEncoderControl_setImageSettings(self.h, settings.h)

proc tr2*(_: type QImageEncoderControl, s: cstring, c: cstring): string =

  let v_ms = fcQImageEncoderControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QImageEncoderControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQImageEncoderControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QImageEncoderControl, s: cstring, c: cstring): string =

  let v_ms = fcQImageEncoderControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QImageEncoderControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQImageEncoderControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QImageEncoderControl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQImageEncoderControl_staticMetaObject())
proc delete*(self: QImageEncoderControl) =
  fcQImageEncoderControl_delete(self.h)
