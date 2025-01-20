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
{.compile("gen_qgraphicsscene.cpp", cflags).}


type QGraphicsSceneItemIndexMethodEnum* = distinct cint
template BspTreeIndex*(_: type QGraphicsSceneItemIndexMethodEnum): untyped = 0
template NoIndex*(_: type QGraphicsSceneItemIndexMethodEnum): untyped = -1


type QGraphicsSceneSceneLayerEnum* = distinct cint
template ItemLayer*(_: type QGraphicsSceneSceneLayerEnum): untyped = 1
template BackgroundLayer*(_: type QGraphicsSceneSceneLayerEnum): untyped = 2
template ForegroundLayer*(_: type QGraphicsSceneSceneLayerEnum): untyped = 4
template AllLayers*(_: type QGraphicsSceneSceneLayerEnum): untyped = 65535


import gen_qgraphicsscene_types
export gen_qgraphicsscene_types

import
  gen_qbrush,
  gen_qcoreevent,
  gen_qevent,
  gen_qfont,
  gen_qgraphicsitem,
  gen_qgraphicsproxywidget,
  gen_qgraphicssceneevent,
  gen_qgraphicsview,
  gen_qgraphicswidget,
  gen_qline,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpalette,
  gen_qpen,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qstyle,
  gen_qtransform,
  gen_qvariant,
  gen_qwidget
export
  gen_qbrush,
  gen_qcoreevent,
  gen_qevent,
  gen_qfont,
  gen_qgraphicsitem,
  gen_qgraphicsproxywidget,
  gen_qgraphicssceneevent,
  gen_qgraphicsview,
  gen_qgraphicswidget,
  gen_qline,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpalette,
  gen_qpen,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qstyle,
  gen_qtransform,
  gen_qvariant,
  gen_qwidget

type cQGraphicsScene*{.exportc: "QGraphicsScene", incompleteStruct.} = object

