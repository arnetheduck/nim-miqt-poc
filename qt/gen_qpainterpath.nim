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
{.compile("gen_qpainterpath.cpp", cflags).}


type QPainterPathElementType* = cint
const
  QPainterPathMoveToElement* = 0
  QPainterPathLineToElement* = 1
  QPainterPathCurveToElement* = 2
  QPainterPathCurveToDataElement* = 3



import gen_qpainterpath_types
export gen_qpainterpath_types

import
  gen_qfont,
  gen_qnamespace,
  gen_qpen,
  gen_qpoint,
  gen_qrect,
  gen_qregion
export
  gen_qfont,
  gen_qnamespace,
  gen_qpen,
  gen_qpoint,
  gen_qrect,
  gen_qregion

type cQPainterPath*{.exportc: "QPainterPath", incompleteStruct.} = object
type cQPainterPathStroker*{.exportc: "QPainterPathStroker", incompleteStruct.} = object
type cQPainterPathElement*{.exportc: "QPainterPath__Element", incompleteStruct.} = object

proc fcQPainterPath_new(): ptr cQPainterPath {.importc: "QPainterPath_new".}
proc fcQPainterPath_new2(startPoint: pointer): ptr cQPainterPath {.importc: "QPainterPath_new2".}
proc fcQPainterPath_new3(other: pointer): ptr cQPainterPath {.importc: "QPainterPath_new3".}
proc fcQPainterPath_operatorAssign(self: pointer, other: pointer): void {.importc: "QPainterPath_operatorAssign".}
proc fcQPainterPath_swap(self: pointer, other: pointer): void {.importc: "QPainterPath_swap".}
proc fcQPainterPath_clear(self: pointer, ): void {.importc: "QPainterPath_clear".}
proc fcQPainterPath_reserve(self: pointer, size: cint): void {.importc: "QPainterPath_reserve".}
proc fcQPainterPath_capacity(self: pointer, ): cint {.importc: "QPainterPath_capacity".}
proc fcQPainterPath_closeSubpath(self: pointer, ): void {.importc: "QPainterPath_closeSubpath".}
proc fcQPainterPath_moveTo(self: pointer, p: pointer): void {.importc: "QPainterPath_moveTo".}
proc fcQPainterPath_moveTo2(self: pointer, x: float64, y: float64): void {.importc: "QPainterPath_moveTo2".}
proc fcQPainterPath_lineTo(self: pointer, p: pointer): void {.importc: "QPainterPath_lineTo".}
proc fcQPainterPath_lineTo2(self: pointer, x: float64, y: float64): void {.importc: "QPainterPath_lineTo2".}
proc fcQPainterPath_arcMoveTo(self: pointer, rect: pointer, angle: float64): void {.importc: "QPainterPath_arcMoveTo".}
proc fcQPainterPath_arcMoveTo2(self: pointer, x: float64, y: float64, w: float64, h: float64, angle: float64): void {.importc: "QPainterPath_arcMoveTo2".}
proc fcQPainterPath_arcTo(self: pointer, rect: pointer, startAngle: float64, arcLength: float64): void {.importc: "QPainterPath_arcTo".}
proc fcQPainterPath_arcTo2(self: pointer, x: float64, y: float64, w: float64, h: float64, startAngle: float64, arcLength: float64): void {.importc: "QPainterPath_arcTo2".}
proc fcQPainterPath_cubicTo(self: pointer, ctrlPt1: pointer, ctrlPt2: pointer, endPt: pointer): void {.importc: "QPainterPath_cubicTo".}
proc fcQPainterPath_cubicTo2(self: pointer, ctrlPt1x: float64, ctrlPt1y: float64, ctrlPt2x: float64, ctrlPt2y: float64, endPtx: float64, endPty: float64): void {.importc: "QPainterPath_cubicTo2".}
proc fcQPainterPath_quadTo(self: pointer, ctrlPt: pointer, endPt: pointer): void {.importc: "QPainterPath_quadTo".}
proc fcQPainterPath_quadTo2(self: pointer, ctrlPtx: float64, ctrlPty: float64, endPtx: float64, endPty: float64): void {.importc: "QPainterPath_quadTo2".}
proc fcQPainterPath_currentPosition(self: pointer, ): pointer {.importc: "QPainterPath_currentPosition".}
proc fcQPainterPath_addRect(self: pointer, rect: pointer): void {.importc: "QPainterPath_addRect".}
proc fcQPainterPath_addRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QPainterPath_addRect2".}
proc fcQPainterPath_addEllipse(self: pointer, rect: pointer): void {.importc: "QPainterPath_addEllipse".}
proc fcQPainterPath_addEllipse2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QPainterPath_addEllipse2".}
proc fcQPainterPath_addEllipse3(self: pointer, center: pointer, rx: float64, ry: float64): void {.importc: "QPainterPath_addEllipse3".}
proc fcQPainterPath_addText(self: pointer, point: pointer, f: pointer, text: struct_miqt_string): void {.importc: "QPainterPath_addText".}
proc fcQPainterPath_addText2(self: pointer, x: float64, y: float64, f: pointer, text: struct_miqt_string): void {.importc: "QPainterPath_addText2".}
proc fcQPainterPath_addPath(self: pointer, path: pointer): void {.importc: "QPainterPath_addPath".}
proc fcQPainterPath_addRegion(self: pointer, region: pointer): void {.importc: "QPainterPath_addRegion".}
proc fcQPainterPath_addRoundedRect(self: pointer, rect: pointer, xRadius: float64, yRadius: float64): void {.importc: "QPainterPath_addRoundedRect".}
proc fcQPainterPath_addRoundedRect2(self: pointer, x: float64, y: float64, w: float64, h: float64, xRadius: float64, yRadius: float64): void {.importc: "QPainterPath_addRoundedRect2".}
proc fcQPainterPath_addRoundRect(self: pointer, rect: pointer, xRnd: cint, yRnd: cint): void {.importc: "QPainterPath_addRoundRect".}
proc fcQPainterPath_addRoundRect2(self: pointer, x: float64, y: float64, w: float64, h: float64, xRnd: cint, yRnd: cint): void {.importc: "QPainterPath_addRoundRect2".}
proc fcQPainterPath_addRoundRect3(self: pointer, rect: pointer, roundness: cint): void {.importc: "QPainterPath_addRoundRect3".}
proc fcQPainterPath_addRoundRect4(self: pointer, x: float64, y: float64, w: float64, h: float64, roundness: cint): void {.importc: "QPainterPath_addRoundRect4".}
proc fcQPainterPath_connectPath(self: pointer, path: pointer): void {.importc: "QPainterPath_connectPath".}
proc fcQPainterPath_contains(self: pointer, pt: pointer): bool {.importc: "QPainterPath_contains".}
proc fcQPainterPath_containsWithRect(self: pointer, rect: pointer): bool {.importc: "QPainterPath_containsWithRect".}
proc fcQPainterPath_intersects(self: pointer, rect: pointer): bool {.importc: "QPainterPath_intersects".}
proc fcQPainterPath_translate(self: pointer, dx: float64, dy: float64): void {.importc: "QPainterPath_translate".}
proc fcQPainterPath_translateWithOffset(self: pointer, offset: pointer): void {.importc: "QPainterPath_translateWithOffset".}
proc fcQPainterPath_translated(self: pointer, dx: float64, dy: float64): pointer {.importc: "QPainterPath_translated".}
proc fcQPainterPath_translatedWithOffset(self: pointer, offset: pointer): pointer {.importc: "QPainterPath_translatedWithOffset".}
proc fcQPainterPath_boundingRect(self: pointer, ): pointer {.importc: "QPainterPath_boundingRect".}
proc fcQPainterPath_controlPointRect(self: pointer, ): pointer {.importc: "QPainterPath_controlPointRect".}
proc fcQPainterPath_fillRule(self: pointer, ): cint {.importc: "QPainterPath_fillRule".}
proc fcQPainterPath_setFillRule(self: pointer, fillRule: cint): void {.importc: "QPainterPath_setFillRule".}
proc fcQPainterPath_isEmpty(self: pointer, ): bool {.importc: "QPainterPath_isEmpty".}
proc fcQPainterPath_toReversed(self: pointer, ): pointer {.importc: "QPainterPath_toReversed".}
proc fcQPainterPath_elementCount(self: pointer, ): cint {.importc: "QPainterPath_elementCount".}
proc fcQPainterPath_elementAt(self: pointer, i: cint): pointer {.importc: "QPainterPath_elementAt".}
proc fcQPainterPath_setElementPositionAt(self: pointer, i: cint, x: float64, y: float64): void {.importc: "QPainterPath_setElementPositionAt".}
proc fcQPainterPath_length(self: pointer, ): float64 {.importc: "QPainterPath_length".}
proc fcQPainterPath_percentAtLength(self: pointer, t: float64): float64 {.importc: "QPainterPath_percentAtLength".}
proc fcQPainterPath_pointAtPercent(self: pointer, t: float64): pointer {.importc: "QPainterPath_pointAtPercent".}
proc fcQPainterPath_angleAtPercent(self: pointer, t: float64): float64 {.importc: "QPainterPath_angleAtPercent".}
proc fcQPainterPath_slopeAtPercent(self: pointer, t: float64): float64 {.importc: "QPainterPath_slopeAtPercent".}
proc fcQPainterPath_intersectsWithQPainterPath(self: pointer, p: pointer): bool {.importc: "QPainterPath_intersectsWithQPainterPath".}
proc fcQPainterPath_containsWithQPainterPath(self: pointer, p: pointer): bool {.importc: "QPainterPath_containsWithQPainterPath".}
proc fcQPainterPath_united(self: pointer, r: pointer): pointer {.importc: "QPainterPath_united".}
proc fcQPainterPath_intersected(self: pointer, r: pointer): pointer {.importc: "QPainterPath_intersected".}
proc fcQPainterPath_subtracted(self: pointer, r: pointer): pointer {.importc: "QPainterPath_subtracted".}
proc fcQPainterPath_subtractedInverted(self: pointer, r: pointer): pointer {.importc: "QPainterPath_subtractedInverted".}
proc fcQPainterPath_simplified(self: pointer, ): pointer {.importc: "QPainterPath_simplified".}
proc fcQPainterPath_operatorEqual(self: pointer, other: pointer): bool {.importc: "QPainterPath_operatorEqual".}
proc fcQPainterPath_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QPainterPath_operatorNotEqual".}
proc fcQPainterPath_operatorBitwiseAnd(self: pointer, other: pointer): pointer {.importc: "QPainterPath_operatorBitwiseAnd".}
proc fcQPainterPath_operatorBitwiseOr(self: pointer, other: pointer): pointer {.importc: "QPainterPath_operatorBitwiseOr".}
proc fcQPainterPath_operatorPlus(self: pointer, other: pointer): pointer {.importc: "QPainterPath_operatorPlus".}
proc fcQPainterPath_operatorMinus(self: pointer, other: pointer): pointer {.importc: "QPainterPath_operatorMinus".}
proc fcQPainterPath_operatorBitwiseAndAssign(self: pointer, other: pointer): void {.importc: "QPainterPath_operatorBitwiseAndAssign".}
proc fcQPainterPath_operatorBitwiseOrAssign(self: pointer, other: pointer): void {.importc: "QPainterPath_operatorBitwiseOrAssign".}
proc fcQPainterPath_operatorPlusAssign(self: pointer, other: pointer): pointer {.importc: "QPainterPath_operatorPlusAssign".}
proc fcQPainterPath_operatorMinusAssign(self: pointer, other: pointer): pointer {.importc: "QPainterPath_operatorMinusAssign".}
proc fcQPainterPath_addRoundedRect4(self: pointer, rect: pointer, xRadius: float64, yRadius: float64, mode: cint): void {.importc: "QPainterPath_addRoundedRect4".}
proc fcQPainterPath_addRoundedRect7(self: pointer, x: float64, y: float64, w: float64, h: float64, xRadius: float64, yRadius: float64, mode: cint): void {.importc: "QPainterPath_addRoundedRect7".}
proc fcQPainterPath_delete(self: pointer) {.importc: "QPainterPath_delete".}
proc fcQPainterPathStroker_new(): ptr cQPainterPathStroker {.importc: "QPainterPathStroker_new".}
proc fcQPainterPathStroker_new2(pen: pointer): ptr cQPainterPathStroker {.importc: "QPainterPathStroker_new2".}
proc fcQPainterPathStroker_setWidth(self: pointer, width: float64): void {.importc: "QPainterPathStroker_setWidth".}
proc fcQPainterPathStroker_width(self: pointer, ): float64 {.importc: "QPainterPathStroker_width".}
proc fcQPainterPathStroker_setCapStyle(self: pointer, style: cint): void {.importc: "QPainterPathStroker_setCapStyle".}
proc fcQPainterPathStroker_capStyle(self: pointer, ): cint {.importc: "QPainterPathStroker_capStyle".}
proc fcQPainterPathStroker_setJoinStyle(self: pointer, style: cint): void {.importc: "QPainterPathStroker_setJoinStyle".}
proc fcQPainterPathStroker_joinStyle(self: pointer, ): cint {.importc: "QPainterPathStroker_joinStyle".}
proc fcQPainterPathStroker_setMiterLimit(self: pointer, length: float64): void {.importc: "QPainterPathStroker_setMiterLimit".}
proc fcQPainterPathStroker_miterLimit(self: pointer, ): float64 {.importc: "QPainterPathStroker_miterLimit".}
proc fcQPainterPathStroker_setCurveThreshold(self: pointer, threshold: float64): void {.importc: "QPainterPathStroker_setCurveThreshold".}
proc fcQPainterPathStroker_curveThreshold(self: pointer, ): float64 {.importc: "QPainterPathStroker_curveThreshold".}
proc fcQPainterPathStroker_setDashPattern(self: pointer, dashPattern: cint): void {.importc: "QPainterPathStroker_setDashPattern".}
proc fcQPainterPathStroker_setDashPatternWithDashPattern(self: pointer, dashPattern: struct_miqt_array): void {.importc: "QPainterPathStroker_setDashPatternWithDashPattern".}
proc fcQPainterPathStroker_dashPattern(self: pointer, ): struct_miqt_array {.importc: "QPainterPathStroker_dashPattern".}
proc fcQPainterPathStroker_setDashOffset(self: pointer, offset: float64): void {.importc: "QPainterPathStroker_setDashOffset".}
proc fcQPainterPathStroker_dashOffset(self: pointer, ): float64 {.importc: "QPainterPathStroker_dashOffset".}
proc fcQPainterPathStroker_createStroke(self: pointer, path: pointer): pointer {.importc: "QPainterPathStroker_createStroke".}
proc fcQPainterPathStroker_delete(self: pointer) {.importc: "QPainterPathStroker_delete".}
proc fcQPainterPathElement_isMoveTo(self: pointer, ): bool {.importc: "QPainterPath__Element_isMoveTo".}
proc fcQPainterPathElement_isLineTo(self: pointer, ): bool {.importc: "QPainterPath__Element_isLineTo".}
proc fcQPainterPathElement_isCurveTo(self: pointer, ): bool {.importc: "QPainterPath__Element_isCurveTo".}
proc fcQPainterPathElement_ToQPointF(self: pointer, ): pointer {.importc: "QPainterPath__Element_ToQPointF".}
proc fcQPainterPathElement_operatorEqual(self: pointer, e: pointer): bool {.importc: "QPainterPath__Element_operatorEqual".}
proc fcQPainterPathElement_operatorNotEqual(self: pointer, e: pointer): bool {.importc: "QPainterPath__Element_operatorNotEqual".}
proc fcQPainterPathElement_delete(self: pointer) {.importc: "QPainterPath__Element_delete".}


