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
{.compile("gen_qpaintengine.cpp", cflags).}


type QTextItemRenderFlag* = cint
const
  QTextItemRightToLeft* = 1
  QTextItemOverline* = 16
  QTextItemUnderline* = 32
  QTextItemStrikeOut* = 64
  QTextItemDummy* = 4294967295



type QPaintEnginePaintEngineFeature* = cint
const
  QPaintEnginePrimitiveTransform* = 1
  QPaintEnginePatternTransform* = 2
  QPaintEnginePixmapTransform* = 4
  QPaintEnginePatternBrush* = 8
  QPaintEngineLinearGradientFill* = 16
  QPaintEngineRadialGradientFill* = 32
  QPaintEngineConicalGradientFill* = 64
  QPaintEngineAlphaBlend* = 128
  QPaintEnginePorterDuff* = 256
  QPaintEnginePainterPaths* = 512
  QPaintEngineAntialiasing* = 1024
  QPaintEngineBrushStroke* = 2048
  QPaintEngineConstantOpacity* = 4096
  QPaintEngineMaskedBrush* = 8192
  QPaintEnginePerspectiveTransform* = 16384
  QPaintEngineBlendModes* = 32768
  QPaintEngineObjectBoundingModeGradients* = 65536
  QPaintEngineRasterOpModes* = 131072
  QPaintEnginePaintOutsidePaintEvent* = 536870912
  QPaintEngineAllFeatures* = 4294967295



type QPaintEngineDirtyFlag* = cint
const
  QPaintEngineDirtyPen* = 1
  QPaintEngineDirtyBrush* = 2
  QPaintEngineDirtyBrushOrigin* = 4
  QPaintEngineDirtyFont* = 8
  QPaintEngineDirtyBackground* = 16
  QPaintEngineDirtyBackgroundMode* = 32
  QPaintEngineDirtyTransform* = 64
  QPaintEngineDirtyClipRegion* = 128
  QPaintEngineDirtyClipPath* = 256
  QPaintEngineDirtyHints* = 512
  QPaintEngineDirtyCompositionMode* = 1024
  QPaintEngineDirtyClipEnabled* = 2048
  QPaintEngineDirtyOpacity* = 4096
  QPaintEngineAllDirty* = 65535



type QPaintEnginePolygonDrawMode* = cint
const
  QPaintEngineOddEvenMode* = 0
  QPaintEngineWindingMode* = 1
  QPaintEngineConvexMode* = 2
  QPaintEnginePolylineMode* = 3



type QPaintEngineType* = cint
const
  QPaintEngineX11* = 0
  QPaintEngineWindows* = 1
  QPaintEngineQuickDraw* = 2
  QPaintEngineCoreGraphics* = 3
  QPaintEngineMacPrinter* = 4
  QPaintEngineQWindowSystem* = 5
  QPaintEnginePostScript* = 6
  QPaintEngineOpenGL* = 7
  QPaintEnginePicture* = 8
  QPaintEngineSVG* = 9
  QPaintEngineRaster* = 10
  QPaintEngineDirect3D* = 11
  QPaintEnginePdf* = 12
  QPaintEngineOpenVG* = 13
  QPaintEngineOpenGL2* = 14
  QPaintEnginePaintBuffer* = 15
  QPaintEngineBlitter* = 16
  QPaintEngineDirect2D* = 17
  QPaintEngineUser* = 50
  QPaintEngineMaxUser* = 100



import gen_qpaintengine_types
export gen_qpaintengine_types

import
  gen_qbrush,
  gen_qfont,
  gen_qimage,
  gen_qline,
  gen_qmatrix,
  gen_qnamespace,
  gen_qpaintdevice,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpen,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qtransform
export
  gen_qbrush,
  gen_qfont,
  gen_qimage,
  gen_qline,
  gen_qmatrix,
  gen_qnamespace,
  gen_qpaintdevice,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpen,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qtransform

type cQTextItem*{.exportc: "QTextItem", incompleteStruct.} = object
type cQPaintEngine*{.exportc: "QPaintEngine", incompleteStruct.} = object
type cQPaintEngineState*{.exportc: "QPaintEngineState", incompleteStruct.} = object

