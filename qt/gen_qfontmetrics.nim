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
{.compile("gen_qfontmetrics.cpp", cflags).}


import gen_qfontmetrics_types
export gen_qfontmetrics_types

import
  gen_qchar,
  gen_qfont,
  gen_qnamespace,
  gen_qpaintdevice,
  gen_qrect,
  gen_qsize
export
  gen_qchar,
  gen_qfont,
  gen_qnamespace,
  gen_qpaintdevice,
  gen_qrect,
  gen_qsize

type cQFontMetrics*{.exportc: "QFontMetrics", incompleteStruct.} = object
type cQFontMetricsF*{.exportc: "QFontMetricsF", incompleteStruct.} = object

proc fcQFontMetrics_new(param1: pointer): ptr cQFontMetrics {.importc: "QFontMetrics_new".}
proc fcQFontMetrics_new2(font: pointer, pd: pointer): ptr cQFontMetrics {.importc: "QFontMetrics_new2".}
proc fcQFontMetrics_new3(param1: pointer): ptr cQFontMetrics {.importc: "QFontMetrics_new3".}
proc fcQFontMetrics_operatorAssign(self: pointer, param1: pointer): void {.importc: "QFontMetrics_operatorAssign".}
proc fcQFontMetrics_swap(self: pointer, other: pointer): void {.importc: "QFontMetrics_swap".}
proc fcQFontMetrics_ascent(self: pointer, ): cint {.importc: "QFontMetrics_ascent".}
proc fcQFontMetrics_capHeight(self: pointer, ): cint {.importc: "QFontMetrics_capHeight".}
proc fcQFontMetrics_descent(self: pointer, ): cint {.importc: "QFontMetrics_descent".}
proc fcQFontMetrics_height(self: pointer, ): cint {.importc: "QFontMetrics_height".}
proc fcQFontMetrics_leading(self: pointer, ): cint {.importc: "QFontMetrics_leading".}
proc fcQFontMetrics_lineSpacing(self: pointer, ): cint {.importc: "QFontMetrics_lineSpacing".}
proc fcQFontMetrics_minLeftBearing(self: pointer, ): cint {.importc: "QFontMetrics_minLeftBearing".}
proc fcQFontMetrics_minRightBearing(self: pointer, ): cint {.importc: "QFontMetrics_minRightBearing".}
proc fcQFontMetrics_maxWidth(self: pointer, ): cint {.importc: "QFontMetrics_maxWidth".}
proc fcQFontMetrics_xHeight(self: pointer, ): cint {.importc: "QFontMetrics_xHeight".}
proc fcQFontMetrics_averageCharWidth(self: pointer, ): cint {.importc: "QFontMetrics_averageCharWidth".}
proc fcQFontMetrics_inFont(self: pointer, param1: pointer): bool {.importc: "QFontMetrics_inFont".}
proc fcQFontMetrics_inFontUcs4(self: pointer, ucs4: cuint): bool {.importc: "QFontMetrics_inFontUcs4".}
proc fcQFontMetrics_leftBearing(self: pointer, param1: pointer): cint {.importc: "QFontMetrics_leftBearing".}
proc fcQFontMetrics_rightBearing(self: pointer, param1: pointer): cint {.importc: "QFontMetrics_rightBearing".}
proc fcQFontMetrics_width(self: pointer, param1: struct_miqt_string): cint {.importc: "QFontMetrics_width".}
proc fcQFontMetrics_width2(self: pointer, param1: struct_miqt_string, len: cint, flags: cint): cint {.importc: "QFontMetrics_width2".}
proc fcQFontMetrics_widthWithQChar(self: pointer, param1: pointer): cint {.importc: "QFontMetrics_widthWithQChar".}
proc fcQFontMetrics_horizontalAdvance(self: pointer, param1: struct_miqt_string): cint {.importc: "QFontMetrics_horizontalAdvance".}
proc fcQFontMetrics_horizontalAdvanceWithQChar(self: pointer, param1: pointer): cint {.importc: "QFontMetrics_horizontalAdvanceWithQChar".}
proc fcQFontMetrics_charWidth(self: pointer, str: struct_miqt_string, pos: cint): cint {.importc: "QFontMetrics_charWidth".}
proc fcQFontMetrics_boundingRect(self: pointer, param1: pointer): pointer {.importc: "QFontMetrics_boundingRect".}
proc fcQFontMetrics_boundingRectWithText(self: pointer, text: struct_miqt_string): pointer {.importc: "QFontMetrics_boundingRectWithText".}
proc fcQFontMetrics_boundingRect2(self: pointer, r: pointer, flags: cint, text: struct_miqt_string): pointer {.importc: "QFontMetrics_boundingRect2".}
proc fcQFontMetrics_boundingRect3(self: pointer, x: cint, y: cint, w: cint, h: cint, flags: cint, text: struct_miqt_string): pointer {.importc: "QFontMetrics_boundingRect3".}
proc fcQFontMetrics_size(self: pointer, flags: cint, str: struct_miqt_string): pointer {.importc: "QFontMetrics_size".}
proc fcQFontMetrics_tightBoundingRect(self: pointer, text: struct_miqt_string): pointer {.importc: "QFontMetrics_tightBoundingRect".}
proc fcQFontMetrics_elidedText(self: pointer, text: struct_miqt_string, mode: cint, width: cint): struct_miqt_string {.importc: "QFontMetrics_elidedText".}
proc fcQFontMetrics_underlinePos(self: pointer, ): cint {.importc: "QFontMetrics_underlinePos".}
proc fcQFontMetrics_overlinePos(self: pointer, ): cint {.importc: "QFontMetrics_overlinePos".}
proc fcQFontMetrics_strikeOutPos(self: pointer, ): cint {.importc: "QFontMetrics_strikeOutPos".}
proc fcQFontMetrics_lineWidth(self: pointer, ): cint {.importc: "QFontMetrics_lineWidth".}
proc fcQFontMetrics_fontDpi(self: pointer, ): float64 {.importc: "QFontMetrics_fontDpi".}
proc fcQFontMetrics_operatorEqual(self: pointer, other: pointer): bool {.importc: "QFontMetrics_operatorEqual".}
proc fcQFontMetrics_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QFontMetrics_operatorNotEqual".}
proc fcQFontMetrics_width22(self: pointer, param1: struct_miqt_string, len: cint): cint {.importc: "QFontMetrics_width22".}
proc fcQFontMetrics_horizontalAdvance2(self: pointer, param1: struct_miqt_string, len: cint): cint {.importc: "QFontMetrics_horizontalAdvance2".}
proc fcQFontMetrics_boundingRect4(self: pointer, r: pointer, flags: cint, text: struct_miqt_string, tabstops: cint): pointer {.importc: "QFontMetrics_boundingRect4".}
proc fcQFontMetrics_boundingRect5(self: pointer, r: pointer, flags: cint, text: struct_miqt_string, tabstops: cint, tabarray: ptr cint): pointer {.importc: "QFontMetrics_boundingRect5".}
proc fcQFontMetrics_boundingRect7(self: pointer, x: cint, y: cint, w: cint, h: cint, flags: cint, text: struct_miqt_string, tabstops: cint): pointer {.importc: "QFontMetrics_boundingRect7".}
proc fcQFontMetrics_boundingRect8(self: pointer, x: cint, y: cint, w: cint, h: cint, flags: cint, text: struct_miqt_string, tabstops: cint, tabarray: ptr cint): pointer {.importc: "QFontMetrics_boundingRect8".}
proc fcQFontMetrics_size3(self: pointer, flags: cint, str: struct_miqt_string, tabstops: cint): pointer {.importc: "QFontMetrics_size3".}
proc fcQFontMetrics_size4(self: pointer, flags: cint, str: struct_miqt_string, tabstops: cint, tabarray: ptr cint): pointer {.importc: "QFontMetrics_size4".}
proc fcQFontMetrics_elidedText4(self: pointer, text: struct_miqt_string, mode: cint, width: cint, flags: cint): struct_miqt_string {.importc: "QFontMetrics_elidedText4".}
proc fcQFontMetrics_delete(self: pointer) {.importc: "QFontMetrics_delete".}
proc fcQFontMetricsF_new(font: pointer): ptr cQFontMetricsF {.importc: "QFontMetricsF_new".}
proc fcQFontMetricsF_new2(font: pointer, pd: pointer): ptr cQFontMetricsF {.importc: "QFontMetricsF_new2".}
proc fcQFontMetricsF_new3(param1: pointer): ptr cQFontMetricsF {.importc: "QFontMetricsF_new3".}
proc fcQFontMetricsF_new4(param1: pointer): ptr cQFontMetricsF {.importc: "QFontMetricsF_new4".}
proc fcQFontMetricsF_operatorAssign(self: pointer, param1: pointer): void {.importc: "QFontMetricsF_operatorAssign".}
proc fcQFontMetricsF_operatorAssignWithQFontMetrics(self: pointer, param1: pointer): void {.importc: "QFontMetricsF_operatorAssignWithQFontMetrics".}
proc fcQFontMetricsF_swap(self: pointer, other: pointer): void {.importc: "QFontMetricsF_swap".}
proc fcQFontMetricsF_ascent(self: pointer, ): float64 {.importc: "QFontMetricsF_ascent".}
proc fcQFontMetricsF_capHeight(self: pointer, ): float64 {.importc: "QFontMetricsF_capHeight".}
proc fcQFontMetricsF_descent(self: pointer, ): float64 {.importc: "QFontMetricsF_descent".}
proc fcQFontMetricsF_height(self: pointer, ): float64 {.importc: "QFontMetricsF_height".}
proc fcQFontMetricsF_leading(self: pointer, ): float64 {.importc: "QFontMetricsF_leading".}
proc fcQFontMetricsF_lineSpacing(self: pointer, ): float64 {.importc: "QFontMetricsF_lineSpacing".}
proc fcQFontMetricsF_minLeftBearing(self: pointer, ): float64 {.importc: "QFontMetricsF_minLeftBearing".}
proc fcQFontMetricsF_minRightBearing(self: pointer, ): float64 {.importc: "QFontMetricsF_minRightBearing".}
proc fcQFontMetricsF_maxWidth(self: pointer, ): float64 {.importc: "QFontMetricsF_maxWidth".}
proc fcQFontMetricsF_xHeight(self: pointer, ): float64 {.importc: "QFontMetricsF_xHeight".}
proc fcQFontMetricsF_averageCharWidth(self: pointer, ): float64 {.importc: "QFontMetricsF_averageCharWidth".}
proc fcQFontMetricsF_inFont(self: pointer, param1: pointer): bool {.importc: "QFontMetricsF_inFont".}
proc fcQFontMetricsF_inFontUcs4(self: pointer, ucs4: cuint): bool {.importc: "QFontMetricsF_inFontUcs4".}
proc fcQFontMetricsF_leftBearing(self: pointer, param1: pointer): float64 {.importc: "QFontMetricsF_leftBearing".}
proc fcQFontMetricsF_rightBearing(self: pointer, param1: pointer): float64 {.importc: "QFontMetricsF_rightBearing".}
proc fcQFontMetricsF_width(self: pointer, string: struct_miqt_string): float64 {.importc: "QFontMetricsF_width".}
proc fcQFontMetricsF_widthWithQChar(self: pointer, param1: pointer): float64 {.importc: "QFontMetricsF_widthWithQChar".}
proc fcQFontMetricsF_horizontalAdvance(self: pointer, string: struct_miqt_string): float64 {.importc: "QFontMetricsF_horizontalAdvance".}
proc fcQFontMetricsF_horizontalAdvanceWithQChar(self: pointer, param1: pointer): float64 {.importc: "QFontMetricsF_horizontalAdvanceWithQChar".}
proc fcQFontMetricsF_boundingRect(self: pointer, string: struct_miqt_string): pointer {.importc: "QFontMetricsF_boundingRect".}
proc fcQFontMetricsF_boundingRectWithQChar(self: pointer, param1: pointer): pointer {.importc: "QFontMetricsF_boundingRectWithQChar".}
proc fcQFontMetricsF_boundingRect2(self: pointer, r: pointer, flags: cint, string: struct_miqt_string): pointer {.importc: "QFontMetricsF_boundingRect2".}
proc fcQFontMetricsF_size(self: pointer, flags: cint, str: struct_miqt_string): pointer {.importc: "QFontMetricsF_size".}
proc fcQFontMetricsF_tightBoundingRect(self: pointer, text: struct_miqt_string): pointer {.importc: "QFontMetricsF_tightBoundingRect".}
proc fcQFontMetricsF_elidedText(self: pointer, text: struct_miqt_string, mode: cint, width: float64): struct_miqt_string {.importc: "QFontMetricsF_elidedText".}
proc fcQFontMetricsF_underlinePos(self: pointer, ): float64 {.importc: "QFontMetricsF_underlinePos".}
proc fcQFontMetricsF_overlinePos(self: pointer, ): float64 {.importc: "QFontMetricsF_overlinePos".}
proc fcQFontMetricsF_strikeOutPos(self: pointer, ): float64 {.importc: "QFontMetricsF_strikeOutPos".}
proc fcQFontMetricsF_lineWidth(self: pointer, ): float64 {.importc: "QFontMetricsF_lineWidth".}
proc fcQFontMetricsF_fontDpi(self: pointer, ): float64 {.importc: "QFontMetricsF_fontDpi".}
proc fcQFontMetricsF_operatorEqual(self: pointer, other: pointer): bool {.importc: "QFontMetricsF_operatorEqual".}
proc fcQFontMetricsF_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QFontMetricsF_operatorNotEqual".}
proc fcQFontMetricsF_horizontalAdvance2(self: pointer, string: struct_miqt_string, length: cint): float64 {.importc: "QFontMetricsF_horizontalAdvance2".}
proc fcQFontMetricsF_boundingRect4(self: pointer, r: pointer, flags: cint, string: struct_miqt_string, tabstops: cint): pointer {.importc: "QFontMetricsF_boundingRect4".}
proc fcQFontMetricsF_boundingRect5(self: pointer, r: pointer, flags: cint, string: struct_miqt_string, tabstops: cint, tabarray: ptr cint): pointer {.importc: "QFontMetricsF_boundingRect5".}
proc fcQFontMetricsF_size3(self: pointer, flags: cint, str: struct_miqt_string, tabstops: cint): pointer {.importc: "QFontMetricsF_size3".}
proc fcQFontMetricsF_size4(self: pointer, flags: cint, str: struct_miqt_string, tabstops: cint, tabarray: ptr cint): pointer {.importc: "QFontMetricsF_size4".}
proc fcQFontMetricsF_elidedText4(self: pointer, text: struct_miqt_string, mode: cint, width: float64, flags: cint): struct_miqt_string {.importc: "QFontMetricsF_elidedText4".}
proc fcQFontMetricsF_delete(self: pointer) {.importc: "QFontMetricsF_delete".}


