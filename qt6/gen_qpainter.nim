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
{.compile("gen_qpainter.cpp", cflags).}


type QPainterRenderHintEnum* = distinct cint
template Antialiasing*(_: type QPainterRenderHintEnum): untyped = 1
template TextAntialiasing*(_: type QPainterRenderHintEnum): untyped = 2
template SmoothPixmapTransform*(_: type QPainterRenderHintEnum): untyped = 4
template VerticalSubpixelPositioning*(_: type QPainterRenderHintEnum): untyped = 8
template LosslessImageRendering*(_: type QPainterRenderHintEnum): untyped = 64
template NonCosmeticBrushPatterns*(_: type QPainterRenderHintEnum): untyped = 128


type QPainterPixmapFragmentHintEnum* = distinct cint
template OpaqueHint*(_: type QPainterPixmapFragmentHintEnum): untyped = 1


type QPainterCompositionModeEnum* = distinct cint
template CompositionMode_SourceOver*(_: type QPainterCompositionModeEnum): untyped = 0
template CompositionMode_DestinationOver*(_: type QPainterCompositionModeEnum): untyped = 1
template CompositionMode_Clear*(_: type QPainterCompositionModeEnum): untyped = 2
template CompositionMode_Source*(_: type QPainterCompositionModeEnum): untyped = 3
template CompositionMode_Destination*(_: type QPainterCompositionModeEnum): untyped = 4
template CompositionMode_SourceIn*(_: type QPainterCompositionModeEnum): untyped = 5
template CompositionMode_DestinationIn*(_: type QPainterCompositionModeEnum): untyped = 6
template CompositionMode_SourceOut*(_: type QPainterCompositionModeEnum): untyped = 7
template CompositionMode_DestinationOut*(_: type QPainterCompositionModeEnum): untyped = 8
template CompositionMode_SourceAtop*(_: type QPainterCompositionModeEnum): untyped = 9
template CompositionMode_DestinationAtop*(_: type QPainterCompositionModeEnum): untyped = 10
template CompositionMode_Xor*(_: type QPainterCompositionModeEnum): untyped = 11
template CompositionMode_Plus*(_: type QPainterCompositionModeEnum): untyped = 12
template CompositionMode_Multiply*(_: type QPainterCompositionModeEnum): untyped = 13
template CompositionMode_Screen*(_: type QPainterCompositionModeEnum): untyped = 14
template CompositionMode_Overlay*(_: type QPainterCompositionModeEnum): untyped = 15
template CompositionMode_Darken*(_: type QPainterCompositionModeEnum): untyped = 16
template CompositionMode_Lighten*(_: type QPainterCompositionModeEnum): untyped = 17
template CompositionMode_ColorDodge*(_: type QPainterCompositionModeEnum): untyped = 18
template CompositionMode_ColorBurn*(_: type QPainterCompositionModeEnum): untyped = 19
template CompositionMode_HardLight*(_: type QPainterCompositionModeEnum): untyped = 20
template CompositionMode_SoftLight*(_: type QPainterCompositionModeEnum): untyped = 21
template CompositionMode_Difference*(_: type QPainterCompositionModeEnum): untyped = 22
template CompositionMode_Exclusion*(_: type QPainterCompositionModeEnum): untyped = 23
template RasterOp_SourceOrDestination*(_: type QPainterCompositionModeEnum): untyped = 24
template RasterOp_SourceAndDestination*(_: type QPainterCompositionModeEnum): untyped = 25
template RasterOp_SourceXorDestination*(_: type QPainterCompositionModeEnum): untyped = 26
template RasterOp_NotSourceAndNotDestination*(_: type QPainterCompositionModeEnum): untyped = 27
template RasterOp_NotSourceOrNotDestination*(_: type QPainterCompositionModeEnum): untyped = 28
template RasterOp_NotSourceXorDestination*(_: type QPainterCompositionModeEnum): untyped = 29
template RasterOp_NotSource*(_: type QPainterCompositionModeEnum): untyped = 30
template RasterOp_NotSourceAndDestination*(_: type QPainterCompositionModeEnum): untyped = 31
template RasterOp_SourceAndNotDestination*(_: type QPainterCompositionModeEnum): untyped = 32
template RasterOp_NotSourceOrDestination*(_: type QPainterCompositionModeEnum): untyped = 33
template RasterOp_SourceOrNotDestination*(_: type QPainterCompositionModeEnum): untyped = 34
template RasterOp_ClearDestination*(_: type QPainterCompositionModeEnum): untyped = 35
template RasterOp_SetDestination*(_: type QPainterCompositionModeEnum): untyped = 36
template RasterOp_NotDestination*(_: type QPainterCompositionModeEnum): untyped = 37


import gen_qpainter_types
export gen_qpainter_types

import
  gen_qbrush,
  gen_qcolor,
  gen_qfont,
  gen_qfontinfo,
  gen_qfontmetrics,
  gen_qglyphrun,
  gen_qimage,
  gen_qline,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainterpath,
  gen_qpen,
  gen_qpicture,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qstatictext,
  gen_qtextoption,
  gen_qtransform
export
  gen_qbrush,
  gen_qcolor,
  gen_qfont,
  gen_qfontinfo,
  gen_qfontmetrics,
  gen_qglyphrun,
  gen_qimage,
  gen_qline,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainterpath,
  gen_qpen,
  gen_qpicture,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qstatictext,
  gen_qtextoption,
  gen_qtransform

type cQPainter*{.exportc: "QPainter", incompleteStruct.} = object
type cQPainterPixmapFragment*{.exportc: "QPainter__PixmapFragment", incompleteStruct.} = object