proc fcQGraphicsScene_new(): ptr cQGraphicsScene {.importc: "QGraphicsScene_new".}
proc fcQGraphicsScene_new2(sceneRect: pointer): ptr cQGraphicsScene {.importc: "QGraphicsScene_new2".}
proc fcQGraphicsScene_new3(x: float64, y: float64, width: float64, height: float64): ptr cQGraphicsScene {.importc: "QGraphicsScene_new3".}
proc fcQGraphicsScene_new4(parent: pointer): ptr cQGraphicsScene {.importc: "QGraphicsScene_new4".}
proc fcQGraphicsScene_new5(sceneRect: pointer, parent: pointer): ptr cQGraphicsScene {.importc: "QGraphicsScene_new5".}
proc fcQGraphicsScene_new6(x: float64, y: float64, width: float64, height: float64, parent: pointer): ptr cQGraphicsScene {.importc: "QGraphicsScene_new6".}
proc fcQGraphicsScene_metaObject(self: pointer, ): pointer {.importc: "QGraphicsScene_metaObject".}
proc fcQGraphicsScene_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsScene_metacast".}
proc fcQGraphicsScene_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsScene_metacall".}
proc fcQGraphicsScene_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsScene_tr".}
proc fcQGraphicsScene_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsScene_trUtf8".}
proc fcQGraphicsScene_sceneRect(self: pointer, ): pointer {.importc: "QGraphicsScene_sceneRect".}
proc fcQGraphicsScene_width(self: pointer, ): float64 {.importc: "QGraphicsScene_width".}
proc fcQGraphicsScene_height(self: pointer, ): float64 {.importc: "QGraphicsScene_height".}
proc fcQGraphicsScene_setSceneRect(self: pointer, rect: pointer): void {.importc: "QGraphicsScene_setSceneRect".}
proc fcQGraphicsScene_setSceneRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsScene_setSceneRect2".}
proc fcQGraphicsScene_render(self: pointer, painter: pointer): void {.importc: "QGraphicsScene_render".}
proc fcQGraphicsScene_itemIndexMethod(self: pointer, ): cint {.importc: "QGraphicsScene_itemIndexMethod".}
proc fcQGraphicsScene_setItemIndexMethod(self: pointer, methodVal: cint): void {.importc: "QGraphicsScene_setItemIndexMethod".}
proc fcQGraphicsScene_isSortCacheEnabled(self: pointer, ): bool {.importc: "QGraphicsScene_isSortCacheEnabled".}
proc fcQGraphicsScene_setSortCacheEnabled(self: pointer, enabled: bool): void {.importc: "QGraphicsScene_setSortCacheEnabled".}
proc fcQGraphicsScene_bspTreeDepth(self: pointer, ): cint {.importc: "QGraphicsScene_bspTreeDepth".}
proc fcQGraphicsScene_setBspTreeDepth(self: pointer, depth: cint): void {.importc: "QGraphicsScene_setBspTreeDepth".}
proc fcQGraphicsScene_itemsBoundingRect(self: pointer, ): pointer {.importc: "QGraphicsScene_itemsBoundingRect".}
proc fcQGraphicsScene_items(self: pointer, ): struct_miqt_array {.importc: "QGraphicsScene_items".}
proc fcQGraphicsScene_itemsWithPos(self: pointer, pos: pointer): struct_miqt_array {.importc: "QGraphicsScene_itemsWithPos".}
proc fcQGraphicsScene_itemsWithRect(self: pointer, rect: pointer): struct_miqt_array {.importc: "QGraphicsScene_itemsWithRect".}
proc fcQGraphicsScene_itemsWithPath(self: pointer, path: pointer): struct_miqt_array {.importc: "QGraphicsScene_itemsWithPath".}
proc fcQGraphicsScene_collidingItems(self: pointer, item: pointer): struct_miqt_array {.importc: "QGraphicsScene_collidingItems".}
proc fcQGraphicsScene_itemAt(self: pointer, pos: pointer, deviceTransform: pointer): pointer {.importc: "QGraphicsScene_itemAt".}
proc fcQGraphicsScene_items2(self: pointer, x: float64, y: float64, w: float64, h: float64, mode: cint, order: cint): struct_miqt_array {.importc: "QGraphicsScene_items2".}
proc fcQGraphicsScene_itemAt2(self: pointer, x: float64, y: float64, deviceTransform: pointer): pointer {.importc: "QGraphicsScene_itemAt2".}
proc fcQGraphicsScene_selectedItems(self: pointer, ): struct_miqt_array {.importc: "QGraphicsScene_selectedItems".}
proc fcQGraphicsScene_selectionArea(self: pointer, ): pointer {.importc: "QGraphicsScene_selectionArea".}
proc fcQGraphicsScene_setSelectionArea(self: pointer, path: pointer, deviceTransform: pointer): void {.importc: "QGraphicsScene_setSelectionArea".}
proc fcQGraphicsScene_setSelectionAreaWithPath(self: pointer, path: pointer): void {.importc: "QGraphicsScene_setSelectionAreaWithPath".}
proc fcQGraphicsScene_setSelectionArea2(self: pointer, path: pointer, selectionOperation: cint): void {.importc: "QGraphicsScene_setSelectionArea2".}
proc fcQGraphicsScene_createItemGroup(self: pointer, items: struct_miqt_array): pointer {.importc: "QGraphicsScene_createItemGroup".}
proc fcQGraphicsScene_destroyItemGroup(self: pointer, group: pointer): void {.importc: "QGraphicsScene_destroyItemGroup".}
proc fcQGraphicsScene_addItem(self: pointer, item: pointer): void {.importc: "QGraphicsScene_addItem".}
proc fcQGraphicsScene_addEllipse(self: pointer, rect: pointer): pointer {.importc: "QGraphicsScene_addEllipse".}
proc fcQGraphicsScene_addLine(self: pointer, line: pointer): pointer {.importc: "QGraphicsScene_addLine".}
proc fcQGraphicsScene_addPath(self: pointer, path: pointer): pointer {.importc: "QGraphicsScene_addPath".}
proc fcQGraphicsScene_addPixmap(self: pointer, pixmap: pointer): pointer {.importc: "QGraphicsScene_addPixmap".}
proc fcQGraphicsScene_addRect(self: pointer, rect: pointer): pointer {.importc: "QGraphicsScene_addRect".}
proc fcQGraphicsScene_addText(self: pointer, text: struct_miqt_string): pointer {.importc: "QGraphicsScene_addText".}
proc fcQGraphicsScene_addSimpleText(self: pointer, text: struct_miqt_string): pointer {.importc: "QGraphicsScene_addSimpleText".}
proc fcQGraphicsScene_addWidget(self: pointer, widget: pointer): pointer {.importc: "QGraphicsScene_addWidget".}
proc fcQGraphicsScene_addEllipse2(self: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsScene_addEllipse2".}
proc fcQGraphicsScene_addLine2(self: pointer, x1: float64, y1: float64, x2: float64, y2: float64): pointer {.importc: "QGraphicsScene_addLine2".}
proc fcQGraphicsScene_addRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsScene_addRect2".}
proc fcQGraphicsScene_removeItem(self: pointer, item: pointer): void {.importc: "QGraphicsScene_removeItem".}
proc fcQGraphicsScene_focusItem(self: pointer, ): pointer {.importc: "QGraphicsScene_focusItem".}
proc fcQGraphicsScene_setFocusItem(self: pointer, item: pointer): void {.importc: "QGraphicsScene_setFocusItem".}
proc fcQGraphicsScene_hasFocus(self: pointer, ): bool {.importc: "QGraphicsScene_hasFocus".}
proc fcQGraphicsScene_setFocus(self: pointer, ): void {.importc: "QGraphicsScene_setFocus".}
proc fcQGraphicsScene_clearFocus(self: pointer, ): void {.importc: "QGraphicsScene_clearFocus".}
proc fcQGraphicsScene_setStickyFocus(self: pointer, enabled: bool): void {.importc: "QGraphicsScene_setStickyFocus".}
proc fcQGraphicsScene_stickyFocus(self: pointer, ): bool {.importc: "QGraphicsScene_stickyFocus".}
proc fcQGraphicsScene_mouseGrabberItem(self: pointer, ): pointer {.importc: "QGraphicsScene_mouseGrabberItem".}
proc fcQGraphicsScene_backgroundBrush(self: pointer, ): pointer {.importc: "QGraphicsScene_backgroundBrush".}
proc fcQGraphicsScene_setBackgroundBrush(self: pointer, brush: pointer): void {.importc: "QGraphicsScene_setBackgroundBrush".}
proc fcQGraphicsScene_foregroundBrush(self: pointer, ): pointer {.importc: "QGraphicsScene_foregroundBrush".}
proc fcQGraphicsScene_setForegroundBrush(self: pointer, brush: pointer): void {.importc: "QGraphicsScene_setForegroundBrush".}
proc fcQGraphicsScene_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsScene_inputMethodQuery".}
proc fcQGraphicsScene_views(self: pointer, ): struct_miqt_array {.importc: "QGraphicsScene_views".}
proc fcQGraphicsScene_update(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsScene_update".}
proc fcQGraphicsScene_invalidate(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsScene_invalidate".}
proc fcQGraphicsScene_style(self: pointer, ): pointer {.importc: "QGraphicsScene_style".}
proc fcQGraphicsScene_setStyle(self: pointer, style: pointer): void {.importc: "QGraphicsScene_setStyle".}
proc fcQGraphicsScene_font(self: pointer, ): pointer {.importc: "QGraphicsScene_font".}
proc fcQGraphicsScene_setFont(self: pointer, font: pointer): void {.importc: "QGraphicsScene_setFont".}
proc fcQGraphicsScene_palette(self: pointer, ): pointer {.importc: "QGraphicsScene_palette".}
proc fcQGraphicsScene_setPalette(self: pointer, palette: pointer): void {.importc: "QGraphicsScene_setPalette".}
proc fcQGraphicsScene_isActive(self: pointer, ): bool {.importc: "QGraphicsScene_isActive".}
proc fcQGraphicsScene_activePanel(self: pointer, ): pointer {.importc: "QGraphicsScene_activePanel".}
proc fcQGraphicsScene_setActivePanel(self: pointer, item: pointer): void {.importc: "QGraphicsScene_setActivePanel".}
proc fcQGraphicsScene_activeWindow(self: pointer, ): pointer {.importc: "QGraphicsScene_activeWindow".}
proc fcQGraphicsScene_setActiveWindow(self: pointer, widget: pointer): void {.importc: "QGraphicsScene_setActiveWindow".}
proc fcQGraphicsScene_sendEvent(self: pointer, item: pointer, event: pointer): bool {.importc: "QGraphicsScene_sendEvent".}
proc fcQGraphicsScene_minimumRenderSize(self: pointer, ): float64 {.importc: "QGraphicsScene_minimumRenderSize".}
proc fcQGraphicsScene_setMinimumRenderSize(self: pointer, minSize: float64): void {.importc: "QGraphicsScene_setMinimumRenderSize".}
proc fcQGraphicsScene_focusOnTouch(self: pointer, ): bool {.importc: "QGraphicsScene_focusOnTouch".}
proc fcQGraphicsScene_setFocusOnTouch(self: pointer, enabled: bool): void {.importc: "QGraphicsScene_setFocusOnTouch".}
proc fcQGraphicsScene_update2(self: pointer, ): void {.importc: "QGraphicsScene_update2".}
proc fcQGraphicsScene_invalidate2(self: pointer, ): void {.importc: "QGraphicsScene_invalidate2".}
proc fcQGraphicsScene_advance(self: pointer, ): void {.importc: "QGraphicsScene_advance".}
proc fcQGraphicsScene_clearSelection(self: pointer, ): void {.importc: "QGraphicsScene_clearSelection".}
proc fcQGraphicsScene_clear(self: pointer, ): void {.importc: "QGraphicsScene_clear".}
proc fcQGraphicsScene_changed(self: pointer, region: struct_miqt_array): void {.importc: "QGraphicsScene_changed".}
proc fQGraphicsScene_connect_changed(self: pointer, slot: int) {.importc: "QGraphicsScene_connect_changed".}
proc fcQGraphicsScene_sceneRectChanged(self: pointer, rect: pointer): void {.importc: "QGraphicsScene_sceneRectChanged".}
proc fQGraphicsScene_connect_sceneRectChanged(self: pointer, slot: int) {.importc: "QGraphicsScene_connect_sceneRectChanged".}
proc fcQGraphicsScene_selectionChanged(self: pointer, ): void {.importc: "QGraphicsScene_selectionChanged".}
proc fQGraphicsScene_connect_selectionChanged(self: pointer, slot: int) {.importc: "QGraphicsScene_connect_selectionChanged".}
proc fcQGraphicsScene_focusItemChanged(self: pointer, newFocus: pointer, oldFocus: pointer, reason: cint): void {.importc: "QGraphicsScene_focusItemChanged".}
proc fQGraphicsScene_connect_focusItemChanged(self: pointer, slot: int) {.importc: "QGraphicsScene_connect_focusItemChanged".}
proc fcQGraphicsScene_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsScene_tr2".}
proc fcQGraphicsScene_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsScene_tr3".}
proc fcQGraphicsScene_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsScene_trUtf82".}
proc fcQGraphicsScene_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsScene_trUtf83".}
proc fcQGraphicsScene_render2(self: pointer, painter: pointer, target: pointer): void {.importc: "QGraphicsScene_render2".}
proc fcQGraphicsScene_render3(self: pointer, painter: pointer, target: pointer, source: pointer): void {.importc: "QGraphicsScene_render3".}
proc fcQGraphicsScene_render4(self: pointer, painter: pointer, target: pointer, source: pointer, aspectRatioMode: cint): void {.importc: "QGraphicsScene_render4".}
proc fcQGraphicsScene_items1(self: pointer, order: cint): struct_miqt_array {.importc: "QGraphicsScene_items1".}
proc fcQGraphicsScene_items22(self: pointer, pos: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsScene_items22".}
proc fcQGraphicsScene_items3(self: pointer, pos: pointer, mode: cint, order: cint): struct_miqt_array {.importc: "QGraphicsScene_items3".}
proc fcQGraphicsScene_items4(self: pointer, pos: pointer, mode: cint, order: cint, deviceTransform: pointer): struct_miqt_array {.importc: "QGraphicsScene_items4".}
proc fcQGraphicsScene_items23(self: pointer, rect: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsScene_items23".}
proc fcQGraphicsScene_items32(self: pointer, rect: pointer, mode: cint, order: cint): struct_miqt_array {.importc: "QGraphicsScene_items32".}
proc fcQGraphicsScene_items42(self: pointer, rect: pointer, mode: cint, order: cint, deviceTransform: pointer): struct_miqt_array {.importc: "QGraphicsScene_items42".}
proc fcQGraphicsScene_items25(self: pointer, path: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsScene_items25".}
proc fcQGraphicsScene_items34(self: pointer, path: pointer, mode: cint, order: cint): struct_miqt_array {.importc: "QGraphicsScene_items34".}
proc fcQGraphicsScene_items44(self: pointer, path: pointer, mode: cint, order: cint, deviceTransform: pointer): struct_miqt_array {.importc: "QGraphicsScene_items44".}
proc fcQGraphicsScene_collidingItems2(self: pointer, item: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsScene_collidingItems2".}
proc fcQGraphicsScene_items7(self: pointer, x: float64, y: float64, w: float64, h: float64, mode: cint, order: cint, deviceTransform: pointer): struct_miqt_array {.importc: "QGraphicsScene_items7".}
proc fcQGraphicsScene_setSelectionArea22(self: pointer, path: pointer, mode: cint): void {.importc: "QGraphicsScene_setSelectionArea22".}
proc fcQGraphicsScene_setSelectionArea3(self: pointer, path: pointer, mode: cint, deviceTransform: pointer): void {.importc: "QGraphicsScene_setSelectionArea3".}
proc fcQGraphicsScene_setSelectionArea32(self: pointer, path: pointer, selectionOperation: cint, mode: cint): void {.importc: "QGraphicsScene_setSelectionArea32".}
proc fcQGraphicsScene_setSelectionArea4(self: pointer, path: pointer, selectionOperation: cint, mode: cint, deviceTransform: pointer): void {.importc: "QGraphicsScene_setSelectionArea4".}
proc fcQGraphicsScene_addEllipse22(self: pointer, rect: pointer, pen: pointer): pointer {.importc: "QGraphicsScene_addEllipse22".}
proc fcQGraphicsScene_addEllipse3(self: pointer, rect: pointer, pen: pointer, brush: pointer): pointer {.importc: "QGraphicsScene_addEllipse3".}
proc fcQGraphicsScene_addLine22(self: pointer, line: pointer, pen: pointer): pointer {.importc: "QGraphicsScene_addLine22".}
proc fcQGraphicsScene_addPath2(self: pointer, path: pointer, pen: pointer): pointer {.importc: "QGraphicsScene_addPath2".}
proc fcQGraphicsScene_addPath3(self: pointer, path: pointer, pen: pointer, brush: pointer): pointer {.importc: "QGraphicsScene_addPath3".}
proc fcQGraphicsScene_addRect22(self: pointer, rect: pointer, pen: pointer): pointer {.importc: "QGraphicsScene_addRect22".}
proc fcQGraphicsScene_addRect3(self: pointer, rect: pointer, pen: pointer, brush: pointer): pointer {.importc: "QGraphicsScene_addRect3".}
proc fcQGraphicsScene_addText2(self: pointer, text: struct_miqt_string, font: pointer): pointer {.importc: "QGraphicsScene_addText2".}
proc fcQGraphicsScene_addSimpleText2(self: pointer, text: struct_miqt_string, font: pointer): pointer {.importc: "QGraphicsScene_addSimpleText2".}
proc fcQGraphicsScene_addWidget2(self: pointer, widget: pointer, wFlags: cint): pointer {.importc: "QGraphicsScene_addWidget2".}
proc fcQGraphicsScene_addEllipse5(self: pointer, x: float64, y: float64, w: float64, h: float64, pen: pointer): pointer {.importc: "QGraphicsScene_addEllipse5".}
proc fcQGraphicsScene_addEllipse6(self: pointer, x: float64, y: float64, w: float64, h: float64, pen: pointer, brush: pointer): pointer {.importc: "QGraphicsScene_addEllipse6".}
proc fcQGraphicsScene_addLine5(self: pointer, x1: float64, y1: float64, x2: float64, y2: float64, pen: pointer): pointer {.importc: "QGraphicsScene_addLine5".}
proc fcQGraphicsScene_addRect5(self: pointer, x: float64, y: float64, w: float64, h: float64, pen: pointer): pointer {.importc: "QGraphicsScene_addRect5".}
proc fcQGraphicsScene_addRect6(self: pointer, x: float64, y: float64, w: float64, h: float64, pen: pointer, brush: pointer): pointer {.importc: "QGraphicsScene_addRect6".}
proc fcQGraphicsScene_setFocusItem2(self: pointer, item: pointer, focusReason: cint): void {.importc: "QGraphicsScene_setFocusItem2".}
proc fcQGraphicsScene_setFocus1(self: pointer, focusReason: cint): void {.importc: "QGraphicsScene_setFocus1".}
proc fcQGraphicsScene_invalidate5(self: pointer, x: float64, y: float64, w: float64, h: float64, layers: cint): void {.importc: "QGraphicsScene_invalidate5".}
proc fcQGraphicsScene_update1(self: pointer, rect: pointer): void {.importc: "QGraphicsScene_update1".}
proc fcQGraphicsScene_invalidate1(self: pointer, rect: pointer): void {.importc: "QGraphicsScene_invalidate1".}
proc fcQGraphicsScene_invalidate22(self: pointer, rect: pointer, layers: cint): void {.importc: "QGraphicsScene_invalidate22".}
proc fQGraphicsScene_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsScene_virtualbase_metaObject".}
proc fcQGraphicsScene_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_metaObject".}
proc fQGraphicsScene_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsScene_virtualbase_metacast".}
proc fcQGraphicsScene_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_metacast".}
proc fQGraphicsScene_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsScene_virtualbase_metacall".}
proc fcQGraphicsScene_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_metacall".}
proc fQGraphicsScene_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsScene_virtualbase_inputMethodQuery".}
proc fcQGraphicsScene_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_inputMethodQuery".}
proc fQGraphicsScene_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsScene_virtualbase_event".}
proc fcQGraphicsScene_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_event".}
proc fQGraphicsScene_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsScene_virtualbase_eventFilter".}
proc fcQGraphicsScene_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_eventFilter".}
proc fQGraphicsScene_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_contextMenuEvent".}
proc fcQGraphicsScene_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_contextMenuEvent".}
proc fQGraphicsScene_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_dragEnterEvent".}
proc fcQGraphicsScene_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_dragEnterEvent".}
proc fQGraphicsScene_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_dragMoveEvent".}
proc fcQGraphicsScene_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_dragMoveEvent".}
proc fQGraphicsScene_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_dragLeaveEvent".}
proc fcQGraphicsScene_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_dragLeaveEvent".}
proc fQGraphicsScene_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_dropEvent".}
proc fcQGraphicsScene_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_dropEvent".}
proc fQGraphicsScene_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_focusInEvent".}
proc fcQGraphicsScene_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_focusInEvent".}
proc fQGraphicsScene_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_focusOutEvent".}
proc fcQGraphicsScene_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_focusOutEvent".}
proc fQGraphicsScene_virtualbase_helpEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_helpEvent".}
proc fcQGraphicsScene_override_virtual_helpEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_helpEvent".}
proc fQGraphicsScene_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_keyPressEvent".}
proc fcQGraphicsScene_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_keyPressEvent".}
proc fQGraphicsScene_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_keyReleaseEvent".}
proc fcQGraphicsScene_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_keyReleaseEvent".}
proc fQGraphicsScene_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_mousePressEvent".}
proc fcQGraphicsScene_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_mousePressEvent".}
proc fQGraphicsScene_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_mouseMoveEvent".}
proc fcQGraphicsScene_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_mouseMoveEvent".}
proc fQGraphicsScene_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsScene_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_mouseReleaseEvent".}
proc fQGraphicsScene_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsScene_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsScene_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_wheelEvent".}
proc fcQGraphicsScene_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_wheelEvent".}
proc fQGraphicsScene_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_inputMethodEvent".}
proc fcQGraphicsScene_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_inputMethodEvent".}
proc fQGraphicsScene_virtualbase_drawBackground(self: pointer, painter: pointer, rect: pointer): void{.importc: "QGraphicsScene_virtualbase_drawBackground".}
proc fcQGraphicsScene_override_virtual_drawBackground(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_drawBackground".}
proc fQGraphicsScene_virtualbase_drawForeground(self: pointer, painter: pointer, rect: pointer): void{.importc: "QGraphicsScene_virtualbase_drawForeground".}
proc fcQGraphicsScene_override_virtual_drawForeground(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_drawForeground".}
proc fQGraphicsScene_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_timerEvent".}
proc fcQGraphicsScene_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_timerEvent".}
proc fQGraphicsScene_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_childEvent".}
proc fcQGraphicsScene_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_childEvent".}
proc fQGraphicsScene_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScene_virtualbase_customEvent".}
proc fcQGraphicsScene_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_customEvent".}
proc fQGraphicsScene_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsScene_virtualbase_connectNotify".}
proc fcQGraphicsScene_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_connectNotify".}
proc fQGraphicsScene_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsScene_virtualbase_disconnectNotify".}
proc fcQGraphicsScene_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_disconnectNotify".}
proc fcQGraphicsScene_staticMetaObject(): pointer {.importc: "QGraphicsScene_staticMetaObject".}
proc fcQGraphicsScene_delete(self: pointer) {.importc: "QGraphicsScene_delete".}


func init*(T: type gen_qgraphicsscene_types.QGraphicsScene, h: ptr cQGraphicsScene): gen_qgraphicsscene_types.QGraphicsScene =
  T(h: h)
proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene, ): gen_qgraphicsscene_types.QGraphicsScene =

  gen_qgraphicsscene_types.QGraphicsScene.init(fcQGraphicsScene_new())
proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene, sceneRect: gen_qrect.QRectF): gen_qgraphicsscene_types.QGraphicsScene =

  gen_qgraphicsscene_types.QGraphicsScene.init(fcQGraphicsScene_new2(sceneRect.h))
proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, width: float64, height: float64): gen_qgraphicsscene_types.QGraphicsScene =

  gen_qgraphicsscene_types.QGraphicsScene.init(fcQGraphicsScene_new3(x, y, width, height))
proc create2*(T: type gen_qgraphicsscene_types.QGraphicsScene, parent: gen_qobject.QObject): gen_qgraphicsscene_types.QGraphicsScene =

  gen_qgraphicsscene_types.QGraphicsScene.init(fcQGraphicsScene_new4(parent.h))
proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene, sceneRect: gen_qrect.QRectF, parent: gen_qobject.QObject): gen_qgraphicsscene_types.QGraphicsScene =

  gen_qgraphicsscene_types.QGraphicsScene.init(fcQGraphicsScene_new5(sceneRect.h, parent.h))
proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, width: float64, height: float64, parent: gen_qobject.QObject): gen_qgraphicsscene_types.QGraphicsScene =

  gen_qgraphicsscene_types.QGraphicsScene.init(fcQGraphicsScene_new6(x, y, width, height, parent.h))
proc metaObject*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsScene_metaObject(self.h))

proc metacast*(self: gen_qgraphicsscene_types.QGraphicsScene, param1: cstring): pointer =

  fcQGraphicsScene_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicsscene_types.QGraphicsScene, param1: cint, param2: cint, param3: pointer): cint =

  fcQGraphicsScene_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicsscene_types.QGraphicsScene, s: cstring): string =

  let v_ms = fcQGraphicsScene_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsscene_types.QGraphicsScene, s: cstring): string =

  let v_ms = fcQGraphicsScene_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sceneRect*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsScene_sceneRect(self.h))