func init*(T: type QFontMetrics, h: ptr cQFontMetrics): QFontMetrics =
  T(h: h)
proc create*(T: type QFontMetrics, param1: gen_qfont.QFont): QFontMetrics =

  QFontMetrics.init(fcQFontMetrics_new(param1.h))
proc create*(T: type QFontMetrics, font: gen_qfont.QFont, pd: gen_qpaintdevice.QPaintDevice): QFontMetrics =

  QFontMetrics.init(fcQFontMetrics_new2(font.h, pd.h))
proc create2*(T: type QFontMetrics, param1: QFontMetrics): QFontMetrics =

  QFontMetrics.init(fcQFontMetrics_new3(param1.h))
proc operatorAssign*(self: QFontMetrics, param1: QFontMetrics): void =

  fcQFontMetrics_operatorAssign(self.h, param1.h)

proc swap*(self: QFontMetrics, other: QFontMetrics): void =

  fcQFontMetrics_swap(self.h, other.h)

proc ascent*(self: QFontMetrics, ): cint =

  fcQFontMetrics_ascent(self.h)

proc capHeight*(self: QFontMetrics, ): cint =

  fcQFontMetrics_capHeight(self.h)

proc descent*(self: QFontMetrics, ): cint =

  fcQFontMetrics_descent(self.h)