proc fcQPainter_new(): ptr cQPainter {.importc: "QPainter_new".}
proc fcQPainter_new2(param1: pointer): ptr cQPainter {.importc: "QPainter_new2".}
proc fcQPainter_device(self: pointer, ): pointer {.importc: "QPainter_device".}
proc fcQPainter_begin(self: pointer, param1: pointer): bool {.importc: "QPainter_begin".}
proc fcQPainter_endX(self: pointer, ): bool {.importc: "QPainter_end".}
proc fcQPainter_isActive(self: pointer, ): bool {.importc: "QPainter_isActive".}
proc fcQPainter_setCompositionMode(self: pointer, mode: cint): void {.importc: "QPainter_setCompositionMode".}
proc fcQPainter_compositionMode(self: pointer, ): cint {.importc: "QPainter_compositionMode".}
proc fcQPainter_font(self: pointer, ): pointer {.importc: "QPainter_font".}
proc fcQPainter_setFont(self: pointer, f: pointer): void {.importc: "QPainter_setFont".}
proc fcQPainter_fontMetrics(self: pointer, ): pointer {.importc: "QPainter_fontMetrics".}
proc fcQPainter_fontInfo(self: pointer, ): pointer {.importc: "QPainter_fontInfo".}
proc fcQPainter_setPen(self: pointer, color: pointer): void {.importc: "QPainter_setPen".}
proc fcQPainter_setPenWithPen(self: pointer, pen: pointer): void {.importc: "QPainter_setPenWithPen".}
proc fcQPainter_setPenWithStyle(self: pointer, style: cint): void {.importc: "QPainter_setPenWithStyle".}
proc fcQPainter_pen(self: pointer, ): pointer {.importc: "QPainter_pen".}
proc fcQPainter_setBrush(self: pointer, brush: pointer): void {.importc: "QPainter_setBrush".}
proc fcQPainter_setBrushWithStyle(self: pointer, style: cint): void {.importc: "QPainter_setBrushWithStyle".}
proc fcQPainter_brush(self: pointer, ): pointer {.importc: "QPainter_brush".}
proc fcQPainter_setBackgroundMode(self: pointer, mode: cint): void {.importc: "QPainter_setBackgroundMode".}
proc fcQPainter_backgroundMode(self: pointer, ): cint {.importc: "QPainter_backgroundMode".}
proc fcQPainter_brushOrigin(self: pointer, ): pointer {.importc: "QPainter_brushOrigin".}
proc fcQPainter_setBrushOrigin(self: pointer, x: cint, y: cint): void {.importc: "QPainter_setBrushOrigin".}
proc fcQPainter_setBrushOriginWithBrushOrigin(self: pointer, brushOrigin: pointer): void {.importc: "QPainter_setBrushOriginWithBrushOrigin".}
proc fcQPainter_setBrushOrigin2(self: pointer, brushOrigin: pointer): void {.importc: "QPainter_setBrushOrigin2".}
proc fcQPainter_setBackground(self: pointer, bg: pointer): void {.importc: "QPainter_setBackground".}
proc fcQPainter_background(self: pointer, ): pointer {.importc: "QPainter_background".}
proc fcQPainter_opacity(self: pointer, ): float64 {.importc: "QPainter_opacity".}
proc fcQPainter_setOpacity(self: pointer, opacity: float64): void {.importc: "QPainter_setOpacity".}
proc fcQPainter_clipRegion(self: pointer, ): pointer {.importc: "QPainter_clipRegion".}
proc fcQPainter_clipPath(self: pointer, ): pointer {.importc: "QPainter_clipPath".}
proc fcQPainter_setClipRect(self: pointer, param1: pointer): void {.importc: "QPainter_setClipRect".}
proc fcQPainter_setClipRectWithQRect(self: pointer, param1: pointer): void {.importc: "QPainter_setClipRectWithQRect".}
proc fcQPainter_setClipRect2(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QPainter_setClipRect2".}
proc fcQPainter_setClipRegion(self: pointer, param1: pointer): void {.importc: "QPainter_setClipRegion".}
proc fcQPainter_setClipPath(self: pointer, path: pointer): void {.importc: "QPainter_setClipPath".}
proc fcQPainter_setClipping(self: pointer, enable: bool): void {.importc: "QPainter_setClipping".}
proc fcQPainter_hasClipping(self: pointer, ): bool {.importc: "QPainter_hasClipping".}
proc fcQPainter_clipBoundingRect(self: pointer, ): pointer {.importc: "QPainter_clipBoundingRect".}
proc fcQPainter_save(self: pointer, ): void {.importc: "QPainter_save".}
proc fcQPainter_restore(self: pointer, ): void {.importc: "QPainter_restore".}
proc fcQPainter_setTransform(self: pointer, transform: pointer): void {.importc: "QPainter_setTransform".}
proc fcQPainter_transform(self: pointer, ): pointer {.importc: "QPainter_transform".}
proc fcQPainter_deviceTransform(self: pointer, ): pointer {.importc: "QPainter_deviceTransform".}
proc fcQPainter_resetTransform(self: pointer, ): void {.importc: "QPainter_resetTransform".}
proc fcQPainter_setWorldTransform(self: pointer, matrix: pointer): void {.importc: "QPainter_setWorldTransform".}
proc fcQPainter_worldTransform(self: pointer, ): pointer {.importc: "QPainter_worldTransform".}
proc fcQPainter_combinedTransform(self: pointer, ): pointer {.importc: "QPainter_combinedTransform".}
proc fcQPainter_setWorldMatrixEnabled(self: pointer, enabled: bool): void {.importc: "QPainter_setWorldMatrixEnabled".}
proc fcQPainter_worldMatrixEnabled(self: pointer, ): bool {.importc: "QPainter_worldMatrixEnabled".}
proc fcQPainter_scale(self: pointer, sx: float64, sy: float64): void {.importc: "QPainter_scale".}
proc fcQPainter_shear(self: pointer, sh: float64, sv: float64): void {.importc: "QPainter_shear".}
proc fcQPainter_rotate(self: pointer, a: float64): void {.importc: "QPainter_rotate".}
proc fcQPainter_translate(self: pointer, offset: pointer): void {.importc: "QPainter_translate".}
proc fcQPainter_translateWithOffset(self: pointer, offset: pointer): void {.importc: "QPainter_translateWithOffset".}
proc fcQPainter_translate2(self: pointer, dx: float64, dy: float64): void {.importc: "QPainter_translate2".}
proc fcQPainter_window(self: pointer, ): pointer {.importc: "QPainter_window".}
proc fcQPainter_setWindow(self: pointer, window: pointer): void {.importc: "QPainter_setWindow".}
proc fcQPainter_setWindow2(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QPainter_setWindow2".}
proc fcQPainter_viewport(self: pointer, ): pointer {.importc: "QPainter_viewport".}
proc fcQPainter_setViewport(self: pointer, viewport: pointer): void {.importc: "QPainter_setViewport".}
proc fcQPainter_setViewport2(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QPainter_setViewport2".}
proc fcQPainter_setViewTransformEnabled(self: pointer, enable: bool): void {.importc: "QPainter_setViewTransformEnabled".}
proc fcQPainter_viewTransformEnabled(self: pointer, ): bool {.importc: "QPainter_viewTransformEnabled".}
proc fcQPainter_strokePath(self: pointer, path: pointer, pen: pointer): void {.importc: "QPainter_strokePath".}
proc fcQPainter_fillPath(self: pointer, path: pointer, brush: pointer): void {.importc: "QPainter_fillPath".}
proc fcQPainter_drawPath(self: pointer, path: pointer): void {.importc: "QPainter_drawPath".}
proc fcQPainter_drawPoint(self: pointer, pt: pointer): void {.importc: "QPainter_drawPoint".}
proc fcQPainter_drawPointWithQPoint(self: pointer, p: pointer): void {.importc: "QPainter_drawPointWithQPoint".}
proc fcQPainter_drawPoint2(self: pointer, x: cint, y: cint): void {.importc: "QPainter_drawPoint2".}
proc fcQPainter_drawPoints(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawPoints".}
proc fcQPainter_drawPoints2(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawPoints2".}
proc fcQPainter_drawLine(self: pointer, line: pointer): void {.importc: "QPainter_drawLine".}
proc fcQPainter_drawLineWithLine(self: pointer, line: pointer): void {.importc: "QPainter_drawLineWithLine".}
proc fcQPainter_drawLine2(self: pointer, x1: cint, y1: cint, x2: cint, y2: cint): void {.importc: "QPainter_drawLine2".}
proc fcQPainter_drawLine3(self: pointer, p1: pointer, p2: pointer): void {.importc: "QPainter_drawLine3".}
proc fcQPainter_drawLine4(self: pointer, p1: pointer, p2: pointer): void {.importc: "QPainter_drawLine4".}
proc fcQPainter_drawLines(self: pointer, lines: pointer, lineCount: cint): void {.importc: "QPainter_drawLines".}
proc fcQPainter_drawLinesWithLines(self: pointer, lines: struct_miqt_array): void {.importc: "QPainter_drawLinesWithLines".}
proc fcQPainter_drawLines2(self: pointer, pointPairs: pointer, lineCount: cint): void {.importc: "QPainter_drawLines2".}
proc fcQPainter_drawLinesWithPointPairs(self: pointer, pointPairs: struct_miqt_array): void {.importc: "QPainter_drawLinesWithPointPairs".}
proc fcQPainter_drawLines3(self: pointer, lines: pointer, lineCount: cint): void {.importc: "QPainter_drawLines3".}
proc fcQPainter_drawLines4(self: pointer, lines: struct_miqt_array): void {.importc: "QPainter_drawLines4".}
proc fcQPainter_drawLines5(self: pointer, pointPairs: pointer, lineCount: cint): void {.importc: "QPainter_drawLines5".}
proc fcQPainter_drawLines6(self: pointer, pointPairs: struct_miqt_array): void {.importc: "QPainter_drawLines6".}
proc fcQPainter_drawRect(self: pointer, rect: pointer): void {.importc: "QPainter_drawRect".}
proc fcQPainter_drawRect2(self: pointer, x1: cint, y1: cint, w: cint, h: cint): void {.importc: "QPainter_drawRect2".}
proc fcQPainter_drawRectWithRect(self: pointer, rect: pointer): void {.importc: "QPainter_drawRectWithRect".}
proc fcQPainter_drawRects(self: pointer, rects: pointer, rectCount: cint): void {.importc: "QPainter_drawRects".}
proc fcQPainter_drawRectsWithRectangles(self: pointer, rectangles: struct_miqt_array): void {.importc: "QPainter_drawRectsWithRectangles".}
proc fcQPainter_drawRects2(self: pointer, rects: pointer, rectCount: cint): void {.importc: "QPainter_drawRects2".}
proc fcQPainter_drawRects3(self: pointer, rectangles: struct_miqt_array): void {.importc: "QPainter_drawRects3".}
proc fcQPainter_drawEllipse(self: pointer, r: pointer): void {.importc: "QPainter_drawEllipse".}
proc fcQPainter_drawEllipseWithQRect(self: pointer, r: pointer): void {.importc: "QPainter_drawEllipseWithQRect".}
proc fcQPainter_drawEllipse2(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QPainter_drawEllipse2".}
proc fcQPainter_drawEllipse3(self: pointer, center: pointer, rx: float64, ry: float64): void {.importc: "QPainter_drawEllipse3".}
proc fcQPainter_drawEllipse4(self: pointer, center: pointer, rx: cint, ry: cint): void {.importc: "QPainter_drawEllipse4".}
proc fcQPainter_drawPolyline(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawPolyline".}
proc fcQPainter_drawPolyline2(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawPolyline2".}
proc fcQPainter_drawPolygon(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawPolygon".}
proc fcQPainter_drawPolygon2(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawPolygon2".}
proc fcQPainter_drawConvexPolygon(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawConvexPolygon".}
proc fcQPainter_drawConvexPolygon2(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPainter_drawConvexPolygon2".}
proc fcQPainter_drawArc(self: pointer, rect: pointer, a: cint, alen: cint): void {.importc: "QPainter_drawArc".}
proc fcQPainter_drawArc2(self: pointer, param1: pointer, a: cint, alen: cint): void {.importc: "QPainter_drawArc2".}
proc fcQPainter_drawArc3(self: pointer, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint): void {.importc: "QPainter_drawArc3".}
proc fcQPainter_drawPie(self: pointer, rect: pointer, a: cint, alen: cint): void {.importc: "QPainter_drawPie".}
proc fcQPainter_drawPie2(self: pointer, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint): void {.importc: "QPainter_drawPie2".}
proc fcQPainter_drawPie3(self: pointer, param1: pointer, a: cint, alen: cint): void {.importc: "QPainter_drawPie3".}
proc fcQPainter_drawChord(self: pointer, rect: pointer, a: cint, alen: cint): void {.importc: "QPainter_drawChord".}
proc fcQPainter_drawChord2(self: pointer, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint): void {.importc: "QPainter_drawChord2".}
proc fcQPainter_drawChord3(self: pointer, param1: pointer, a: cint, alen: cint): void {.importc: "QPainter_drawChord3".}
proc fcQPainter_drawRoundedRect(self: pointer, rect: pointer, xRadius: float64, yRadius: float64): void {.importc: "QPainter_drawRoundedRect".}
proc fcQPainter_drawRoundedRect2(self: pointer, x: cint, y: cint, w: cint, h: cint, xRadius: float64, yRadius: float64): void {.importc: "QPainter_drawRoundedRect2".}
proc fcQPainter_drawRoundedRect3(self: pointer, rect: pointer, xRadius: float64, yRadius: float64): void {.importc: "QPainter_drawRoundedRect3".}
proc fcQPainter_drawTiledPixmap(self: pointer, rect: pointer, pm: pointer): void {.importc: "QPainter_drawTiledPixmap".}
proc fcQPainter_drawTiledPixmap2(self: pointer, x: cint, y: cint, w: cint, h: cint, param5: pointer): void {.importc: "QPainter_drawTiledPixmap2".}
proc fcQPainter_drawTiledPixmap3(self: pointer, param1: pointer, param2: pointer): void {.importc: "QPainter_drawTiledPixmap3".}
proc fcQPainter_drawPicture(self: pointer, p: pointer, picture: pointer): void {.importc: "QPainter_drawPicture".}
proc fcQPainter_drawPicture2(self: pointer, x: cint, y: cint, picture: pointer): void {.importc: "QPainter_drawPicture2".}
proc fcQPainter_drawPicture3(self: pointer, p: pointer, picture: pointer): void {.importc: "QPainter_drawPicture3".}
proc fcQPainter_drawPixmap(self: pointer, targetRect: pointer, pixmap: pointer, sourceRect: pointer): void {.importc: "QPainter_drawPixmap".}
proc fcQPainter_drawPixmap2(self: pointer, targetRect: pointer, pixmap: pointer, sourceRect: pointer): void {.importc: "QPainter_drawPixmap2".}
proc fcQPainter_drawPixmap3(self: pointer, x: cint, y: cint, w: cint, h: cint, pm: pointer, sx: cint, sy: cint, sw: cint, sh: cint): void {.importc: "QPainter_drawPixmap3".}
proc fcQPainter_drawPixmap4(self: pointer, x: cint, y: cint, pm: pointer, sx: cint, sy: cint, sw: cint, sh: cint): void {.importc: "QPainter_drawPixmap4".}
proc fcQPainter_drawPixmap5(self: pointer, p: pointer, pm: pointer, sr: pointer): void {.importc: "QPainter_drawPixmap5".}
proc fcQPainter_drawPixmap6(self: pointer, p: pointer, pm: pointer, sr: pointer): void {.importc: "QPainter_drawPixmap6".}
proc fcQPainter_drawPixmap7(self: pointer, p: pointer, pm: pointer): void {.importc: "QPainter_drawPixmap7".}
proc fcQPainter_drawPixmap8(self: pointer, p: pointer, pm: pointer): void {.importc: "QPainter_drawPixmap8".}
proc fcQPainter_drawPixmap9(self: pointer, x: cint, y: cint, pm: pointer): void {.importc: "QPainter_drawPixmap9".}
proc fcQPainter_drawPixmap10(self: pointer, r: pointer, pm: pointer): void {.importc: "QPainter_drawPixmap10".}
proc fcQPainter_drawPixmap11(self: pointer, x: cint, y: cint, w: cint, h: cint, pm: pointer): void {.importc: "QPainter_drawPixmap11".}
proc fcQPainter_drawPixmapFragments(self: pointer, fragments: pointer, fragmentCount: cint, pixmap: pointer): void {.importc: "QPainter_drawPixmapFragments".}
proc fcQPainter_drawImage(self: pointer, targetRect: pointer, image: pointer, sourceRect: pointer): void {.importc: "QPainter_drawImage".}
proc fcQPainter_drawImage2(self: pointer, targetRect: pointer, image: pointer, sourceRect: pointer): void {.importc: "QPainter_drawImage2".}
proc fcQPainter_drawImage3(self: pointer, p: pointer, image: pointer, sr: pointer): void {.importc: "QPainter_drawImage3".}
proc fcQPainter_drawImage4(self: pointer, p: pointer, image: pointer, sr: pointer): void {.importc: "QPainter_drawImage4".}
proc fcQPainter_drawImage5(self: pointer, r: pointer, image: pointer): void {.importc: "QPainter_drawImage5".}
proc fcQPainter_drawImage6(self: pointer, r: pointer, image: pointer): void {.importc: "QPainter_drawImage6".}
proc fcQPainter_drawImage7(self: pointer, p: pointer, image: pointer): void {.importc: "QPainter_drawImage7".}
proc fcQPainter_drawImage8(self: pointer, p: pointer, image: pointer): void {.importc: "QPainter_drawImage8".}
proc fcQPainter_drawImage9(self: pointer, x: cint, y: cint, image: pointer): void {.importc: "QPainter_drawImage9".}
proc fcQPainter_setLayoutDirection(self: pointer, direction: cint): void {.importc: "QPainter_setLayoutDirection".}
proc fcQPainter_layoutDirection(self: pointer, ): cint {.importc: "QPainter_layoutDirection".}
proc fcQPainter_drawGlyphRun(self: pointer, position: pointer, glyphRun: pointer): void {.importc: "QPainter_drawGlyphRun".}
proc fcQPainter_drawStaticText(self: pointer, topLeftPosition: pointer, staticText: pointer): void {.importc: "QPainter_drawStaticText".}
proc fcQPainter_drawStaticText2(self: pointer, topLeftPosition: pointer, staticText: pointer): void {.importc: "QPainter_drawStaticText2".}
proc fcQPainter_drawStaticText3(self: pointer, left: cint, top: cint, staticText: pointer): void {.importc: "QPainter_drawStaticText3".}
proc fcQPainter_drawText(self: pointer, p: pointer, s: struct_miqt_string): void {.importc: "QPainter_drawText".}
proc fcQPainter_drawText2(self: pointer, p: pointer, s: struct_miqt_string): void {.importc: "QPainter_drawText2".}
proc fcQPainter_drawText3(self: pointer, x: cint, y: cint, s: struct_miqt_string): void {.importc: "QPainter_drawText3".}
proc fcQPainter_drawText4(self: pointer, p: pointer, str: struct_miqt_string, tf: cint, justificationPadding: cint): void {.importc: "QPainter_drawText4".}
proc fcQPainter_drawText5(self: pointer, r: pointer, flags: cint, text: struct_miqt_string): void {.importc: "QPainter_drawText5".}
proc fcQPainter_drawText6(self: pointer, r: pointer, flags: cint, text: struct_miqt_string): void {.importc: "QPainter_drawText6".}
proc fcQPainter_drawText7(self: pointer, x: cint, y: cint, w: cint, h: cint, flags: cint, text: struct_miqt_string): void {.importc: "QPainter_drawText7".}
proc fcQPainter_drawText8(self: pointer, r: pointer, text: struct_miqt_string): void {.importc: "QPainter_drawText8".}
proc fcQPainter_boundingRect(self: pointer, rect: pointer, flags: cint, text: struct_miqt_string): pointer {.importc: "QPainter_boundingRect".}
proc fcQPainter_boundingRect2(self: pointer, rect: pointer, flags: cint, text: struct_miqt_string): pointer {.importc: "QPainter_boundingRect2".}
proc fcQPainter_boundingRect3(self: pointer, x: cint, y: cint, w: cint, h: cint, flags: cint, text: struct_miqt_string): pointer {.importc: "QPainter_boundingRect3".}
proc fcQPainter_boundingRect4(self: pointer, rect: pointer, text: struct_miqt_string): pointer {.importc: "QPainter_boundingRect4".}
proc fcQPainter_drawTextItem(self: pointer, p: pointer, ti: pointer): void {.importc: "QPainter_drawTextItem".}
proc fcQPainter_drawTextItem2(self: pointer, x: cint, y: cint, ti: pointer): void {.importc: "QPainter_drawTextItem2".}
proc fcQPainter_drawTextItem3(self: pointer, p: pointer, ti: pointer): void {.importc: "QPainter_drawTextItem3".}
proc fcQPainter_fillRect(self: pointer, param1: pointer, param2: pointer): void {.importc: "QPainter_fillRect".}
proc fcQPainter_fillRect2(self: pointer, x: cint, y: cint, w: cint, h: cint, param5: pointer): void {.importc: "QPainter_fillRect2".}
proc fcQPainter_fillRect3(self: pointer, param1: pointer, param2: pointer): void {.importc: "QPainter_fillRect3".}
proc fcQPainter_fillRect4(self: pointer, param1: pointer, color: pointer): void {.importc: "QPainter_fillRect4".}
proc fcQPainter_fillRect5(self: pointer, x: cint, y: cint, w: cint, h: cint, color: pointer): void {.importc: "QPainter_fillRect5".}
proc fcQPainter_fillRect6(self: pointer, param1: pointer, color: pointer): void {.importc: "QPainter_fillRect6".}
proc fcQPainter_fillRect7(self: pointer, x: cint, y: cint, w: cint, h: cint, c: cint): void {.importc: "QPainter_fillRect7".}
proc fcQPainter_fillRect8(self: pointer, r: pointer, c: cint): void {.importc: "QPainter_fillRect8".}
proc fcQPainter_fillRect9(self: pointer, r: pointer, c: cint): void {.importc: "QPainter_fillRect9".}
proc fcQPainter_fillRect10(self: pointer, x: cint, y: cint, w: cint, h: cint, style: cint): void {.importc: "QPainter_fillRect10".}
proc fcQPainter_fillRect11(self: pointer, r: pointer, style: cint): void {.importc: "QPainter_fillRect11".}
proc fcQPainter_fillRect12(self: pointer, r: pointer, style: cint): void {.importc: "QPainter_fillRect12".}
proc fcQPainter_fillRect13(self: pointer, x: cint, y: cint, w: cint, h: cint, preset: cint): void {.importc: "QPainter_fillRect13".}
proc fcQPainter_fillRect14(self: pointer, r: pointer, preset: cint): void {.importc: "QPainter_fillRect14".}
proc fcQPainter_fillRect15(self: pointer, r: pointer, preset: cint): void {.importc: "QPainter_fillRect15".}
proc fcQPainter_eraseRect(self: pointer, param1: pointer): void {.importc: "QPainter_eraseRect".}
proc fcQPainter_eraseRect2(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QPainter_eraseRect2".}
proc fcQPainter_eraseRectWithQRect(self: pointer, param1: pointer): void {.importc: "QPainter_eraseRectWithQRect".}
proc fcQPainter_setRenderHint(self: pointer, hint: cint): void {.importc: "QPainter_setRenderHint".}
proc fcQPainter_setRenderHints(self: pointer, hints: cint): void {.importc: "QPainter_setRenderHints".}
proc fcQPainter_renderHints(self: pointer, ): cint {.importc: "QPainter_renderHints".}
proc fcQPainter_testRenderHint(self: pointer, hint: cint): bool {.importc: "QPainter_testRenderHint".}
proc fcQPainter_paintEngine(self: pointer, ): pointer {.importc: "QPainter_paintEngine".}
proc fcQPainter_beginNativePainting(self: pointer, ): void {.importc: "QPainter_beginNativePainting".}
proc fcQPainter_endNativePainting(self: pointer, ): void {.importc: "QPainter_endNativePainting".}
proc fcQPainter_setClipRect22(self: pointer, param1: pointer, op: cint): void {.importc: "QPainter_setClipRect22".}
proc fcQPainter_setClipRect23(self: pointer, param1: pointer, op: cint): void {.importc: "QPainter_setClipRect23".}
proc fcQPainter_setClipRect5(self: pointer, x: cint, y: cint, w: cint, h: cint, op: cint): void {.importc: "QPainter_setClipRect5".}
proc fcQPainter_setClipRegion2(self: pointer, param1: pointer, op: cint): void {.importc: "QPainter_setClipRegion2".}
proc fcQPainter_setClipPath2(self: pointer, path: pointer, op: cint): void {.importc: "QPainter_setClipPath2".}
proc fcQPainter_setTransform2(self: pointer, transform: pointer, combine: bool): void {.importc: "QPainter_setTransform2".}
proc fcQPainter_setWorldTransform2(self: pointer, matrix: pointer, combine: bool): void {.importc: "QPainter_setWorldTransform2".}
proc fcQPainter_drawPolygon32(self: pointer, points: pointer, pointCount: cint, fillRule: cint): void {.importc: "QPainter_drawPolygon32".}
proc fcQPainter_drawPolygon33(self: pointer, points: pointer, pointCount: cint, fillRule: cint): void {.importc: "QPainter_drawPolygon33".}
proc fcQPainter_drawRoundedRect4(self: pointer, rect: pointer, xRadius: float64, yRadius: float64, mode: cint): void {.importc: "QPainter_drawRoundedRect4".}
proc fcQPainter_drawRoundedRect7(self: pointer, x: cint, y: cint, w: cint, h: cint, xRadius: float64, yRadius: float64, mode: cint): void {.importc: "QPainter_drawRoundedRect7".}
proc fcQPainter_drawRoundedRect42(self: pointer, rect: pointer, xRadius: float64, yRadius: float64, mode: cint): void {.importc: "QPainter_drawRoundedRect42".}
proc fcQPainter_drawTiledPixmap32(self: pointer, rect: pointer, pm: pointer, offset: pointer): void {.importc: "QPainter_drawTiledPixmap32".}
proc fcQPainter_drawTiledPixmap6(self: pointer, x: cint, y: cint, w: cint, h: cint, param5: pointer, sx: cint): void {.importc: "QPainter_drawTiledPixmap6".}
proc fcQPainter_drawTiledPixmap7(self: pointer, x: cint, y: cint, w: cint, h: cint, param5: pointer, sx: cint, sy: cint): void {.importc: "QPainter_drawTiledPixmap7".}
proc fcQPainter_drawTiledPixmap33(self: pointer, param1: pointer, param2: pointer, param3: pointer): void {.importc: "QPainter_drawTiledPixmap33".}
proc fcQPainter_drawPixmapFragments4(self: pointer, fragments: pointer, fragmentCount: cint, pixmap: pointer, hints: cint): void {.importc: "QPainter_drawPixmapFragments4".}
proc fcQPainter_drawImage42(self: pointer, targetRect: pointer, image: pointer, sourceRect: pointer, flags: cint): void {.importc: "QPainter_drawImage42".}
proc fcQPainter_drawImage43(self: pointer, targetRect: pointer, image: pointer, sourceRect: pointer, flags: cint): void {.importc: "QPainter_drawImage43".}
proc fcQPainter_drawImage44(self: pointer, p: pointer, image: pointer, sr: pointer, flags: cint): void {.importc: "QPainter_drawImage44".}
proc fcQPainter_drawImage45(self: pointer, p: pointer, image: pointer, sr: pointer, flags: cint): void {.importc: "QPainter_drawImage45".}
proc fcQPainter_drawImage46(self: pointer, x: cint, y: cint, image: pointer, sx: cint): void {.importc: "QPainter_drawImage46".}
proc fcQPainter_drawImage52(self: pointer, x: cint, y: cint, image: pointer, sx: cint, sy: cint): void {.importc: "QPainter_drawImage52".}
proc fcQPainter_drawImage62(self: pointer, x: cint, y: cint, image: pointer, sx: cint, sy: cint, sw: cint): void {.importc: "QPainter_drawImage62".}
proc fcQPainter_drawImage72(self: pointer, x: cint, y: cint, image: pointer, sx: cint, sy: cint, sw: cint, sh: cint): void {.importc: "QPainter_drawImage72".}
proc fcQPainter_drawImage82(self: pointer, x: cint, y: cint, image: pointer, sx: cint, sy: cint, sw: cint, sh: cint, flags: cint): void {.importc: "QPainter_drawImage82".}
proc fcQPainter_drawText42(self: pointer, r: pointer, flags: cint, text: struct_miqt_string, br: pointer): void {.importc: "QPainter_drawText42".}
proc fcQPainter_drawText43(self: pointer, r: pointer, flags: cint, text: struct_miqt_string, br: pointer): void {.importc: "QPainter_drawText43".}
proc fcQPainter_drawText72(self: pointer, x: cint, y: cint, w: cint, h: cint, flags: cint, text: struct_miqt_string, br: pointer): void {.importc: "QPainter_drawText72".}
proc fcQPainter_drawText32(self: pointer, r: pointer, text: struct_miqt_string, o: pointer): void {.importc: "QPainter_drawText32".}
proc fcQPainter_boundingRect32(self: pointer, rect: pointer, text: struct_miqt_string, o: pointer): pointer {.importc: "QPainter_boundingRect32".}
proc fcQPainter_setRenderHint2(self: pointer, hint: cint, on: bool): void {.importc: "QPainter_setRenderHint2".}
proc fcQPainter_setRenderHints2(self: pointer, hints: cint, on: bool): void {.importc: "QPainter_setRenderHints2".}
proc fcQPainter_staticMetaObject(): pointer {.importc: "QPainter_staticMetaObject".}
proc fcQPainter_delete(self: pointer) {.importc: "QPainter_delete".}
proc fcQPainterPixmapFragment_create(pos: pointer, sourceRect: pointer): pointer {.importc: "QPainter__PixmapFragment_create".}
proc fcQPainterPixmapFragment_create3(pos: pointer, sourceRect: pointer, scaleX: float64): pointer {.importc: "QPainter__PixmapFragment_create3".}
proc fcQPainterPixmapFragment_create4(pos: pointer, sourceRect: pointer, scaleX: float64, scaleY: float64): pointer {.importc: "QPainter__PixmapFragment_create4".}
proc fcQPainterPixmapFragment_create5(pos: pointer, sourceRect: pointer, scaleX: float64, scaleY: float64, rotation: float64): pointer {.importc: "QPainter__PixmapFragment_create5".}
proc fcQPainterPixmapFragment_create6(pos: pointer, sourceRect: pointer, scaleX: float64, scaleY: float64, rotation: float64, opacity: float64): pointer {.importc: "QPainter__PixmapFragment_create6".}
proc fcQPainterPixmapFragment_delete(self: pointer) {.importc: "QPainter__PixmapFragment_delete".}


func init*(T: type gen_qpainter_types.QPainter, h: ptr cQPainter): gen_qpainter_types.QPainter =
  T(h: h)
proc create*(T: type gen_qpainter_types.QPainter, ): gen_qpainter_types.QPainter =

  gen_qpainter_types.QPainter.init(fcQPainter_new())
proc create*(T: type gen_qpainter_types.QPainter, param1: gen_qpaintdevice.QPaintDevice): gen_qpainter_types.QPainter =

  gen_qpainter_types.QPainter.init(fcQPainter_new2(param1.h))
proc device*(self: gen_qpainter_types.QPainter, ): gen_qpaintdevice.QPaintDevice =

  gen_qpaintdevice.QPaintDevice(h: fcQPainter_device(self.h))

proc begin*(self: gen_qpainter_types.QPainter, param1: gen_qpaintdevice.QPaintDevice): bool =

  fcQPainter_begin(self.h, param1.h)

proc endX*(self: gen_qpainter_types.QPainter, ): bool =

  fcQPainter_endX(self.h)

proc isActive*(self: gen_qpainter_types.QPainter, ): bool =

  fcQPainter_isActive(self.h)

proc setCompositionMode*(self: gen_qpainter_types.QPainter, mode: cint): void =

  fcQPainter_setCompositionMode(self.h, cint(mode))

proc compositionMode*(self: gen_qpainter_types.QPainter, ): cint =

  cint(fcQPainter_compositionMode(self.h))

proc font*(self: gen_qpainter_types.QPainter, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQPainter_font(self.h))

proc setFont*(self: gen_qpainter_types.QPainter, f: gen_qfont.QFont): void =

  fcQPainter_setFont(self.h, f.h)

proc fontMetrics*(self: gen_qpainter_types.QPainter, ): gen_qfontmetrics.QFontMetrics =

  gen_qfontmetrics.QFontMetrics(h: fcQPainter_fontMetrics(self.h))

proc fontInfo*(self: gen_qpainter_types.QPainter, ): gen_qfontinfo.QFontInfo =

  gen_qfontinfo.QFontInfo(h: fcQPainter_fontInfo(self.h))

proc setPen*(self: gen_qpainter_types.QPainter, color: gen_qcolor.QColor): void =

  fcQPainter_setPen(self.h, color.h)

proc setPenWithPen*(self: gen_qpainter_types.QPainter, pen: gen_qpen.QPen): void =

  fcQPainter_setPenWithPen(self.h, pen.h)

proc setPenWithStyle*(self: gen_qpainter_types.QPainter, style: cint): void =

  fcQPainter_setPenWithStyle(self.h, cint(style))

proc pen*(self: gen_qpainter_types.QPainter, ): gen_qpen.QPen =

  gen_qpen.QPen(h: fcQPainter_pen(self.h))

proc setBrush*(self: gen_qpainter_types.QPainter, brush: gen_qbrush.QBrush): void =

  fcQPainter_setBrush(self.h, brush.h)

proc setBrushWithStyle*(self: gen_qpainter_types.QPainter, style: cint): void =

  fcQPainter_setBrushWithStyle(self.h, cint(style))

proc brush*(self: gen_qpainter_types.QPainter, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPainter_brush(self.h))

proc setBackgroundMode*(self: gen_qpainter_types.QPainter, mode: cint): void =

  fcQPainter_setBackgroundMode(self.h, cint(mode))

proc backgroundMode*(self: gen_qpainter_types.QPainter, ): cint =

  cint(fcQPainter_backgroundMode(self.h))

proc brushOrigin*(self: gen_qpainter_types.QPainter, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQPainter_brushOrigin(self.h))

proc setBrushOrigin*(self: gen_qpainter_types.QPainter, x: cint, y: cint): void =

  fcQPainter_setBrushOrigin(self.h, x, y)

proc setBrushOriginWithBrushOrigin*(self: gen_qpainter_types.QPainter, brushOrigin: gen_qpoint.QPoint): void =

  fcQPainter_setBrushOriginWithBrushOrigin(self.h, brushOrigin.h)

proc setBrushOrigin2*(self: gen_qpainter_types.QPainter, brushOrigin: gen_qpoint.QPointF): void =

  fcQPainter_setBrushOrigin2(self.h, brushOrigin.h)

proc setBackground*(self: gen_qpainter_types.QPainter, bg: gen_qbrush.QBrush): void =

  fcQPainter_setBackground(self.h, bg.h)

proc background*(self: gen_qpainter_types.QPainter, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPainter_background(self.h))

proc opacity*(self: gen_qpainter_types.QPainter, ): float64 =

  fcQPainter_opacity(self.h)

proc setOpacity*(self: gen_qpainter_types.QPainter, opacity: float64): void =

  fcQPainter_setOpacity(self.h, opacity)

proc clipRegion*(self: gen_qpainter_types.QPainter, ): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQPainter_clipRegion(self.h))

proc clipPath*(self: gen_qpainter_types.QPainter, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQPainter_clipPath(self.h))

proc setClipRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRectF): void =

  fcQPainter_setClipRect(self.h, param1.h)

proc setClipRectWithQRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRect): void =

  fcQPainter_setClipRectWithQRect(self.h, param1.h)

proc setClipRect2*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint): void =

  fcQPainter_setClipRect2(self.h, x, y, w, h)

proc setClipRegion*(self: gen_qpainter_types.QPainter, param1: gen_qregion.QRegion): void =

  fcQPainter_setClipRegion(self.h, param1.h)

proc setClipPath*(self: gen_qpainter_types.QPainter, path: gen_qpainterpath.QPainterPath): void =

  fcQPainter_setClipPath(self.h, path.h)

proc setClipping*(self: gen_qpainter_types.QPainter, enable: bool): void =

  fcQPainter_setClipping(self.h, enable)

proc hasClipping*(self: gen_qpainter_types.QPainter, ): bool =

  fcQPainter_hasClipping(self.h)

proc clipBoundingRect*(self: gen_qpainter_types.QPainter, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPainter_clipBoundingRect(self.h))

proc save*(self: gen_qpainter_types.QPainter, ): void =

  fcQPainter_save(self.h)

proc restore*(self: gen_qpainter_types.QPainter, ): void =

  fcQPainter_restore(self.h)

proc setTransform*(self: gen_qpainter_types.QPainter, transform: gen_qtransform.QTransform): void =

  fcQPainter_setTransform(self.h, transform.h)

proc transform*(self: gen_qpainter_types.QPainter, ): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQPainter_transform(self.h))

proc deviceTransform*(self: gen_qpainter_types.QPainter, ): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQPainter_deviceTransform(self.h))

proc resetTransform*(self: gen_qpainter_types.QPainter, ): void =

  fcQPainter_resetTransform(self.h)

proc setWorldTransform*(self: gen_qpainter_types.QPainter, matrix: gen_qtransform.QTransform): void =

  fcQPainter_setWorldTransform(self.h, matrix.h)

proc worldTransform*(self: gen_qpainter_types.QPainter, ): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQPainter_worldTransform(self.h))

proc combinedTransform*(self: gen_qpainter_types.QPainter, ): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQPainter_combinedTransform(self.h))

proc setWorldMatrixEnabled*(self: gen_qpainter_types.QPainter, enabled: bool): void =

  fcQPainter_setWorldMatrixEnabled(self.h, enabled)

proc worldMatrixEnabled*(self: gen_qpainter_types.QPainter, ): bool =

  fcQPainter_worldMatrixEnabled(self.h)

proc scale*(self: gen_qpainter_types.QPainter, sx: float64, sy: float64): void =

  fcQPainter_scale(self.h, sx, sy)

proc shear*(self: gen_qpainter_types.QPainter, sh: float64, sv: float64): void =

  fcQPainter_shear(self.h, sh, sv)

proc rotate*(self: gen_qpainter_types.QPainter, a: float64): void =

  fcQPainter_rotate(self.h, a)

proc translate*(self: gen_qpainter_types.QPainter, offset: gen_qpoint.QPointF): void =

  fcQPainter_translate(self.h, offset.h)

proc translateWithOffset*(self: gen_qpainter_types.QPainter, offset: gen_qpoint.QPoint): void =

  fcQPainter_translateWithOffset(self.h, offset.h)

proc translate2*(self: gen_qpainter_types.QPainter, dx: float64, dy: float64): void =

  fcQPainter_translate2(self.h, dx, dy)

proc window*(self: gen_qpainter_types.QPainter, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPainter_window(self.h))

proc setWindow*(self: gen_qpainter_types.QPainter, window: gen_qrect.QRect): void =

  fcQPainter_setWindow(self.h, window.h)

proc setWindow2*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint): void =

  fcQPainter_setWindow2(self.h, x, y, w, h)

proc viewport*(self: gen_qpainter_types.QPainter, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPainter_viewport(self.h))

proc setViewport*(self: gen_qpainter_types.QPainter, viewport: gen_qrect.QRect): void =

  fcQPainter_setViewport(self.h, viewport.h)

proc setViewport2*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint): void =

  fcQPainter_setViewport2(self.h, x, y, w, h)

proc setViewTransformEnabled*(self: gen_qpainter_types.QPainter, enable: bool): void =

  fcQPainter_setViewTransformEnabled(self.h, enable)

proc viewTransformEnabled*(self: gen_qpainter_types.QPainter, ): bool =

  fcQPainter_viewTransformEnabled(self.h)

proc strokePath*(self: gen_qpainter_types.QPainter, path: gen_qpainterpath.QPainterPath, pen: gen_qpen.QPen): void =

  fcQPainter_strokePath(self.h, path.h, pen.h)

proc fillPath*(self: gen_qpainter_types.QPainter, path: gen_qpainterpath.QPainterPath, brush: gen_qbrush.QBrush): void =

  fcQPainter_fillPath(self.h, path.h, brush.h)

proc drawPath*(self: gen_qpainter_types.QPainter, path: gen_qpainterpath.QPainterPath): void =

  fcQPainter_drawPath(self.h, path.h)

proc drawPoint*(self: gen_qpainter_types.QPainter, pt: gen_qpoint.QPointF): void =

  fcQPainter_drawPoint(self.h, pt.h)

proc drawPointWithQPoint*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPoint): void =

  fcQPainter_drawPointWithQPoint(self.h, p.h)

proc drawPoint2*(self: gen_qpainter_types.QPainter, x: cint, y: cint): void =

  fcQPainter_drawPoint2(self.h, x, y)

proc drawPoints*(self: gen_qpainter_types.QPainter, points: gen_qpoint.QPointF, pointCount: cint): void =

  fcQPainter_drawPoints(self.h, points.h, pointCount)

proc drawPoints2*(self: gen_qpainter_types.QPainter, points: gen_qpoint.QPoint, pointCount: cint): void =

  fcQPainter_drawPoints2(self.h, points.h, pointCount)

proc drawLine*(self: gen_qpainter_types.QPainter, line: gen_qline.QLineF): void =

  fcQPainter_drawLine(self.h, line.h)

proc drawLineWithLine*(self: gen_qpainter_types.QPainter, line: gen_qline.QLine): void =

  fcQPainter_drawLineWithLine(self.h, line.h)

proc drawLine2*(self: gen_qpainter_types.QPainter, x1: cint, y1: cint, x2: cint, y2: cint): void =

  fcQPainter_drawLine2(self.h, x1, y1, x2, y2)

proc drawLine3*(self: gen_qpainter_types.QPainter, p1: gen_qpoint.QPoint, p2: gen_qpoint.QPoint): void =

  fcQPainter_drawLine3(self.h, p1.h, p2.h)

proc drawLine4*(self: gen_qpainter_types.QPainter, p1: gen_qpoint.QPointF, p2: gen_qpoint.QPointF): void =

  fcQPainter_drawLine4(self.h, p1.h, p2.h)

proc drawLines*(self: gen_qpainter_types.QPainter, lines: gen_qline.QLineF, lineCount: cint): void =

  fcQPainter_drawLines(self.h, lines.h, lineCount)

proc drawLinesWithLines*(self: gen_qpainter_types.QPainter, lines: seq[gen_qline.QLineF]): void =

  var lines_CArray = newSeq[pointer](len(lines))
  for i in 0..<len(lines):
    lines_CArray[i] = lines[i].h

  fcQPainter_drawLinesWithLines(self.h, struct_miqt_array(len: csize_t(len(lines)), data: if len(lines) == 0: nil else: addr(lines_CArray[0])))

proc drawLines2*(self: gen_qpainter_types.QPainter, pointPairs: gen_qpoint.QPointF, lineCount: cint): void =

  fcQPainter_drawLines2(self.h, pointPairs.h, lineCount)

proc drawLinesWithPointPairs*(self: gen_qpainter_types.QPainter, pointPairs: seq[gen_qpoint.QPointF]): void =

  var pointPairs_CArray = newSeq[pointer](len(pointPairs))
  for i in 0..<len(pointPairs):
    pointPairs_CArray[i] = pointPairs[i].h

  fcQPainter_drawLinesWithPointPairs(self.h, struct_miqt_array(len: csize_t(len(pointPairs)), data: if len(pointPairs) == 0: nil else: addr(pointPairs_CArray[0])))

proc drawLines3*(self: gen_qpainter_types.QPainter, lines: gen_qline.QLine, lineCount: cint): void =

  fcQPainter_drawLines3(self.h, lines.h, lineCount)

proc drawLines4*(self: gen_qpainter_types.QPainter, lines: seq[gen_qline.QLine]): void =

  var lines_CArray = newSeq[pointer](len(lines))
  for i in 0..<len(lines):
    lines_CArray[i] = lines[i].h

  fcQPainter_drawLines4(self.h, struct_miqt_array(len: csize_t(len(lines)), data: if len(lines) == 0: nil else: addr(lines_CArray[0])))

proc drawLines5*(self: gen_qpainter_types.QPainter, pointPairs: gen_qpoint.QPoint, lineCount: cint): void =

  fcQPainter_drawLines5(self.h, pointPairs.h, lineCount)

proc drawLines6*(self: gen_qpainter_types.QPainter, pointPairs: seq[gen_qpoint.QPoint]): void =

  var pointPairs_CArray = newSeq[pointer](len(pointPairs))
  for i in 0..<len(pointPairs):
    pointPairs_CArray[i] = pointPairs[i].h

  fcQPainter_drawLines6(self.h, struct_miqt_array(len: csize_t(len(pointPairs)), data: if len(pointPairs) == 0: nil else: addr(pointPairs_CArray[0])))

proc drawRect*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRectF): void =

  fcQPainter_drawRect(self.h, rect.h)

proc drawRect2*(self: gen_qpainter_types.QPainter, x1: cint, y1: cint, w: cint, h: cint): void =

  fcQPainter_drawRect2(self.h, x1, y1, w, h)

proc drawRectWithRect*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRect): void =

  fcQPainter_drawRectWithRect(self.h, rect.h)

