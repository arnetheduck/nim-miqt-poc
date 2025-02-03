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
{.compile("gen_qgraphicsview.cpp", cflags).}


type QGraphicsViewViewportAnchor* = cint
const
  QGraphicsViewNoAnchor* = 0
  QGraphicsViewAnchorViewCenter* = 1
  QGraphicsViewAnchorUnderMouse* = 2



type QGraphicsViewCacheModeFlag* = cint
const
  QGraphicsViewCacheNone* = 0
  QGraphicsViewCacheBackground* = 1



type QGraphicsViewDragMode* = cint
const
  QGraphicsViewNoDrag* = 0
  QGraphicsViewScrollHandDrag* = 1
  QGraphicsViewRubberBandDrag* = 2



type QGraphicsViewViewportUpdateMode* = cint
const
  QGraphicsViewFullViewportUpdate* = 0
  QGraphicsViewMinimalViewportUpdate* = 1
  QGraphicsViewSmartViewportUpdate* = 2
  QGraphicsViewNoViewportUpdate* = 3
  QGraphicsViewBoundingRectViewportUpdate* = 4



type QGraphicsViewOptimizationFlag* = cint
const
  QGraphicsViewDontSavePainterState* = 1
  QGraphicsViewDontAdjustForAntialiasing* = 2
  QGraphicsViewIndirectPainting* = 4



import gen_qgraphicsview_types
export gen_qgraphicsview_types

import
  gen_qabstractscrollarea,
  gen_qbrush,
  gen_qcoreevent,
  gen_qevent,
  gen_qgraphicsitem,
  gen_qgraphicsscene,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qstyleoption,
  gen_qtransform,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractscrollarea,
  gen_qbrush,
  gen_qcoreevent,
  gen_qevent,
  gen_qgraphicsitem,
  gen_qgraphicsscene,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qstyleoption,
  gen_qtransform,
  gen_qvariant,
  gen_qwidget

type cQGraphicsView*{.exportc: "QGraphicsView", incompleteStruct.} = object