proc width*(self: gen_qgraphicsscene_types.QGraphicsScene, ): float64 =

  fcQGraphicsScene_width(self.h)

proc height*(self: gen_qgraphicsscene_types.QGraphicsScene, ): float64 =

  fcQGraphicsScene_height(self.h)

proc setSceneRect*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF): void =

  fcQGraphicsScene_setSceneRect(self.h, rect.h)

proc setSceneRect2*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64): void =

  fcQGraphicsScene_setSceneRect2(self.h, x, y, w, h)

proc render*(self: gen_qgraphicsscene_types.QGraphicsScene, painter: gen_qpainter.QPainter): void =

  fcQGraphicsScene_render(self.h, painter.h)

proc itemIndexMethod*(self: gen_qgraphicsscene_types.QGraphicsScene, ): cint =

  cint(fcQGraphicsScene_itemIndexMethod(self.h))

proc setItemIndexMethod*(self: gen_qgraphicsscene_types.QGraphicsScene, methodVal: cint): void =

  fcQGraphicsScene_setItemIndexMethod(self.h, cint(methodVal))

proc isSortCacheEnabled*(self: gen_qgraphicsscene_types.QGraphicsScene, ): bool =

  fcQGraphicsScene_isSortCacheEnabled(self.h)

proc setSortCacheEnabled*(self: gen_qgraphicsscene_types.QGraphicsScene, enabled: bool): void =

  fcQGraphicsScene_setSortCacheEnabled(self.h, enabled)