proc drawRects*(self: gen_qpainter_types.QPainter, rects: gen_qrect.QRectF, rectCount: cint): void =

  fcQPainter_drawRects(self.h, rects.h, rectCount)

proc drawRectsWithRectangles*(self: gen_qpainter_types.QPainter, rectangles: seq[gen_qrect.QRectF]): void =

  var rectangles_CArray = newSeq[pointer](len(rectangles))
  for i in 0..<len(rectangles):
    rectangles_CArray[i] = rectangles[i].h

  fcQPainter_drawRectsWithRectangles(self.h, struct_miqt_array(len: csize_t(len(rectangles)), data: if len(rectangles) == 0: nil else: addr(rectangles_CArray[0])))

proc drawRects2*(self: gen_qpainter_types.QPainter, rects: gen_qrect.QRect, rectCount: cint): void =

  fcQPainter_drawRects2(self.h, rects.h, rectCount)

proc drawRects3*(self: gen_qpainter_types.QPainter, rectangles: seq[gen_qrect.QRect]): void =

  var rectangles_CArray = newSeq[pointer](len(rectangles))
  for i in 0..<len(rectangles):
    rectangles_CArray[i] = rectangles[i].h

  fcQPainter_drawRects3(self.h, struct_miqt_array(len: csize_t(len(rectangles)), data: if len(rectangles) == 0: nil else: addr(rectangles_CArray[0])))