proc height*(self: QFontMetrics, ): cint =

  fcQFontMetrics_height(self.h)

proc leading*(self: QFontMetrics, ): cint =

  fcQFontMetrics_leading(self.h)

proc lineSpacing*(self: QFontMetrics, ): cint =

  fcQFontMetrics_lineSpacing(self.h)

proc minLeftBearing*(self: QFontMetrics, ): cint =

  fcQFontMetrics_minLeftBearing(self.h)

proc minRightBearing*(self: QFontMetrics, ): cint =

  fcQFontMetrics_minRightBearing(self.h)

proc maxWidth*(self: QFontMetrics, ): cint =

  fcQFontMetrics_maxWidth(self.h)

proc xHeight*(self: QFontMetrics, ): cint =

  fcQFontMetrics_xHeight(self.h)

proc averageCharWidth*(self: QFontMetrics, ): cint =

  fcQFontMetrics_averageCharWidth(self.h)

proc inFont*(self: QFontMetrics, param1: gen_qchar.QChar): bool =

  fcQFontMetrics_inFont(self.h, param1.h)

proc inFontUcs4*(self: QFontMetrics, ucs4: cuint): bool =

  fcQFontMetrics_inFontUcs4(self.h, ucs4)

proc leftBearing*(self: QFontMetrics, param1: gen_qchar.QChar): cint =

  fcQFontMetrics_leftBearing(self.h, param1.h)

