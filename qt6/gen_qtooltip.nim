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
{.compile("gen_qtooltip.cpp", cflags).}


import gen_qtooltip_types
export gen_qtooltip_types

import
  gen_qfont,
  gen_qpalette,
  gen_qpoint,
  gen_qrect,
  gen_qwidget
export
  gen_qfont,
  gen_qpalette,
  gen_qpoint,
  gen_qrect,
  gen_qwidget

type cQToolTip*{.exportc: "QToolTip", incompleteStruct.} = object

proc fcQToolTip_showText(pos: pointer, text: struct_miqt_string): void {.importc: "QToolTip_showText".}
proc fcQToolTip_hideText(): void {.importc: "QToolTip_hideText".}
proc fcQToolTip_isVisible(): bool {.importc: "QToolTip_isVisible".}
proc fcQToolTip_text(): struct_miqt_string {.importc: "QToolTip_text".}
proc fcQToolTip_palette(): pointer {.importc: "QToolTip_palette".}
proc fcQToolTip_setPalette(palette: pointer): void {.importc: "QToolTip_setPalette".}
proc fcQToolTip_font(): pointer {.importc: "QToolTip_font".}
proc fcQToolTip_setFont(font: pointer): void {.importc: "QToolTip_setFont".}
proc fcQToolTip_showText3(pos: pointer, text: struct_miqt_string, w: pointer): void {.importc: "QToolTip_showText3".}
proc fcQToolTip_showText4(pos: pointer, text: struct_miqt_string, w: pointer, rect: pointer): void {.importc: "QToolTip_showText4".}
proc fcQToolTip_showText5(pos: pointer, text: struct_miqt_string, w: pointer, rect: pointer, msecShowTime: cint): void {.importc: "QToolTip_showText5".}
proc fcQToolTip_delete(self: pointer) {.importc: "QToolTip_delete".}


func init*(T: type QToolTip, h: ptr cQToolTip): QToolTip =
  T(h: h)
proc showText*(_: type QToolTip, pos: gen_qpoint.QPoint, text: string): void =

  fcQToolTip_showText(pos.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc hideText*(_: type QToolTip, ): void =

  fcQToolTip_hideText()

proc isVisible*(_: type QToolTip, ): bool =

  fcQToolTip_isVisible()

proc text*(_: type QToolTip, ): string =

  let v_ms = fcQToolTip_text()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc palette*(_: type QToolTip, ): gen_qpalette.QPalette =

  gen_qpalette.QPalette(h: fcQToolTip_palette())

proc setPalette*(_: type QToolTip, palette: gen_qpalette.QPalette): void =

  fcQToolTip_setPalette(palette.h)

proc font*(_: type QToolTip, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQToolTip_font())

proc setFont*(_: type QToolTip, font: gen_qfont.QFont): void =

  fcQToolTip_setFont(font.h)

proc showText3*(_: type QToolTip, pos: gen_qpoint.QPoint, text: string, w: gen_qwidget.QWidget): void =

  fcQToolTip_showText3(pos.h, struct_miqt_string(data: text, len: csize_t(len(text))), w.h)

proc showText4*(_: type QToolTip, pos: gen_qpoint.QPoint, text: string, w: gen_qwidget.QWidget, rect: gen_qrect.QRect): void =

  fcQToolTip_showText4(pos.h, struct_miqt_string(data: text, len: csize_t(len(text))), w.h, rect.h)

proc showText5*(_: type QToolTip, pos: gen_qpoint.QPoint, text: string, w: gen_qwidget.QWidget, rect: gen_qrect.QRect, msecShowTime: cint): void =

  fcQToolTip_showText5(pos.h, struct_miqt_string(data: text, len: csize_t(len(text))), w.h, rect.h, msecShowTime)

proc delete*(self: QToolTip) =
  fcQToolTip_delete(self.h)