proc drawEllipse*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRectF): void =

  fcQPainter_drawEllipse(self.h, r.h)

proc drawEllipseWithQRect*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRect): void =

  fcQPainter_drawEllipseWithQRect(self.h, r.h)

proc drawEllipse2*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint): void =

  fcQPainter_drawEllipse2(self.h, x, y, w, h)

proc drawEllipse3*(self: gen_qpainter_types.QPainter, center: gen_qpoint.QPointF, rx: float64, ry: float64): void =

  fcQPainter_drawEllipse3(self.h, center.h, rx, ry)

proc drawEllipse4*(self: gen_qpainter_types.QPainter, center: gen_qpoint.QPoint, rx: cint, ry: cint): void =

  fcQPainter_drawEllipse4(self.h, center.h, rx, ry)

proc drawPolyline*(self: gen_qpainter_types.QPainter, points: gen_qpoint.QPointF, pointCount: cint): void =

  fcQPainter_drawPolyline(self.h, points.h, pointCount)

proc drawPolyline2*(self: gen_qpainter_types.QPainter, points: gen_qpoint.QPoint, pointCount: cint): void =

  fcQPainter_drawPolyline2(self.h, points.h, pointCount)

proc drawPolygon*(self: gen_qpainter_types.QPainter, points: gen_qpoint.QPointF, pointCount: cint): void =

  fcQPainter_drawPolygon(self.h, points.h, pointCount)