proc rightBearing*(self: QFontMetrics, param1: gen_qchar.QChar): cint =

  fcQFontMetrics_rightBearing(self.h, param1.h)

proc width*(self: QFontMetrics, param1: string): cint =

  fcQFontMetrics_width(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc width2*(self: QFontMetrics, param1: string, len: cint, flags: cint): cint =

  fcQFontMetrics_width2(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), len, flags)

proc widthWithQChar*(self: QFontMetrics, param1: gen_qchar.QChar): cint =

  fcQFontMetrics_widthWithQChar(self.h, param1.h)

proc horizontalAdvance*(self: QFontMetrics, param1: string): cint =

  fcQFontMetrics_horizontalAdvance(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc horizontalAdvanceWithQChar*(self: QFontMetrics, param1: gen_qchar.QChar): cint =

  fcQFontMetrics_horizontalAdvanceWithQChar(self.h, param1.h)

proc charWidth*(self: QFontMetrics, str: string, pos: cint): cint =

  fcQFontMetrics_charWidth(self.h, struct_miqt_string(data: str, len: csize_t(len(str))), pos)

proc boundingRect*(self: QFontMetrics, param1: gen_qchar.QChar): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQFontMetrics_boundingRect(self.h, param1.h))

proc boundingRectWithText*(self: QFontMetrics, text: string): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQFontMetrics_boundingRectWithText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc boundingRect2*(self: QFontMetrics, r: gen_qrect.QRect, flags: cint, text: string): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQFontMetrics_boundingRect2(self.h, r.h, flags, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc boundingRect3*(self: QFontMetrics, x: cint, y: cint, w: cint, h: cint, flags: cint, text: string): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQFontMetrics_boundingRect3(self.h, x, y, w, h, flags, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc size*(self: QFontMetrics, flags: cint, str: string): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQFontMetrics_size(self.h, flags, struct_miqt_string(data: str, len: csize_t(len(str)))))

proc tightBoundingRect*(self: QFontMetrics, text: string): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQFontMetrics_tightBoundingRect(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc elidedText*(self: QFontMetrics, text: string, mode: gen_qnamespace.TextElideMode, width: cint): string =

  let v_ms = fcQFontMetrics_elidedText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(mode), width)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc underlinePos*(self: QFontMetrics, ): cint =

  fcQFontMetrics_underlinePos(self.h)

proc overlinePos*(self: QFontMetrics, ): cint =

  fcQFontMetrics_overlinePos(self.h)

proc strikeOutPos*(self: QFontMetrics, ): cint =

  fcQFontMetrics_strikeOutPos(self.h)

proc lineWidth*(self: QFontMetrics, ): cint =

  fcQFontMetrics_lineWidth(self.h)

proc fontDpi*(self: QFontMetrics, ): float64 =

  fcQFontMetrics_fontDpi(self.h)

proc operatorEqual*(self: QFontMetrics, other: QFontMetrics): bool =

  fcQFontMetrics_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QFontMetrics, other: QFontMetrics): bool =

  fcQFontMetrics_operatorNotEqual(self.h, other.h)