proc bspTreeDepth*(self: gen_qgraphicsscene_types.QGraphicsScene, ): cint =

  fcQGraphicsScene_bspTreeDepth(self.h)

proc setBspTreeDepth*(self: gen_qgraphicsscene_types.QGraphicsScene, depth: cint): void =

  fcQGraphicsScene_setBspTreeDepth(self.h, depth)

proc itemsBoundingRect*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsScene_itemsBoundingRect(self.h))

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, ): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items(self.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc itemsWithPos*(self: gen_qgraphicsscene_types.QGraphicsScene, pos: gen_qpoint.QPointF): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_itemsWithPos(self.h, pos.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc itemsWithRect*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_itemsWithRect(self.h, rect.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc itemsWithPath*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath.QPainterPath): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_itemsWithPath(self.h, path.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc collidingItems*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_collidingItems(self.h, item.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc itemAt*(self: gen_qgraphicsscene_types.QGraphicsScene, pos: gen_qpoint.QPointF, deviceTransform: gen_qtransform.QTransform): gen_qgraphicsitem.QGraphicsItem =

  gen_qgraphicsitem.QGraphicsItem(h: fcQGraphicsScene_itemAt(self.h, pos.h, deviceTransform.h))

proc items2*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64, mode: cint, order: cint): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items2(self.h, x, y, w, h, cint(mode), cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc itemAt2*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, deviceTransform: gen_qtransform.QTransform): gen_qgraphicsitem.QGraphicsItem =

  gen_qgraphicsitem.QGraphicsItem(h: fcQGraphicsScene_itemAt2(self.h, x, y, deviceTransform.h))

proc selectedItems*(self: gen_qgraphicsscene_types.QGraphicsScene, ): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_selectedItems(self.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc selectionArea*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsScene_selectionArea(self.h))

proc setSelectionArea*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath.QPainterPath, deviceTransform: gen_qtransform.QTransform): void =

  fcQGraphicsScene_setSelectionArea(self.h, path.h, deviceTransform.h)

proc setSelectionAreaWithPath*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath.QPainterPath): void =

  fcQGraphicsScene_setSelectionAreaWithPath(self.h, path.h)

proc setSelectionArea2*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath.QPainterPath, selectionOperation: cint): void =

  fcQGraphicsScene_setSelectionArea2(self.h, path.h, cint(selectionOperation))

