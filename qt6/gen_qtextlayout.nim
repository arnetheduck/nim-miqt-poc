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
{.compile("gen_qtextlayout.cpp", cflags).}


type QTextLayoutCursorMode* = cint
const
  QTextLayoutSkipCharacters* = 0
  QTextLayoutSkipWords* = 1



type QTextLineEdge* = cint
const
  QTextLineLeading* = 0
  QTextLineTrailing* = 1



type QTextLineCursorPosition* = cint
const
  QTextLineCursorBetweenCharacters* = 0
  QTextLineCursorOnCharacter* = 1



import gen_qtextlayout_types
export gen_qtextlayout_types

import
  gen_qfont,
  gen_qglyphrun,
  gen_qnamespace,
  gen_qpaintdevice,
  gen_qpainter,
  gen_qpoint,
  gen_qrawfont,
  gen_qrect,
  gen_qtextformat,
  gen_qtextobject,
  gen_qtextoption
export
  gen_qfont,
  gen_qglyphrun,
  gen_qnamespace,
  gen_qpaintdevice,
  gen_qpainter,
  gen_qpoint,
  gen_qrawfont,
  gen_qrect,
  gen_qtextformat,
  gen_qtextobject,
  gen_qtextoption

type cQTextInlineObject*{.exportc: "QTextInlineObject", incompleteStruct.} = object
type cQTextLayout*{.exportc: "QTextLayout", incompleteStruct.} = object
type cQTextLine*{.exportc: "QTextLine", incompleteStruct.} = object
type cQTextLayoutFormatRange*{.exportc: "QTextLayout__FormatRange", incompleteStruct.} = object

