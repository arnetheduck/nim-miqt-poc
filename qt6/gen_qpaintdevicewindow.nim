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
{.compile("gen_qpaintdevicewindow.cpp", cflags).}


import gen_qpaintdevicewindow_types
export gen_qpaintdevicewindow_types

import
  gen_qobjectdefs,
  gen_qrect,
  gen_qregion,
  gen_qwindow
export
  gen_qobjectdefs,
  gen_qrect,
  gen_qregion,
  gen_qwindow

type cQPaintDeviceWindow*{.exportc: "QPaintDeviceWindow", incompleteStruct.} = object

proc fcQPaintDeviceWindow_metaObject(self: pointer, ): pointer {.importc: "QPaintDeviceWindow_metaObject".}
proc fcQPaintDeviceWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QPaintDeviceWindow_metacast".}
proc fcQPaintDeviceWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPaintDeviceWindow_metacall".}
proc fcQPaintDeviceWindow_tr(s: cstring): struct_miqt_string {.importc: "QPaintDeviceWindow_tr".}
proc fcQPaintDeviceWindow_update(self: pointer, rect: pointer): void {.importc: "QPaintDeviceWindow_update".}
proc fcQPaintDeviceWindow_updateWithRegion(self: pointer, region: pointer): void {.importc: "QPaintDeviceWindow_updateWithRegion".}
proc fcQPaintDeviceWindow_update2(self: pointer, ): void {.importc: "QPaintDeviceWindow_update2".}
proc fcQPaintDeviceWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPaintDeviceWindow_tr2".}
proc fcQPaintDeviceWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPaintDeviceWindow_tr3".}
proc fcQPaintDeviceWindow_staticMetaObject(): pointer {.importc: "QPaintDeviceWindow_staticMetaObject".}
proc fcQPaintDeviceWindow_delete(self: pointer) {.importc: "QPaintDeviceWindow_delete".}


func init*(T: type QPaintDeviceWindow, h: ptr cQPaintDeviceWindow): QPaintDeviceWindow =
  T(h: h)
proc metaObject*(self: QPaintDeviceWindow, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPaintDeviceWindow_metaObject(self.h))

proc metacast*(self: QPaintDeviceWindow, param1: cstring): pointer =

  fcQPaintDeviceWindow_metacast(self.h, param1)

proc metacall*(self: QPaintDeviceWindow, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPaintDeviceWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPaintDeviceWindow, s: cstring): string =

  let v_ms = fcQPaintDeviceWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc update*(self: QPaintDeviceWindow, rect: gen_qrect.QRect): void =

  fcQPaintDeviceWindow_update(self.h, rect.h)

proc updateWithRegion*(self: QPaintDeviceWindow, region: gen_qregion.QRegion): void =

  fcQPaintDeviceWindow_updateWithRegion(self.h, region.h)

proc update2*(self: QPaintDeviceWindow, ): void =

  fcQPaintDeviceWindow_update2(self.h)

proc tr2*(_: type QPaintDeviceWindow, s: cstring, c: cstring): string =

  let v_ms = fcQPaintDeviceWindow_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPaintDeviceWindow, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPaintDeviceWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QPaintDeviceWindow): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPaintDeviceWindow_staticMetaObject())
proc delete*(self: QPaintDeviceWindow) =
  fcQPaintDeviceWindow_delete(self.h)
