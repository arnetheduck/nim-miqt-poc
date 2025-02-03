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
{.compile("gen_qvideorenderercontrol.cpp", cflags).}


import gen_qvideorenderercontrol_types
export gen_qvideorenderercontrol_types

import
  gen_qabstractvideosurface,
  gen_qmediacontrol,
  gen_qobjectdefs
export
  gen_qabstractvideosurface,
  gen_qmediacontrol,
  gen_qobjectdefs

type cQVideoRendererControl*{.exportc: "QVideoRendererControl", incompleteStruct.} = object

proc fcQVideoRendererControl_metaObject(self: pointer, ): pointer {.importc: "QVideoRendererControl_metaObject".}
proc fcQVideoRendererControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoRendererControl_metacast".}
proc fcQVideoRendererControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoRendererControl_metacall".}
proc fcQVideoRendererControl_tr(s: cstring): struct_miqt_string {.importc: "QVideoRendererControl_tr".}
proc fcQVideoRendererControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoRendererControl_trUtf8".}
proc fcQVideoRendererControl_surface(self: pointer, ): pointer {.importc: "QVideoRendererControl_surface".}
proc fcQVideoRendererControl_setSurface(self: pointer, surface: pointer): void {.importc: "QVideoRendererControl_setSurface".}
proc fcQVideoRendererControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoRendererControl_tr2".}
proc fcQVideoRendererControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoRendererControl_tr3".}
proc fcQVideoRendererControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoRendererControl_trUtf82".}
proc fcQVideoRendererControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoRendererControl_trUtf83".}
proc fcQVideoRendererControl_delete(self: pointer) {.importc: "QVideoRendererControl_delete".}


func init*(T: type QVideoRendererControl, h: ptr cQVideoRendererControl): QVideoRendererControl =
  T(h: h)
proc metaObject*(self: QVideoRendererControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQVideoRendererControl_metaObject(self.h))

proc metacast*(self: QVideoRendererControl, param1: cstring): pointer =

  fcQVideoRendererControl_metacast(self.h, param1)

proc metacall*(self: QVideoRendererControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQVideoRendererControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QVideoRendererControl, s: cstring): string =

  let v_ms = fcQVideoRendererControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QVideoRendererControl, s: cstring): string =

  let v_ms = fcQVideoRendererControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc surface*(self: QVideoRendererControl, ): gen_qabstractvideosurface.QAbstractVideoSurface =

  gen_qabstractvideosurface.QAbstractVideoSurface(h: fcQVideoRendererControl_surface(self.h))

proc setSurface*(self: QVideoRendererControl, surface: gen_qabstractvideosurface.QAbstractVideoSurface): void =

  fcQVideoRendererControl_setSurface(self.h, surface.h)

proc tr2*(_: type QVideoRendererControl, s: cstring, c: cstring): string =

  let v_ms = fcQVideoRendererControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QVideoRendererControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVideoRendererControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QVideoRendererControl, s: cstring, c: cstring): string =

  let v_ms = fcQVideoRendererControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QVideoRendererControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVideoRendererControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QVideoRendererControl) =
  fcQVideoRendererControl_delete(self.h)