func init*(T: type QPainterPath, h: ptr cQPainterPath): QPainterPath =
  T(h: h)
proc create*(T: type QPainterPath, ): QPainterPath =

  QPainterPath.init(fcQPainterPath_new())
proc create*(T: type QPainterPath, startPoint: gen_qpoint.QPointF): QPainterPath =

  QPainterPath.init(fcQPainterPath_new2(startPoint.h))
proc create2*(T: type QPainterPath, other: QPainterPath): QPainterPath =

  QPainterPath.init(fcQPainterPath_new3(other.h))
proc operatorAssign*(self: QPainterPath, other: QPainterPath): void =

  fcQPainterPath_operatorAssign(self.h, other.h)

proc swap*(self: QPainterPath, other: QPainterPath): void =

  fcQPainterPath_swap(self.h, other.h)

proc clear*(self: QPainterPath, ): void =

  fcQPainterPath_clear(self.h)

proc reserve*(self: QPainterPath, size: cint): void =

  fcQPainterPath_reserve(self.h, size)

proc capacity*(self: QPainterPath, ): cint =

  fcQPainterPath_capacity(self.h)

proc closeSubpath*(self: QPainterPath, ): void =

  fcQPainterPath_closeSubpath(self.h)

proc moveTo*(self: QPainterPath, p: gen_qpoint.QPointF): void =

  fcQPainterPath_moveTo(self.h, p.h)