proc fcQTextInlineObject_new(): ptr cQTextInlineObject {.importc: "QTextInlineObject_new".}
proc fcQTextInlineObject_isValid(self: pointer, ): bool {.importc: "QTextInlineObject_isValid".}
proc fcQTextInlineObject_rect(self: pointer, ): pointer {.importc: "QTextInlineObject_rect".}
proc fcQTextInlineObject_width(self: pointer, ): float64 {.importc: "QTextInlineObject_width".}
proc fcQTextInlineObject_ascent(self: pointer, ): float64 {.importc: "QTextInlineObject_ascent".}
proc fcQTextInlineObject_descent(self: pointer, ): float64 {.importc: "QTextInlineObject_descent".}
proc fcQTextInlineObject_height(self: pointer, ): float64 {.importc: "QTextInlineObject_height".}
proc fcQTextInlineObject_textDirection(self: pointer, ): cint {.importc: "QTextInlineObject_textDirection".}
proc fcQTextInlineObject_setWidth(self: pointer, w: float64): void {.importc: "QTextInlineObject_setWidth".}
proc fcQTextInlineObject_setAscent(self: pointer, a: float64): void {.importc: "QTextInlineObject_setAscent".}
proc fcQTextInlineObject_setDescent(self: pointer, d: float64): void {.importc: "QTextInlineObject_setDescent".}
proc fcQTextInlineObject_textPosition(self: pointer, ): cint {.importc: "QTextInlineObject_textPosition".}
proc fcQTextInlineObject_formatIndex(self: pointer, ): cint {.importc: "QTextInlineObject_formatIndex".}
proc fcQTextInlineObject_format(self: pointer, ): pointer {.importc: "QTextInlineObject_format".}
proc fcQTextInlineObject_delete(self: pointer) {.importc: "QTextInlineObject_delete".}
proc fcQTextLayout_new(): ptr cQTextLayout {.importc: "QTextLayout_new".}
proc fcQTextLayout_new2(text: struct_miqt_string): ptr cQTextLayout {.importc: "QTextLayout_new2".}
proc fcQTextLayout_new3(text: struct_miqt_string, font: pointer): ptr cQTextLayout {.importc: "QTextLayout_new3".}
proc fcQTextLayout_new4(b: pointer): ptr cQTextLayout {.importc: "QTextLayout_new4".}
proc fcQTextLayout_new5(text: struct_miqt_string, font: pointer, paintdevice: pointer): ptr cQTextLayout {.importc: "QTextLayout_new5".}
proc fcQTextLayout_setFont(self: pointer, f: pointer): void {.importc: "QTextLayout_setFont".}
proc fcQTextLayout_font(self: pointer, ): pointer {.importc: "QTextLayout_font".}
proc fcQTextLayout_setRawFont(self: pointer, rawFont: pointer): void {.importc: "QTextLayout_setRawFont".}
proc fcQTextLayout_setText(self: pointer, string: struct_miqt_string): void {.importc: "QTextLayout_setText".}
proc fcQTextLayout_text(self: pointer, ): struct_miqt_string {.importc: "QTextLayout_text".}
proc fcQTextLayout_setTextOption(self: pointer, option: pointer): void {.importc: "QTextLayout_setTextOption".}
proc fcQTextLayout_textOption(self: pointer, ): pointer {.importc: "QTextLayout_textOption".}
proc fcQTextLayout_setPreeditArea(self: pointer, position: cint, text: struct_miqt_string): void {.importc: "QTextLayout_setPreeditArea".}
proc fcQTextLayout_preeditAreaPosition(self: pointer, ): cint {.importc: "QTextLayout_preeditAreaPosition".}
proc fcQTextLayout_preeditAreaText(self: pointer, ): struct_miqt_string {.importc: "QTextLayout_preeditAreaText".}
proc fcQTextLayout_setFormats(self: pointer, overrides: struct_miqt_array): void {.importc: "QTextLayout_setFormats".}
proc fcQTextLayout_formats(self: pointer, ): struct_miqt_array {.importc: "QTextLayout_formats".}
proc fcQTextLayout_clearFormats(self: pointer, ): void {.importc: "QTextLayout_clearFormats".}
proc fcQTextLayout_setCacheEnabled(self: pointer, enable: bool): void {.importc: "QTextLayout_setCacheEnabled".}
proc fcQTextLayout_cacheEnabled(self: pointer, ): bool {.importc: "QTextLayout_cacheEnabled".}
proc fcQTextLayout_setCursorMoveStyle(self: pointer, style: cint): void {.importc: "QTextLayout_setCursorMoveStyle".}
proc fcQTextLayout_cursorMoveStyle(self: pointer, ): cint {.importc: "QTextLayout_cursorMoveStyle".}
proc fcQTextLayout_beginLayout(self: pointer, ): void {.importc: "QTextLayout_beginLayout".}
proc fcQTextLayout_endLayout(self: pointer, ): void {.importc: "QTextLayout_endLayout".}
proc fcQTextLayout_clearLayout(self: pointer, ): void {.importc: "QTextLayout_clearLayout".}
proc fcQTextLayout_createLine(self: pointer, ): pointer {.importc: "QTextLayout_createLine".}
proc fcQTextLayout_lineCount(self: pointer, ): cint {.importc: "QTextLayout_lineCount".}
proc fcQTextLayout_lineAt(self: pointer, i: cint): pointer {.importc: "QTextLayout_lineAt".}
proc fcQTextLayout_lineForTextPosition(self: pointer, pos: cint): pointer {.importc: "QTextLayout_lineForTextPosition".}
proc fcQTextLayout_isValidCursorPosition(self: pointer, pos: cint): bool {.importc: "QTextLayout_isValidCursorPosition".}
proc fcQTextLayout_nextCursorPosition(self: pointer, oldPos: cint): cint {.importc: "QTextLayout_nextCursorPosition".}
proc fcQTextLayout_previousCursorPosition(self: pointer, oldPos: cint): cint {.importc: "QTextLayout_previousCursorPosition".}
proc fcQTextLayout_leftCursorPosition(self: pointer, oldPos: cint): cint {.importc: "QTextLayout_leftCursorPosition".}
proc fcQTextLayout_rightCursorPosition(self: pointer, oldPos: cint): cint {.importc: "QTextLayout_rightCursorPosition".}
proc fcQTextLayout_draw(self: pointer, p: pointer, pos: pointer): void {.importc: "QTextLayout_draw".}
proc fcQTextLayout_drawCursor(self: pointer, p: pointer, pos: pointer, cursorPosition: cint): void {.importc: "QTextLayout_drawCursor".}
proc fcQTextLayout_drawCursor2(self: pointer, p: pointer, pos: pointer, cursorPosition: cint, width: cint): void {.importc: "QTextLayout_drawCursor2".}
proc fcQTextLayout_position(self: pointer, ): pointer {.importc: "QTextLayout_position".}
proc fcQTextLayout_setPosition(self: pointer, p: pointer): void {.importc: "QTextLayout_setPosition".}
proc fcQTextLayout_boundingRect(self: pointer, ): pointer {.importc: "QTextLayout_boundingRect".}
proc fcQTextLayout_minimumWidth(self: pointer, ): float64 {.importc: "QTextLayout_minimumWidth".}
proc fcQTextLayout_maximumWidth(self: pointer, ): float64 {.importc: "QTextLayout_maximumWidth".}
proc fcQTextLayout_glyphRuns(self: pointer, ): struct_miqt_array {.importc: "QTextLayout_glyphRuns".}
proc fcQTextLayout_setFlags(self: pointer, flags: cint): void {.importc: "QTextLayout_setFlags".}
proc fcQTextLayout_nextCursorPosition2(self: pointer, oldPos: cint, mode: cint): cint {.importc: "QTextLayout_nextCursorPosition2".}
proc fcQTextLayout_previousCursorPosition2(self: pointer, oldPos: cint, mode: cint): cint {.importc: "QTextLayout_previousCursorPosition2".}
proc fcQTextLayout_draw3(self: pointer, p: pointer, pos: pointer, selections: struct_miqt_array): void {.importc: "QTextLayout_draw3".}
proc fcQTextLayout_draw4(self: pointer, p: pointer, pos: pointer, selections: struct_miqt_array, clip: pointer): void {.importc: "QTextLayout_draw4".}
proc fcQTextLayout_glyphRuns1(self: pointer, fromVal: cint): struct_miqt_array {.importc: "QTextLayout_glyphRuns1".}
proc fcQTextLayout_glyphRuns2(self: pointer, fromVal: cint, length: cint): struct_miqt_array {.importc: "QTextLayout_glyphRuns2".}
proc fcQTextLayout_delete(self: pointer) {.importc: "QTextLayout_delete".}
proc fcQTextLine_new(): ptr cQTextLine {.importc: "QTextLine_new".}
proc fcQTextLine_isValid(self: pointer, ): bool {.importc: "QTextLine_isValid".}
proc fcQTextLine_rect(self: pointer, ): pointer {.importc: "QTextLine_rect".}
proc fcQTextLine_x(self: pointer, ): float64 {.importc: "QTextLine_x".}
proc fcQTextLine_y(self: pointer, ): float64 {.importc: "QTextLine_y".}
proc fcQTextLine_width(self: pointer, ): float64 {.importc: "QTextLine_width".}
proc fcQTextLine_ascent(self: pointer, ): float64 {.importc: "QTextLine_ascent".}
proc fcQTextLine_descent(self: pointer, ): float64 {.importc: "QTextLine_descent".}
proc fcQTextLine_height(self: pointer, ): float64 {.importc: "QTextLine_height".}
proc fcQTextLine_leading(self: pointer, ): float64 {.importc: "QTextLine_leading".}
proc fcQTextLine_setLeadingIncluded(self: pointer, included: bool): void {.importc: "QTextLine_setLeadingIncluded".}
proc fcQTextLine_leadingIncluded(self: pointer, ): bool {.importc: "QTextLine_leadingIncluded".}
proc fcQTextLine_naturalTextWidth(self: pointer, ): float64 {.importc: "QTextLine_naturalTextWidth".}
proc fcQTextLine_horizontalAdvance(self: pointer, ): float64 {.importc: "QTextLine_horizontalAdvance".}
proc fcQTextLine_naturalTextRect(self: pointer, ): pointer {.importc: "QTextLine_naturalTextRect".}
proc fcQTextLine_cursorToX(self: pointer, cursorPos: ptr cint): float64 {.importc: "QTextLine_cursorToX".}
proc fcQTextLine_cursorToXWithCursorPos(self: pointer, cursorPos: cint): float64 {.importc: "QTextLine_cursorToXWithCursorPos".}
proc fcQTextLine_xToCursor(self: pointer, x: float64): cint {.importc: "QTextLine_xToCursor".}
proc fcQTextLine_setLineWidth(self: pointer, width: float64): void {.importc: "QTextLine_setLineWidth".}
proc fcQTextLine_setNumColumns(self: pointer, columns: cint): void {.importc: "QTextLine_setNumColumns".}
proc fcQTextLine_setNumColumns2(self: pointer, columns: cint, alignmentWidth: float64): void {.importc: "QTextLine_setNumColumns2".}
proc fcQTextLine_setPosition(self: pointer, pos: pointer): void {.importc: "QTextLine_setPosition".}
proc fcQTextLine_position(self: pointer, ): pointer {.importc: "QTextLine_position".}
proc fcQTextLine_textStart(self: pointer, ): cint {.importc: "QTextLine_textStart".}
proc fcQTextLine_textLength(self: pointer, ): cint {.importc: "QTextLine_textLength".}
proc fcQTextLine_lineNumber(self: pointer, ): cint {.importc: "QTextLine_lineNumber".}
proc fcQTextLine_draw(self: pointer, painter: pointer, position: pointer): void {.importc: "QTextLine_draw".}
proc fcQTextLine_glyphRuns(self: pointer, ): struct_miqt_array {.importc: "QTextLine_glyphRuns".}
proc fcQTextLine_cursorToX2(self: pointer, cursorPos: ptr cint, edge: cint): float64 {.importc: "QTextLine_cursorToX2".}
proc fcQTextLine_cursorToX22(self: pointer, cursorPos: cint, edge: cint): float64 {.importc: "QTextLine_cursorToX22".}
proc fcQTextLine_xToCursor2(self: pointer, x: float64, param2: cint): cint {.importc: "QTextLine_xToCursor2".}
proc fcQTextLine_glyphRuns1(self: pointer, fromVal: cint): struct_miqt_array {.importc: "QTextLine_glyphRuns1".}
proc fcQTextLine_glyphRuns2(self: pointer, fromVal: cint, length: cint): struct_miqt_array {.importc: "QTextLine_glyphRuns2".}
proc fcQTextLine_delete(self: pointer) {.importc: "QTextLine_delete".}
proc fcQTextLayoutFormatRange_new(param1: pointer): ptr cQTextLayoutFormatRange {.importc: "QTextLayout__FormatRange_new".}
proc fcQTextLayoutFormatRange_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTextLayout__FormatRange_operatorAssign".}
proc fcQTextLayoutFormatRange_delete(self: pointer) {.importc: "QTextLayout__FormatRange_delete".}