proc createItemGroup*(self: gen_qgraphicsscene_types.QGraphicsScene, items: seq[gen_qgraphicsitem.QGraphicsItem]): gen_qgraphicsitem.QGraphicsItemGroup =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  gen_qgraphicsitem.QGraphicsItemGroup(h: fcQGraphicsScene_createItemGroup(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0]))))

proc destroyItemGroup*(self: gen_qgraphicsscene_types.QGraphicsScene, group: gen_qgraphicsitem.QGraphicsItemGroup): void =

  fcQGraphicsScene_destroyItemGroup(self.h, group.h)

proc addItem*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem): void =

  fcQGraphicsScene_addItem(self.h, item.h)

proc addEllipse*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF): gen_qgraphicsitem.QGraphicsEllipseItem =

  gen_qgraphicsitem.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse(self.h, rect.h))

proc addLine*(self: gen_qgraphicsscene_types.QGraphicsScene, line: gen_qline.QLineF): gen_qgraphicsitem.QGraphicsLineItem =

  gen_qgraphicsitem.QGraphicsLineItem(h: fcQGraphicsScene_addLine(self.h, line.h))

proc addPath*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath.QPainterPath): gen_qgraphicsitem.QGraphicsPathItem =

  gen_qgraphicsitem.QGraphicsPathItem(h: fcQGraphicsScene_addPath(self.h, path.h))

proc addPixmap*(self: gen_qgraphicsscene_types.QGraphicsScene, pixmap: gen_qpixmap.QPixmap): gen_qgraphicsitem.QGraphicsPixmapItem =

  gen_qgraphicsitem.QGraphicsPixmapItem(h: fcQGraphicsScene_addPixmap(self.h, pixmap.h))

proc addRect*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF): gen_qgraphicsitem.QGraphicsRectItem =

  gen_qgraphicsitem.QGraphicsRectItem(h: fcQGraphicsScene_addRect(self.h, rect.h))

proc addText*(self: gen_qgraphicsscene_types.QGraphicsScene, text: string): gen_qgraphicsitem.QGraphicsTextItem =

  gen_qgraphicsitem.QGraphicsTextItem(h: fcQGraphicsScene_addText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addSimpleText*(self: gen_qgraphicsscene_types.QGraphicsScene, text: string): gen_qgraphicsitem.QGraphicsSimpleTextItem =

  gen_qgraphicsitem.QGraphicsSimpleTextItem(h: fcQGraphicsScene_addSimpleText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addWidget*(self: gen_qgraphicsscene_types.QGraphicsScene, widget: gen_qwidget.QWidget): gen_qgraphicsproxywidget.QGraphicsProxyWidget =

  gen_qgraphicsproxywidget.QGraphicsProxyWidget(h: fcQGraphicsScene_addWidget(self.h, widget.h))

proc addEllipse2*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64): gen_qgraphicsitem.QGraphicsEllipseItem =

  gen_qgraphicsitem.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse2(self.h, x, y, w, h))

proc addLine2*(self: gen_qgraphicsscene_types.QGraphicsScene, x1: float64, y1: float64, x2: float64, y2: float64): gen_qgraphicsitem.QGraphicsLineItem =

  gen_qgraphicsitem.QGraphicsLineItem(h: fcQGraphicsScene_addLine2(self.h, x1, y1, x2, y2))

proc addRect2*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64): gen_qgraphicsitem.QGraphicsRectItem =

  gen_qgraphicsitem.QGraphicsRectItem(h: fcQGraphicsScene_addRect2(self.h, x, y, w, h))

proc removeItem*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem): void =

  fcQGraphicsScene_removeItem(self.h, item.h)

proc focusItem*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qgraphicsitem.QGraphicsItem =

  gen_qgraphicsitem.QGraphicsItem(h: fcQGraphicsScene_focusItem(self.h))

proc setFocusItem*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem): void =

  fcQGraphicsScene_setFocusItem(self.h, item.h)

proc hasFocus*(self: gen_qgraphicsscene_types.QGraphicsScene, ): bool =

  fcQGraphicsScene_hasFocus(self.h)

proc setFocus*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =

  fcQGraphicsScene_setFocus(self.h)

proc clearFocus*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =

  fcQGraphicsScene_clearFocus(self.h)

proc setStickyFocus*(self: gen_qgraphicsscene_types.QGraphicsScene, enabled: bool): void =

  fcQGraphicsScene_setStickyFocus(self.h, enabled)

proc stickyFocus*(self: gen_qgraphicsscene_types.QGraphicsScene, ): bool =

  fcQGraphicsScene_stickyFocus(self.h)

proc mouseGrabberItem*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qgraphicsitem.QGraphicsItem =

  gen_qgraphicsitem.QGraphicsItem(h: fcQGraphicsScene_mouseGrabberItem(self.h))

proc backgroundBrush*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQGraphicsScene_backgroundBrush(self.h))

proc setBackgroundBrush*(self: gen_qgraphicsscene_types.QGraphicsScene, brush: gen_qbrush.QBrush): void =

  fcQGraphicsScene_setBackgroundBrush(self.h, brush.h)

proc foregroundBrush*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQGraphicsScene_foregroundBrush(self.h))

proc setForegroundBrush*(self: gen_qgraphicsscene_types.QGraphicsScene, brush: gen_qbrush.QBrush): void =

  fcQGraphicsScene_setForegroundBrush(self.h, brush.h)

proc inputMethodQuery*(self: gen_qgraphicsscene_types.QGraphicsScene, query: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQGraphicsScene_inputMethodQuery(self.h, cint(query)))

proc views*(self: gen_qgraphicsscene_types.QGraphicsScene, ): seq[gen_qgraphicsview.QGraphicsView] =

  var v_ma = fcQGraphicsScene_views(self.h)
  var vx_ret = newSeq[gen_qgraphicsview.QGraphicsView](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsview.QGraphicsView(h: v_outCast[i])
  vx_ret

proc update*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64): void =

  fcQGraphicsScene_update(self.h, x, y, w, h)