proc moveTo2*(self: QPainterPath, x: float64, y: float64): void =

  fcQPainterPath_moveTo2(self.h, x, y)

proc lineTo*(self: QPainterPath, p: gen_qpoint.QPointF): void =

  fcQPainterPath_lineTo(self.h, p.h)

proc lineTo2*(self: QPainterPath, x: float64, y: float64): void =

  fcQPainterPath_lineTo2(self.h, x, y)

proc arcMoveTo*(self: QPainterPath, rect: gen_qrect.QRectF, angle: float64): void =

  fcQPainterPath_arcMoveTo(self.h, rect.h, angle)

proc arcMoveTo2*(self: QPainterPath, x: float64, y: float64, w: float64, h: float64, angle: float64): void =

  fcQPainterPath_arcMoveTo2(self.h, x, y, w, h, angle)

proc arcTo*(self: QPainterPath, rect: gen_qrect.QRectF, startAngle: float64, arcLength: float64): void =

  fcQPainterPath_arcTo(self.h, rect.h, startAngle, arcLength)

proc arcTo2*(self: QPainterPath, x: float64, y: float64, w: float64, h: float64, startAngle: float64, arcLength: float64): void =

  fcQPainterPath_arcTo2(self.h, x, y, w, h, startAngle, arcLength)

