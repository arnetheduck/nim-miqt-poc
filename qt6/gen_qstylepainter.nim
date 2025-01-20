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
{.compile("gen_qstylepainter.cpp", cflags).}


import gen_qstylepainter_types
export gen_qstylepainter_types

import
  gen_qpaintdevice,
  gen_qpainter,
  gen_qpalette,
  gen_qpixmap,
  gen_qrect,
  gen_qstyle,
  gen_qstyleoption,
  gen_qwidget
export
  gen_qpaintdevice,
  gen_qpainter,
  gen_qpalette,
  gen_qpixmap,
  gen_qrect,
  gen_qstyle,
  gen_qstyleoption,
  gen_qwidget

type cQStylePainter*{.exportc: "QStylePainter", incompleteStruct.} = object

proc fcQStylePainter_new(w: pointer): ptr cQStylePainter {.importc: "QStylePainter_new".}
proc fcQStylePainter_new2(): ptr cQStylePainter {.importc: "QStylePainter_new2".}
proc fcQStylePainter_new3(pd: pointer, w: pointer): ptr cQStylePainter {.importc: "QStylePainter_new3".}
proc fcQStylePainter_begin(self: pointer, w: pointer): bool {.importc: "QStylePainter_begin".}
proc fcQStylePainter_begin2(self: pointer, pd: pointer, w: pointer): bool {.importc: "QStylePainter_begin2".}
proc fcQStylePainter_drawPrimitive(self: pointer, pe: cint, opt: pointer): void {.importc: "QStylePainter_drawPrimitive".}
proc fcQStylePainter_drawControl(self: pointer, ce: cint, opt: pointer): void {.importc: "QStylePainter_drawControl".}
proc fcQStylePainter_drawComplexControl(self: pointer, cc: cint, opt: pointer): void {.importc: "QStylePainter_drawComplexControl".}
proc fcQStylePainter_drawItemText(self: pointer, r: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string): void {.importc: "QStylePainter_drawItemText".}
proc fcQStylePainter_drawItemPixmap(self: pointer, r: pointer, flags: cint, pixmap: pointer): void {.importc: "QStylePainter_drawItemPixmap".}
proc fcQStylePainter_style(self: pointer, ): pointer {.importc: "QStylePainter_style".}
proc fcQStylePainter_drawItemText6(self: pointer, r: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.importc: "QStylePainter_drawItemText6".}
proc fcQStylePainter_delete(self: pointer) {.importc: "QStylePainter_delete".}


func init*(T: type gen_qstylepainter_types.QStylePainter, h: ptr cQStylePainter): gen_qstylepainter_types.QStylePainter =
  T(h: h)
proc create*(T: type gen_qstylepainter_types.QStylePainter, w: gen_qwidget.QWidget): gen_qstylepainter_types.QStylePainter =
  gen_qstylepainter_types.QStylePainter.init(fcQStylePainter_new(w.h))

proc create*(T: type gen_qstylepainter_types.QStylePainter, ): gen_qstylepainter_types.QStylePainter =
  gen_qstylepainter_types.QStylePainter.init(fcQStylePainter_new2())

proc create*(T: type gen_qstylepainter_types.QStylePainter, pd: gen_qpaintdevice.QPaintDevice, w: gen_qwidget.QWidget): gen_qstylepainter_types.QStylePainter =
  gen_qstylepainter_types.QStylePainter.init(fcQStylePainter_new3(pd.h, w.h))

proc begin*(self: gen_qstylepainter_types.QStylePainter, w: gen_qwidget.QWidget): bool =
  fcQStylePainter_begin(self.h, w.h)

proc begin*(self: gen_qstylepainter_types.QStylePainter, pd: gen_qpaintdevice.QPaintDevice, w: gen_qwidget.QWidget): bool =
  fcQStylePainter_begin2(self.h, pd.h, w.h)

proc drawPrimitive*(self: gen_qstylepainter_types.QStylePainter, pe: cint, opt: gen_qstyleoption.QStyleOption): void =
  fcQStylePainter_drawPrimitive(self.h, cint(pe), opt.h)

proc drawControl*(self: gen_qstylepainter_types.QStylePainter, ce: cint, opt: gen_qstyleoption.QStyleOption): void =
  fcQStylePainter_drawControl(self.h, cint(ce), opt.h)

proc drawComplexControl*(self: gen_qstylepainter_types.QStylePainter, cc: cint, opt: gen_qstyleoption.QStyleOptionComplex): void =
  fcQStylePainter_drawComplexControl(self.h, cint(cc), opt.h)

proc drawItemText*(self: gen_qstylepainter_types.QStylePainter, r: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string): void =
  fcQStylePainter_drawItemText(self.h, r.h, flags, pal.h, enabled, struct_miqt_string(data: text, len: csize_t(len(text))))

proc drawItemPixmap*(self: gen_qstylepainter_types.QStylePainter, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): void =
  fcQStylePainter_drawItemPixmap(self.h, r.h, flags, pixmap.h)

proc style*(self: gen_qstylepainter_types.QStylePainter, ): gen_qstyle.QStyle =
  gen_qstyle.QStyle(h: fcQStylePainter_style(self.h))

proc drawItemText*(self: gen_qstylepainter_types.QStylePainter, r: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: cint): void =
  fcQStylePainter_drawItemText6(self.h, r.h, flags, pal.h, enabled, struct_miqt_string(data: text, len: csize_t(len(text))), cint(textRole))

proc delete*(self: gen_qstylepainter_types.QStylePainter) =
  fcQStylePainter_delete(self.h)