proc invalidate*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64): void =

  fcQGraphicsScene_invalidate(self.h, x, y, w, h)

proc style*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qstyle.QStyle =

  gen_qstyle.QStyle(h: fcQGraphicsScene_style(self.h))

proc setStyle*(self: gen_qgraphicsscene_types.QGraphicsScene, style: gen_qstyle.QStyle): void =

  fcQGraphicsScene_setStyle(self.h, style.h)

proc font*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQGraphicsScene_font(self.h))

proc setFont*(self: gen_qgraphicsscene_types.QGraphicsScene, font: gen_qfont.QFont): void =

  fcQGraphicsScene_setFont(self.h, font.h)

proc palette*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qpalette.QPalette =

  gen_qpalette.QPalette(h: fcQGraphicsScene_palette(self.h))

proc setPalette*(self: gen_qgraphicsscene_types.QGraphicsScene, palette: gen_qpalette.QPalette): void =

  fcQGraphicsScene_setPalette(self.h, palette.h)

proc isActive*(self: gen_qgraphicsscene_types.QGraphicsScene, ): bool =

  fcQGraphicsScene_isActive(self.h)

proc activePanel*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qgraphicsitem.QGraphicsItem =

  gen_qgraphicsitem.QGraphicsItem(h: fcQGraphicsScene_activePanel(self.h))

proc setActivePanel*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem): void =

  fcQGraphicsScene_setActivePanel(self.h, item.h)

proc activeWindow*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qgraphicswidget.QGraphicsWidget =

  gen_qgraphicswidget.QGraphicsWidget(h: fcQGraphicsScene_activeWindow(self.h))

proc setActiveWindow*(self: gen_qgraphicsscene_types.QGraphicsScene, widget: gen_qgraphicswidget.QGraphicsWidget): void =

  fcQGraphicsScene_setActiveWindow(self.h, widget.h)

proc sendEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool =

  fcQGraphicsScene_sendEvent(self.h, item.h, event.h)

proc minimumRenderSize*(self: gen_qgraphicsscene_types.QGraphicsScene, ): float64 =

  fcQGraphicsScene_minimumRenderSize(self.h)

proc setMinimumRenderSize*(self: gen_qgraphicsscene_types.QGraphicsScene, minSize: float64): void =

  fcQGraphicsScene_setMinimumRenderSize(self.h, minSize)

proc focusOnTouch*(self: gen_qgraphicsscene_types.QGraphicsScene, ): bool =

  fcQGraphicsScene_focusOnTouch(self.h)

proc setFocusOnTouch*(self: gen_qgraphicsscene_types.QGraphicsScene, enabled: bool): void =

  fcQGraphicsScene_setFocusOnTouch(self.h, enabled)

proc update2*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =

  fcQGraphicsScene_update2(self.h)

proc invalidate2*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =

  fcQGraphicsScene_invalidate2(self.h)

proc advance*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =

  fcQGraphicsScene_advance(self.h)

proc clearSelection*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =

  fcQGraphicsScene_clearSelection(self.h)

proc clear*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =

  fcQGraphicsScene_clear(self.h)

proc changed*(self: gen_qgraphicsscene_types.QGraphicsScene, region: seq[gen_qrect.QRectF]): void =

  var region_CArray = newSeq[pointer](len(region))
  for i in 0..<len(region):
    region_CArray[i] = region[i].h

  fcQGraphicsScene_changed(self.h, struct_miqt_array(len: csize_t(len(region)), data: if len(region) == 0: nil else: addr(region_CArray[0])))

proc miqt_exec_callback_QGraphicsScene_changed(slot: int, region: struct_miqt_array) {.exportc.} =
  type Cb = proc(region: seq[gen_qrect.QRectF])
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  var vregion_ma = region
  var vregionx_ret = newSeq[gen_qrect.QRectF](int(vregion_ma.len))
  let vregion_outCast = cast[ptr UncheckedArray[pointer]](vregion_ma.data)
  for i in 0 ..< vregion_ma.len:
    vregionx_ret[i] = gen_qrect.QRectF(h: vregion_outCast[i])
  let slotval1 = vregionx_ret


  nimfunc[](slotval1)

proc onchanged*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: proc(region: seq[gen_qrect.QRectF])) =
  type Cb = proc(region: seq[gen_qrect.QRectF])
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsScene_connect_changed(self.h, cast[int](addr tmp[]))
proc sceneRectChanged*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF): void =

  fcQGraphicsScene_sceneRectChanged(self.h, rect.h)

proc miqt_exec_callback_QGraphicsScene_sceneRectChanged(slot: int, rect: pointer) {.exportc.} =
  type Cb = proc(rect: gen_qrect.QRectF)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRectF(h: rect)


  nimfunc[](slotval1)

proc onsceneRectChanged*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: proc(rect: gen_qrect.QRectF)) =
  type Cb = proc(rect: gen_qrect.QRectF)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsScene_connect_sceneRectChanged(self.h, cast[int](addr tmp[]))
proc selectionChanged*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =

  fcQGraphicsScene_selectionChanged(self.h)

proc miqt_exec_callback_QGraphicsScene_selectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onselectionChanged*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsScene_connect_selectionChanged(self.h, cast[int](addr tmp[]))
proc focusItemChanged*(self: gen_qgraphicsscene_types.QGraphicsScene, newFocus: gen_qgraphicsitem.QGraphicsItem, oldFocus: gen_qgraphicsitem.QGraphicsItem, reason: cint): void =

  fcQGraphicsScene_focusItemChanged(self.h, newFocus.h, oldFocus.h, cint(reason))

proc miqt_exec_callback_QGraphicsScene_focusItemChanged(slot: int, newFocus: pointer, oldFocus: pointer, reason: cint) {.exportc.} =
  type Cb = proc(newFocus: gen_qgraphicsitem.QGraphicsItem, oldFocus: gen_qgraphicsitem.QGraphicsItem, reason: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: newFocus)

  let slotval2 = gen_qgraphicsitem.QGraphicsItem(h: oldFocus)

  let slotval3 = cint(reason)


  nimfunc[](slotval1, slotval2, slotval3)