proc cubicTo*(self: QPainterPath, ctrlPt1: gen_qpoint.QPointF, ctrlPt2: gen_qpoint.QPointF, endPt: gen_qpoint.QPointF): void =

  fcQPainterPath_cubicTo(self.h, ctrlPt1.h, ctrlPt2.h, endPt.h)

proc cubicTo2*(self: QPainterPath, ctrlPt1x: float64, ctrlPt1y: float64, ctrlPt2x: float64, ctrlPt2y: float64, endPtx: float64, endPty: float64): void =

  fcQPainterPath_cubicTo2(self.h, ctrlPt1x, ctrlPt1y, ctrlPt2x, ctrlPt2y, endPtx, endPty)

proc quadTo*(self: QPainterPath, ctrlPt: gen_qpoint.QPointF, endPt: gen_qpoint.QPointF): void =

  fcQPainterPath_quadTo(self.h, ctrlPt.h, endPt.h)

proc quadTo2*(self: QPainterPath, ctrlPtx: float64, ctrlPty: float64, endPtx: float64, endPty: float64): void =

  fcQPainterPath_quadTo2(self.h, ctrlPtx, ctrlPty, endPtx, endPty)

proc currentPosition*(self: QPainterPath, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQPainterPath_currentPosition(self.h))

proc addRect*(self: QPainterPath, rect: gen_qrect.QRectF): void =

  fcQPainterPath_addRect(self.h, rect.h)