proc drawPolygon2*(self: gen_qpainter_types.QPainter, points: gen_qpoint.QPoint, pointCount: cint): void =

  fcQPainter_drawPolygon2(self.h, points.h, pointCount)

proc drawConvexPolygon*(self: gen_qpainter_types.QPainter, points: gen_qpoint.QPointF, pointCount: cint): void =

  fcQPainter_drawConvexPolygon(self.h, points.h, pointCount)

proc drawConvexPolygon2*(self: gen_qpainter_types.QPainter, points: gen_qpoint.QPoint, pointCount: cint): void =

  fcQPainter_drawConvexPolygon2(self.h, points.h, pointCount)

proc drawArc*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRectF, a: cint, alen: cint): void =

  fcQPainter_drawArc(self.h, rect.h, a, alen)

proc drawArc2*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRect, a: cint, alen: cint): void =

  fcQPainter_drawArc2(self.h, param1.h, a, alen)

proc drawArc3*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint): void =

  fcQPainter_drawArc3(self.h, x, y, w, h, a, alen)

proc drawPie*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRectF, a: cint, alen: cint): void =

  fcQPainter_drawPie(self.h, rect.h, a, alen)

proc drawPie2*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint): void =

  fcQPainter_drawPie2(self.h, x, y, w, h, a, alen)