proc width22*(self: QFontMetrics, param1: string, len: cint): cint =

  fcQFontMetrics_width22(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), len)

proc horizontalAdvance2*(self: QFontMetrics, param1: string, len: cint): cint =

  fcQFontMetrics_horizontalAdvance2(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), len)

proc boundingRect4*(self: QFontMetrics, r: gen_qrect.QRect, flags: cint, text: string, tabstops: cint): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQFontMetrics_boundingRect4(self.h, r.h, flags, struct_miqt_string(data: text, len: csize_t(len(text))), tabstops))

proc boundingRect5*(self: QFontMetrics, r: gen_qrect.QRect, flags: cint, text: string, tabstops: cint, tabarray: ptr cint): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQFontMetrics_boundingRect5(self.h, r.h, flags, struct_miqt_string(data: text, len: csize_t(len(text))), tabstops, tabarray))

proc boundingRect7*(self: QFontMetrics, x: cint, y: cint, w: cint, h: cint, flags: cint, text: string, tabstops: cint): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQFontMetrics_boundingRect7(self.h, x, y, w, h, flags, struct_miqt_string(data: text, len: csize_t(len(text))), tabstops))

proc boundingRect8*(self: QFontMetrics, x: cint, y: cint, w: cint, h: cint, flags: cint, text: string, tabstops: cint, tabarray: ptr cint): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQFontMetrics_boundingRect8(self.h, x, y, w, h, flags, struct_miqt_string(data: text, len: csize_t(len(text))), tabstops, tabarray))