proc addRect2*(self: QPainterPath, x: float64, y: float64, w: float64, h: float64): void =

  fcQPainterPath_addRect2(self.h, x, y, w, h)

proc addEllipse*(self: QPainterPath, rect: gen_qrect.QRectF): void =

  fcQPainterPath_addEllipse(self.h, rect.h)

proc addEllipse2*(self: QPainterPath, x: float64, y: float64, w: float64, h: float64): void =

  fcQPainterPath_addEllipse2(self.h, x, y, w, h)

proc addEllipse3*(self: QPainterPath, center: gen_qpoint.QPointF, rx: float64, ry: float64): void =

  fcQPainterPath_addEllipse3(self.h, center.h, rx, ry)

proc addText*(self: QPainterPath, point: gen_qpoint.QPointF, f: gen_qfont.QFont, text: string): void =

  fcQPainterPath_addText(self.h, point.h, f.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc addText2*(self: QPainterPath, x: float64, y: float64, f: gen_qfont.QFont, text: string): void =

  fcQPainterPath_addText2(self.h, x, y, f.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc addPath*(self: QPainterPath, path: QPainterPath): void =

  fcQPainterPath_addPath(self.h, path.h)

proc addRegion*(self: QPainterPath, region: gen_qregion.QRegion): void =

  fcQPainterPath_addRegion(self.h, region.h)

proc addRoundedRect*(self: QPainterPath, rect: gen_qrect.QRectF, xRadius: float64, yRadius: float64): void =

  fcQPainterPath_addRoundedRect(self.h, rect.h, xRadius, yRadius)

proc addRoundedRect2*(self: QPainterPath, x: float64, y: float64, w: float64, h: float64, xRadius: float64, yRadius: float64): void =

  fcQPainterPath_addRoundedRect2(self.h, x, y, w, h, xRadius, yRadius)

proc addRoundRect*(self: QPainterPath, rect: gen_qrect.QRectF, xRnd: cint, yRnd: cint): void =

  fcQPainterPath_addRoundRect(self.h, rect.h, xRnd, yRnd)

proc addRoundRect2*(self: QPainterPath, x: float64, y: float64, w: float64, h: float64, xRnd: cint, yRnd: cint): void =

  fcQPainterPath_addRoundRect2(self.h, x, y, w, h, xRnd, yRnd)

proc addRoundRect3*(self: QPainterPath, rect: gen_qrect.QRectF, roundness: cint): void =

  fcQPainterPath_addRoundRect3(self.h, rect.h, roundness)

proc addRoundRect4*(self: QPainterPath, x: float64, y: float64, w: float64, h: float64, roundness: cint): void =

  fcQPainterPath_addRoundRect4(self.h, x, y, w, h, roundness)

proc connectPath*(self: QPainterPath, path: QPainterPath): void =

  fcQPainterPath_connectPath(self.h, path.h)

proc contains*(self: QPainterPath, pt: gen_qpoint.QPointF): bool =

  fcQPainterPath_contains(self.h, pt.h)

proc containsWithRect*(self: QPainterPath, rect: gen_qrect.QRectF): bool =

  fcQPainterPath_containsWithRect(self.h, rect.h)

proc intersects*(self: QPainterPath, rect: gen_qrect.QRectF): bool =

  fcQPainterPath_intersects(self.h, rect.h)

proc translate*(self: QPainterPath, dx: float64, dy: float64): void =

  fcQPainterPath_translate(self.h, dx, dy)

proc translateWithOffset*(self: QPainterPath, offset: gen_qpoint.QPointF): void =

  fcQPainterPath_translateWithOffset(self.h, offset.h)

proc translated*(self: QPainterPath, dx: float64, dy: float64): QPainterPath =

  QPainterPath(h: fcQPainterPath_translated(self.h, dx, dy))

proc translatedWithOffset*(self: QPainterPath, offset: gen_qpoint.QPointF): QPainterPath =

  QPainterPath(h: fcQPainterPath_translatedWithOffset(self.h, offset.h))

proc boundingRect*(self: QPainterPath, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPainterPath_boundingRect(self.h))

proc controlPointRect*(self: QPainterPath, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPainterPath_controlPointRect(self.h))

proc fillRule*(self: QPainterPath, ): gen_qnamespace.FillRule =

  gen_qnamespace.FillRule(fcQPainterPath_fillRule(self.h))

proc setFillRule*(self: QPainterPath, fillRule: gen_qnamespace.FillRule): void =

  fcQPainterPath_setFillRule(self.h, cint(fillRule))

proc isEmpty*(self: QPainterPath, ): bool =

  fcQPainterPath_isEmpty(self.h)

proc toReversed*(self: QPainterPath, ): QPainterPath =

  QPainterPath(h: fcQPainterPath_toReversed(self.h))

proc elementCount*(self: QPainterPath, ): cint =

  fcQPainterPath_elementCount(self.h)

proc elementAt*(self: QPainterPath, i: cint): QPainterPathElement =

  QPainterPathElement(h: fcQPainterPath_elementAt(self.h, i))

proc setElementPositionAt*(self: QPainterPath, i: cint, x: float64, y: float64): void =

  fcQPainterPath_setElementPositionAt(self.h, i, x, y)

proc length*(self: QPainterPath, ): float64 =

  fcQPainterPath_length(self.h)

proc percentAtLength*(self: QPainterPath, t: float64): float64 =

  fcQPainterPath_percentAtLength(self.h, t)

proc pointAtPercent*(self: QPainterPath, t: float64): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQPainterPath_pointAtPercent(self.h, t))

proc angleAtPercent*(self: QPainterPath, t: float64): float64 =

  fcQPainterPath_angleAtPercent(self.h, t)

proc slopeAtPercent*(self: QPainterPath, t: float64): float64 =

  fcQPainterPath_slopeAtPercent(self.h, t)

proc intersectsWithQPainterPath*(self: QPainterPath, p: QPainterPath): bool =

  fcQPainterPath_intersectsWithQPainterPath(self.h, p.h)

proc containsWithQPainterPath*(self: QPainterPath, p: QPainterPath): bool =

  fcQPainterPath_containsWithQPainterPath(self.h, p.h)

proc united*(self: QPainterPath, r: QPainterPath): QPainterPath =

  QPainterPath(h: fcQPainterPath_united(self.h, r.h))

proc intersected*(self: QPainterPath, r: QPainterPath): QPainterPath =

  QPainterPath(h: fcQPainterPath_intersected(self.h, r.h))

proc subtracted*(self: QPainterPath, r: QPainterPath): QPainterPath =

  QPainterPath(h: fcQPainterPath_subtracted(self.h, r.h))

proc subtractedInverted*(self: QPainterPath, r: QPainterPath): QPainterPath =

  QPainterPath(h: fcQPainterPath_subtractedInverted(self.h, r.h))

proc simplified*(self: QPainterPath, ): QPainterPath =

  QPainterPath(h: fcQPainterPath_simplified(self.h))

proc operatorEqual*(self: QPainterPath, other: QPainterPath): bool =

  fcQPainterPath_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QPainterPath, other: QPainterPath): bool =

  fcQPainterPath_operatorNotEqual(self.h, other.h)