proc drawPie3*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRect, a: cint, alen: cint): void =

  fcQPainter_drawPie3(self.h, param1.h, a, alen)

proc drawChord*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRectF, a: cint, alen: cint): void =

  fcQPainter_drawChord(self.h, rect.h, a, alen)

proc drawChord2*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint): void =

  fcQPainter_drawChord2(self.h, x, y, w, h, a, alen)

proc drawChord3*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRect, a: cint, alen: cint): void =

  fcQPainter_drawChord3(self.h, param1.h, a, alen)

proc drawRoundedRect*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRectF, xRadius: float64, yRadius: float64): void =

  fcQPainter_drawRoundedRect(self.h, rect.h, xRadius, yRadius)

proc drawRoundedRect2*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, xRadius: float64, yRadius: float64): void =

  fcQPainter_drawRoundedRect2(self.h, x, y, w, h, xRadius, yRadius)

proc drawRoundedRect3*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRect, xRadius: float64, yRadius: float64): void =

  fcQPainter_drawRoundedRect3(self.h, rect.h, xRadius, yRadius)

proc drawTiledPixmap*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRectF, pm: gen_qpixmap.QPixmap): void =

  fcQPainter_drawTiledPixmap(self.h, rect.h, pm.h)

proc drawTiledPixmap2*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, param5: gen_qpixmap.QPixmap): void =

  fcQPainter_drawTiledPixmap2(self.h, x, y, w, h, param5.h)

proc drawTiledPixmap3*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRect, param2: gen_qpixmap.QPixmap): void =

  fcQPainter_drawTiledPixmap3(self.h, param1.h, param2.h)

proc drawPicture*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPointF, picture: gen_qpicture.QPicture): void =

  fcQPainter_drawPicture(self.h, p.h, picture.h)

proc drawPicture2*(self: gen_qpainter_types.QPainter, x: cint, y: cint, picture: gen_qpicture.QPicture): void =

  fcQPainter_drawPicture2(self.h, x, y, picture.h)

proc drawPicture3*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPoint, picture: gen_qpicture.QPicture): void =

  fcQPainter_drawPicture3(self.h, p.h, picture.h)

proc drawPixmap*(self: gen_qpainter_types.QPainter, targetRect: gen_qrect.QRectF, pixmap: gen_qpixmap.QPixmap, sourceRect: gen_qrect.QRectF): void =

  fcQPainter_drawPixmap(self.h, targetRect.h, pixmap.h, sourceRect.h)

proc drawPixmap2*(self: gen_qpainter_types.QPainter, targetRect: gen_qrect.QRect, pixmap: gen_qpixmap.QPixmap, sourceRect: gen_qrect.QRect): void =

  fcQPainter_drawPixmap2(self.h, targetRect.h, pixmap.h, sourceRect.h)

proc drawPixmap3*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, pm: gen_qpixmap.QPixmap, sx: cint, sy: cint, sw: cint, sh: cint): void =

  fcQPainter_drawPixmap3(self.h, x, y, w, h, pm.h, sx, sy, sw, sh)

proc drawPixmap4*(self: gen_qpainter_types.QPainter, x: cint, y: cint, pm: gen_qpixmap.QPixmap, sx: cint, sy: cint, sw: cint, sh: cint): void =

  fcQPainter_drawPixmap4(self.h, x, y, pm.h, sx, sy, sw, sh)

proc drawPixmap5*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPointF, pm: gen_qpixmap.QPixmap, sr: gen_qrect.QRectF): void =

  fcQPainter_drawPixmap5(self.h, p.h, pm.h, sr.h)

proc drawPixmap6*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPoint, pm: gen_qpixmap.QPixmap, sr: gen_qrect.QRect): void =

  fcQPainter_drawPixmap6(self.h, p.h, pm.h, sr.h)

proc drawPixmap7*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPointF, pm: gen_qpixmap.QPixmap): void =

  fcQPainter_drawPixmap7(self.h, p.h, pm.h)

proc drawPixmap8*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPoint, pm: gen_qpixmap.QPixmap): void =

  fcQPainter_drawPixmap8(self.h, p.h, pm.h)