proc onfocusItemChanged*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: proc(newFocus: gen_qgraphicsitem.QGraphicsItem, oldFocus: gen_qgraphicsitem.QGraphicsItem, reason: cint)) =
  type Cb = proc(newFocus: gen_qgraphicsitem.QGraphicsItem, oldFocus: gen_qgraphicsitem.QGraphicsItem, reason: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsScene_connect_focusItemChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type gen_qgraphicsscene_types.QGraphicsScene, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsScene_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qgraphicsscene_types.QGraphicsScene, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsScene_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qgraphicsscene_types.QGraphicsScene, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsScene_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qgraphicsscene_types.QGraphicsScene, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsScene_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc render2*(self: gen_qgraphicsscene_types.QGraphicsScene, painter: gen_qpainter.QPainter, target: gen_qrect.QRectF): void =

  fcQGraphicsScene_render2(self.h, painter.h, target.h)

proc render3*(self: gen_qgraphicsscene_types.QGraphicsScene, painter: gen_qpainter.QPainter, target: gen_qrect.QRectF, source: gen_qrect.QRectF): void =

  fcQGraphicsScene_render3(self.h, painter.h, target.h, source.h)

proc render4*(self: gen_qgraphicsscene_types.QGraphicsScene, painter: gen_qpainter.QPainter, target: gen_qrect.QRectF, source: gen_qrect.QRectF, aspectRatioMode: cint): void =

  fcQGraphicsScene_render4(self.h, painter.h, target.h, source.h, cint(aspectRatioMode))

proc items1*(self: gen_qgraphicsscene_types.QGraphicsScene, order: cint): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items1(self.h, cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items22*(self: gen_qgraphicsscene_types.QGraphicsScene, pos: gen_qpoint.QPointF, mode: cint): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items22(self.h, pos.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items3*(self: gen_qgraphicsscene_types.QGraphicsScene, pos: gen_qpoint.QPointF, mode: cint, order: cint): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items3(self.h, pos.h, cint(mode), cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items4*(self: gen_qgraphicsscene_types.QGraphicsScene, pos: gen_qpoint.QPointF, mode: cint, order: cint, deviceTransform: gen_qtransform.QTransform): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items4(self.h, pos.h, cint(mode), cint(order), deviceTransform.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items23*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF, mode: cint): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items23(self.h, rect.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items32*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF, mode: cint, order: cint): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items32(self.h, rect.h, cint(mode), cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items42*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF, mode: cint, order: cint, deviceTransform: gen_qtransform.QTransform): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items42(self.h, rect.h, cint(mode), cint(order), deviceTransform.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items25*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath.QPainterPath, mode: cint): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items25(self.h, path.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items34*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath.QPainterPath, mode: cint, order: cint): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items34(self.h, path.h, cint(mode), cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items44*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath.QPainterPath, mode: cint, order: cint, deviceTransform: gen_qtransform.QTransform): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items44(self.h, path.h, cint(mode), cint(order), deviceTransform.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc collidingItems2*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem, mode: cint): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_collidingItems2(self.h, item.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items7*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64, mode: cint, order: cint, deviceTransform: gen_qtransform.QTransform): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items7(self.h, x, y, w, h, cint(mode), cint(order), deviceTransform.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc setSelectionArea22*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath.QPainterPath, mode: cint): void =

  fcQGraphicsScene_setSelectionArea22(self.h, path.h, cint(mode))

proc setSelectionArea3*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath.QPainterPath, mode: cint, deviceTransform: gen_qtransform.QTransform): void =

  fcQGraphicsScene_setSelectionArea3(self.h, path.h, cint(mode), deviceTransform.h)

proc setSelectionArea32*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath.QPainterPath, selectionOperation: cint, mode: cint): void =

  fcQGraphicsScene_setSelectionArea32(self.h, path.h, cint(selectionOperation), cint(mode))

proc setSelectionArea4*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath.QPainterPath, selectionOperation: cint, mode: cint, deviceTransform: gen_qtransform.QTransform): void =

  fcQGraphicsScene_setSelectionArea4(self.h, path.h, cint(selectionOperation), cint(mode), deviceTransform.h)

proc addEllipse22*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF, pen: gen_qpen.QPen): gen_qgraphicsitem.QGraphicsEllipseItem =

  gen_qgraphicsitem.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse22(self.h, rect.h, pen.h))

proc addEllipse3*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF, pen: gen_qpen.QPen, brush: gen_qbrush.QBrush): gen_qgraphicsitem.QGraphicsEllipseItem =

  gen_qgraphicsitem.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse3(self.h, rect.h, pen.h, brush.h))

proc addLine22*(self: gen_qgraphicsscene_types.QGraphicsScene, line: gen_qline.QLineF, pen: gen_qpen.QPen): gen_qgraphicsitem.QGraphicsLineItem =

  gen_qgraphicsitem.QGraphicsLineItem(h: fcQGraphicsScene_addLine22(self.h, line.h, pen.h))

proc addPath2*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath.QPainterPath, pen: gen_qpen.QPen): gen_qgraphicsitem.QGraphicsPathItem =

  gen_qgraphicsitem.QGraphicsPathItem(h: fcQGraphicsScene_addPath2(self.h, path.h, pen.h))

proc addPath3*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath.QPainterPath, pen: gen_qpen.QPen, brush: gen_qbrush.QBrush): gen_qgraphicsitem.QGraphicsPathItem =

  gen_qgraphicsitem.QGraphicsPathItem(h: fcQGraphicsScene_addPath3(self.h, path.h, pen.h, brush.h))

proc addRect22*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF, pen: gen_qpen.QPen): gen_qgraphicsitem.QGraphicsRectItem =

  gen_qgraphicsitem.QGraphicsRectItem(h: fcQGraphicsScene_addRect22(self.h, rect.h, pen.h))

proc addRect3*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF, pen: gen_qpen.QPen, brush: gen_qbrush.QBrush): gen_qgraphicsitem.QGraphicsRectItem =

  gen_qgraphicsitem.QGraphicsRectItem(h: fcQGraphicsScene_addRect3(self.h, rect.h, pen.h, brush.h))

proc addText2*(self: gen_qgraphicsscene_types.QGraphicsScene, text: string, font: gen_qfont.QFont): gen_qgraphicsitem.QGraphicsTextItem =

  gen_qgraphicsitem.QGraphicsTextItem(h: fcQGraphicsScene_addText2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), font.h))

proc addSimpleText2*(self: gen_qgraphicsscene_types.QGraphicsScene, text: string, font: gen_qfont.QFont): gen_qgraphicsitem.QGraphicsSimpleTextItem =

  gen_qgraphicsitem.QGraphicsSimpleTextItem(h: fcQGraphicsScene_addSimpleText2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), font.h))

proc addWidget2*(self: gen_qgraphicsscene_types.QGraphicsScene, widget: gen_qwidget.QWidget, wFlags: cint): gen_qgraphicsproxywidget.QGraphicsProxyWidget =

  gen_qgraphicsproxywidget.QGraphicsProxyWidget(h: fcQGraphicsScene_addWidget2(self.h, widget.h, cint(wFlags)))

proc addEllipse5*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64, pen: gen_qpen.QPen): gen_qgraphicsitem.QGraphicsEllipseItem =

  gen_qgraphicsitem.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse5(self.h, x, y, w, h, pen.h))

proc addEllipse6*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64, pen: gen_qpen.QPen, brush: gen_qbrush.QBrush): gen_qgraphicsitem.QGraphicsEllipseItem =

  gen_qgraphicsitem.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse6(self.h, x, y, w, h, pen.h, brush.h))

proc addLine5*(self: gen_qgraphicsscene_types.QGraphicsScene, x1: float64, y1: float64, x2: float64, y2: float64, pen: gen_qpen.QPen): gen_qgraphicsitem.QGraphicsLineItem =

  gen_qgraphicsitem.QGraphicsLineItem(h: fcQGraphicsScene_addLine5(self.h, x1, y1, x2, y2, pen.h))

proc addRect5*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64, pen: gen_qpen.QPen): gen_qgraphicsitem.QGraphicsRectItem =

  gen_qgraphicsitem.QGraphicsRectItem(h: fcQGraphicsScene_addRect5(self.h, x, y, w, h, pen.h))

proc addRect6*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64, pen: gen_qpen.QPen, brush: gen_qbrush.QBrush): gen_qgraphicsitem.QGraphicsRectItem =

  gen_qgraphicsitem.QGraphicsRectItem(h: fcQGraphicsScene_addRect6(self.h, x, y, w, h, pen.h, brush.h))

proc setFocusItem2*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem, focusReason: cint): void =

  fcQGraphicsScene_setFocusItem2(self.h, item.h, cint(focusReason))

proc setFocus1*(self: gen_qgraphicsscene_types.QGraphicsScene, focusReason: cint): void =

  fcQGraphicsScene_setFocus1(self.h, cint(focusReason))