proc operatorBitwiseAnd*(self: QPainterPath, other: QPainterPath): QPainterPath =

  QPainterPath(h: fcQPainterPath_operatorBitwiseAnd(self.h, other.h))

proc operatorBitwiseOr*(self: QPainterPath, other: QPainterPath): QPainterPath =

  QPainterPath(h: fcQPainterPath_operatorBitwiseOr(self.h, other.h))

proc operatorPlus*(self: QPainterPath, other: QPainterPath): QPainterPath =

  QPainterPath(h: fcQPainterPath_operatorPlus(self.h, other.h))

proc operatorMinus*(self: QPainterPath, other: QPainterPath): QPainterPath =

  QPainterPath(h: fcQPainterPath_operatorMinus(self.h, other.h))

proc operatorBitwiseAndAssign*(self: QPainterPath, other: QPainterPath): void =

  fcQPainterPath_operatorBitwiseAndAssign(self.h, other.h)

proc operatorBitwiseOrAssign*(self: QPainterPath, other: QPainterPath): void =

  fcQPainterPath_operatorBitwiseOrAssign(self.h, other.h)

proc operatorPlusAssign*(self: QPainterPath, other: QPainterPath): QPainterPath =

  QPainterPath(h: fcQPainterPath_operatorPlusAssign(self.h, other.h))

