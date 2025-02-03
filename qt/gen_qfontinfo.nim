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
{.compile("gen_qfontinfo.cpp", cflags).}


import gen_qfontinfo_types
export gen_qfontinfo_types

import
  gen_qfont
export
  gen_qfont

type cQFontInfo*{.exportc: "QFontInfo", incompleteStruct.} = object

proc fcQFontInfo_new(param1: pointer): ptr cQFontInfo {.importc: "QFontInfo_new".}
proc fcQFontInfo_new2(param1: pointer): ptr cQFontInfo {.importc: "QFontInfo_new2".}
proc fcQFontInfo_operatorAssign(self: pointer, param1: pointer): void {.importc: "QFontInfo_operatorAssign".}
proc fcQFontInfo_swap(self: pointer, other: pointer): void {.importc: "QFontInfo_swap".}
proc fcQFontInfo_family(self: pointer, ): struct_miqt_string {.importc: "QFontInfo_family".}
proc fcQFontInfo_styleName(self: pointer, ): struct_miqt_string {.importc: "QFontInfo_styleName".}
proc fcQFontInfo_pixelSize(self: pointer, ): cint {.importc: "QFontInfo_pixelSize".}
proc fcQFontInfo_pointSize(self: pointer, ): cint {.importc: "QFontInfo_pointSize".}
proc fcQFontInfo_pointSizeF(self: pointer, ): float64 {.importc: "QFontInfo_pointSizeF".}
proc fcQFontInfo_italic(self: pointer, ): bool {.importc: "QFontInfo_italic".}
proc fcQFontInfo_style(self: pointer, ): cint {.importc: "QFontInfo_style".}
proc fcQFontInfo_weight(self: pointer, ): cint {.importc: "QFontInfo_weight".}
proc fcQFontInfo_bold(self: pointer, ): bool {.importc: "QFontInfo_bold".}
proc fcQFontInfo_underline(self: pointer, ): bool {.importc: "QFontInfo_underline".}
proc fcQFontInfo_overline(self: pointer, ): bool {.importc: "QFontInfo_overline".}
proc fcQFontInfo_strikeOut(self: pointer, ): bool {.importc: "QFontInfo_strikeOut".}
proc fcQFontInfo_fixedPitch(self: pointer, ): bool {.importc: "QFontInfo_fixedPitch".}
proc fcQFontInfo_styleHint(self: pointer, ): cint {.importc: "QFontInfo_styleHint".}
proc fcQFontInfo_rawMode(self: pointer, ): bool {.importc: "QFontInfo_rawMode".}
proc fcQFontInfo_exactMatch(self: pointer, ): bool {.importc: "QFontInfo_exactMatch".}
proc fcQFontInfo_delete(self: pointer) {.importc: "QFontInfo_delete".}


func init*(T: type QFontInfo, h: ptr cQFontInfo): QFontInfo =
  T(h: h)
proc create*(T: type QFontInfo, param1: gen_qfont.QFont): QFontInfo =

  QFontInfo.init(fcQFontInfo_new(param1.h))
proc create2*(T: type QFontInfo, param1: QFontInfo): QFontInfo =

  QFontInfo.init(fcQFontInfo_new2(param1.h))
proc operatorAssign*(self: QFontInfo, param1: QFontInfo): void =

  fcQFontInfo_operatorAssign(self.h, param1.h)

proc swap*(self: QFontInfo, other: QFontInfo): void =

  fcQFontInfo_swap(self.h, other.h)

proc family*(self: QFontInfo, ): string =

  let v_ms = fcQFontInfo_family(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc styleName*(self: QFontInfo, ): string =

  let v_ms = fcQFontInfo_styleName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pixelSize*(self: QFontInfo, ): cint =

  fcQFontInfo_pixelSize(self.h)

proc pointSize*(self: QFontInfo, ): cint =

  fcQFontInfo_pointSize(self.h)

proc pointSizeF*(self: QFontInfo, ): float64 =

  fcQFontInfo_pointSizeF(self.h)

proc italic*(self: QFontInfo, ): bool =

  fcQFontInfo_italic(self.h)

proc style*(self: QFontInfo, ): gen_qfont.QFontStyle =

  gen_qfont.QFontStyle(fcQFontInfo_style(self.h))

proc weight*(self: QFontInfo, ): cint =

  fcQFontInfo_weight(self.h)

proc bold*(self: QFontInfo, ): bool =

  fcQFontInfo_bold(self.h)

proc underline*(self: QFontInfo, ): bool =

  fcQFontInfo_underline(self.h)

proc overline*(self: QFontInfo, ): bool =

  fcQFontInfo_overline(self.h)

proc strikeOut*(self: QFontInfo, ): bool =

  fcQFontInfo_strikeOut(self.h)

proc fixedPitch*(self: QFontInfo, ): bool =

  fcQFontInfo_fixedPitch(self.h)

proc styleHint*(self: QFontInfo, ): gen_qfont.QFontStyleHint =

  gen_qfont.QFontStyleHint(fcQFontInfo_styleHint(self.h))

proc rawMode*(self: QFontInfo, ): bool =

  fcQFontInfo_rawMode(self.h)

proc exactMatch*(self: QFontInfo, ): bool =

  fcQFontInfo_exactMatch(self.h)

proc delete*(self: QFontInfo) =
  fcQFontInfo_delete(self.h)