func init*(T: type QTextInlineObject, h: ptr cQTextInlineObject): QTextInlineObject =
  T(h: h)
proc create*(T: type QTextInlineObject, ): QTextInlineObject =

  QTextInlineObject.init(fcQTextInlineObject_new())
proc isValid*(self: QTextInlineObject, ): bool =

  fcQTextInlineObject_isValid(self.h)

proc rect*(self: QTextInlineObject, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQTextInlineObject_rect(self.h))

proc width*(self: QTextInlineObject, ): float64 =

  fcQTextInlineObject_width(self.h)

proc ascent*(self: QTextInlineObject, ): float64 =

  fcQTextInlineObject_ascent(self.h)

proc descent*(self: QTextInlineObject, ): float64 =

  fcQTextInlineObject_descent(self.h)

proc height*(self: QTextInlineObject, ): float64 =

  fcQTextInlineObject_height(self.h)

proc textDirection*(self: QTextInlineObject, ): gen_qnamespace.LayoutDirection =

  gen_qnamespace.LayoutDirection(fcQTextInlineObject_textDirection(self.h))

proc setWidth*(self: QTextInlineObject, w: float64): void =

  fcQTextInlineObject_setWidth(self.h, w)

proc setAscent*(self: QTextInlineObject, a: float64): void =

  fcQTextInlineObject_setAscent(self.h, a)