proc operatorMinusAssign*(self: QPainterPath, other: QPainterPath): QPainterPath =

  QPainterPath(h: fcQPainterPath_operatorMinusAssign(self.h, other.h))

proc addRoundedRect4*(self: QPainterPath, rect: gen_qrect.QRectF, xRadius: float64, yRadius: float64, mode: gen_qnamespace.SizeMode): void =

  fcQPainterPath_addRoundedRect4(self.h, rect.h, xRadius, yRadius, cint(mode))

proc addRoundedRect7*(self: QPainterPath, x: float64, y: float64, w: float64, h: float64, xRadius: float64, yRadius: float64, mode: gen_qnamespace.SizeMode): void =

  fcQPainterPath_addRoundedRect7(self.h, x, y, w, h, xRadius, yRadius, cint(mode))

proc delete*(self: QPainterPath) =
  fcQPainterPath_delete(self.h)

func init*(T: type QPainterPathStroker, h: ptr cQPainterPathStroker): QPainterPathStroker =
  T(h: h)
proc create*(T: type QPainterPathStroker, ): QPainterPathStroker =

  QPainterPathStroker.init(fcQPainterPathStroker_new())
proc create*(T: type QPainterPathStroker, pen: gen_qpen.QPen): QPainterPathStroker =

  QPainterPathStroker.init(fcQPainterPathStroker_new2(pen.h))