proc size3*(self: QFontMetrics, flags: cint, str: string, tabstops: cint): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQFontMetrics_size3(self.h, flags, struct_miqt_string(data: str, len: csize_t(len(str))), tabstops))

proc size4*(self: QFontMetrics, flags: cint, str: string, tabstops: cint, tabarray: ptr cint): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQFontMetrics_size4(self.h, flags, struct_miqt_string(data: str, len: csize_t(len(str))), tabstops, tabarray))

proc elidedText4*(self: QFontMetrics, text: string, mode: gen_qnamespace.TextElideMode, width: cint, flags: cint): string =

  let v_ms = fcQFontMetrics_elidedText4(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(mode), width, flags)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QFontMetrics) =
  fcQFontMetrics_delete(self.h)

func init*(T: type QFontMetricsF, h: ptr cQFontMetricsF): QFontMetricsF =
  T(h: h)
proc create*(T: type QFontMetricsF, font: gen_qfont.QFont): QFontMetricsF =

  QFontMetricsF.init(fcQFontMetricsF_new(font.h))
proc create*(T: type QFontMetricsF, font: gen_qfont.QFont, pd: gen_qpaintdevice.QPaintDevice): QFontMetricsF =

  QFontMetricsF.init(fcQFontMetricsF_new2(font.h, pd.h))
proc create2*(T: type QFontMetricsF, param1: QFontMetrics): QFontMetricsF =

  QFontMetricsF.init(fcQFontMetricsF_new3(param1.h))
proc create2*(T: type QFontMetricsF, param1: QFontMetricsF): QFontMetricsF =

  QFontMetricsF.init(fcQFontMetricsF_new4(param1.h))
proc operatorAssign*(self: QFontMetricsF, param1: QFontMetricsF): void =

  fcQFontMetricsF_operatorAssign(self.h, param1.h)

proc operatorAssignWithQFontMetrics*(self: QFontMetricsF, param1: QFontMetrics): void =

  fcQFontMetricsF_operatorAssignWithQFontMetrics(self.h, param1.h)

proc swap*(self: QFontMetricsF, other: QFontMetricsF): void =

  fcQFontMetricsF_swap(self.h, other.h)

proc ascent*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_ascent(self.h)

proc capHeight*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_capHeight(self.h)

proc descent*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_descent(self.h)

proc height*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_height(self.h)

proc leading*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_leading(self.h)

proc lineSpacing*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_lineSpacing(self.h)

proc minLeftBearing*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_minLeftBearing(self.h)

proc minRightBearing*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_minRightBearing(self.h)

proc maxWidth*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_maxWidth(self.h)

proc xHeight*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_xHeight(self.h)

proc averageCharWidth*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_averageCharWidth(self.h)

proc inFont*(self: QFontMetricsF, param1: gen_qchar.QChar): bool =

  fcQFontMetricsF_inFont(self.h, param1.h)

proc inFontUcs4*(self: QFontMetricsF, ucs4: cuint): bool =

  fcQFontMetricsF_inFontUcs4(self.h, ucs4)

proc leftBearing*(self: QFontMetricsF, param1: gen_qchar.QChar): float64 =

  fcQFontMetricsF_leftBearing(self.h, param1.h)