proc drawPixmap9*(self: gen_qpainter_types.QPainter, x: cint, y: cint, pm: gen_qpixmap.QPixmap): void =

  fcQPainter_drawPixmap9(self.h, x, y, pm.h)

proc drawPixmap10*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRect, pm: gen_qpixmap.QPixmap): void =

  fcQPainter_drawPixmap10(self.h, r.h, pm.h)

proc drawPixmap11*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, pm: gen_qpixmap.QPixmap): void =

  fcQPainter_drawPixmap11(self.h, x, y, w, h, pm.h)

proc drawPixmapFragments*(self: gen_qpainter_types.QPainter, fragments: gen_qpainter_types.QPainterPixmapFragment, fragmentCount: cint, pixmap: gen_qpixmap.QPixmap): void =

  fcQPainter_drawPixmapFragments(self.h, fragments.h, fragmentCount, pixmap.h)

proc drawImage*(self: gen_qpainter_types.QPainter, targetRect: gen_qrect.QRectF, image: gen_qimage.QImage, sourceRect: gen_qrect.QRectF): void =

  fcQPainter_drawImage(self.h, targetRect.h, image.h, sourceRect.h)

proc drawImage2*(self: gen_qpainter_types.QPainter, targetRect: gen_qrect.QRect, image: gen_qimage.QImage, sourceRect: gen_qrect.QRect): void =

  fcQPainter_drawImage2(self.h, targetRect.h, image.h, sourceRect.h)

proc drawImage3*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPointF, image: gen_qimage.QImage, sr: gen_qrect.QRectF): void =

  fcQPainter_drawImage3(self.h, p.h, image.h, sr.h)

proc drawImage4*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPoint, image: gen_qimage.QImage, sr: gen_qrect.QRect): void =

  fcQPainter_drawImage4(self.h, p.h, image.h, sr.h)

proc drawImage5*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRectF, image: gen_qimage.QImage): void =

  fcQPainter_drawImage5(self.h, r.h, image.h)

proc drawImage6*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRect, image: gen_qimage.QImage): void =

  fcQPainter_drawImage6(self.h, r.h, image.h)

proc drawImage7*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPointF, image: gen_qimage.QImage): void =

  fcQPainter_drawImage7(self.h, p.h, image.h)

proc drawImage8*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPoint, image: gen_qimage.QImage): void =

  fcQPainter_drawImage8(self.h, p.h, image.h)

proc drawImage9*(self: gen_qpainter_types.QPainter, x: cint, y: cint, image: gen_qimage.QImage): void =

  fcQPainter_drawImage9(self.h, x, y, image.h)

proc setLayoutDirection*(self: gen_qpainter_types.QPainter, direction: cint): void =

  fcQPainter_setLayoutDirection(self.h, cint(direction))

proc layoutDirection*(self: gen_qpainter_types.QPainter, ): cint =

  cint(fcQPainter_layoutDirection(self.h))

proc drawGlyphRun*(self: gen_qpainter_types.QPainter, position: gen_qpoint.QPointF, glyphRun: gen_qglyphrun.QGlyphRun): void =

  fcQPainter_drawGlyphRun(self.h, position.h, glyphRun.h)

proc drawStaticText*(self: gen_qpainter_types.QPainter, topLeftPosition: gen_qpoint.QPointF, staticText: gen_qstatictext.QStaticText): void =

  fcQPainter_drawStaticText(self.h, topLeftPosition.h, staticText.h)

proc drawStaticText2*(self: gen_qpainter_types.QPainter, topLeftPosition: gen_qpoint.QPoint, staticText: gen_qstatictext.QStaticText): void =

  fcQPainter_drawStaticText2(self.h, topLeftPosition.h, staticText.h)

proc drawStaticText3*(self: gen_qpainter_types.QPainter, left: cint, top: cint, staticText: gen_qstatictext.QStaticText): void =

  fcQPainter_drawStaticText3(self.h, left, top, staticText.h)

proc drawText*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPointF, s: string): void =

  fcQPainter_drawText(self.h, p.h, struct_miqt_string(data: s, len: csize_t(len(s))))

proc drawText2*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPoint, s: string): void =

  fcQPainter_drawText2(self.h, p.h, struct_miqt_string(data: s, len: csize_t(len(s))))

proc drawText3*(self: gen_qpainter_types.QPainter, x: cint, y: cint, s: string): void =

  fcQPainter_drawText3(self.h, x, y, struct_miqt_string(data: s, len: csize_t(len(s))))

proc drawText4*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPointF, str: string, tf: cint, justificationPadding: cint): void =

  fcQPainter_drawText4(self.h, p.h, struct_miqt_string(data: str, len: csize_t(len(str))), tf, justificationPadding)

proc drawText5*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRectF, flags: cint, text: string): void =

  fcQPainter_drawText5(self.h, r.h, flags, struct_miqt_string(data: text, len: csize_t(len(text))))

proc drawText6*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRect, flags: cint, text: string): void =

  fcQPainter_drawText6(self.h, r.h, flags, struct_miqt_string(data: text, len: csize_t(len(text))))

proc drawText7*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, flags: cint, text: string): void =

  fcQPainter_drawText7(self.h, x, y, w, h, flags, struct_miqt_string(data: text, len: csize_t(len(text))))

proc drawText8*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRectF, text: string): void =

  fcQPainter_drawText8(self.h, r.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc boundingRect*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRectF, flags: cint, text: string): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPainter_boundingRect(self.h, rect.h, flags, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc boundingRect2*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRect, flags: cint, text: string): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPainter_boundingRect2(self.h, rect.h, flags, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc boundingRect3*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, flags: cint, text: string): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPainter_boundingRect3(self.h, x, y, w, h, flags, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc boundingRect4*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRectF, text: string): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPainter_boundingRect4(self.h, rect.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc drawTextItem*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPointF, ti: gen_qpaintengine.QTextItem): void =

  fcQPainter_drawTextItem(self.h, p.h, ti.h)

proc drawTextItem2*(self: gen_qpainter_types.QPainter, x: cint, y: cint, ti: gen_qpaintengine.QTextItem): void =

  fcQPainter_drawTextItem2(self.h, x, y, ti.h)

proc drawTextItem3*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPoint, ti: gen_qpaintengine.QTextItem): void =

  fcQPainter_drawTextItem3(self.h, p.h, ti.h)

proc fillRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRectF, param2: gen_qbrush.QBrush): void =

  fcQPainter_fillRect(self.h, param1.h, param2.h)

proc fillRect2*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, param5: gen_qbrush.QBrush): void =

  fcQPainter_fillRect2(self.h, x, y, w, h, param5.h)

proc fillRect3*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRect, param2: gen_qbrush.QBrush): void =

  fcQPainter_fillRect3(self.h, param1.h, param2.h)

proc fillRect4*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRectF, color: gen_qcolor.QColor): void =

  fcQPainter_fillRect4(self.h, param1.h, color.h)

proc fillRect5*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, color: gen_qcolor.QColor): void =

  fcQPainter_fillRect5(self.h, x, y, w, h, color.h)

proc fillRect6*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRect, color: gen_qcolor.QColor): void =

  fcQPainter_fillRect6(self.h, param1.h, color.h)

proc fillRect7*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, c: cint): void =

  fcQPainter_fillRect7(self.h, x, y, w, h, cint(c))

proc fillRect8*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRect, c: cint): void =

  fcQPainter_fillRect8(self.h, r.h, cint(c))

proc fillRect9*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRectF, c: cint): void =

  fcQPainter_fillRect9(self.h, r.h, cint(c))

proc fillRect10*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, style: cint): void =

  fcQPainter_fillRect10(self.h, x, y, w, h, cint(style))

proc fillRect11*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRect, style: cint): void =

  fcQPainter_fillRect11(self.h, r.h, cint(style))

proc fillRect12*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRectF, style: cint): void =

  fcQPainter_fillRect12(self.h, r.h, cint(style))

proc fillRect13*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, preset: cint): void =

  fcQPainter_fillRect13(self.h, x, y, w, h, cint(preset))

proc fillRect14*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRect, preset: cint): void =

  fcQPainter_fillRect14(self.h, r.h, cint(preset))

proc fillRect15*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRectF, preset: cint): void =

  fcQPainter_fillRect15(self.h, r.h, cint(preset))

proc eraseRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRectF): void =

  fcQPainter_eraseRect(self.h, param1.h)

proc eraseRect2*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint): void =

  fcQPainter_eraseRect2(self.h, x, y, w, h)

proc eraseRectWithQRect*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRect): void =

  fcQPainter_eraseRectWithQRect(self.h, param1.h)

proc setRenderHint*(self: gen_qpainter_types.QPainter, hint: cint): void =

  fcQPainter_setRenderHint(self.h, cint(hint))

proc setRenderHints*(self: gen_qpainter_types.QPainter, hints: cint): void =

  fcQPainter_setRenderHints(self.h, cint(hints))

proc renderHints*(self: gen_qpainter_types.QPainter, ): cint =

  cint(fcQPainter_renderHints(self.h))

proc testRenderHint*(self: gen_qpainter_types.QPainter, hint: cint): bool =

  fcQPainter_testRenderHint(self.h, cint(hint))

proc paintEngine*(self: gen_qpainter_types.QPainter, ): gen_qpaintengine.QPaintEngine =

  gen_qpaintengine.QPaintEngine(h: fcQPainter_paintEngine(self.h))

proc beginNativePainting*(self: gen_qpainter_types.QPainter, ): void =

  fcQPainter_beginNativePainting(self.h)

proc endNativePainting*(self: gen_qpainter_types.QPainter, ): void =

  fcQPainter_endNativePainting(self.h)

proc setClipRect22*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRectF, op: cint): void =

  fcQPainter_setClipRect22(self.h, param1.h, cint(op))

proc setClipRect23*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRect, op: cint): void =

  fcQPainter_setClipRect23(self.h, param1.h, cint(op))

proc setClipRect5*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, op: cint): void =

  fcQPainter_setClipRect5(self.h, x, y, w, h, cint(op))