proc fcQTextItem_descent(self: pointer, ): float64 {.importc: "QTextItem_descent".}
proc fcQTextItem_ascent(self: pointer, ): float64 {.importc: "QTextItem_ascent".}
proc fcQTextItem_width(self: pointer, ): float64 {.importc: "QTextItem_width".}
proc fcQTextItem_renderFlags(self: pointer, ): cint {.importc: "QTextItem_renderFlags".}
proc fcQTextItem_text(self: pointer, ): struct_miqt_string {.importc: "QTextItem_text".}
proc fcQTextItem_font(self: pointer, ): pointer {.importc: "QTextItem_font".}
proc fcQTextItem_delete(self: pointer) {.importc: "QTextItem_delete".}
proc fcQPaintEngine_new(): ptr cQPaintEngine {.importc: "QPaintEngine_new".}
proc fcQPaintEngine_new2(features: cint): ptr cQPaintEngine {.importc: "QPaintEngine_new2".}
proc fcQPaintEngine_isActive(self: pointer, ): bool {.importc: "QPaintEngine_isActive".}
proc fcQPaintEngine_setActive(self: pointer, newState: bool): void {.importc: "QPaintEngine_setActive".}
proc fcQPaintEngine_begin(self: pointer, pdev: pointer): bool {.importc: "QPaintEngine_begin".}
proc fcQPaintEngine_endX(self: pointer, ): bool {.importc: "QPaintEngine_end".}
proc fcQPaintEngine_updateState(self: pointer, state: pointer): void {.importc: "QPaintEngine_updateState".}
proc fcQPaintEngine_drawRects(self: pointer, rects: pointer, rectCount: cint): void {.importc: "QPaintEngine_drawRects".}
proc fcQPaintEngine_drawRects2(self: pointer, rects: pointer, rectCount: cint): void {.importc: "QPaintEngine_drawRects2".}
proc fcQPaintEngine_drawLines(self: pointer, lines: pointer, lineCount: cint): void {.importc: "QPaintEngine_drawLines".}
proc fcQPaintEngine_drawLines2(self: pointer, lines: pointer, lineCount: cint): void {.importc: "QPaintEngine_drawLines2".}
proc fcQPaintEngine_drawEllipse(self: pointer, r: pointer): void {.importc: "QPaintEngine_drawEllipse".}
proc fcQPaintEngine_drawEllipseWithQRect(self: pointer, r: pointer): void {.importc: "QPaintEngine_drawEllipseWithQRect".}
proc fcQPaintEngine_drawPath(self: pointer, path: pointer): void {.importc: "QPaintEngine_drawPath".}
proc fcQPaintEngine_drawPoints(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPaintEngine_drawPoints".}
proc fcQPaintEngine_drawPoints2(self: pointer, points: pointer, pointCount: cint): void {.importc: "QPaintEngine_drawPoints2".}
proc fcQPaintEngine_drawPolygon(self: pointer, points: pointer, pointCount: cint, mode: cint): void {.importc: "QPaintEngine_drawPolygon".}
proc fcQPaintEngine_drawPolygon2(self: pointer, points: pointer, pointCount: cint, mode: cint): void {.importc: "QPaintEngine_drawPolygon2".}
proc fcQPaintEngine_drawPixmap(self: pointer, r: pointer, pm: pointer, sr: pointer): void {.importc: "QPaintEngine_drawPixmap".}
proc fcQPaintEngine_drawTextItem(self: pointer, p: pointer, textItem: pointer): void {.importc: "QPaintEngine_drawTextItem".}
proc fcQPaintEngine_drawTiledPixmap(self: pointer, r: pointer, pixmap: pointer, s: pointer): void {.importc: "QPaintEngine_drawTiledPixmap".}
proc fcQPaintEngine_drawImage(self: pointer, r: pointer, pm: pointer, sr: pointer, flags: cint): void {.importc: "QPaintEngine_drawImage".}
proc fcQPaintEngine_setPaintDevice(self: pointer, device: pointer): void {.importc: "QPaintEngine_setPaintDevice".}
proc fcQPaintEngine_paintDevice(self: pointer, ): pointer {.importc: "QPaintEngine_paintDevice".}
proc fcQPaintEngine_setSystemClip(self: pointer, baseClip: pointer): void {.importc: "QPaintEngine_setSystemClip".}
proc fcQPaintEngine_systemClip(self: pointer, ): pointer {.importc: "QPaintEngine_systemClip".}
proc fcQPaintEngine_setSystemRect(self: pointer, rect: pointer): void {.importc: "QPaintEngine_setSystemRect".}
proc fcQPaintEngine_systemRect(self: pointer, ): pointer {.importc: "QPaintEngine_systemRect".}
proc fcQPaintEngine_coordinateOffset(self: pointer, ): pointer {.importc: "QPaintEngine_coordinateOffset".}
proc fcQPaintEngine_typeX(self: pointer, ): cint {.importc: "QPaintEngine_type".}
proc fcQPaintEngine_fixNegRect(self: pointer, x: ptr cint, y: ptr cint, w: ptr cint, h: ptr cint): void {.importc: "QPaintEngine_fixNegRect".}
proc fcQPaintEngine_testDirty(self: pointer, df: cint): bool {.importc: "QPaintEngine_testDirty".}
proc fcQPaintEngine_setDirty(self: pointer, df: cint): void {.importc: "QPaintEngine_setDirty".}
proc fcQPaintEngine_clearDirty(self: pointer, df: cint): void {.importc: "QPaintEngine_clearDirty".}
proc fcQPaintEngine_hasFeature(self: pointer, feature: cint): bool {.importc: "QPaintEngine_hasFeature".}
proc fcQPaintEngine_painter(self: pointer, ): pointer {.importc: "QPaintEngine_painter".}
proc fcQPaintEngine_syncState(self: pointer, ): void {.importc: "QPaintEngine_syncState".}
proc fcQPaintEngine_isExtended(self: pointer, ): bool {.importc: "QPaintEngine_isExtended".}
proc fcQPaintEngine_override_virtual_begin(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_begin".}
proc fcQPaintEngine_override_virtual_endX(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_end".}
proc fcQPaintEngine_override_virtual_updateState(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_updateState".}
proc fQPaintEngine_virtualbase_drawRects(self: pointer, rects: pointer, rectCount: cint): void{.importc: "QPaintEngine_virtualbase_drawRects".}
proc fcQPaintEngine_override_virtual_drawRects(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawRects".}
proc fQPaintEngine_virtualbase_drawRects2(self: pointer, rects: pointer, rectCount: cint): void{.importc: "QPaintEngine_virtualbase_drawRects2".}
proc fcQPaintEngine_override_virtual_drawRects2(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawRects2".}
proc fQPaintEngine_virtualbase_drawLines(self: pointer, lines: pointer, lineCount: cint): void{.importc: "QPaintEngine_virtualbase_drawLines".}
proc fcQPaintEngine_override_virtual_drawLines(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawLines".}
proc fQPaintEngine_virtualbase_drawLines2(self: pointer, lines: pointer, lineCount: cint): void{.importc: "QPaintEngine_virtualbase_drawLines2".}
proc fcQPaintEngine_override_virtual_drawLines2(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawLines2".}
proc fQPaintEngine_virtualbase_drawEllipse(self: pointer, r: pointer): void{.importc: "QPaintEngine_virtualbase_drawEllipse".}
proc fcQPaintEngine_override_virtual_drawEllipse(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawEllipse".}
proc fQPaintEngine_virtualbase_drawEllipseWithQRect(self: pointer, r: pointer): void{.importc: "QPaintEngine_virtualbase_drawEllipseWithQRect".}
proc fcQPaintEngine_override_virtual_drawEllipseWithQRect(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawEllipseWithQRect".}
proc fQPaintEngine_virtualbase_drawPath(self: pointer, path: pointer): void{.importc: "QPaintEngine_virtualbase_drawPath".}
proc fcQPaintEngine_override_virtual_drawPath(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawPath".}
proc fQPaintEngine_virtualbase_drawPoints(self: pointer, points: pointer, pointCount: cint): void{.importc: "QPaintEngine_virtualbase_drawPoints".}
proc fcQPaintEngine_override_virtual_drawPoints(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawPoints".}
proc fQPaintEngine_virtualbase_drawPoints2(self: pointer, points: pointer, pointCount: cint): void{.importc: "QPaintEngine_virtualbase_drawPoints2".}
proc fcQPaintEngine_override_virtual_drawPoints2(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawPoints2".}
proc fQPaintEngine_virtualbase_drawPolygon(self: pointer, points: pointer, pointCount: cint, mode: cint): void{.importc: "QPaintEngine_virtualbase_drawPolygon".}
proc fcQPaintEngine_override_virtual_drawPolygon(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawPolygon".}
proc fQPaintEngine_virtualbase_drawPolygon2(self: pointer, points: pointer, pointCount: cint, mode: cint): void{.importc: "QPaintEngine_virtualbase_drawPolygon2".}
proc fcQPaintEngine_override_virtual_drawPolygon2(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawPolygon2".}
proc fcQPaintEngine_override_virtual_drawPixmap(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawPixmap".}
proc fQPaintEngine_virtualbase_drawTextItem(self: pointer, p: pointer, textItem: pointer): void{.importc: "QPaintEngine_virtualbase_drawTextItem".}
proc fcQPaintEngine_override_virtual_drawTextItem(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawTextItem".}
proc fQPaintEngine_virtualbase_drawTiledPixmap(self: pointer, r: pointer, pixmap: pointer, s: pointer): void{.importc: "QPaintEngine_virtualbase_drawTiledPixmap".}
proc fcQPaintEngine_override_virtual_drawTiledPixmap(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawTiledPixmap".}
proc fQPaintEngine_virtualbase_drawImage(self: pointer, r: pointer, pm: pointer, sr: pointer, flags: cint): void{.importc: "QPaintEngine_virtualbase_drawImage".}
proc fcQPaintEngine_override_virtual_drawImage(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_drawImage".}
proc fQPaintEngine_virtualbase_coordinateOffset(self: pointer, ): pointer{.importc: "QPaintEngine_virtualbase_coordinateOffset".}
proc fcQPaintEngine_override_virtual_coordinateOffset(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_coordinateOffset".}
proc fcQPaintEngine_override_virtual_typeX(self: pointer, slot: int) {.importc: "QPaintEngine_override_virtual_type".}
proc fcQPaintEngine_delete(self: pointer) {.importc: "QPaintEngine_delete".}
proc fcQPaintEngineState_state(self: pointer, ): cint {.importc: "QPaintEngineState_state".}
proc fcQPaintEngineState_pen(self: pointer, ): pointer {.importc: "QPaintEngineState_pen".}
proc fcQPaintEngineState_brush(self: pointer, ): pointer {.importc: "QPaintEngineState_brush".}
proc fcQPaintEngineState_brushOrigin(self: pointer, ): pointer {.importc: "QPaintEngineState_brushOrigin".}
proc fcQPaintEngineState_backgroundBrush(self: pointer, ): pointer {.importc: "QPaintEngineState_backgroundBrush".}
proc fcQPaintEngineState_backgroundMode(self: pointer, ): cint {.importc: "QPaintEngineState_backgroundMode".}
proc fcQPaintEngineState_font(self: pointer, ): pointer {.importc: "QPaintEngineState_font".}
proc fcQPaintEngineState_matrix(self: pointer, ): pointer {.importc: "QPaintEngineState_matrix".}
proc fcQPaintEngineState_transform(self: pointer, ): pointer {.importc: "QPaintEngineState_transform".}
proc fcQPaintEngineState_clipOperation(self: pointer, ): cint {.importc: "QPaintEngineState_clipOperation".}
proc fcQPaintEngineState_clipRegion(self: pointer, ): pointer {.importc: "QPaintEngineState_clipRegion".}
proc fcQPaintEngineState_clipPath(self: pointer, ): pointer {.importc: "QPaintEngineState_clipPath".}
proc fcQPaintEngineState_isClipEnabled(self: pointer, ): bool {.importc: "QPaintEngineState_isClipEnabled".}
proc fcQPaintEngineState_renderHints(self: pointer, ): cint {.importc: "QPaintEngineState_renderHints".}
proc fcQPaintEngineState_compositionMode(self: pointer, ): cint {.importc: "QPaintEngineState_compositionMode".}
proc fcQPaintEngineState_opacity(self: pointer, ): float64 {.importc: "QPaintEngineState_opacity".}
proc fcQPaintEngineState_painter(self: pointer, ): pointer {.importc: "QPaintEngineState_painter".}
proc fcQPaintEngineState_brushNeedsResolving(self: pointer, ): bool {.importc: "QPaintEngineState_brushNeedsResolving".}
proc fcQPaintEngineState_penNeedsResolving(self: pointer, ): bool {.importc: "QPaintEngineState_penNeedsResolving".}
proc fcQPaintEngineState_delete(self: pointer) {.importc: "QPaintEngineState_delete".}


func init*(T: type QTextItem, h: ptr cQTextItem): QTextItem =
  T(h: h)
proc descent*(self: QTextItem, ): float64 =

  fcQTextItem_descent(self.h)

proc ascent*(self: QTextItem, ): float64 =

  fcQTextItem_ascent(self.h)

proc width*(self: QTextItem, ): float64 =

  fcQTextItem_width(self.h)

proc renderFlags*(self: QTextItem, ): QTextItemRenderFlag =

  QTextItemRenderFlag(fcQTextItem_renderFlags(self.h))

proc text*(self: QTextItem, ): string =

  let v_ms = fcQTextItem_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc font*(self: QTextItem, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQTextItem_font(self.h))

proc delete*(self: QTextItem) =
  fcQTextItem_delete(self.h)

func init*(T: type QPaintEngine, h: ptr cQPaintEngine): QPaintEngine =
  T(h: h)
proc create*(T: type QPaintEngine, ): QPaintEngine =

  QPaintEngine.init(fcQPaintEngine_new())
proc create*(T: type QPaintEngine, features: QPaintEnginePaintEngineFeature): QPaintEngine =

  QPaintEngine.init(fcQPaintEngine_new2(cint(features)))
proc isActive*(self: QPaintEngine, ): bool =

  fcQPaintEngine_isActive(self.h)

proc setActive*(self: QPaintEngine, newState: bool): void =

  fcQPaintEngine_setActive(self.h, newState)

proc begin*(self: QPaintEngine, pdev: gen_qpaintdevice.QPaintDevice): bool =

  fcQPaintEngine_begin(self.h, pdev.h)

proc endX*(self: QPaintEngine, ): bool =

  fcQPaintEngine_endX(self.h)

proc updateState*(self: QPaintEngine, state: QPaintEngineState): void =

  fcQPaintEngine_updateState(self.h, state.h)

proc drawRects*(self: QPaintEngine, rects: gen_qrect.QRect, rectCount: cint): void =

  fcQPaintEngine_drawRects(self.h, rects.h, rectCount)

proc drawRects2*(self: QPaintEngine, rects: gen_qrect.QRectF, rectCount: cint): void =

  fcQPaintEngine_drawRects2(self.h, rects.h, rectCount)

proc drawLines*(self: QPaintEngine, lines: gen_qline.QLine, lineCount: cint): void =

  fcQPaintEngine_drawLines(self.h, lines.h, lineCount)

proc drawLines2*(self: QPaintEngine, lines: gen_qline.QLineF, lineCount: cint): void =

  fcQPaintEngine_drawLines2(self.h, lines.h, lineCount)

proc drawEllipse*(self: QPaintEngine, r: gen_qrect.QRectF): void =

  fcQPaintEngine_drawEllipse(self.h, r.h)

proc drawEllipseWithQRect*(self: QPaintEngine, r: gen_qrect.QRect): void =

  fcQPaintEngine_drawEllipseWithQRect(self.h, r.h)

proc drawPath*(self: QPaintEngine, path: gen_qpainterpath.QPainterPath): void =

  fcQPaintEngine_drawPath(self.h, path.h)

proc drawPoints*(self: QPaintEngine, points: gen_qpoint.QPointF, pointCount: cint): void =

  fcQPaintEngine_drawPoints(self.h, points.h, pointCount)

proc drawPoints2*(self: QPaintEngine, points: gen_qpoint.QPoint, pointCount: cint): void =

  fcQPaintEngine_drawPoints2(self.h, points.h, pointCount)

proc drawPolygon*(self: QPaintEngine, points: gen_qpoint.QPointF, pointCount: cint, mode: QPaintEnginePolygonDrawMode): void =

  fcQPaintEngine_drawPolygon(self.h, points.h, pointCount, cint(mode))

proc drawPolygon2*(self: QPaintEngine, points: gen_qpoint.QPoint, pointCount: cint, mode: QPaintEnginePolygonDrawMode): void =

  fcQPaintEngine_drawPolygon2(self.h, points.h, pointCount, cint(mode))

proc drawPixmap*(self: QPaintEngine, r: gen_qrect.QRectF, pm: gen_qpixmap.QPixmap, sr: gen_qrect.QRectF): void =

  fcQPaintEngine_drawPixmap(self.h, r.h, pm.h, sr.h)

proc drawTextItem*(self: QPaintEngine, p: gen_qpoint.QPointF, textItem: QTextItem): void =

  fcQPaintEngine_drawTextItem(self.h, p.h, textItem.h)

proc drawTiledPixmap*(self: QPaintEngine, r: gen_qrect.QRectF, pixmap: gen_qpixmap.QPixmap, s: gen_qpoint.QPointF): void =

  fcQPaintEngine_drawTiledPixmap(self.h, r.h, pixmap.h, s.h)

proc drawImage*(self: QPaintEngine, r: gen_qrect.QRectF, pm: gen_qimage.QImage, sr: gen_qrect.QRectF, flags: gen_qnamespace.ImageConversionFlag): void =

  fcQPaintEngine_drawImage(self.h, r.h, pm.h, sr.h, cint(flags))

proc setPaintDevice*(self: QPaintEngine, device: gen_qpaintdevice.QPaintDevice): void =

  fcQPaintEngine_setPaintDevice(self.h, device.h)

proc paintDevice*(self: QPaintEngine, ): gen_qpaintdevice.QPaintDevice =

  gen_qpaintdevice.QPaintDevice(h: fcQPaintEngine_paintDevice(self.h))

proc setSystemClip*(self: QPaintEngine, baseClip: gen_qregion.QRegion): void =

  fcQPaintEngine_setSystemClip(self.h, baseClip.h)

proc systemClip*(self: QPaintEngine, ): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQPaintEngine_systemClip(self.h))

proc setSystemRect*(self: QPaintEngine, rect: gen_qrect.QRect): void =

  fcQPaintEngine_setSystemRect(self.h, rect.h)

proc systemRect*(self: QPaintEngine, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPaintEngine_systemRect(self.h))

proc coordinateOffset*(self: QPaintEngine, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQPaintEngine_coordinateOffset(self.h))

proc typeX*(self: QPaintEngine, ): QPaintEngineType =

  QPaintEngineType(fcQPaintEngine_typeX(self.h))

proc fixNegRect*(self: QPaintEngine, x: ptr cint, y: ptr cint, w: ptr cint, h: ptr cint): void =

  fcQPaintEngine_fixNegRect(self.h, x, y, w, h)

proc testDirty*(self: QPaintEngine, df: QPaintEngineDirtyFlag): bool =

  fcQPaintEngine_testDirty(self.h, cint(df))

proc setDirty*(self: QPaintEngine, df: QPaintEngineDirtyFlag): void =

  fcQPaintEngine_setDirty(self.h, cint(df))

proc clearDirty*(self: QPaintEngine, df: QPaintEngineDirtyFlag): void =

  fcQPaintEngine_clearDirty(self.h, cint(df))

proc hasFeature*(self: QPaintEngine, feature: QPaintEnginePaintEngineFeature): bool =

  fcQPaintEngine_hasFeature(self.h, cint(feature))

proc painter*(self: QPaintEngine, ): gen_qpainter.QPainter =

  gen_qpainter.QPainter(h: fcQPaintEngine_painter(self.h))

proc syncState*(self: QPaintEngine, ): void =

  fcQPaintEngine_syncState(self.h)

proc isExtended*(self: QPaintEngine, ): bool =

  fcQPaintEngine_isExtended(self.h)

type QPaintEnginebeginBase* = proc(pdev: gen_qpaintdevice.QPaintDevice): bool
proc onbegin*(self: QPaintEngine, slot: proc(pdev: gen_qpaintdevice.QPaintDevice): bool) =
  # TODO check subclass
  type Cb = proc(pdev: gen_qpaintdevice.QPaintDevice): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_begin(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_begin(self: ptr cQPaintEngine, slot: int, pdev: pointer): bool {.exportc: "miqt_exec_callback_QPaintEngine_begin ".} =
  type Cb = proc(pdev: gen_qpaintdevice.QPaintDevice): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpaintdevice.QPaintDevice(h: pdev)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QPaintEngineendXBase* = proc(): bool
proc onendX*(self: QPaintEngine, slot: proc(): bool) =
  # TODO check subclass
  type Cb = proc(): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_endX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_end(self: ptr cQPaintEngine, slot: int): bool {.exportc: "miqt_exec_callback_QPaintEngine_end ".} =
  type Cb = proc(): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QPaintEngineupdateStateBase* = proc(state: QPaintEngineState): void
proc onupdateState*(self: QPaintEngine, slot: proc(state: QPaintEngineState): void) =
  # TODO check subclass
  type Cb = proc(state: QPaintEngineState): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_updateState(self: ptr cQPaintEngine, slot: int, state: pointer): void {.exportc: "miqt_exec_callback_QPaintEngine_updateState ".} =
  type Cb = proc(state: QPaintEngineState): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QPaintEngineState(h: state)


  nimfunc[](slotval1)
proc callVirtualBase_drawRects(self: QPaintEngine, rects: gen_qrect.QRect, rectCount: cint): void =


  fQPaintEngine_virtualbase_drawRects(self.h, rects.h, rectCount)

type QPaintEnginedrawRectsBase* = proc(rects: gen_qrect.QRect, rectCount: cint): void
proc ondrawRects*(self: QPaintEngine, slot: proc(super: QPaintEnginedrawRectsBase, rects: gen_qrect.QRect, rectCount: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginedrawRectsBase, rects: gen_qrect.QRect, rectCount: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawRects(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawRects(self: ptr cQPaintEngine, slot: int, rects: pointer, rectCount: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawRects ".} =
  type Cb = proc(super: QPaintEnginedrawRectsBase, rects: gen_qrect.QRect, rectCount: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rects: gen_qrect.QRect, rectCount: cint): auto =
    callVirtualBase_drawRects(QPaintEngine(h: self), rects, rectCount)
  let slotval1 = gen_qrect.QRect(h: rects)

  let slotval2 = rectCount


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_drawRects2(self: QPaintEngine, rects: gen_qrect.QRectF, rectCount: cint): void =


  fQPaintEngine_virtualbase_drawRects2(self.h, rects.h, rectCount)

type QPaintEnginedrawRects2Base* = proc(rects: gen_qrect.QRectF, rectCount: cint): void
proc ondrawRects2*(self: QPaintEngine, slot: proc(super: QPaintEnginedrawRects2Base, rects: gen_qrect.QRectF, rectCount: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginedrawRects2Base, rects: gen_qrect.QRectF, rectCount: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawRects2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawRects2(self: ptr cQPaintEngine, slot: int, rects: pointer, rectCount: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawRects2 ".} =
  type Cb = proc(super: QPaintEnginedrawRects2Base, rects: gen_qrect.QRectF, rectCount: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rects: gen_qrect.QRectF, rectCount: cint): auto =
    callVirtualBase_drawRects2(QPaintEngine(h: self), rects, rectCount)
  let slotval1 = gen_qrect.QRectF(h: rects)

  let slotval2 = rectCount


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_drawLines(self: QPaintEngine, lines: gen_qline.QLine, lineCount: cint): void =


  fQPaintEngine_virtualbase_drawLines(self.h, lines.h, lineCount)

type QPaintEnginedrawLinesBase* = proc(lines: gen_qline.QLine, lineCount: cint): void
proc ondrawLines*(self: QPaintEngine, slot: proc(super: QPaintEnginedrawLinesBase, lines: gen_qline.QLine, lineCount: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginedrawLinesBase, lines: gen_qline.QLine, lineCount: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawLines(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawLines(self: ptr cQPaintEngine, slot: int, lines: pointer, lineCount: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawLines ".} =
  type Cb = proc(super: QPaintEnginedrawLinesBase, lines: gen_qline.QLine, lineCount: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(lines: gen_qline.QLine, lineCount: cint): auto =
    callVirtualBase_drawLines(QPaintEngine(h: self), lines, lineCount)
  let slotval1 = gen_qline.QLine(h: lines)

  let slotval2 = lineCount


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_drawLines2(self: QPaintEngine, lines: gen_qline.QLineF, lineCount: cint): void =


  fQPaintEngine_virtualbase_drawLines2(self.h, lines.h, lineCount)

type QPaintEnginedrawLines2Base* = proc(lines: gen_qline.QLineF, lineCount: cint): void
proc ondrawLines2*(self: QPaintEngine, slot: proc(super: QPaintEnginedrawLines2Base, lines: gen_qline.QLineF, lineCount: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginedrawLines2Base, lines: gen_qline.QLineF, lineCount: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawLines2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawLines2(self: ptr cQPaintEngine, slot: int, lines: pointer, lineCount: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawLines2 ".} =
  type Cb = proc(super: QPaintEnginedrawLines2Base, lines: gen_qline.QLineF, lineCount: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(lines: gen_qline.QLineF, lineCount: cint): auto =
    callVirtualBase_drawLines2(QPaintEngine(h: self), lines, lineCount)
  let slotval1 = gen_qline.QLineF(h: lines)

  let slotval2 = lineCount


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_drawEllipse(self: QPaintEngine, r: gen_qrect.QRectF): void =


  fQPaintEngine_virtualbase_drawEllipse(self.h, r.h)

type QPaintEnginedrawEllipseBase* = proc(r: gen_qrect.QRectF): void
proc ondrawEllipse*(self: QPaintEngine, slot: proc(super: QPaintEnginedrawEllipseBase, r: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginedrawEllipseBase, r: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawEllipse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawEllipse(self: ptr cQPaintEngine, slot: int, r: pointer): void {.exportc: "miqt_exec_callback_QPaintEngine_drawEllipse ".} =
  type Cb = proc(super: QPaintEnginedrawEllipseBase, r: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(r: gen_qrect.QRectF): auto =
    callVirtualBase_drawEllipse(QPaintEngine(h: self), r)
  let slotval1 = gen_qrect.QRectF(h: r)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_drawEllipseWithQRect(self: QPaintEngine, r: gen_qrect.QRect): void =


  fQPaintEngine_virtualbase_drawEllipseWithQRect(self.h, r.h)

type QPaintEnginedrawEllipseWithQRectBase* = proc(r: gen_qrect.QRect): void
proc ondrawEllipseWithQRect*(self: QPaintEngine, slot: proc(super: QPaintEnginedrawEllipseWithQRectBase, r: gen_qrect.QRect): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginedrawEllipseWithQRectBase, r: gen_qrect.QRect): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawEllipseWithQRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawEllipseWithQRect(self: ptr cQPaintEngine, slot: int, r: pointer): void {.exportc: "miqt_exec_callback_QPaintEngine_drawEllipseWithQRect ".} =
  type Cb = proc(super: QPaintEnginedrawEllipseWithQRectBase, r: gen_qrect.QRect): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(r: gen_qrect.QRect): auto =
    callVirtualBase_drawEllipseWithQRect(QPaintEngine(h: self), r)
  let slotval1 = gen_qrect.QRect(h: r)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_drawPath(self: QPaintEngine, path: gen_qpainterpath.QPainterPath): void =


  fQPaintEngine_virtualbase_drawPath(self.h, path.h)

type QPaintEnginedrawPathBase* = proc(path: gen_qpainterpath.QPainterPath): void
proc ondrawPath*(self: QPaintEngine, slot: proc(super: QPaintEnginedrawPathBase, path: gen_qpainterpath.QPainterPath): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginedrawPathBase, path: gen_qpainterpath.QPainterPath): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawPath(self: ptr cQPaintEngine, slot: int, path: pointer): void {.exportc: "miqt_exec_callback_QPaintEngine_drawPath ".} =
  type Cb = proc(super: QPaintEnginedrawPathBase, path: gen_qpainterpath.QPainterPath): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath): auto =
    callVirtualBase_drawPath(QPaintEngine(h: self), path)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_drawPoints(self: QPaintEngine, points: gen_qpoint.QPointF, pointCount: cint): void =


  fQPaintEngine_virtualbase_drawPoints(self.h, points.h, pointCount)

type QPaintEnginedrawPointsBase* = proc(points: gen_qpoint.QPointF, pointCount: cint): void
proc ondrawPoints*(self: QPaintEngine, slot: proc(super: QPaintEnginedrawPointsBase, points: gen_qpoint.QPointF, pointCount: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginedrawPointsBase, points: gen_qpoint.QPointF, pointCount: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawPoints(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawPoints(self: ptr cQPaintEngine, slot: int, points: pointer, pointCount: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawPoints ".} =
  type Cb = proc(super: QPaintEnginedrawPointsBase, points: gen_qpoint.QPointF, pointCount: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(points: gen_qpoint.QPointF, pointCount: cint): auto =
    callVirtualBase_drawPoints(QPaintEngine(h: self), points, pointCount)
  let slotval1 = gen_qpoint.QPointF(h: points)

  let slotval2 = pointCount


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_drawPoints2(self: QPaintEngine, points: gen_qpoint.QPoint, pointCount: cint): void =


  fQPaintEngine_virtualbase_drawPoints2(self.h, points.h, pointCount)

type QPaintEnginedrawPoints2Base* = proc(points: gen_qpoint.QPoint, pointCount: cint): void
proc ondrawPoints2*(self: QPaintEngine, slot: proc(super: QPaintEnginedrawPoints2Base, points: gen_qpoint.QPoint, pointCount: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginedrawPoints2Base, points: gen_qpoint.QPoint, pointCount: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawPoints2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawPoints2(self: ptr cQPaintEngine, slot: int, points: pointer, pointCount: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawPoints2 ".} =
  type Cb = proc(super: QPaintEnginedrawPoints2Base, points: gen_qpoint.QPoint, pointCount: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(points: gen_qpoint.QPoint, pointCount: cint): auto =
    callVirtualBase_drawPoints2(QPaintEngine(h: self), points, pointCount)
  let slotval1 = gen_qpoint.QPoint(h: points)

  let slotval2 = pointCount


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_drawPolygon(self: QPaintEngine, points: gen_qpoint.QPointF, pointCount: cint, mode: QPaintEnginePolygonDrawMode): void =


  fQPaintEngine_virtualbase_drawPolygon(self.h, points.h, pointCount, cint(mode))

type QPaintEnginedrawPolygonBase* = proc(points: gen_qpoint.QPointF, pointCount: cint, mode: QPaintEnginePolygonDrawMode): void
proc ondrawPolygon*(self: QPaintEngine, slot: proc(super: QPaintEnginedrawPolygonBase, points: gen_qpoint.QPointF, pointCount: cint, mode: QPaintEnginePolygonDrawMode): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginedrawPolygonBase, points: gen_qpoint.QPointF, pointCount: cint, mode: QPaintEnginePolygonDrawMode): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawPolygon(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawPolygon(self: ptr cQPaintEngine, slot: int, points: pointer, pointCount: cint, mode: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawPolygon ".} =
  type Cb = proc(super: QPaintEnginedrawPolygonBase, points: gen_qpoint.QPointF, pointCount: cint, mode: QPaintEnginePolygonDrawMode): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(points: gen_qpoint.QPointF, pointCount: cint, mode: QPaintEnginePolygonDrawMode): auto =
    callVirtualBase_drawPolygon(QPaintEngine(h: self), points, pointCount, mode)
  let slotval1 = gen_qpoint.QPointF(h: points)

  let slotval2 = pointCount

  let slotval3 = QPaintEnginePolygonDrawMode(mode)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_drawPolygon2(self: QPaintEngine, points: gen_qpoint.QPoint, pointCount: cint, mode: QPaintEnginePolygonDrawMode): void =


  fQPaintEngine_virtualbase_drawPolygon2(self.h, points.h, pointCount, cint(mode))

type QPaintEnginedrawPolygon2Base* = proc(points: gen_qpoint.QPoint, pointCount: cint, mode: QPaintEnginePolygonDrawMode): void
proc ondrawPolygon2*(self: QPaintEngine, slot: proc(super: QPaintEnginedrawPolygon2Base, points: gen_qpoint.QPoint, pointCount: cint, mode: QPaintEnginePolygonDrawMode): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginedrawPolygon2Base, points: gen_qpoint.QPoint, pointCount: cint, mode: QPaintEnginePolygonDrawMode): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawPolygon2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawPolygon2(self: ptr cQPaintEngine, slot: int, points: pointer, pointCount: cint, mode: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawPolygon2 ".} =
  type Cb = proc(super: QPaintEnginedrawPolygon2Base, points: gen_qpoint.QPoint, pointCount: cint, mode: QPaintEnginePolygonDrawMode): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(points: gen_qpoint.QPoint, pointCount: cint, mode: QPaintEnginePolygonDrawMode): auto =
    callVirtualBase_drawPolygon2(QPaintEngine(h: self), points, pointCount, mode)
  let slotval1 = gen_qpoint.QPoint(h: points)

  let slotval2 = pointCount

  let slotval3 = QPaintEnginePolygonDrawMode(mode)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
type QPaintEnginedrawPixmapBase* = proc(r: gen_qrect.QRectF, pm: gen_qpixmap.QPixmap, sr: gen_qrect.QRectF): void
proc ondrawPixmap*(self: QPaintEngine, slot: proc(r: gen_qrect.QRectF, pm: gen_qpixmap.QPixmap, sr: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(r: gen_qrect.QRectF, pm: gen_qpixmap.QPixmap, sr: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawPixmap(self: ptr cQPaintEngine, slot: int, r: pointer, pm: pointer, sr: pointer): void {.exportc: "miqt_exec_callback_QPaintEngine_drawPixmap ".} =
  type Cb = proc(r: gen_qrect.QRectF, pm: gen_qpixmap.QPixmap, sr: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRectF(h: r)

  let slotval2 = gen_qpixmap.QPixmap(h: pm)

  let slotval3 = gen_qrect.QRectF(h: sr)


  nimfunc[](slotval1, slotval2, slotval3)
proc callVirtualBase_drawTextItem(self: QPaintEngine, p: gen_qpoint.QPointF, textItem: QTextItem): void =


  fQPaintEngine_virtualbase_drawTextItem(self.h, p.h, textItem.h)

type QPaintEnginedrawTextItemBase* = proc(p: gen_qpoint.QPointF, textItem: QTextItem): void
proc ondrawTextItem*(self: QPaintEngine, slot: proc(super: QPaintEnginedrawTextItemBase, p: gen_qpoint.QPointF, textItem: QTextItem): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginedrawTextItemBase, p: gen_qpoint.QPointF, textItem: QTextItem): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawTextItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawTextItem(self: ptr cQPaintEngine, slot: int, p: pointer, textItem: pointer): void {.exportc: "miqt_exec_callback_QPaintEngine_drawTextItem ".} =
  type Cb = proc(super: QPaintEnginedrawTextItemBase, p: gen_qpoint.QPointF, textItem: QTextItem): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(p: gen_qpoint.QPointF, textItem: QTextItem): auto =
    callVirtualBase_drawTextItem(QPaintEngine(h: self), p, textItem)
  let slotval1 = gen_qpoint.QPointF(h: p)

  let slotval2 = QTextItem(h: textItem)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_drawTiledPixmap(self: QPaintEngine, r: gen_qrect.QRectF, pixmap: gen_qpixmap.QPixmap, s: gen_qpoint.QPointF): void =


  fQPaintEngine_virtualbase_drawTiledPixmap(self.h, r.h, pixmap.h, s.h)

type QPaintEnginedrawTiledPixmapBase* = proc(r: gen_qrect.QRectF, pixmap: gen_qpixmap.QPixmap, s: gen_qpoint.QPointF): void
proc ondrawTiledPixmap*(self: QPaintEngine, slot: proc(super: QPaintEnginedrawTiledPixmapBase, r: gen_qrect.QRectF, pixmap: gen_qpixmap.QPixmap, s: gen_qpoint.QPointF): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginedrawTiledPixmapBase, r: gen_qrect.QRectF, pixmap: gen_qpixmap.QPixmap, s: gen_qpoint.QPointF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawTiledPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawTiledPixmap(self: ptr cQPaintEngine, slot: int, r: pointer, pixmap: pointer, s: pointer): void {.exportc: "miqt_exec_callback_QPaintEngine_drawTiledPixmap ".} =
  type Cb = proc(super: QPaintEnginedrawTiledPixmapBase, r: gen_qrect.QRectF, pixmap: gen_qpixmap.QPixmap, s: gen_qpoint.QPointF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(r: gen_qrect.QRectF, pixmap: gen_qpixmap.QPixmap, s: gen_qpoint.QPointF): auto =
    callVirtualBase_drawTiledPixmap(QPaintEngine(h: self), r, pixmap, s)
  let slotval1 = gen_qrect.QRectF(h: r)

  let slotval2 = gen_qpixmap.QPixmap(h: pixmap)

  let slotval3 = gen_qpoint.QPointF(h: s)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_drawImage(self: QPaintEngine, r: gen_qrect.QRectF, pm: gen_qimage.QImage, sr: gen_qrect.QRectF, flags: gen_qnamespace.ImageConversionFlag): void =


  fQPaintEngine_virtualbase_drawImage(self.h, r.h, pm.h, sr.h, cint(flags))

type QPaintEnginedrawImageBase* = proc(r: gen_qrect.QRectF, pm: gen_qimage.QImage, sr: gen_qrect.QRectF, flags: gen_qnamespace.ImageConversionFlag): void
proc ondrawImage*(self: QPaintEngine, slot: proc(super: QPaintEnginedrawImageBase, r: gen_qrect.QRectF, pm: gen_qimage.QImage, sr: gen_qrect.QRectF, flags: gen_qnamespace.ImageConversionFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginedrawImageBase, r: gen_qrect.QRectF, pm: gen_qimage.QImage, sr: gen_qrect.QRectF, flags: gen_qnamespace.ImageConversionFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_drawImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_drawImage(self: ptr cQPaintEngine, slot: int, r: pointer, pm: pointer, sr: pointer, flags: cint): void {.exportc: "miqt_exec_callback_QPaintEngine_drawImage ".} =
  type Cb = proc(super: QPaintEnginedrawImageBase, r: gen_qrect.QRectF, pm: gen_qimage.QImage, sr: gen_qrect.QRectF, flags: gen_qnamespace.ImageConversionFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(r: gen_qrect.QRectF, pm: gen_qimage.QImage, sr: gen_qrect.QRectF, flags: gen_qnamespace.ImageConversionFlag): auto =
    callVirtualBase_drawImage(QPaintEngine(h: self), r, pm, sr, flags)
  let slotval1 = gen_qrect.QRectF(h: r)

  let slotval2 = gen_qimage.QImage(h: pm)

  let slotval3 = gen_qrect.QRectF(h: sr)

  let slotval4 = gen_qnamespace.ImageConversionFlag(flags)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_coordinateOffset(self: QPaintEngine, ): gen_qpoint.QPoint =


  gen_qpoint.QPoint(h: fQPaintEngine_virtualbase_coordinateOffset(self.h))

type QPaintEnginecoordinateOffsetBase* = proc(): gen_qpoint.QPoint
proc oncoordinateOffset*(self: QPaintEngine, slot: proc(super: QPaintEnginecoordinateOffsetBase): gen_qpoint.QPoint) =
  # TODO check subclass
  type Cb = proc(super: QPaintEnginecoordinateOffsetBase): gen_qpoint.QPoint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_coordinateOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_coordinateOffset(self: ptr cQPaintEngine, slot: int): pointer {.exportc: "miqt_exec_callback_QPaintEngine_coordinateOffset ".} =
  type Cb = proc(super: QPaintEnginecoordinateOffsetBase): gen_qpoint.QPoint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_coordinateOffset(QPaintEngine(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
type QPaintEnginetypeXBase* = proc(): QPaintEngineType
proc ontypeX*(self: QPaintEngine, slot: proc(): QPaintEngineType) =
  # TODO check subclass
  type Cb = proc(): QPaintEngineType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEngine_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEngine_type(self: ptr cQPaintEngine, slot: int): cint {.exportc: "miqt_exec_callback_QPaintEngine_type ".} =
  type Cb = proc(): QPaintEngineType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc delete*(self: QPaintEngine) =
  fcQPaintEngine_delete(self.h)

func init*(T: type QPaintEngineState, h: ptr cQPaintEngineState): QPaintEngineState =
  T(h: h)
proc state*(self: QPaintEngineState, ): QPaintEngineDirtyFlag =

  QPaintEngineDirtyFlag(fcQPaintEngineState_state(self.h))

proc pen*(self: QPaintEngineState, ): gen_qpen.QPen =

  gen_qpen.QPen(h: fcQPaintEngineState_pen(self.h))

proc brush*(self: QPaintEngineState, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPaintEngineState_brush(self.h))

proc brushOrigin*(self: QPaintEngineState, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQPaintEngineState_brushOrigin(self.h))

proc backgroundBrush*(self: QPaintEngineState, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPaintEngineState_backgroundBrush(self.h))

proc backgroundMode*(self: QPaintEngineState, ): gen_qnamespace.BGMode =

  gen_qnamespace.BGMode(fcQPaintEngineState_backgroundMode(self.h))

proc font*(self: QPaintEngineState, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQPaintEngineState_font(self.h))

proc matrix*(self: QPaintEngineState, ): gen_qmatrix.QMatrix =

  gen_qmatrix.QMatrix(h: fcQPaintEngineState_matrix(self.h))

proc transform*(self: QPaintEngineState, ): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQPaintEngineState_transform(self.h))

proc clipOperation*(self: QPaintEngineState, ): gen_qnamespace.ClipOperation =

  gen_qnamespace.ClipOperation(fcQPaintEngineState_clipOperation(self.h))

proc clipRegion*(self: QPaintEngineState, ): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQPaintEngineState_clipRegion(self.h))

proc clipPath*(self: QPaintEngineState, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQPaintEngineState_clipPath(self.h))

proc isClipEnabled*(self: QPaintEngineState, ): bool =

  fcQPaintEngineState_isClipEnabled(self.h)

proc renderHints*(self: QPaintEngineState, ): gen_qpainter.QPainterRenderHint =

  gen_qpainter.QPainterRenderHint(fcQPaintEngineState_renderHints(self.h))

proc compositionMode*(self: QPaintEngineState, ): gen_qpainter.QPainterCompositionMode =

  gen_qpainter.QPainterCompositionMode(fcQPaintEngineState_compositionMode(self.h))

proc opacity*(self: QPaintEngineState, ): float64 =

  fcQPaintEngineState_opacity(self.h)

proc painter*(self: QPaintEngineState, ): gen_qpainter.QPainter =

  gen_qpainter.QPainter(h: fcQPaintEngineState_painter(self.h))

proc brushNeedsResolving*(self: QPaintEngineState, ): bool =

  fcQPaintEngineState_brushNeedsResolving(self.h)

proc penNeedsResolving*(self: QPaintEngineState, ): bool =

  fcQPaintEngineState_penNeedsResolving(self.h)

proc delete*(self: QPaintEngineState) =
  fcQPaintEngineState_delete(self.h)
