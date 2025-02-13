import Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")
{.compile("gen_qmediacontainercontrol.cpp", cflags).}


import gen_qmediacontainercontrol_types
export gen_qmediacontainercontrol_types

import
  gen_qmediacontrol,
  gen_qobjectdefs_types
export
  gen_qmediacontrol,
  gen_qobjectdefs_types

type cQMediaContainerControl*{.exportc: "QMediaContainerControl", incompleteStruct.} = object

proc fcQMediaContainerControl_metaObject(self: pointer, ): pointer {.importc: "QMediaContainerControl_metaObject".}
proc fcQMediaContainerControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaContainerControl_metacast".}
proc fcQMediaContainerControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaContainerControl_metacall".}
proc fcQMediaContainerControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaContainerControl_tr".}
proc fcQMediaContainerControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaContainerControl_trUtf8".}
proc fcQMediaContainerControl_supportedContainers(self: pointer, ): struct_miqt_array {.importc: "QMediaContainerControl_supportedContainers".}
proc fcQMediaContainerControl_containerFormat(self: pointer, ): struct_miqt_string {.importc: "QMediaContainerControl_containerFormat".}
proc fcQMediaContainerControl_setContainerFormat(self: pointer, format: struct_miqt_string): void {.importc: "QMediaContainerControl_setContainerFormat".}
proc fcQMediaContainerControl_containerDescription(self: pointer, formatMimeType: struct_miqt_string): struct_miqt_string {.importc: "QMediaContainerControl_containerDescription".}
proc fcQMediaContainerControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaContainerControl_tr2".}
proc fcQMediaContainerControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaContainerControl_tr3".}
proc fcQMediaContainerControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaContainerControl_trUtf82".}
proc fcQMediaContainerControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaContainerControl_trUtf83".}
proc fcQMediaContainerControl_staticMetaObject(): pointer {.importc: "QMediaContainerControl_staticMetaObject".}
proc fcQMediaContainerControl_delete(self: pointer) {.importc: "QMediaContainerControl_delete".}

proc metaObject*(self: gen_qmediacontainercontrol_types.QMediaContainerControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaContainerControl_metaObject(self.h))

proc metacast*(self: gen_qmediacontainercontrol_types.QMediaContainerControl, param1: cstring): pointer =
  fcQMediaContainerControl_metacast(self.h, param1)

proc metacall*(self: gen_qmediacontainercontrol_types.QMediaContainerControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaContainerControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediacontainercontrol_types.QMediaContainerControl, s: cstring): string =
  let v_ms = fcQMediaContainerControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediacontainercontrol_types.QMediaContainerControl, s: cstring): string =
  let v_ms = fcQMediaContainerControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedContainers*(self: gen_qmediacontainercontrol_types.QMediaContainerControl, ): seq[string] =
  var v_ma = fcQMediaContainerControl_supportedContainers(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc containerFormat*(self: gen_qmediacontainercontrol_types.QMediaContainerControl, ): string =
  let v_ms = fcQMediaContainerControl_containerFormat(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setContainerFormat*(self: gen_qmediacontainercontrol_types.QMediaContainerControl, format: string): void =
  fcQMediaContainerControl_setContainerFormat(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))

proc containerDescription*(self: gen_qmediacontainercontrol_types.QMediaContainerControl, formatMimeType: string): string =
  let v_ms = fcQMediaContainerControl_containerDescription(self.h, struct_miqt_string(data: formatMimeType, len: csize_t(len(formatMimeType))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediacontainercontrol_types.QMediaContainerControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaContainerControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediacontainercontrol_types.QMediaContainerControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaContainerControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediacontainercontrol_types.QMediaContainerControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaContainerControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediacontainercontrol_types.QMediaContainerControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaContainerControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qmediacontainercontrol_types.QMediaContainerControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaContainerControl_staticMetaObject())
proc delete*(self: gen_qmediacontainercontrol_types.QMediaContainerControl) =
  fcQMediaContainerControl_delete(self.h)