proc rightBearing*(self: QFontMetricsF, param1: gen_qchar.QChar): float64 =

  fcQFontMetricsF_rightBearing(self.h, param1.h)

proc width*(self: QFontMetricsF, string: string): float64 =

  fcQFontMetricsF_width(self.h, struct_miqt_string(data: string, len: csize_t(len(string))))

proc widthWithQChar*(self: QFontMetricsF, param1: gen_qchar.QChar): float64 =

  fcQFontMetricsF_widthWithQChar(self.h, param1.h)

proc horizontalAdvance*(self: QFontMetricsF, string: string): float64 =

  fcQFontMetricsF_horizontalAdvance(self.h, struct_miqt_string(data: string, len: csize_t(len(string))))

proc horizontalAdvanceWithQChar*(self: QFontMetricsF, param1: gen_qchar.QChar): float64 =

  fcQFontMetricsF_horizontalAdvanceWithQChar(self.h, param1.h)

proc boundingRect*(self: QFontMetricsF, string: string): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQFontMetricsF_boundingRect(self.h, struct_miqt_string(data: string, len: csize_t(len(string)))))

proc boundingRectWithQChar*(self: QFontMetricsF, param1: gen_qchar.QChar): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQFontMetricsF_boundingRectWithQChar(self.h, param1.h))

proc boundingRect2*(self: QFontMetricsF, r: gen_qrect.QRectF, flags: cint, string: string): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQFontMetricsF_boundingRect2(self.h, r.h, flags, struct_miqt_string(data: string, len: csize_t(len(string)))))

proc size*(self: QFontMetricsF, flags: cint, str: string): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQFontMetricsF_size(self.h, flags, struct_miqt_string(data: str, len: csize_t(len(str)))))

proc tightBoundingRect*(self: QFontMetricsF, text: string): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQFontMetricsF_tightBoundingRect(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc elidedText*(self: QFontMetricsF, text: string, mode: gen_qnamespace.TextElideMode, width: float64): string =

  let v_ms = fcQFontMetricsF_elidedText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(mode), width)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc underlinePos*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_underlinePos(self.h)

proc overlinePos*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_overlinePos(self.h)

proc strikeOutPos*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_strikeOutPos(self.h)

proc lineWidth*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_lineWidth(self.h)

proc fontDpi*(self: QFontMetricsF, ): float64 =

  fcQFontMetricsF_fontDpi(self.h)

proc operatorEqual*(self: QFontMetricsF, other: QFontMetricsF): bool =

  fcQFontMetricsF_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QFontMetricsF, other: QFontMetricsF): bool =

  fcQFontMetricsF_operatorNotEqual(self.h, other.h)

proc horizontalAdvance2*(self: QFontMetricsF, string: string, length: cint): float64 =

  fcQFontMetricsF_horizontalAdvance2(self.h, struct_miqt_string(data: string, len: csize_t(len(string))), length)

proc boundingRect4*(self: QFontMetricsF, r: gen_qrect.QRectF, flags: cint, string: string, tabstops: cint): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQFontMetricsF_boundingRect4(self.h, r.h, flags, struct_miqt_string(data: string, len: csize_t(len(string))), tabstops))

proc boundingRect5*(self: QFontMetricsF, r: gen_qrect.QRectF, flags: cint, string: string, tabstops: cint, tabarray: ptr cint): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQFontMetricsF_boundingRect5(self.h, r.h, flags, struct_miqt_string(data: string, len: csize_t(len(string))), tabstops, tabarray))

proc size3*(self: QFontMetricsF, flags: cint, str: string, tabstops: cint): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQFontMetricsF_size3(self.h, flags, struct_miqt_string(data: str, len: csize_t(len(str))), tabstops))

proc size4*(self: QFontMetricsF, flags: cint, str: string, tabstops: cint, tabarray: ptr cint): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQFontMetricsF_size4(self.h, flags, struct_miqt_string(data: str, len: csize_t(len(str))), tabstops, tabarray))

proc elidedText4*(self: QFontMetricsF, text: string, mode: gen_qnamespace.TextElideMode, width: float64, flags: cint): string =

  let v_ms = fcQFontMetricsF_elidedText4(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(mode), width, flags)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QFontMetricsF) =
  fcQFontMetricsF_delete(self.h)