proc fcQGraphicsView_new(parent: pointer): ptr cQGraphicsView {.importc: "QGraphicsView_new".}
proc fcQGraphicsView_new2(): ptr cQGraphicsView {.importc: "QGraphicsView_new2".}
proc fcQGraphicsView_new3(scene: pointer): ptr cQGraphicsView {.importc: "QGraphicsView_new3".}
proc fcQGraphicsView_new4(scene: pointer, parent: pointer): ptr cQGraphicsView {.importc: "QGraphicsView_new4".}
proc fcQGraphicsView_metaObject(self: pointer, ): pointer {.importc: "QGraphicsView_metaObject".}
proc fcQGraphicsView_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsView_metacast".}
proc fcQGraphicsView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsView_metacall".}
proc fcQGraphicsView_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsView_tr".}
proc fcQGraphicsView_sizeHint(self: pointer, ): pointer {.importc: "QGraphicsView_sizeHint".}
proc fcQGraphicsView_renderHints(self: pointer, ): cint {.importc: "QGraphicsView_renderHints".}
proc fcQGraphicsView_setRenderHint(self: pointer, hint: cint): void {.importc: "QGraphicsView_setRenderHint".}
proc fcQGraphicsView_setRenderHints(self: pointer, hints: cint): void {.importc: "QGraphicsView_setRenderHints".}
proc fcQGraphicsView_alignment(self: pointer, ): cint {.importc: "QGraphicsView_alignment".}
proc fcQGraphicsView_setAlignment(self: pointer, alignment: cint): void {.importc: "QGraphicsView_setAlignment".}
proc fcQGraphicsView_transformationAnchor(self: pointer, ): cint {.importc: "QGraphicsView_transformationAnchor".}
proc fcQGraphicsView_setTransformationAnchor(self: pointer, anchor: cint): void {.importc: "QGraphicsView_setTransformationAnchor".}
proc fcQGraphicsView_resizeAnchor(self: pointer, ): cint {.importc: "QGraphicsView_resizeAnchor".}
proc fcQGraphicsView_setResizeAnchor(self: pointer, anchor: cint): void {.importc: "QGraphicsView_setResizeAnchor".}
proc fcQGraphicsView_viewportUpdateMode(self: pointer, ): cint {.importc: "QGraphicsView_viewportUpdateMode".}
proc fcQGraphicsView_setViewportUpdateMode(self: pointer, mode: cint): void {.importc: "QGraphicsView_setViewportUpdateMode".}
proc fcQGraphicsView_optimizationFlags(self: pointer, ): cint {.importc: "QGraphicsView_optimizationFlags".}
proc fcQGraphicsView_setOptimizationFlag(self: pointer, flag: cint): void {.importc: "QGraphicsView_setOptimizationFlag".}
proc fcQGraphicsView_setOptimizationFlags(self: pointer, flags: cint): void {.importc: "QGraphicsView_setOptimizationFlags".}
proc fcQGraphicsView_dragMode(self: pointer, ): cint {.importc: "QGraphicsView_dragMode".}
proc fcQGraphicsView_setDragMode(self: pointer, mode: cint): void {.importc: "QGraphicsView_setDragMode".}
proc fcQGraphicsView_rubberBandSelectionMode(self: pointer, ): cint {.importc: "QGraphicsView_rubberBandSelectionMode".}
proc fcQGraphicsView_setRubberBandSelectionMode(self: pointer, mode: cint): void {.importc: "QGraphicsView_setRubberBandSelectionMode".}
proc fcQGraphicsView_rubberBandRect(self: pointer, ): pointer {.importc: "QGraphicsView_rubberBandRect".}
proc fcQGraphicsView_cacheMode(self: pointer, ): cint {.importc: "QGraphicsView_cacheMode".}
proc fcQGraphicsView_setCacheMode(self: pointer, mode: cint): void {.importc: "QGraphicsView_setCacheMode".}
proc fcQGraphicsView_resetCachedContent(self: pointer, ): void {.importc: "QGraphicsView_resetCachedContent".}
proc fcQGraphicsView_isInteractive(self: pointer, ): bool {.importc: "QGraphicsView_isInteractive".}
proc fcQGraphicsView_setInteractive(self: pointer, allowed: bool): void {.importc: "QGraphicsView_setInteractive".}
proc fcQGraphicsView_scene(self: pointer, ): pointer {.importc: "QGraphicsView_scene".}
proc fcQGraphicsView_setScene(self: pointer, scene: pointer): void {.importc: "QGraphicsView_setScene".}
proc fcQGraphicsView_sceneRect(self: pointer, ): pointer {.importc: "QGraphicsView_sceneRect".}
proc fcQGraphicsView_setSceneRect(self: pointer, rect: pointer): void {.importc: "QGraphicsView_setSceneRect".}
proc fcQGraphicsView_setSceneRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsView_setSceneRect2".}
proc fcQGraphicsView_transform(self: pointer, ): pointer {.importc: "QGraphicsView_transform".}
proc fcQGraphicsView_viewportTransform(self: pointer, ): pointer {.importc: "QGraphicsView_viewportTransform".}
proc fcQGraphicsView_isTransformed(self: pointer, ): bool {.importc: "QGraphicsView_isTransformed".}
proc fcQGraphicsView_setTransform(self: pointer, matrix: pointer): void {.importc: "QGraphicsView_setTransform".}
proc fcQGraphicsView_resetTransform(self: pointer, ): void {.importc: "QGraphicsView_resetTransform".}
proc fcQGraphicsView_rotate(self: pointer, angle: float64): void {.importc: "QGraphicsView_rotate".}
proc fcQGraphicsView_scale(self: pointer, sx: float64, sy: float64): void {.importc: "QGraphicsView_scale".}
proc fcQGraphicsView_shear(self: pointer, sh: float64, sv: float64): void {.importc: "QGraphicsView_shear".}
proc fcQGraphicsView_translate(self: pointer, dx: float64, dy: float64): void {.importc: "QGraphicsView_translate".}
proc fcQGraphicsView_centerOn(self: pointer, pos: pointer): void {.importc: "QGraphicsView_centerOn".}
proc fcQGraphicsView_centerOn2(self: pointer, x: float64, y: float64): void {.importc: "QGraphicsView_centerOn2".}
proc fcQGraphicsView_centerOnWithItem(self: pointer, item: pointer): void {.importc: "QGraphicsView_centerOnWithItem".}
proc fcQGraphicsView_ensureVisible(self: pointer, rect: pointer): void {.importc: "QGraphicsView_ensureVisible".}
proc fcQGraphicsView_ensureVisible2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsView_ensureVisible2".}
proc fcQGraphicsView_ensureVisibleWithItem(self: pointer, item: pointer): void {.importc: "QGraphicsView_ensureVisibleWithItem".}
proc fcQGraphicsView_fitInView(self: pointer, rect: pointer): void {.importc: "QGraphicsView_fitInView".}
proc fcQGraphicsView_fitInView2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsView_fitInView2".}
proc fcQGraphicsView_fitInViewWithItem(self: pointer, item: pointer): void {.importc: "QGraphicsView_fitInViewWithItem".}
proc fcQGraphicsView_render(self: pointer, painter: pointer): void {.importc: "QGraphicsView_render".}
proc fcQGraphicsView_items(self: pointer, ): struct_miqt_array {.importc: "QGraphicsView_items".}
proc fcQGraphicsView_itemsWithPos(self: pointer, pos: pointer): struct_miqt_array {.importc: "QGraphicsView_itemsWithPos".}
proc fcQGraphicsView_items2(self: pointer, x: cint, y: cint): struct_miqt_array {.importc: "QGraphicsView_items2".}
proc fcQGraphicsView_itemsWithRect(self: pointer, rect: pointer): struct_miqt_array {.importc: "QGraphicsView_itemsWithRect".}
proc fcQGraphicsView_items3(self: pointer, x: cint, y: cint, w: cint, h: cint): struct_miqt_array {.importc: "QGraphicsView_items3".}
proc fcQGraphicsView_itemsWithPath(self: pointer, path: pointer): struct_miqt_array {.importc: "QGraphicsView_itemsWithPath".}
proc fcQGraphicsView_itemAt(self: pointer, pos: pointer): pointer {.importc: "QGraphicsView_itemAt".}
proc fcQGraphicsView_itemAt2(self: pointer, x: cint, y: cint): pointer {.importc: "QGraphicsView_itemAt2".}
proc fcQGraphicsView_mapToScene(self: pointer, point: pointer): pointer {.importc: "QGraphicsView_mapToScene".}
proc fcQGraphicsView_mapToSceneWithPath(self: pointer, path: pointer): pointer {.importc: "QGraphicsView_mapToSceneWithPath".}
proc fcQGraphicsView_mapFromScene(self: pointer, point: pointer): pointer {.importc: "QGraphicsView_mapFromScene".}
proc fcQGraphicsView_mapFromSceneWithPath(self: pointer, path: pointer): pointer {.importc: "QGraphicsView_mapFromSceneWithPath".}
proc fcQGraphicsView_mapToScene2(self: pointer, x: cint, y: cint): pointer {.importc: "QGraphicsView_mapToScene2".}
proc fcQGraphicsView_mapFromScene2(self: pointer, x: float64, y: float64): pointer {.importc: "QGraphicsView_mapFromScene2".}
proc fcQGraphicsView_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsView_inputMethodQuery".}
proc fcQGraphicsView_backgroundBrush(self: pointer, ): pointer {.importc: "QGraphicsView_backgroundBrush".}
proc fcQGraphicsView_setBackgroundBrush(self: pointer, brush: pointer): void {.importc: "QGraphicsView_setBackgroundBrush".}
proc fcQGraphicsView_foregroundBrush(self: pointer, ): pointer {.importc: "QGraphicsView_foregroundBrush".}
proc fcQGraphicsView_setForegroundBrush(self: pointer, brush: pointer): void {.importc: "QGraphicsView_setForegroundBrush".}
proc fcQGraphicsView_updateScene(self: pointer, rects: struct_miqt_array): void {.importc: "QGraphicsView_updateScene".}
proc fcQGraphicsView_invalidateScene(self: pointer, ): void {.importc: "QGraphicsView_invalidateScene".}
proc fcQGraphicsView_updateSceneRect(self: pointer, rect: pointer): void {.importc: "QGraphicsView_updateSceneRect".}
proc fcQGraphicsView_rubberBandChanged(self: pointer, viewportRect: pointer, fromScenePoint: pointer, toScenePoint: pointer): void {.importc: "QGraphicsView_rubberBandChanged".}
proc fQGraphicsView_connect_rubberBandChanged(self: pointer, slot: int) {.importc: "QGraphicsView_connect_rubberBandChanged".}
proc fcQGraphicsView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsView_tr2".}
proc fcQGraphicsView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsView_tr3".}
proc fcQGraphicsView_setRenderHint2(self: pointer, hint: cint, enabled: bool): void {.importc: "QGraphicsView_setRenderHint2".}
proc fcQGraphicsView_setOptimizationFlag2(self: pointer, flag: cint, enabled: bool): void {.importc: "QGraphicsView_setOptimizationFlag2".}
proc fcQGraphicsView_setTransform2(self: pointer, matrix: pointer, combine: bool): void {.importc: "QGraphicsView_setTransform2".}
proc fcQGraphicsView_ensureVisible22(self: pointer, rect: pointer, xmargin: cint): void {.importc: "QGraphicsView_ensureVisible22".}
proc fcQGraphicsView_ensureVisible3(self: pointer, rect: pointer, xmargin: cint, ymargin: cint): void {.importc: "QGraphicsView_ensureVisible3".}
proc fcQGraphicsView_ensureVisible5(self: pointer, x: float64, y: float64, w: float64, h: float64, xmargin: cint): void {.importc: "QGraphicsView_ensureVisible5".}
proc fcQGraphicsView_ensureVisible6(self: pointer, x: float64, y: float64, w: float64, h: float64, xmargin: cint, ymargin: cint): void {.importc: "QGraphicsView_ensureVisible6".}
proc fcQGraphicsView_ensureVisible23(self: pointer, item: pointer, xmargin: cint): void {.importc: "QGraphicsView_ensureVisible23".}
proc fcQGraphicsView_ensureVisible32(self: pointer, item: pointer, xmargin: cint, ymargin: cint): void {.importc: "QGraphicsView_ensureVisible32".}
proc fcQGraphicsView_fitInView22(self: pointer, rect: pointer, aspectRadioMode: cint): void {.importc: "QGraphicsView_fitInView22".}
proc fcQGraphicsView_fitInView5(self: pointer, x: float64, y: float64, w: float64, h: float64, aspectRadioMode: cint): void {.importc: "QGraphicsView_fitInView5".}
proc fcQGraphicsView_fitInView23(self: pointer, item: pointer, aspectRadioMode: cint): void {.importc: "QGraphicsView_fitInView23".}
proc fcQGraphicsView_render2(self: pointer, painter: pointer, target: pointer): void {.importc: "QGraphicsView_render2".}
proc fcQGraphicsView_render3(self: pointer, painter: pointer, target: pointer, source: pointer): void {.importc: "QGraphicsView_render3".}
proc fcQGraphicsView_render4(self: pointer, painter: pointer, target: pointer, source: pointer, aspectRatioMode: cint): void {.importc: "QGraphicsView_render4".}
proc fcQGraphicsView_items22(self: pointer, rect: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsView_items22".}
proc fcQGraphicsView_items5(self: pointer, x: cint, y: cint, w: cint, h: cint, mode: cint): struct_miqt_array {.importc: "QGraphicsView_items5".}
proc fcQGraphicsView_items24(self: pointer, path: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsView_items24".}
proc fcQGraphicsView_invalidateScene1(self: pointer, rect: pointer): void {.importc: "QGraphicsView_invalidateScene1".}
proc fcQGraphicsView_invalidateScene2(self: pointer, rect: pointer, layers: cint): void {.importc: "QGraphicsView_invalidateScene2".}
proc fQGraphicsView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsView_virtualbase_metacall".}
proc fcQGraphicsView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_metacall".}
proc fQGraphicsView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QGraphicsView_virtualbase_sizeHint".}
proc fcQGraphicsView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_sizeHint".}
proc fQGraphicsView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsView_virtualbase_inputMethodQuery".}
proc fcQGraphicsView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_inputMethodQuery".}
proc fQGraphicsView_virtualbase_setupViewport(self: pointer, widget: pointer): void{.importc: "QGraphicsView_virtualbase_setupViewport".}
proc fcQGraphicsView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_setupViewport".}
proc fQGraphicsView_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsView_virtualbase_event".}
proc fcQGraphicsView_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_event".}
proc fQGraphicsView_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsView_virtualbase_viewportEvent".}
proc fcQGraphicsView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_viewportEvent".}
proc fQGraphicsView_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_contextMenuEvent".}
proc fcQGraphicsView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_contextMenuEvent".}
proc fQGraphicsView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_dragEnterEvent".}
proc fcQGraphicsView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_dragEnterEvent".}
proc fQGraphicsView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_dragLeaveEvent".}
proc fcQGraphicsView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_dragLeaveEvent".}
proc fQGraphicsView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_dragMoveEvent".}
proc fcQGraphicsView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_dragMoveEvent".}
proc fQGraphicsView_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_dropEvent".}
proc fcQGraphicsView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_dropEvent".}
proc fQGraphicsView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_focusInEvent".}
proc fcQGraphicsView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_focusInEvent".}
proc fQGraphicsView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QGraphicsView_virtualbase_focusNextPrevChild".}
proc fcQGraphicsView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_focusNextPrevChild".}
proc fQGraphicsView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_focusOutEvent".}
proc fcQGraphicsView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_focusOutEvent".}
proc fQGraphicsView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_keyPressEvent".}
proc fcQGraphicsView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_keyPressEvent".}
proc fQGraphicsView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_keyReleaseEvent".}
proc fcQGraphicsView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_keyReleaseEvent".}
proc fQGraphicsView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_mousePressEvent".}
proc fcQGraphicsView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_mousePressEvent".}
proc fQGraphicsView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_mouseMoveEvent".}
proc fcQGraphicsView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_mouseMoveEvent".}
proc fQGraphicsView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_mouseReleaseEvent".}
proc fQGraphicsView_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_wheelEvent".}
proc fcQGraphicsView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_wheelEvent".}
proc fQGraphicsView_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_paintEvent".}
proc fcQGraphicsView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_paintEvent".}
proc fQGraphicsView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_resizeEvent".}
proc fcQGraphicsView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_resizeEvent".}
proc fQGraphicsView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QGraphicsView_virtualbase_scrollContentsBy".}
proc fcQGraphicsView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_scrollContentsBy".}
proc fQGraphicsView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_showEvent".}
proc fcQGraphicsView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_showEvent".}
proc fQGraphicsView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_inputMethodEvent".}
proc fcQGraphicsView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_inputMethodEvent".}
proc fQGraphicsView_virtualbase_drawBackground(self: pointer, painter: pointer, rect: pointer): void{.importc: "QGraphicsView_virtualbase_drawBackground".}
proc fcQGraphicsView_override_virtual_drawBackground(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_drawBackground".}
proc fQGraphicsView_virtualbase_drawForeground(self: pointer, painter: pointer, rect: pointer): void{.importc: "QGraphicsView_virtualbase_drawForeground".}
proc fcQGraphicsView_override_virtual_drawForeground(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_drawForeground".}
proc fQGraphicsView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QGraphicsView_virtualbase_minimumSizeHint".}
proc fcQGraphicsView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_minimumSizeHint".}
proc fQGraphicsView_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QGraphicsView_virtualbase_eventFilter".}
proc fcQGraphicsView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_eventFilter".}
proc fQGraphicsView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QGraphicsView_virtualbase_viewportSizeHint".}
proc fcQGraphicsView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_viewportSizeHint".}
proc fQGraphicsView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsView_virtualbase_changeEvent".}
proc fcQGraphicsView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_changeEvent".}
proc fQGraphicsView_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QGraphicsView_virtualbase_initStyleOption".}
proc fcQGraphicsView_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_initStyleOption".}
proc fQGraphicsView_virtualbase_devType(self: pointer, ): cint{.importc: "QGraphicsView_virtualbase_devType".}
proc fcQGraphicsView_override_virtual_devType(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_devType".}
proc fQGraphicsView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QGraphicsView_virtualbase_setVisible".}
proc fcQGraphicsView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_setVisible".}
proc fQGraphicsView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QGraphicsView_virtualbase_heightForWidth".}
proc fcQGraphicsView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_heightForWidth".}
proc fQGraphicsView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QGraphicsView_virtualbase_hasHeightForWidth".}
proc fcQGraphicsView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_hasHeightForWidth".}
proc fQGraphicsView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QGraphicsView_virtualbase_paintEngine".}
proc fcQGraphicsView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_paintEngine".}
proc fQGraphicsView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_enterEvent".}
proc fcQGraphicsView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_enterEvent".}
proc fQGraphicsView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_leaveEvent".}
proc fcQGraphicsView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_leaveEvent".}
proc fQGraphicsView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_moveEvent".}
proc fcQGraphicsView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_moveEvent".}
proc fQGraphicsView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_closeEvent".}
proc fcQGraphicsView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_closeEvent".}
proc fQGraphicsView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_tabletEvent".}
proc fcQGraphicsView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_tabletEvent".}
proc fQGraphicsView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_actionEvent".}
proc fcQGraphicsView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_actionEvent".}
proc fQGraphicsView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_hideEvent".}
proc fcQGraphicsView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_hideEvent".}
proc fQGraphicsView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QGraphicsView_virtualbase_nativeEvent".}
proc fcQGraphicsView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_nativeEvent".}
proc fQGraphicsView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QGraphicsView_virtualbase_metric".}
proc fcQGraphicsView_override_virtual_metric(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_metric".}
proc fQGraphicsView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QGraphicsView_virtualbase_initPainter".}
proc fcQGraphicsView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_initPainter".}
proc fQGraphicsView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QGraphicsView_virtualbase_redirected".}
proc fcQGraphicsView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_redirected".}
proc fQGraphicsView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QGraphicsView_virtualbase_sharedPainter".}
proc fcQGraphicsView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_sharedPainter".}
proc fQGraphicsView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_timerEvent".}
proc fcQGraphicsView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_timerEvent".}
proc fQGraphicsView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_childEvent".}
proc fcQGraphicsView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_childEvent".}
proc fQGraphicsView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_customEvent".}
proc fcQGraphicsView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_customEvent".}
proc fQGraphicsView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsView_virtualbase_connectNotify".}
proc fcQGraphicsView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_connectNotify".}
proc fQGraphicsView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsView_virtualbase_disconnectNotify".}
proc fcQGraphicsView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_disconnectNotify".}
proc fcQGraphicsView_delete(self: pointer) {.importc: "QGraphicsView_delete".}


func init*(T: type QGraphicsView, h: ptr cQGraphicsView): QGraphicsView =
  T(h: h)
proc create*(T: type QGraphicsView, parent: gen_qwidget.QWidget): QGraphicsView =

  QGraphicsView.init(fcQGraphicsView_new(parent.h))
proc create*(T: type QGraphicsView, ): QGraphicsView =

  QGraphicsView.init(fcQGraphicsView_new2())
proc create2*(T: type QGraphicsView, scene: gen_qgraphicsscene.QGraphicsScene): QGraphicsView =

  QGraphicsView.init(fcQGraphicsView_new3(scene.h))
proc create*(T: type QGraphicsView, scene: gen_qgraphicsscene.QGraphicsScene, parent: gen_qwidget.QWidget): QGraphicsView =

  QGraphicsView.init(fcQGraphicsView_new4(scene.h, parent.h))
proc metaObject*(self: QGraphicsView, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsView_metaObject(self.h))

proc metacast*(self: QGraphicsView, param1: cstring): pointer =

  fcQGraphicsView_metacast(self.h, param1)

proc metacall*(self: QGraphicsView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsView, s: cstring): string =

  let v_ms = fcQGraphicsView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: QGraphicsView, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQGraphicsView_sizeHint(self.h))

proc renderHints*(self: QGraphicsView, ): gen_qpainter.QPainterRenderHint =

  gen_qpainter.QPainterRenderHint(fcQGraphicsView_renderHints(self.h))

proc setRenderHint*(self: QGraphicsView, hint: gen_qpainter.QPainterRenderHint): void =

  fcQGraphicsView_setRenderHint(self.h, cint(hint))

proc setRenderHints*(self: QGraphicsView, hints: gen_qpainter.QPainterRenderHint): void =

  fcQGraphicsView_setRenderHints(self.h, cint(hints))

proc alignment*(self: QGraphicsView, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQGraphicsView_alignment(self.h))

proc setAlignment*(self: QGraphicsView, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQGraphicsView_setAlignment(self.h, cint(alignment))

proc transformationAnchor*(self: QGraphicsView, ): QGraphicsViewViewportAnchor =

  QGraphicsViewViewportAnchor(fcQGraphicsView_transformationAnchor(self.h))

proc setTransformationAnchor*(self: QGraphicsView, anchor: QGraphicsViewViewportAnchor): void =

  fcQGraphicsView_setTransformationAnchor(self.h, cint(anchor))

proc resizeAnchor*(self: QGraphicsView, ): QGraphicsViewViewportAnchor =

  QGraphicsViewViewportAnchor(fcQGraphicsView_resizeAnchor(self.h))

proc setResizeAnchor*(self: QGraphicsView, anchor: QGraphicsViewViewportAnchor): void =

  fcQGraphicsView_setResizeAnchor(self.h, cint(anchor))

proc viewportUpdateMode*(self: QGraphicsView, ): QGraphicsViewViewportUpdateMode =

  QGraphicsViewViewportUpdateMode(fcQGraphicsView_viewportUpdateMode(self.h))

proc setViewportUpdateMode*(self: QGraphicsView, mode: QGraphicsViewViewportUpdateMode): void =

  fcQGraphicsView_setViewportUpdateMode(self.h, cint(mode))

proc optimizationFlags*(self: QGraphicsView, ): QGraphicsViewOptimizationFlag =

  QGraphicsViewOptimizationFlag(fcQGraphicsView_optimizationFlags(self.h))

proc setOptimizationFlag*(self: QGraphicsView, flag: QGraphicsViewOptimizationFlag): void =

  fcQGraphicsView_setOptimizationFlag(self.h, cint(flag))

proc setOptimizationFlags*(self: QGraphicsView, flags: QGraphicsViewOptimizationFlag): void =

  fcQGraphicsView_setOptimizationFlags(self.h, cint(flags))

proc dragMode*(self: QGraphicsView, ): QGraphicsViewDragMode =

  QGraphicsViewDragMode(fcQGraphicsView_dragMode(self.h))

proc setDragMode*(self: QGraphicsView, mode: QGraphicsViewDragMode): void =

  fcQGraphicsView_setDragMode(self.h, cint(mode))

proc rubberBandSelectionMode*(self: QGraphicsView, ): gen_qnamespace.ItemSelectionMode =

  gen_qnamespace.ItemSelectionMode(fcQGraphicsView_rubberBandSelectionMode(self.h))

proc setRubberBandSelectionMode*(self: QGraphicsView, mode: gen_qnamespace.ItemSelectionMode): void =

  fcQGraphicsView_setRubberBandSelectionMode(self.h, cint(mode))

proc rubberBandRect*(self: QGraphicsView, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQGraphicsView_rubberBandRect(self.h))

proc cacheMode*(self: QGraphicsView, ): QGraphicsViewCacheModeFlag =

  QGraphicsViewCacheModeFlag(fcQGraphicsView_cacheMode(self.h))

proc setCacheMode*(self: QGraphicsView, mode: QGraphicsViewCacheModeFlag): void =

  fcQGraphicsView_setCacheMode(self.h, cint(mode))

proc resetCachedContent*(self: QGraphicsView, ): void =

  fcQGraphicsView_resetCachedContent(self.h)

proc isInteractive*(self: QGraphicsView, ): bool =

  fcQGraphicsView_isInteractive(self.h)

proc setInteractive*(self: QGraphicsView, allowed: bool): void =

  fcQGraphicsView_setInteractive(self.h, allowed)

proc scene*(self: QGraphicsView, ): gen_qgraphicsscene.QGraphicsScene =

  gen_qgraphicsscene.QGraphicsScene(h: fcQGraphicsView_scene(self.h))

proc setScene*(self: QGraphicsView, scene: gen_qgraphicsscene.QGraphicsScene): void =

  fcQGraphicsView_setScene(self.h, scene.h)

proc sceneRect*(self: QGraphicsView, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsView_sceneRect(self.h))

proc setSceneRect*(self: QGraphicsView, rect: gen_qrect.QRectF): void =

  fcQGraphicsView_setSceneRect(self.h, rect.h)

proc setSceneRect2*(self: QGraphicsView, x: float64, y: float64, w: float64, h: float64): void =

  fcQGraphicsView_setSceneRect2(self.h, x, y, w, h)

proc transform*(self: QGraphicsView, ): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQGraphicsView_transform(self.h))

proc viewportTransform*(self: QGraphicsView, ): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQGraphicsView_viewportTransform(self.h))

proc isTransformed*(self: QGraphicsView, ): bool =

  fcQGraphicsView_isTransformed(self.h)

proc setTransform*(self: QGraphicsView, matrix: gen_qtransform.QTransform): void =

  fcQGraphicsView_setTransform(self.h, matrix.h)

proc resetTransform*(self: QGraphicsView, ): void =

  fcQGraphicsView_resetTransform(self.h)

proc rotate*(self: QGraphicsView, angle: float64): void =

  fcQGraphicsView_rotate(self.h, angle)

proc scale*(self: QGraphicsView, sx: float64, sy: float64): void =

  fcQGraphicsView_scale(self.h, sx, sy)

proc shear*(self: QGraphicsView, sh: float64, sv: float64): void =

  fcQGraphicsView_shear(self.h, sh, sv)

proc translate*(self: QGraphicsView, dx: float64, dy: float64): void =

  fcQGraphicsView_translate(self.h, dx, dy)

proc centerOn*(self: QGraphicsView, pos: gen_qpoint.QPointF): void =

  fcQGraphicsView_centerOn(self.h, pos.h)

proc centerOn2*(self: QGraphicsView, x: float64, y: float64): void =

  fcQGraphicsView_centerOn2(self.h, x, y)

proc centerOnWithItem*(self: QGraphicsView, item: gen_qgraphicsitem.QGraphicsItem): void =

  fcQGraphicsView_centerOnWithItem(self.h, item.h)

proc ensureVisible*(self: QGraphicsView, rect: gen_qrect.QRectF): void =

  fcQGraphicsView_ensureVisible(self.h, rect.h)

proc ensureVisible2*(self: QGraphicsView, x: float64, y: float64, w: float64, h: float64): void =

  fcQGraphicsView_ensureVisible2(self.h, x, y, w, h)

proc ensureVisibleWithItem*(self: QGraphicsView, item: gen_qgraphicsitem.QGraphicsItem): void =

  fcQGraphicsView_ensureVisibleWithItem(self.h, item.h)

proc fitInView*(self: QGraphicsView, rect: gen_qrect.QRectF): void =

  fcQGraphicsView_fitInView(self.h, rect.h)

proc fitInView2*(self: QGraphicsView, x: float64, y: float64, w: float64, h: float64): void =

  fcQGraphicsView_fitInView2(self.h, x, y, w, h)

proc fitInViewWithItem*(self: QGraphicsView, item: gen_qgraphicsitem.QGraphicsItem): void =

  fcQGraphicsView_fitInViewWithItem(self.h, item.h)

proc render*(self: QGraphicsView, painter: gen_qpainter.QPainter): void =

  fcQGraphicsView_render(self.h, painter.h)

proc items*(self: QGraphicsView, ): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsView_items(self.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc itemsWithPos*(self: QGraphicsView, pos: gen_qpoint.QPoint): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsView_itemsWithPos(self.h, pos.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items2*(self: QGraphicsView, x: cint, y: cint): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsView_items2(self.h, x, y)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc itemsWithRect*(self: QGraphicsView, rect: gen_qrect.QRect): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsView_itemsWithRect(self.h, rect.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items3*(self: QGraphicsView, x: cint, y: cint, w: cint, h: cint): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsView_items3(self.h, x, y, w, h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc itemsWithPath*(self: QGraphicsView, path: gen_qpainterpath.QPainterPath): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsView_itemsWithPath(self.h, path.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc itemAt*(self: QGraphicsView, pos: gen_qpoint.QPoint): gen_qgraphicsitem.QGraphicsItem =

  gen_qgraphicsitem.QGraphicsItem(h: fcQGraphicsView_itemAt(self.h, pos.h))

proc itemAt2*(self: QGraphicsView, x: cint, y: cint): gen_qgraphicsitem.QGraphicsItem =

  gen_qgraphicsitem.QGraphicsItem(h: fcQGraphicsView_itemAt2(self.h, x, y))

proc mapToScene*(self: QGraphicsView, point: gen_qpoint.QPoint): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsView_mapToScene(self.h, point.h))

proc mapToSceneWithPath*(self: QGraphicsView, path: gen_qpainterpath.QPainterPath): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsView_mapToSceneWithPath(self.h, path.h))

proc mapFromScene*(self: QGraphicsView, point: gen_qpoint.QPointF): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQGraphicsView_mapFromScene(self.h, point.h))

proc mapFromSceneWithPath*(self: QGraphicsView, path: gen_qpainterpath.QPainterPath): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsView_mapFromSceneWithPath(self.h, path.h))

proc mapToScene2*(self: QGraphicsView, x: cint, y: cint): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsView_mapToScene2(self.h, x, y))

proc mapFromScene2*(self: QGraphicsView, x: float64, y: float64): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQGraphicsView_mapFromScene2(self.h, x, y))

proc inputMethodQuery*(self: QGraphicsView, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQGraphicsView_inputMethodQuery(self.h, cint(query)))

proc backgroundBrush*(self: QGraphicsView, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQGraphicsView_backgroundBrush(self.h))

proc setBackgroundBrush*(self: QGraphicsView, brush: gen_qbrush.QBrush): void =

  fcQGraphicsView_setBackgroundBrush(self.h, brush.h)

proc foregroundBrush*(self: QGraphicsView, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQGraphicsView_foregroundBrush(self.h))

proc setForegroundBrush*(self: QGraphicsView, brush: gen_qbrush.QBrush): void =

  fcQGraphicsView_setForegroundBrush(self.h, brush.h)

proc updateScene*(self: QGraphicsView, rects: seq[gen_qrect.QRectF]): void =

  var rects_CArray = newSeq[pointer](len(rects))
  for i in 0..<len(rects):
    rects_CArray[i] = rects[i].h

  fcQGraphicsView_updateScene(self.h, struct_miqt_array(len: csize_t(len(rects)), data: if len(rects) == 0: nil else: addr(rects_CArray[0])))

proc invalidateScene*(self: QGraphicsView, ): void =

  fcQGraphicsView_invalidateScene(self.h)

proc updateSceneRect*(self: QGraphicsView, rect: gen_qrect.QRectF): void =

  fcQGraphicsView_updateSceneRect(self.h, rect.h)

proc rubberBandChanged*(self: QGraphicsView, viewportRect: gen_qrect.QRect, fromScenePoint: gen_qpoint.QPointF, toScenePoint: gen_qpoint.QPointF): void =

  fcQGraphicsView_rubberBandChanged(self.h, viewportRect.h, fromScenePoint.h, toScenePoint.h)

proc miqt_exec_callback_QGraphicsView_rubberBandChanged(slot: int, viewportRect: pointer, fromScenePoint: pointer, toScenePoint: pointer) {.exportc.} =
  type Cb = proc(viewportRect: gen_qrect.QRect, fromScenePoint: gen_qpoint.QPointF, toScenePoint: gen_qpoint.QPointF)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRect(h: viewportRect)

  let slotval2 = gen_qpoint.QPointF(h: fromScenePoint)

  let slotval3 = gen_qpoint.QPointF(h: toScenePoint)


  nimfunc[](slotval1, slotval2, slotval3)

proc onrubberBandChanged*(self: QGraphicsView, slot: proc(viewportRect: gen_qrect.QRect, fromScenePoint: gen_qpoint.QPointF, toScenePoint: gen_qpoint.QPointF)) =
  type Cb = proc(viewportRect: gen_qrect.QRect, fromScenePoint: gen_qpoint.QPointF, toScenePoint: gen_qpoint.QPointF)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsView_connect_rubberBandChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGraphicsView, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setRenderHint2*(self: QGraphicsView, hint: gen_qpainter.QPainterRenderHint, enabled: bool): void =

  fcQGraphicsView_setRenderHint2(self.h, cint(hint), enabled)

proc setOptimizationFlag2*(self: QGraphicsView, flag: QGraphicsViewOptimizationFlag, enabled: bool): void =

  fcQGraphicsView_setOptimizationFlag2(self.h, cint(flag), enabled)

proc setTransform2*(self: QGraphicsView, matrix: gen_qtransform.QTransform, combine: bool): void =

  fcQGraphicsView_setTransform2(self.h, matrix.h, combine)

proc ensureVisible22*(self: QGraphicsView, rect: gen_qrect.QRectF, xmargin: cint): void =

  fcQGraphicsView_ensureVisible22(self.h, rect.h, xmargin)

proc ensureVisible3*(self: QGraphicsView, rect: gen_qrect.QRectF, xmargin: cint, ymargin: cint): void =

  fcQGraphicsView_ensureVisible3(self.h, rect.h, xmargin, ymargin)

proc ensureVisible5*(self: QGraphicsView, x: float64, y: float64, w: float64, h: float64, xmargin: cint): void =

  fcQGraphicsView_ensureVisible5(self.h, x, y, w, h, xmargin)

proc ensureVisible6*(self: QGraphicsView, x: float64, y: float64, w: float64, h: float64, xmargin: cint, ymargin: cint): void =

  fcQGraphicsView_ensureVisible6(self.h, x, y, w, h, xmargin, ymargin)

proc ensureVisible23*(self: QGraphicsView, item: gen_qgraphicsitem.QGraphicsItem, xmargin: cint): void =

  fcQGraphicsView_ensureVisible23(self.h, item.h, xmargin)

proc ensureVisible32*(self: QGraphicsView, item: gen_qgraphicsitem.QGraphicsItem, xmargin: cint, ymargin: cint): void =

  fcQGraphicsView_ensureVisible32(self.h, item.h, xmargin, ymargin)

proc fitInView22*(self: QGraphicsView, rect: gen_qrect.QRectF, aspectRadioMode: gen_qnamespace.AspectRatioMode): void =

  fcQGraphicsView_fitInView22(self.h, rect.h, cint(aspectRadioMode))

proc fitInView5*(self: QGraphicsView, x: float64, y: float64, w: float64, h: float64, aspectRadioMode: gen_qnamespace.AspectRatioMode): void =

  fcQGraphicsView_fitInView5(self.h, x, y, w, h, cint(aspectRadioMode))

proc fitInView23*(self: QGraphicsView, item: gen_qgraphicsitem.QGraphicsItem, aspectRadioMode: gen_qnamespace.AspectRatioMode): void =

  fcQGraphicsView_fitInView23(self.h, item.h, cint(aspectRadioMode))

proc render2*(self: QGraphicsView, painter: gen_qpainter.QPainter, target: gen_qrect.QRectF): void =

  fcQGraphicsView_render2(self.h, painter.h, target.h)

proc render3*(self: QGraphicsView, painter: gen_qpainter.QPainter, target: gen_qrect.QRectF, source: gen_qrect.QRect): void =

  fcQGraphicsView_render3(self.h, painter.h, target.h, source.h)

proc render4*(self: QGraphicsView, painter: gen_qpainter.QPainter, target: gen_qrect.QRectF, source: gen_qrect.QRect, aspectRatioMode: gen_qnamespace.AspectRatioMode): void =

  fcQGraphicsView_render4(self.h, painter.h, target.h, source.h, cint(aspectRatioMode))

proc items22*(self: QGraphicsView, rect: gen_qrect.QRect, mode: gen_qnamespace.ItemSelectionMode): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsView_items22(self.h, rect.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items5*(self: QGraphicsView, x: cint, y: cint, w: cint, h: cint, mode: gen_qnamespace.ItemSelectionMode): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsView_items5(self.h, x, y, w, h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items24*(self: QGraphicsView, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsView_items24(self.h, path.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc invalidateScene1*(self: QGraphicsView, rect: gen_qrect.QRectF): void =

  fcQGraphicsView_invalidateScene1(self.h, rect.h)

proc invalidateScene2*(self: QGraphicsView, rect: gen_qrect.QRectF, layers: gen_qgraphicsscene.QGraphicsSceneSceneLayer): void =

  fcQGraphicsView_invalidateScene2(self.h, rect.h, cint(layers))

proc callVirtualBase_metacall(self: QGraphicsView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsViewmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsView, slot: proc(super: QGraphicsViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_metacall(self: ptr cQGraphicsView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsView_metacall ".} =
  type Cb = proc(super: QGraphicsViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsView(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QGraphicsView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQGraphicsView_virtualbase_sizeHint(self.h))

type QGraphicsViewsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QGraphicsView, slot: proc(super: QGraphicsViewsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_sizeHint(self: ptr cQGraphicsView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsView_sizeHint ".} =
  type Cb = proc(super: QGraphicsViewsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QGraphicsView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodQuery(self: QGraphicsView, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsViewinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsView, slot: proc(super: QGraphicsViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_inputMethodQuery(self: ptr cQGraphicsView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsView_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsView(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QGraphicsView, widget: gen_qwidget.QWidget): void =


  fQGraphicsView_virtualbase_setupViewport(self.h, widget.h)

type QGraphicsViewsetupViewportBase* = proc(widget: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QGraphicsView, slot: proc(super: QGraphicsViewsetupViewportBase, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewsetupViewportBase, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_setupViewport(self: ptr cQGraphicsView, slot: int, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_setupViewport ".} =
  type Cb = proc(super: QGraphicsViewsetupViewportBase, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(widget: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QGraphicsView(h: self), widget)
  let slotval1 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QGraphicsView, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsView_virtualbase_event(self.h, event.h)

type QGraphicsVieweventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsView, slot: proc(super: QGraphicsVieweventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVieweventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_event(self: ptr cQGraphicsView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsView_event ".} =
  type Cb = proc(super: QGraphicsVieweventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: QGraphicsView, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsView_virtualbase_viewportEvent(self.h, event.h)

type QGraphicsViewviewportEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewviewportEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_viewportEvent(self: ptr cQGraphicsView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsView_viewportEvent ".} =
  type Cb = proc(super: QGraphicsViewviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsView, event: gen_qevent.QContextMenuEvent): void =


  fQGraphicsView_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsViewcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_contextMenuEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsViewcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsView, event: gen_qevent.QDragEnterEvent): void =


  fQGraphicsView_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsViewdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_dragEnterEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsView, event: gen_qevent.QDragLeaveEvent): void =


  fQGraphicsView_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsViewdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_dragLeaveEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsView, event: gen_qevent.QDragMoveEvent): void =


  fQGraphicsView_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsViewdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_dragMoveEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsView, event: gen_qevent.QDropEvent): void =


  fQGraphicsView_virtualbase_dropEvent(self.h, event.h)

type QGraphicsViewdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_dropEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_dropEvent ".} =
  type Cb = proc(super: QGraphicsViewdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsView, event: gen_qevent.QFocusEvent): void =


  fQGraphicsView_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsViewfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_focusInEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_focusInEvent ".} =
  type Cb = proc(super: QGraphicsViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QGraphicsView, next: bool): bool =


  fQGraphicsView_virtualbase_focusNextPrevChild(self.h, next)

type QGraphicsViewfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QGraphicsView, slot: proc(super: QGraphicsViewfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_focusNextPrevChild(self: ptr cQGraphicsView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QGraphicsView_focusNextPrevChild ".} =
  type Cb = proc(super: QGraphicsViewfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QGraphicsView(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_focusOutEvent(self: QGraphicsView, event: gen_qevent.QFocusEvent): void =


  fQGraphicsView_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsViewfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_focusOutEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsView, event: gen_qevent.QKeyEvent): void =


  fQGraphicsView_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsViewkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_keyPressEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsView, event: gen_qevent.QKeyEvent): void =


  fQGraphicsView_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsViewkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_keyReleaseEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsView, event: gen_qevent.QMouseEvent): void =


  fQGraphicsView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsViewmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_mouseDoubleClickEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsView, event: gen_qevent.QMouseEvent): void =


  fQGraphicsView_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsViewmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_mousePressEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsView, event: gen_qevent.QMouseEvent): void =


  fQGraphicsView_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsViewmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_mouseMoveEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsView, event: gen_qevent.QMouseEvent): void =


  fQGraphicsView_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsViewmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_mouseReleaseEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsView, event: gen_qevent.QWheelEvent): void =


  fQGraphicsView_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsViewwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_wheelEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_wheelEvent ".} =
  type Cb = proc(super: QGraphicsViewwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QGraphicsView, event: gen_qevent.QPaintEvent): void =


  fQGraphicsView_virtualbase_paintEvent(self.h, event.h)

type QGraphicsViewpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_paintEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_paintEvent ".} =
  type Cb = proc(super: QGraphicsViewpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QGraphicsView, event: gen_qevent.QResizeEvent): void =


  fQGraphicsView_virtualbase_resizeEvent(self.h, event.h)

type QGraphicsViewresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_resizeEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_resizeEvent ".} =
  type Cb = proc(super: QGraphicsViewresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_scrollContentsBy(self: QGraphicsView, dx: cint, dy: cint): void =


  fQGraphicsView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QGraphicsViewscrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QGraphicsView, slot: proc(super: QGraphicsViewscrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewscrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_scrollContentsBy(self: ptr cQGraphicsView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QGraphicsView_scrollContentsBy ".} =
  type Cb = proc(super: QGraphicsViewscrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QGraphicsView(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_showEvent(self: QGraphicsView, event: gen_qevent.QShowEvent): void =


  fQGraphicsView_virtualbase_showEvent(self.h, event.h)

type QGraphicsViewshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_showEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_showEvent ".} =
  type Cb = proc(super: QGraphicsViewshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsView, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsView_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsViewinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_inputMethodEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_drawBackground(self: QGraphicsView, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void =


  fQGraphicsView_virtualbase_drawBackground(self.h, painter.h, rect.h)

type QGraphicsViewdrawBackgroundBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void
proc ondrawBackground*(self: QGraphicsView, slot: proc(super: QGraphicsViewdrawBackgroundBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewdrawBackgroundBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_drawBackground(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_drawBackground(self: ptr cQGraphicsView, slot: int, painter: pointer, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_drawBackground ".} =
  type Cb = proc(super: QGraphicsViewdrawBackgroundBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): auto =
    callVirtualBase_drawBackground(QGraphicsView(h: self), painter, rect)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRectF(h: rect)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_drawForeground(self: QGraphicsView, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void =


  fQGraphicsView_virtualbase_drawForeground(self.h, painter.h, rect.h)

type QGraphicsViewdrawForegroundBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void
proc ondrawForeground*(self: QGraphicsView, slot: proc(super: QGraphicsViewdrawForegroundBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewdrawForegroundBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_drawForeground(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_drawForeground(self: ptr cQGraphicsView, slot: int, painter: pointer, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_drawForeground ".} =
  type Cb = proc(super: QGraphicsViewdrawForegroundBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): auto =
    callVirtualBase_drawForeground(QGraphicsView(h: self), painter, rect)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRectF(h: rect)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_minimumSizeHint(self: QGraphicsView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQGraphicsView_virtualbase_minimumSizeHint(self.h))

type QGraphicsViewminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QGraphicsView, slot: proc(super: QGraphicsViewminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_minimumSizeHint(self: ptr cQGraphicsView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsView_minimumSizeHint ".} =
  type Cb = proc(super: QGraphicsViewminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QGraphicsView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_eventFilter(self: QGraphicsView, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQGraphicsView_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QGraphicsVieweventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsView, slot: proc(super: QGraphicsVieweventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVieweventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_eventFilter(self: ptr cQGraphicsView, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsView_eventFilter ".} =
  type Cb = proc(super: QGraphicsVieweventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsView(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_viewportSizeHint(self: QGraphicsView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQGraphicsView_virtualbase_viewportSizeHint(self.h))

type QGraphicsViewviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QGraphicsView, slot: proc(super: QGraphicsViewviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_viewportSizeHint(self: ptr cQGraphicsView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsView_viewportSizeHint ".} =
  type Cb = proc(super: QGraphicsViewviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QGraphicsView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_changeEvent(self: QGraphicsView, param1: gen_qcoreevent.QEvent): void =


  fQGraphicsView_virtualbase_changeEvent(self.h, param1.h)

type QGraphicsViewchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_changeEvent(self: ptr cQGraphicsView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_changeEvent ".} =
  type Cb = proc(super: QGraphicsViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QGraphicsView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QGraphicsView, option: gen_qstyleoption.QStyleOptionFrame): void =


  fQGraphicsView_virtualbase_initStyleOption(self.h, option.h)

type QGraphicsViewinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionFrame): void
proc oninitStyleOption*(self: QGraphicsView, slot: proc(super: QGraphicsViewinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_initStyleOption(self: ptr cQGraphicsView, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_initStyleOption ".} =
  type Cb = proc(super: QGraphicsViewinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionFrame): auto =
    callVirtualBase_initStyleOption(QGraphicsView(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionFrame(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QGraphicsView, ): cint =


  fQGraphicsView_virtualbase_devType(self.h)

type QGraphicsViewdevTypeBase* = proc(): cint
proc ondevType*(self: QGraphicsView, slot: proc(super: QGraphicsViewdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_devType(self: ptr cQGraphicsView, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsView_devType ".} =
  type Cb = proc(super: QGraphicsViewdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QGraphicsView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QGraphicsView, visible: bool): void =


  fQGraphicsView_virtualbase_setVisible(self.h, visible)

type QGraphicsViewsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QGraphicsView, slot: proc(super: QGraphicsViewsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_setVisible(self: ptr cQGraphicsView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QGraphicsView_setVisible ".} =
  type Cb = proc(super: QGraphicsViewsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QGraphicsView(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QGraphicsView, param1: cint): cint =


  fQGraphicsView_virtualbase_heightForWidth(self.h, param1)

type QGraphicsViewheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QGraphicsView, slot: proc(super: QGraphicsViewheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_heightForWidth(self: ptr cQGraphicsView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QGraphicsView_heightForWidth ".} =
  type Cb = proc(super: QGraphicsViewheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QGraphicsView(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QGraphicsView, ): bool =


  fQGraphicsView_virtualbase_hasHeightForWidth(self.h)

type QGraphicsViewhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QGraphicsView, slot: proc(super: QGraphicsViewhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_hasHeightForWidth(self: ptr cQGraphicsView, slot: int): bool {.exportc: "miqt_exec_callback_QGraphicsView_hasHeightForWidth ".} =
  type Cb = proc(super: QGraphicsViewhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QGraphicsView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QGraphicsView, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQGraphicsView_virtualbase_paintEngine(self.h))

type QGraphicsViewpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QGraphicsView, slot: proc(super: QGraphicsViewpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_paintEngine(self: ptr cQGraphicsView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsView_paintEngine ".} =
  type Cb = proc(super: QGraphicsViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QGraphicsView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_enterEvent(self: QGraphicsView, event: gen_qevent.QEnterEvent): void =


  fQGraphicsView_virtualbase_enterEvent(self.h, event.h)

type QGraphicsViewenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_enterEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_enterEvent ".} =
  type Cb = proc(super: QGraphicsViewenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QGraphicsView, event: gen_qcoreevent.QEvent): void =


  fQGraphicsView_virtualbase_leaveEvent(self.h, event.h)

type QGraphicsViewleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_leaveEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_leaveEvent ".} =
  type Cb = proc(super: QGraphicsViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QGraphicsView, event: gen_qevent.QMoveEvent): void =


  fQGraphicsView_virtualbase_moveEvent(self.h, event.h)

type QGraphicsViewmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_moveEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_moveEvent ".} =
  type Cb = proc(super: QGraphicsViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QGraphicsView, event: gen_qevent.QCloseEvent): void =


  fQGraphicsView_virtualbase_closeEvent(self.h, event.h)

type QGraphicsViewcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_closeEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_closeEvent ".} =
  type Cb = proc(super: QGraphicsViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QGraphicsView, event: gen_qevent.QTabletEvent): void =


  fQGraphicsView_virtualbase_tabletEvent(self.h, event.h)

type QGraphicsViewtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_tabletEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_tabletEvent ".} =
  type Cb = proc(super: QGraphicsViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QGraphicsView, event: gen_qevent.QActionEvent): void =


  fQGraphicsView_virtualbase_actionEvent(self.h, event.h)

type QGraphicsViewactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_actionEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_actionEvent ".} =
  type Cb = proc(super: QGraphicsViewactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QGraphicsView, event: gen_qevent.QHideEvent): void =


  fQGraphicsView_virtualbase_hideEvent(self.h, event.h)

type QGraphicsViewhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_hideEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_hideEvent ".} =
  type Cb = proc(super: QGraphicsViewhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QGraphicsView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQGraphicsView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QGraphicsViewnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_nativeEvent(self: ptr cQGraphicsView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QGraphicsView_nativeEvent ".} =
  type Cb = proc(super: QGraphicsViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QGraphicsView(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QGraphicsView, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQGraphicsView_virtualbase_metric(self.h, cint(param1))

type QGraphicsViewmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QGraphicsView, slot: proc(super: QGraphicsViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_metric(self: ptr cQGraphicsView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QGraphicsView_metric ".} =
  type Cb = proc(super: QGraphicsViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QGraphicsView(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QGraphicsView, painter: gen_qpainter.QPainter): void =


  fQGraphicsView_virtualbase_initPainter(self.h, painter.h)

type QGraphicsViewinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QGraphicsView, slot: proc(super: QGraphicsViewinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_initPainter(self: ptr cQGraphicsView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_initPainter ".} =
  type Cb = proc(super: QGraphicsViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QGraphicsView(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QGraphicsView, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQGraphicsView_virtualbase_redirected(self.h, offset.h))

type QGraphicsViewredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QGraphicsView, slot: proc(super: QGraphicsViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_redirected(self: ptr cQGraphicsView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsView_redirected ".} =
  type Cb = proc(super: QGraphicsViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QGraphicsView(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QGraphicsView, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQGraphicsView_virtualbase_sharedPainter(self.h))

type QGraphicsViewsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QGraphicsView, slot: proc(super: QGraphicsViewsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_sharedPainter(self: ptr cQGraphicsView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsView_sharedPainter ".} =
  type Cb = proc(super: QGraphicsViewsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QGraphicsView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_timerEvent(self: QGraphicsView, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsView_virtualbase_timerEvent(self.h, event.h)

type QGraphicsViewtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_timerEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_timerEvent ".} =
  type Cb = proc(super: QGraphicsViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsView, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsView_virtualbase_childEvent(self.h, event.h)

type QGraphicsViewchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_childEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_childEvent ".} =
  type Cb = proc(super: QGraphicsViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsView, event: gen_qcoreevent.QEvent): void =


  fQGraphicsView_virtualbase_customEvent(self.h, event.h)

type QGraphicsViewcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsView, slot: proc(super: QGraphicsViewcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_customEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_customEvent ".} =
  type Cb = proc(super: QGraphicsViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsView, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsView_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsViewconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsView, slot: proc(super: QGraphicsViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_connectNotify(self: ptr cQGraphicsView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_connectNotify ".} =
  type Cb = proc(super: QGraphicsViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsView, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsView_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsViewdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsView, slot: proc(super: QGraphicsViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_disconnectNotify(self: ptr cQGraphicsView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QGraphicsView) =
  fcQGraphicsView_delete(self.h)