proc setWidth*(self: QPainterPathStroker, width: float64): void =

  fcQPainterPathStroker_setWidth(self.h, width)

proc width*(self: QPainterPathStroker, ): float64 =

  fcQPainterPathStroker_width(self.h)

proc setCapStyle*(self: QPainterPathStroker, style: gen_qnamespace.PenCapStyle): void =

  fcQPainterPathStroker_setCapStyle(self.h, cint(style))

proc capStyle*(self: QPainterPathStroker, ): gen_qnamespace.PenCapStyle =

  gen_qnamespace.PenCapStyle(fcQPainterPathStroker_capStyle(self.h))

proc setJoinStyle*(self: QPainterPathStroker, style: gen_qnamespace.PenJoinStyle): void =

  fcQPainterPathStroker_setJoinStyle(self.h, cint(style))

proc joinStyle*(self: QPainterPathStroker, ): gen_qnamespace.PenJoinStyle =

  gen_qnamespace.PenJoinStyle(fcQPainterPathStroker_joinStyle(self.h))

proc setMiterLimit*(self: QPainterPathStroker, length: float64): void =

  fcQPainterPathStroker_setMiterLimit(self.h, length)

proc miterLimit*(self: QPainterPathStroker, ): float64 =

  fcQPainterPathStroker_miterLimit(self.h)

proc setCurveThreshold*(self: QPainterPathStroker, threshold: float64): void =

  fcQPainterPathStroker_setCurveThreshold(self.h, threshold)

proc curveThreshold*(self: QPainterPathStroker, ): float64 =

  fcQPainterPathStroker_curveThreshold(self.h)

proc setDashPattern*(self: QPainterPathStroker, dashPattern: gen_qnamespace.PenStyle): void =

  fcQPainterPathStroker_setDashPattern(self.h, cint(dashPattern))

proc setDashPatternWithDashPattern*(self: QPainterPathStroker, dashPattern: seq[float64]): void =

  var dashPattern_CArray = newSeq[float64](len(dashPattern))
  for i in 0..<len(dashPattern):
    dashPattern_CArray[i] = dashPattern[i]

  fcQPainterPathStroker_setDashPatternWithDashPattern(self.h, struct_miqt_array(len: csize_t(len(dashPattern)), data: if len(dashPattern) == 0: nil else: addr(dashPattern_CArray[0])))

proc dashPattern*(self: QPainterPathStroker, ): seq[float64] =

  var v_ma = fcQPainterPathStroker_dashPattern(self.h)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc setDashOffset*(self: QPainterPathStroker, offset: float64): void =

  fcQPainterPathStroker_setDashOffset(self.h, offset)

proc dashOffset*(self: QPainterPathStroker, ): float64 =

  fcQPainterPathStroker_dashOffset(self.h)

proc createStroke*(self: QPainterPathStroker, path: QPainterPath): QPainterPath =

  QPainterPath(h: fcQPainterPathStroker_createStroke(self.h, path.h))

proc delete*(self: QPainterPathStroker) =
  fcQPainterPathStroker_delete(self.h)

func init*(T: type QPainterPathElement, h: ptr cQPainterPathElement): QPainterPathElement =
  T(h: h)
proc isMoveTo*(self: QPainterPathElement, ): bool =

  fcQPainterPathElement_isMoveTo(self.h)

proc isLineTo*(self: QPainterPathElement, ): bool =

  fcQPainterPathElement_isLineTo(self.h)

proc isCurveTo*(self: QPainterPathElement, ): bool =

  fcQPainterPathElement_isCurveTo(self.h)

proc ToQPointF*(self: QPainterPathElement, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQPainterPathElement_ToQPointF(self.h))

proc operatorEqual*(self: QPainterPathElement, e: QPainterPathElement): bool =

  fcQPainterPathElement_operatorEqual(self.h, e.h)

proc operatorNotEqual*(self: QPainterPathElement, e: QPainterPathElement): bool =

  fcQPainterPathElement_operatorNotEqual(self.h, e.h)

proc delete*(self: QPainterPathElement) =
  fcQPainterPathElement_delete(self.h)