proc setClipRegion2*(self: gen_qpainter_types.QPainter, param1: gen_qregion.QRegion, op: cint): void =

  fcQPainter_setClipRegion2(self.h, param1.h, cint(op))

proc setClipPath2*(self: gen_qpainter_types.QPainter, path: gen_qpainterpath.QPainterPath, op: cint): void =

  fcQPainter_setClipPath2(self.h, path.h, cint(op))

proc setTransform2*(self: gen_qpainter_types.QPainter, transform: gen_qtransform.QTransform, combine: bool): void =

  fcQPainter_setTransform2(self.h, transform.h, combine)

proc setWorldTransform2*(self: gen_qpainter_types.QPainter, matrix: gen_qtransform.QTransform, combine: bool): void =

  fcQPainter_setWorldTransform2(self.h, matrix.h, combine)

proc drawPolygon32*(self: gen_qpainter_types.QPainter, points: gen_qpoint.QPointF, pointCount: cint, fillRule: cint): void =

  fcQPainter_drawPolygon32(self.h, points.h, pointCount, cint(fillRule))

proc drawPolygon33*(self: gen_qpainter_types.QPainter, points: gen_qpoint.QPoint, pointCount: cint, fillRule: cint): void =

  fcQPainter_drawPolygon33(self.h, points.h, pointCount, cint(fillRule))

proc drawRoundedRect4*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRectF, xRadius: float64, yRadius: float64, mode: cint): void =

  fcQPainter_drawRoundedRect4(self.h, rect.h, xRadius, yRadius, cint(mode))

proc drawRoundedRect7*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, xRadius: float64, yRadius: float64, mode: cint): void =

  fcQPainter_drawRoundedRect7(self.h, x, y, w, h, xRadius, yRadius, cint(mode))

proc drawRoundedRect42*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRect, xRadius: float64, yRadius: float64, mode: cint): void =

  fcQPainter_drawRoundedRect42(self.h, rect.h, xRadius, yRadius, cint(mode))

proc drawTiledPixmap32*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRectF, pm: gen_qpixmap.QPixmap, offset: gen_qpoint.QPointF): void =

  fcQPainter_drawTiledPixmap32(self.h, rect.h, pm.h, offset.h)

proc drawTiledPixmap6*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, param5: gen_qpixmap.QPixmap, sx: cint): void =

  fcQPainter_drawTiledPixmap6(self.h, x, y, w, h, param5.h, sx)

proc drawTiledPixmap7*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, param5: gen_qpixmap.QPixmap, sx: cint, sy: cint): void =

  fcQPainter_drawTiledPixmap7(self.h, x, y, w, h, param5.h, sx, sy)

proc drawTiledPixmap33*(self: gen_qpainter_types.QPainter, param1: gen_qrect.QRect, param2: gen_qpixmap.QPixmap, param3: gen_qpoint.QPoint): void =

  fcQPainter_drawTiledPixmap33(self.h, param1.h, param2.h, param3.h)

proc drawPixmapFragments4*(self: gen_qpainter_types.QPainter, fragments: gen_qpainter_types.QPainterPixmapFragment, fragmentCount: cint, pixmap: gen_qpixmap.QPixmap, hints: cint): void =

  fcQPainter_drawPixmapFragments4(self.h, fragments.h, fragmentCount, pixmap.h, cint(hints))

proc drawImage42*(self: gen_qpainter_types.QPainter, targetRect: gen_qrect.QRectF, image: gen_qimage.QImage, sourceRect: gen_qrect.QRectF, flags: cint): void =

  fcQPainter_drawImage42(self.h, targetRect.h, image.h, sourceRect.h, cint(flags))

proc drawImage43*(self: gen_qpainter_types.QPainter, targetRect: gen_qrect.QRect, image: gen_qimage.QImage, sourceRect: gen_qrect.QRect, flags: cint): void =

  fcQPainter_drawImage43(self.h, targetRect.h, image.h, sourceRect.h, cint(flags))

proc drawImage44*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPointF, image: gen_qimage.QImage, sr: gen_qrect.QRectF, flags: cint): void =

  fcQPainter_drawImage44(self.h, p.h, image.h, sr.h, cint(flags))

proc drawImage45*(self: gen_qpainter_types.QPainter, p: gen_qpoint.QPoint, image: gen_qimage.QImage, sr: gen_qrect.QRect, flags: cint): void =

  fcQPainter_drawImage45(self.h, p.h, image.h, sr.h, cint(flags))

proc drawImage46*(self: gen_qpainter_types.QPainter, x: cint, y: cint, image: gen_qimage.QImage, sx: cint): void =

  fcQPainter_drawImage46(self.h, x, y, image.h, sx)

proc drawImage52*(self: gen_qpainter_types.QPainter, x: cint, y: cint, image: gen_qimage.QImage, sx: cint, sy: cint): void =

  fcQPainter_drawImage52(self.h, x, y, image.h, sx, sy)

proc drawImage62*(self: gen_qpainter_types.QPainter, x: cint, y: cint, image: gen_qimage.QImage, sx: cint, sy: cint, sw: cint): void =

  fcQPainter_drawImage62(self.h, x, y, image.h, sx, sy, sw)

proc drawImage72*(self: gen_qpainter_types.QPainter, x: cint, y: cint, image: gen_qimage.QImage, sx: cint, sy: cint, sw: cint, sh: cint): void =

  fcQPainter_drawImage72(self.h, x, y, image.h, sx, sy, sw, sh)

proc drawImage82*(self: gen_qpainter_types.QPainter, x: cint, y: cint, image: gen_qimage.QImage, sx: cint, sy: cint, sw: cint, sh: cint, flags: cint): void =

  fcQPainter_drawImage82(self.h, x, y, image.h, sx, sy, sw, sh, cint(flags))

proc drawText42*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRectF, flags: cint, text: string, br: gen_qrect.QRectF): void =

  fcQPainter_drawText42(self.h, r.h, flags, struct_miqt_string(data: text, len: csize_t(len(text))), br.h)

proc drawText43*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRect, flags: cint, text: string, br: gen_qrect.QRect): void =

  fcQPainter_drawText43(self.h, r.h, flags, struct_miqt_string(data: text, len: csize_t(len(text))), br.h)

proc drawText72*(self: gen_qpainter_types.QPainter, x: cint, y: cint, w: cint, h: cint, flags: cint, text: string, br: gen_qrect.QRect): void =

  fcQPainter_drawText72(self.h, x, y, w, h, flags, struct_miqt_string(data: text, len: csize_t(len(text))), br.h)

proc drawText32*(self: gen_qpainter_types.QPainter, r: gen_qrect.QRectF, text: string, o: gen_qtextoption.QTextOption): void =

  fcQPainter_drawText32(self.h, r.h, struct_miqt_string(data: text, len: csize_t(len(text))), o.h)

proc boundingRect32*(self: gen_qpainter_types.QPainter, rect: gen_qrect.QRectF, text: string, o: gen_qtextoption.QTextOption): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPainter_boundingRect32(self.h, rect.h, struct_miqt_string(data: text, len: csize_t(len(text))), o.h))

proc setRenderHint2*(self: gen_qpainter_types.QPainter, hint: cint, on: bool): void =

  fcQPainter_setRenderHint2(self.h, cint(hint), on)

proc setRenderHints2*(self: gen_qpainter_types.QPainter, hints: cint, on: bool): void =

  fcQPainter_setRenderHints2(self.h, cint(hints), on)

proc staticMetaObject*(_: type gen_qpainter_types.QPainter): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPainter_staticMetaObject())
proc delete*(self: gen_qpainter_types.QPainter) =
  fcQPainter_delete(self.h)

func init*(T: type gen_qpainter_types.QPainterPixmapFragment, h: ptr cQPainterPixmapFragment): gen_qpainter_types.QPainterPixmapFragment =
  T(h: h)
proc create*(_: type gen_qpainter_types.QPainterPixmapFragment, pos: gen_qpoint.QPointF, sourceRect: gen_qrect.QRectF): gen_qpainter_types.QPainterPixmapFragment =

  gen_qpainter_types.QPainterPixmapFragment(h: fcQPainterPixmapFragment_create(pos.h, sourceRect.h))

proc create3*(_: type gen_qpainter_types.QPainterPixmapFragment, pos: gen_qpoint.QPointF, sourceRect: gen_qrect.QRectF, scaleX: float64): gen_qpainter_types.QPainterPixmapFragment =

  gen_qpainter_types.QPainterPixmapFragment(h: fcQPainterPixmapFragment_create3(pos.h, sourceRect.h, scaleX))

proc create4*(_: type gen_qpainter_types.QPainterPixmapFragment, pos: gen_qpoint.QPointF, sourceRect: gen_qrect.QRectF, scaleX: float64, scaleY: float64): gen_qpainter_types.QPainterPixmapFragment =

  gen_qpainter_types.QPainterPixmapFragment(h: fcQPainterPixmapFragment_create4(pos.h, sourceRect.h, scaleX, scaleY))

proc create5*(_: type gen_qpainter_types.QPainterPixmapFragment, pos: gen_qpoint.QPointF, sourceRect: gen_qrect.QRectF, scaleX: float64, scaleY: float64, rotation: float64): gen_qpainter_types.QPainterPixmapFragment =

  gen_qpainter_types.QPainterPixmapFragment(h: fcQPainterPixmapFragment_create5(pos.h, sourceRect.h, scaleX, scaleY, rotation))

proc create6*(_: type gen_qpainter_types.QPainterPixmapFragment, pos: gen_qpoint.QPointF, sourceRect: gen_qrect.QRectF, scaleX: float64, scaleY: float64, rotation: float64, opacity: float64): gen_qpainter_types.QPainterPixmapFragment =

  gen_qpainter_types.QPainterPixmapFragment(h: fcQPainterPixmapFragment_create6(pos.h, sourceRect.h, scaleX, scaleY, rotation, opacity))

proc delete*(self: gen_qpainter_types.QPainterPixmapFragment) =
  fcQPainterPixmapFragment_delete(self.h)