proc invalidate5*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64, layers: cint): void =

  fcQGraphicsScene_invalidate5(self.h, x, y, w, h, cint(layers))

proc update1*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF): void =

  fcQGraphicsScene_update1(self.h, rect.h)

proc invalidate1*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF): void =

  fcQGraphicsScene_invalidate1(self.h, rect.h)

proc invalidate22*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect.QRectF, layers: cint): void =

  fcQGraphicsScene_invalidate22(self.h, rect.h, cint(layers))

proc QGraphicsScenemetaObject*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQGraphicsScene_virtualbase_metaObject(self.h))

type QGraphicsScenemetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenemetaObjectProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_metaObject(self: ptr cQGraphicsScene, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsScene_metaObject ".} =
  var nimfunc = cast[ptr QGraphicsScenemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsScenemetacast*(self: gen_qgraphicsscene_types.QGraphicsScene, param1: cstring): pointer =

  fQGraphicsScene_virtualbase_metacast(self.h, param1)

type QGraphicsScenemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenemetacastProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_metacast(self: ptr cQGraphicsScene, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsScene_metacast ".} =
  var nimfunc = cast[ptr QGraphicsScenemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsScenemetacall*(self: gen_qgraphicsscene_types.QGraphicsScene, param1: cint, param2: cint, param3: pointer): cint =

  fQGraphicsScene_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsScenemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenemetacallProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_metacall(self: ptr cQGraphicsScene, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsScene_metacall ".} =
  var nimfunc = cast[ptr QGraphicsScenemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QGraphicsSceneinputMethodQuery*(self: gen_qgraphicsscene_types.QGraphicsScene, query: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fQGraphicsScene_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsSceneinputMethodQueryProc* = proc(query: cint): gen_qvariant.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsSceneinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_inputMethodQuery(self: ptr cQGraphicsScene, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsScene_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsSceneinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsSceneevent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qcoreevent.QEvent): bool =

  fQGraphicsScene_virtualbase_event(self.h, event.h)

type QGraphicsSceneeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsSceneeventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_event(self: ptr cQGraphicsScene, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsScene_event ".} =
  var nimfunc = cast[ptr QGraphicsSceneeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsSceneeventFilter*(self: gen_qgraphicsscene_types.QGraphicsScene, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQGraphicsScene_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsSceneeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsSceneeventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_eventFilter(self: ptr cQGraphicsScene, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsScene_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsSceneeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsScenecontextMenuEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =

  fQGraphicsScene_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsScenecontextMenuEventProc* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenecontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenecontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_contextMenuEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenecontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenedragEnterEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =

  fQGraphicsScene_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsScenedragEnterEventProc* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenedragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenedragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_dragEnterEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenedragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenedragMoveEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =

  fQGraphicsScene_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsScenedragMoveEventProc* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenedragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenedragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_dragMoveEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenedragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenedragLeaveEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =

  fQGraphicsScene_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsScenedragLeaveEventProc* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenedragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenedragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_dragLeaveEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenedragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenedropEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =

  fQGraphicsScene_virtualbase_dropEvent(self.h, event.h)

type QGraphicsScenedropEventProc* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenedropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenedropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_dropEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenedropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenefocusInEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qevent.QFocusEvent): void =

  fQGraphicsScene_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsScenefocusInEventProc* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenefocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenefocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_focusInEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenefocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenefocusOutEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qevent.QFocusEvent): void =

  fQGraphicsScene_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsScenefocusOutEventProc* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenefocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenefocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_focusOutEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenefocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenehelpEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneHelpEvent): void =

  fQGraphicsScene_virtualbase_helpEvent(self.h, event.h)

type QGraphicsScenehelpEventProc* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHelpEvent): void
proc onhelpEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenehelpEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenehelpEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_helpEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_helpEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_helpEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenehelpEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHelpEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenekeyPressEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qevent.QKeyEvent): void =

  fQGraphicsScene_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsScenekeyPressEventProc* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenekeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenekeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_keyPressEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenekeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenekeyReleaseEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qevent.QKeyEvent): void =

  fQGraphicsScene_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsScenekeyReleaseEventProc* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenekeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenekeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_keyReleaseEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenekeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenemousePressEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =

  fQGraphicsScene_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsScenemousePressEventProc* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenemousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenemousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_mousePressEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenemousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenemouseMoveEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =

  fQGraphicsScene_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsScenemouseMoveEventProc* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenemouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenemouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_mouseMoveEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenemouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenemouseReleaseEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =

  fQGraphicsScene_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsScenemouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenemouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenemouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_mouseReleaseEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenemouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenemouseDoubleClickEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =

  fQGraphicsScene_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsScenemouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenemouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenemouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_mouseDoubleClickEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenemouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenewheelEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =

  fQGraphicsScene_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsScenewheelEventProc* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenewheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenewheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_wheelEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenewheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSceneinputMethodEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qevent.QInputMethodEvent): void =

  fQGraphicsScene_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsSceneinputMethodEventProc* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsSceneinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_inputMethodEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsSceneinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenedrawBackground*(self: gen_qgraphicsscene_types.QGraphicsScene, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void =

  fQGraphicsScene_virtualbase_drawBackground(self.h, painter.h, rect.h)

type QGraphicsScenedrawBackgroundProc* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void
proc ondrawBackground*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenedrawBackgroundProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenedrawBackgroundProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_drawBackground(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_drawBackground(self: ptr cQGraphicsScene, slot: int, painter: pointer, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_drawBackground ".} =
  var nimfunc = cast[ptr QGraphicsScenedrawBackgroundProc](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRectF(h: rect)


  nimfunc[](slotval1, slotval2)
proc QGraphicsScenedrawForeground*(self: gen_qgraphicsscene_types.QGraphicsScene, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void =

  fQGraphicsScene_virtualbase_drawForeground(self.h, painter.h, rect.h)

type QGraphicsScenedrawForegroundProc* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void
proc ondrawForeground*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenedrawForegroundProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenedrawForegroundProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_drawForeground(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_drawForeground(self: ptr cQGraphicsScene, slot: int, painter: pointer, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_drawForeground ".} =
  var nimfunc = cast[ptr QGraphicsScenedrawForegroundProc](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRectF(h: rect)


  nimfunc[](slotval1, slotval2)
proc QGraphicsScenetimerEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qcoreevent.QTimerEvent): void =

  fQGraphicsScene_virtualbase_timerEvent(self.h, event.h)

type QGraphicsScenetimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenetimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_timerEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenechildEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qcoreevent.QChildEvent): void =

  fQGraphicsScene_virtualbase_childEvent(self.h, event.h)

type QGraphicsScenechildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenechildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_childEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScenecustomEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qcoreevent.QEvent): void =

  fQGraphicsScene_virtualbase_customEvent(self.h, event.h)

type QGraphicsScenecustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenecustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_customEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsScenecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSceneconnectNotify*(self: gen_qgraphicsscene_types.QGraphicsScene, signal: gen_qmetaobject.QMetaMethod): void =

  fQGraphicsScene_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsSceneconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsSceneconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_connectNotify(self: ptr cQGraphicsScene, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsSceneconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsScenedisconnectNotify*(self: gen_qgraphicsscene_types.QGraphicsScene, signal: gen_qmetaobject.QMetaMethod): void =

  fQGraphicsScene_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsScenedisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsScenedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_disconnectNotify(self: ptr cQGraphicsScene, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsScenedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qgraphicsscene_types.QGraphicsScene): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsScene_staticMetaObject())
proc delete*(self: gen_qgraphicsscene_types.QGraphicsScene) =
  fcQGraphicsScene_delete(self.h)