proc setDescent*(self: QTextInlineObject, d: float64): void =

  fcQTextInlineObject_setDescent(self.h, d)

proc textPosition*(self: QTextInlineObject, ): cint =

  fcQTextInlineObject_textPosition(self.h)

proc formatIndex*(self: QTextInlineObject, ): cint =

  fcQTextInlineObject_formatIndex(self.h)

proc format*(self: QTextInlineObject, ): gen_qtextformat.QTextFormat =

  gen_qtextformat.QTextFormat(h: fcQTextInlineObject_format(self.h))

proc delete*(self: QTextInlineObject) =
  fcQTextInlineObject_delete(self.h)

func init*(T: type QTextLayout, h: ptr cQTextLayout): QTextLayout =
  T(h: h)
proc create*(T: type QTextLayout, ): QTextLayout =

  QTextLayout.init(fcQTextLayout_new())
proc create*(T: type QTextLayout, text: string): QTextLayout =

  QTextLayout.init(fcQTextLayout_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QTextLayout, text: string, font: gen_qfont.QFont): QTextLayout =

  QTextLayout.init(fcQTextLayout_new3(struct_miqt_string(data: text, len: csize_t(len(text))), font.h))
proc create*(T: type QTextLayout, b: gen_qtextobject.QTextBlock): QTextLayout =

  QTextLayout.init(fcQTextLayout_new4(b.h))
