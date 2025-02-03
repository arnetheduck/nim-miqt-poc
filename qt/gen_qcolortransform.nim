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
{.compile("gen_qcolortransform.cpp", cflags).}


import gen_qcolortransform_types
export gen_qcolortransform_types

import
  gen_qcolor,
  gen_qrgba64
export
  gen_qcolor,
  gen_qrgba64

type cQColorTransform*{.exportc: "QColorTransform", incompleteStruct.} = object

proc fcQColorTransform_new(): ptr cQColorTransform {.importc: "QColorTransform_new".}
proc fcQColorTransform_new2(colorTransform: pointer): ptr cQColorTransform {.importc: "QColorTransform_new2".}
proc fcQColorTransform_operatorAssign(self: pointer, other: pointer): void {.importc: "QColorTransform_operatorAssign".}
proc fcQColorTransform_swap(self: pointer, other: pointer): void {.importc: "QColorTransform_swap".}
proc fcQColorTransform_map(self: pointer, argb: cuint): cuint {.importc: "QColorTransform_map".}
proc fcQColorTransform_mapWithRgba64(self: pointer, rgba64: pointer): pointer {.importc: "QColorTransform_mapWithRgba64".}
proc fcQColorTransform_mapWithColor(self: pointer, color: pointer): pointer {.importc: "QColorTransform_mapWithColor".}
proc fcQColorTransform_delete(self: pointer) {.importc: "QColorTransform_delete".}


func init*(T: type QColorTransform, h: ptr cQColorTransform): QColorTransform =
  T(h: h)
proc create*(T: type QColorTransform, ): QColorTransform =

  QColorTransform.init(fcQColorTransform_new())
proc create*(T: type QColorTransform, colorTransform: QColorTransform): QColorTransform =

  QColorTransform.init(fcQColorTransform_new2(colorTransform.h))
proc operatorAssign*(self: QColorTransform, other: QColorTransform): void =

  fcQColorTransform_operatorAssign(self.h, other.h)

proc swap*(self: QColorTransform, other: QColorTransform): void =

  fcQColorTransform_swap(self.h, other.h)

proc map*(self: QColorTransform, argb: cuint): cuint =

  fcQColorTransform_map(self.h, argb)

proc mapWithRgba64*(self: QColorTransform, rgba64: gen_qrgba64.QRgba64): gen_qrgba64.QRgba64 =

  gen_qrgba64.QRgba64(h: fcQColorTransform_mapWithRgba64(self.h, rgba64.h))

proc mapWithColor*(self: QColorTransform, color: gen_qcolor.QColor): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQColorTransform_mapWithColor(self.h, color.h))

proc delete*(self: QColorTransform) =
  fcQColorTransform_delete(self.h)