proc create*(T: type QTextLayout, text: string, font: gen_qfont.QFont, paintdevice: gen_qpaintdevice.QPaintDevice): QTextLayout =

  QTextLayout.init(fcQTextLayout_new5(struct_miqt_string(data: text, len: csize_t(len(text))), font.h, paintdevice.h))
proc setFont*(self: QTextLayout, f: gen_qfont.QFont): void =

  fcQTextLayout_setFont(self.h, f.h)

proc font*(self: QTextLayout, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQTextLayout_font(self.h))

proc setRawFont*(self: QTextLayout, rawFont: gen_qrawfont.QRawFont): void =

  fcQTextLayout_setRawFont(self.h, rawFont.h)

proc setText*(self: QTextLayout, string: string): void =

  fcQTextLayout_setText(self.h, struct_miqt_string(data: string, len: csize_t(len(string))))

proc text*(self: QTextLayout, ): string =

  let v_ms = fcQTextLayout_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTextOption*(self: QTextLayout, option: gen_qtextoption.QTextOption): void =

  fcQTextLayout_setTextOption(self.h, option.h)

proc textOption*(self: QTextLayout, ): gen_qtextoption.QTextOption =

  gen_qtextoption.QTextOption(h: fcQTextLayout_textOption(self.h))

proc setPreeditArea*(self: QTextLayout, position: cint, text: string): void =

  fcQTextLayout_setPreeditArea(self.h, position, struct_miqt_string(data: text, len: csize_t(len(text))))

proc preeditAreaPosition*(self: QTextLayout, ): cint =

  fcQTextLayout_preeditAreaPosition(self.h)

proc preeditAreaText*(self: QTextLayout, ): string =

  let v_ms = fcQTextLayout_preeditAreaText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFormats*(self: QTextLayout, overrides: seq[QTextLayoutFormatRange]): void =

  var overrides_CArray = newSeq[pointer](len(overrides))
  for i in 0..<len(overrides):
    overrides_CArray[i] = overrides[i].h

  fcQTextLayout_setFormats(self.h, struct_miqt_array(len: csize_t(len(overrides)), data: if len(overrides) == 0: nil else: addr(overrides_CArray[0])))

proc formats*(self: QTextLayout, ): seq[QTextLayoutFormatRange] =

  var v_ma = fcQTextLayout_formats(self.h)
  var vx_ret = newSeq[QTextLayoutFormatRange](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTextLayoutFormatRange(h: v_outCast[i])
  vx_ret

proc clearFormats*(self: QTextLayout, ): void =

  fcQTextLayout_clearFormats(self.h)

proc setCacheEnabled*(self: QTextLayout, enable: bool): void =

  fcQTextLayout_setCacheEnabled(self.h, enable)

proc cacheEnabled*(self: QTextLayout, ): bool =

  fcQTextLayout_cacheEnabled(self.h)

proc setCursorMoveStyle*(self: QTextLayout, style: gen_qnamespace.CursorMoveStyle): void =

  fcQTextLayout_setCursorMoveStyle(self.h, cint(style))

proc cursorMoveStyle*(self: QTextLayout, ): gen_qnamespace.CursorMoveStyle =

  gen_qnamespace.CursorMoveStyle(fcQTextLayout_cursorMoveStyle(self.h))

proc beginLayout*(self: QTextLayout, ): void =

  fcQTextLayout_beginLayout(self.h)

proc endLayout*(self: QTextLayout, ): void =

  fcQTextLayout_endLayout(self.h)

proc clearLayout*(self: QTextLayout, ): void =

  fcQTextLayout_clearLayout(self.h)

proc createLine*(self: QTextLayout, ): QTextLine =

  QTextLine(h: fcQTextLayout_createLine(self.h))

proc lineCount*(self: QTextLayout, ): cint =

  fcQTextLayout_lineCount(self.h)

proc lineAt*(self: QTextLayout, i: cint): QTextLine =

  QTextLine(h: fcQTextLayout_lineAt(self.h, i))

proc lineForTextPosition*(self: QTextLayout, pos: cint): QTextLine =

  QTextLine(h: fcQTextLayout_lineForTextPosition(self.h, pos))

proc isValidCursorPosition*(self: QTextLayout, pos: cint): bool =

  fcQTextLayout_isValidCursorPosition(self.h, pos)

proc nextCursorPosition*(self: QTextLayout, oldPos: cint): cint =

  fcQTextLayout_nextCursorPosition(self.h, oldPos)

proc previousCursorPosition*(self: QTextLayout, oldPos: cint): cint =

  fcQTextLayout_previousCursorPosition(self.h, oldPos)

proc leftCursorPosition*(self: QTextLayout, oldPos: cint): cint =

  fcQTextLayout_leftCursorPosition(self.h, oldPos)

proc rightCursorPosition*(self: QTextLayout, oldPos: cint): cint =

  fcQTextLayout_rightCursorPosition(self.h, oldPos)

proc draw*(self: QTextLayout, p: gen_qpainter.QPainter, pos: gen_qpoint.QPointF): void =

  fcQTextLayout_draw(self.h, p.h, pos.h)

proc drawCursor*(self: QTextLayout, p: gen_qpainter.QPainter, pos: gen_qpoint.QPointF, cursorPosition: cint): void =

  fcQTextLayout_drawCursor(self.h, p.h, pos.h, cursorPosition)

proc drawCursor2*(self: QTextLayout, p: gen_qpainter.QPainter, pos: gen_qpoint.QPointF, cursorPosition: cint, width: cint): void =

  fcQTextLayout_drawCursor2(self.h, p.h, pos.h, cursorPosition, width)

proc position*(self: QTextLayout, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTextLayout_position(self.h))

proc setPosition*(self: QTextLayout, p: gen_qpoint.QPointF): void =

  fcQTextLayout_setPosition(self.h, p.h)

proc boundingRect*(self: QTextLayout, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQTextLayout_boundingRect(self.h))

proc minimumWidth*(self: QTextLayout, ): float64 =

  fcQTextLayout_minimumWidth(self.h)

proc maximumWidth*(self: QTextLayout, ): float64 =

  fcQTextLayout_maximumWidth(self.h)

proc glyphRuns*(self: QTextLayout, ): seq[gen_qglyphrun.QGlyphRun] =

  var v_ma = fcQTextLayout_glyphRuns(self.h)
  var vx_ret = newSeq[gen_qglyphrun.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun.QGlyphRun(h: v_outCast[i])
  vx_ret

proc setFlags*(self: QTextLayout, flags: cint): void =

  fcQTextLayout_setFlags(self.h, flags)

proc nextCursorPosition2*(self: QTextLayout, oldPos: cint, mode: QTextLayoutCursorMode): cint =

  fcQTextLayout_nextCursorPosition2(self.h, oldPos, cint(mode))

proc previousCursorPosition2*(self: QTextLayout, oldPos: cint, mode: QTextLayoutCursorMode): cint =

  fcQTextLayout_previousCursorPosition2(self.h, oldPos, cint(mode))

proc draw3*(self: QTextLayout, p: gen_qpainter.QPainter, pos: gen_qpoint.QPointF, selections: seq[QTextLayoutFormatRange]): void =

  var selections_CArray = newSeq[pointer](len(selections))
  for i in 0..<len(selections):
    selections_CArray[i] = selections[i].h

  fcQTextLayout_draw3(self.h, p.h, pos.h, struct_miqt_array(len: csize_t(len(selections)), data: if len(selections) == 0: nil else: addr(selections_CArray[0])))

proc draw4*(self: QTextLayout, p: gen_qpainter.QPainter, pos: gen_qpoint.QPointF, selections: seq[QTextLayoutFormatRange], clip: gen_qrect.QRectF): void =

  var selections_CArray = newSeq[pointer](len(selections))
  for i in 0..<len(selections):
    selections_CArray[i] = selections[i].h

  fcQTextLayout_draw4(self.h, p.h, pos.h, struct_miqt_array(len: csize_t(len(selections)), data: if len(selections) == 0: nil else: addr(selections_CArray[0])), clip.h)

proc glyphRuns1*(self: QTextLayout, fromVal: cint): seq[gen_qglyphrun.QGlyphRun] =

  var v_ma = fcQTextLayout_glyphRuns1(self.h, fromVal)
  var vx_ret = newSeq[gen_qglyphrun.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun.QGlyphRun(h: v_outCast[i])
  vx_ret

proc glyphRuns2*(self: QTextLayout, fromVal: cint, length: cint): seq[gen_qglyphrun.QGlyphRun] =

  var v_ma = fcQTextLayout_glyphRuns2(self.h, fromVal, length)
  var vx_ret = newSeq[gen_qglyphrun.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun.QGlyphRun(h: v_outCast[i])
  vx_ret

proc delete*(self: QTextLayout) =
  fcQTextLayout_delete(self.h)

func init*(T: type QTextLine, h: ptr cQTextLine): QTextLine =
  T(h: h)
proc create*(T: type QTextLine, ): QTextLine =

  QTextLine.init(fcQTextLine_new())
proc isValid*(self: QTextLine, ): bool =

  fcQTextLine_isValid(self.h)

proc rect*(self: QTextLine, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQTextLine_rect(self.h))

proc x*(self: QTextLine, ): float64 =

  fcQTextLine_x(self.h)

proc y*(self: QTextLine, ): float64 =

  fcQTextLine_y(self.h)

proc width*(self: QTextLine, ): float64 =

  fcQTextLine_width(self.h)

proc ascent*(self: QTextLine, ): float64 =

  fcQTextLine_ascent(self.h)

proc descent*(self: QTextLine, ): float64 =

  fcQTextLine_descent(self.h)

proc height*(self: QTextLine, ): float64 =

  fcQTextLine_height(self.h)

proc leading*(self: QTextLine, ): float64 =

  fcQTextLine_leading(self.h)

proc setLeadingIncluded*(self: QTextLine, included: bool): void =

  fcQTextLine_setLeadingIncluded(self.h, included)

proc leadingIncluded*(self: QTextLine, ): bool =

  fcQTextLine_leadingIncluded(self.h)

proc naturalTextWidth*(self: QTextLine, ): float64 =

  fcQTextLine_naturalTextWidth(self.h)

proc horizontalAdvance*(self: QTextLine, ): float64 =

  fcQTextLine_horizontalAdvance(self.h)

proc naturalTextRect*(self: QTextLine, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQTextLine_naturalTextRect(self.h))

proc cursorToX*(self: QTextLine, cursorPos: ptr cint): float64 =

  fcQTextLine_cursorToX(self.h, cursorPos)

proc cursorToXWithCursorPos*(self: QTextLine, cursorPos: cint): float64 =

  fcQTextLine_cursorToXWithCursorPos(self.h, cursorPos)

proc xToCursor*(self: QTextLine, x: float64): cint =

  fcQTextLine_xToCursor(self.h, x)

proc setLineWidth*(self: QTextLine, width: float64): void =

  fcQTextLine_setLineWidth(self.h, width)

proc setNumColumns*(self: QTextLine, columns: cint): void =

  fcQTextLine_setNumColumns(self.h, columns)

proc setNumColumns2*(self: QTextLine, columns: cint, alignmentWidth: float64): void =

  fcQTextLine_setNumColumns2(self.h, columns, alignmentWidth)

proc setPosition*(self: QTextLine, pos: gen_qpoint.QPointF): void =

  fcQTextLine_setPosition(self.h, pos.h)

proc position*(self: QTextLine, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTextLine_position(self.h))

proc textStart*(self: QTextLine, ): cint =

  fcQTextLine_textStart(self.h)

proc textLength*(self: QTextLine, ): cint =

  fcQTextLine_textLength(self.h)

proc lineNumber*(self: QTextLine, ): cint =

  fcQTextLine_lineNumber(self.h)

proc draw*(self: QTextLine, painter: gen_qpainter.QPainter, position: gen_qpoint.QPointF): void =

  fcQTextLine_draw(self.h, painter.h, position.h)

proc glyphRuns*(self: QTextLine, ): seq[gen_qglyphrun.QGlyphRun] =

  var v_ma = fcQTextLine_glyphRuns(self.h)
  var vx_ret = newSeq[gen_qglyphrun.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun.QGlyphRun(h: v_outCast[i])
  vx_ret

proc cursorToX2*(self: QTextLine, cursorPos: ptr cint, edge: QTextLineEdge): float64 =

  fcQTextLine_cursorToX2(self.h, cursorPos, cint(edge))

proc cursorToX22*(self: QTextLine, cursorPos: cint, edge: QTextLineEdge): float64 =

  fcQTextLine_cursorToX22(self.h, cursorPos, cint(edge))

proc xToCursor2*(self: QTextLine, x: float64, param2: QTextLineCursorPosition): cint =

  fcQTextLine_xToCursor2(self.h, x, cint(param2))

proc glyphRuns1*(self: QTextLine, fromVal: cint): seq[gen_qglyphrun.QGlyphRun] =

  var v_ma = fcQTextLine_glyphRuns1(self.h, fromVal)
  var vx_ret = newSeq[gen_qglyphrun.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun.QGlyphRun(h: v_outCast[i])
  vx_ret

proc glyphRuns2*(self: QTextLine, fromVal: cint, length: cint): seq[gen_qglyphrun.QGlyphRun] =

  var v_ma = fcQTextLine_glyphRuns2(self.h, fromVal, length)
  var vx_ret = newSeq[gen_qglyphrun.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun.QGlyphRun(h: v_outCast[i])
  vx_ret

proc delete*(self: QTextLine) =
  fcQTextLine_delete(self.h)

func init*(T: type QTextLayoutFormatRange, h: ptr cQTextLayoutFormatRange): QTextLayoutFormatRange =
  T(h: h)
proc create*(T: type QTextLayoutFormatRange, param1: QTextLayoutFormatRange): QTextLayoutFormatRange =

  QTextLayoutFormatRange.init(fcQTextLayoutFormatRange_new(param1.h))
proc operatorAssign*(self: QTextLayoutFormatRange, param1: QTextLayoutFormatRange): void =

  fcQTextLayoutFormatRange_operatorAssign(self.h, param1.h)

proc delete*(self: QTextLayoutFormatRange) =
  fcQTextLayoutFormatRange_delete(self.h)
