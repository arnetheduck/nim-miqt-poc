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
{.compile("gen_qgraphicsscene.cpp", cflags).}


type QGraphicsSceneItemIndexMethod* = cint
const
  QGraphicsSceneBspTreeIndex* = 0
  QGraphicsSceneNoIndex* = -1



type QGraphicsSceneSceneLayer* = cint
const
  QGraphicsSceneItemLayer* = 1
  QGraphicsSceneBackgroundLayer* = 2
  QGraphicsSceneForegroundLayer* = 4
  QGraphicsSceneAllLayers* = 65535



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
  gen_qnamespace,
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
  gen_qnamespace,
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
proc fcQGraphicsScene_sceneRect(self: pointer, ): pointer {.importc: "QGraphicsScene_sceneRect".}
proc fcQGraphicsScene_width(self: pointer, ): float64 {.importc: "QGraphicsScene_width".}
proc fcQGraphicsScene_height(self: pointer, ): float64 {.importc: "QGraphicsScene_height".}
proc fcQGraphicsScene_setSceneRect(self: pointer, rect: pointer): void {.importc: "QGraphicsScene_setSceneRect".}
proc fcQGraphicsScene_setSceneRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsScene_setSceneRect2".}
proc fcQGraphicsScene_render(self: pointer, painter: pointer): void {.importc: "QGraphicsScene_render".}
proc fcQGraphicsScene_itemIndexMethod(self: pointer, ): cint {.importc: "QGraphicsScene_itemIndexMethod".}
proc fcQGraphicsScene_setItemIndexMethod(self: pointer, methodVal: cint): void {.importc: "QGraphicsScene_setItemIndexMethod".}
proc fcQGraphicsScene_bspTreeDepth(self: pointer, ): cint {.importc: "QGraphicsScene_bspTreeDepth".}
proc fcQGraphicsScene_setBspTreeDepth(self: pointer, depth: cint): void {.importc: "QGraphicsScene_setBspTreeDepth".}
proc fcQGraphicsScene_itemsBoundingRect(self: pointer, ): pointer {.importc: "QGraphicsScene_itemsBoundingRect".}
proc fcQGraphicsScene_items(self: pointer, ): struct_miqt_array {.importc: "QGraphicsScene_items".}
proc fcQGraphicsScene_itemsWithPos(self: pointer, pos: pointer): struct_miqt_array {.importc: "QGraphicsScene_itemsWithPos".}
proc fcQGraphicsScene_itemsWithRect(self: pointer, rect: pointer): struct_miqt_array {.importc: "QGraphicsScene_itemsWithRect".}
proc fcQGraphicsScene_itemsWithPath(self: pointer, path: pointer): struct_miqt_array {.importc: "QGraphicsScene_itemsWithPath".}
proc fcQGraphicsScene_items2(self: pointer, x: float64, y: float64, w: float64, h: float64, mode: cint, order: cint): struct_miqt_array {.importc: "QGraphicsScene_items2".}
proc fcQGraphicsScene_collidingItems(self: pointer, item: pointer): struct_miqt_array {.importc: "QGraphicsScene_collidingItems".}
proc fcQGraphicsScene_itemAt(self: pointer, pos: pointer, deviceTransform: pointer): pointer {.importc: "QGraphicsScene_itemAt".}
proc fcQGraphicsScene_itemAt2(self: pointer, x: float64, y: float64, deviceTransform: pointer): pointer {.importc: "QGraphicsScene_itemAt2".}
proc fcQGraphicsScene_selectedItems(self: pointer, ): struct_miqt_array {.importc: "QGraphicsScene_selectedItems".}
proc fcQGraphicsScene_selectionArea(self: pointer, ): pointer {.importc: "QGraphicsScene_selectionArea".}
proc fcQGraphicsScene_setSelectionArea(self: pointer, path: pointer, deviceTransform: pointer): void {.importc: "QGraphicsScene_setSelectionArea".}
proc fcQGraphicsScene_setSelectionAreaWithPath(self: pointer, path: pointer): void {.importc: "QGraphicsScene_setSelectionAreaWithPath".}
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
proc fcQGraphicsScene_items7(self: pointer, x: float64, y: float64, w: float64, h: float64, mode: cint, order: cint, deviceTransform: pointer): struct_miqt_array {.importc: "QGraphicsScene_items7".}
proc fcQGraphicsScene_collidingItems2(self: pointer, item: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsScene_collidingItems2".}
proc fcQGraphicsScene_setSelectionArea2(self: pointer, path: pointer, selectionOperation: cint): void {.importc: "QGraphicsScene_setSelectionArea2".}
proc fcQGraphicsScene_setSelectionArea3(self: pointer, path: pointer, selectionOperation: cint, mode: cint): void {.importc: "QGraphicsScene_setSelectionArea3".}
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
proc fQGraphicsScene_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QGraphicsScene_virtualbase_focusNextPrevChild".}
proc fcQGraphicsScene_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QGraphicsScene_override_virtual_focusNextPrevChild".}
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
proc fcQGraphicsScene_delete(self: pointer) {.importc: "QGraphicsScene_delete".}


func init*(T: type QGraphicsScene, h: ptr cQGraphicsScene): QGraphicsScene =
  T(h: h)
proc create*(T: type QGraphicsScene, ): QGraphicsScene =

  QGraphicsScene.init(fcQGraphicsScene_new())
proc create*(T: type QGraphicsScene, sceneRect: gen_qrect.QRectF): QGraphicsScene =

  QGraphicsScene.init(fcQGraphicsScene_new2(sceneRect.h))
proc create*(T: type QGraphicsScene, x: float64, y: float64, width: float64, height: float64): QGraphicsScene =

  QGraphicsScene.init(fcQGraphicsScene_new3(x, y, width, height))
proc create2*(T: type QGraphicsScene, parent: gen_qobject.QObject): QGraphicsScene =

  QGraphicsScene.init(fcQGraphicsScene_new4(parent.h))
proc create*(T: type QGraphicsScene, sceneRect: gen_qrect.QRectF, parent: gen_qobject.QObject): QGraphicsScene =

  QGraphicsScene.init(fcQGraphicsScene_new5(sceneRect.h, parent.h))
proc create*(T: type QGraphicsScene, x: float64, y: float64, width: float64, height: float64, parent: gen_qobject.QObject): QGraphicsScene =

  QGraphicsScene.init(fcQGraphicsScene_new6(x, y, width, height, parent.h))
proc metaObject*(self: QGraphicsScene, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsScene_metaObject(self.h))

proc metacast*(self: QGraphicsScene, param1: cstring): pointer =

  fcQGraphicsScene_metacast(self.h, param1)

proc metacall*(self: QGraphicsScene, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsScene_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsScene, s: cstring): string =

  let v_ms = fcQGraphicsScene_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sceneRect*(self: QGraphicsScene, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsScene_sceneRect(self.h))

proc width*(self: QGraphicsScene, ): float64 =

  fcQGraphicsScene_width(self.h)

proc height*(self: QGraphicsScene, ): float64 =

  fcQGraphicsScene_height(self.h)

proc setSceneRect*(self: QGraphicsScene, rect: gen_qrect.QRectF): void =

  fcQGraphicsScene_setSceneRect(self.h, rect.h)

proc setSceneRect2*(self: QGraphicsScene, x: float64, y: float64, w: float64, h: float64): void =

  fcQGraphicsScene_setSceneRect2(self.h, x, y, w, h)

proc render*(self: QGraphicsScene, painter: gen_qpainter.QPainter): void =

  fcQGraphicsScene_render(self.h, painter.h)

proc itemIndexMethod*(self: QGraphicsScene, ): QGraphicsSceneItemIndexMethod =

  QGraphicsSceneItemIndexMethod(fcQGraphicsScene_itemIndexMethod(self.h))

proc setItemIndexMethod*(self: QGraphicsScene, methodVal: QGraphicsSceneItemIndexMethod): void =

  fcQGraphicsScene_setItemIndexMethod(self.h, cint(methodVal))

proc bspTreeDepth*(self: QGraphicsScene, ): cint =

  fcQGraphicsScene_bspTreeDepth(self.h)

proc setBspTreeDepth*(self: QGraphicsScene, depth: cint): void =

  fcQGraphicsScene_setBspTreeDepth(self.h, depth)

proc itemsBoundingRect*(self: QGraphicsScene, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsScene_itemsBoundingRect(self.h))

proc items*(self: QGraphicsScene, ): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items(self.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc itemsWithPos*(self: QGraphicsScene, pos: gen_qpoint.QPointF): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_itemsWithPos(self.h, pos.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc itemsWithRect*(self: QGraphicsScene, rect: gen_qrect.QRectF): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_itemsWithRect(self.h, rect.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc itemsWithPath*(self: QGraphicsScene, path: gen_qpainterpath.QPainterPath): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_itemsWithPath(self.h, path.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items2*(self: QGraphicsScene, x: float64, y: float64, w: float64, h: float64, mode: gen_qnamespace.ItemSelectionMode, order: gen_qnamespace.SortOrder): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items2(self.h, x, y, w, h, cint(mode), cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc collidingItems*(self: QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_collidingItems(self.h, item.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc itemAt*(self: QGraphicsScene, pos: gen_qpoint.QPointF, deviceTransform: gen_qtransform.QTransform): gen_qgraphicsitem.QGraphicsItem =

  gen_qgraphicsitem.QGraphicsItem(h: fcQGraphicsScene_itemAt(self.h, pos.h, deviceTransform.h))

proc itemAt2*(self: QGraphicsScene, x: float64, y: float64, deviceTransform: gen_qtransform.QTransform): gen_qgraphicsitem.QGraphicsItem =

  gen_qgraphicsitem.QGraphicsItem(h: fcQGraphicsScene_itemAt2(self.h, x, y, deviceTransform.h))

proc selectedItems*(self: QGraphicsScene, ): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_selectedItems(self.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc selectionArea*(self: QGraphicsScene, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsScene_selectionArea(self.h))

proc setSelectionArea*(self: QGraphicsScene, path: gen_qpainterpath.QPainterPath, deviceTransform: gen_qtransform.QTransform): void =

  fcQGraphicsScene_setSelectionArea(self.h, path.h, deviceTransform.h)

proc setSelectionAreaWithPath*(self: QGraphicsScene, path: gen_qpainterpath.QPainterPath): void =

  fcQGraphicsScene_setSelectionAreaWithPath(self.h, path.h)

proc createItemGroup*(self: QGraphicsScene, items: seq[gen_qgraphicsitem.QGraphicsItem]): gen_qgraphicsitem.QGraphicsItemGroup =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  gen_qgraphicsitem.QGraphicsItemGroup(h: fcQGraphicsScene_createItemGroup(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0]))))

proc destroyItemGroup*(self: QGraphicsScene, group: gen_qgraphicsitem.QGraphicsItemGroup): void =

  fcQGraphicsScene_destroyItemGroup(self.h, group.h)

proc addItem*(self: QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem): void =

  fcQGraphicsScene_addItem(self.h, item.h)

proc addEllipse*(self: QGraphicsScene, rect: gen_qrect.QRectF): gen_qgraphicsitem.QGraphicsEllipseItem =

  gen_qgraphicsitem.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse(self.h, rect.h))

proc addLine*(self: QGraphicsScene, line: gen_qline.QLineF): gen_qgraphicsitem.QGraphicsLineItem =

  gen_qgraphicsitem.QGraphicsLineItem(h: fcQGraphicsScene_addLine(self.h, line.h))

proc addPath*(self: QGraphicsScene, path: gen_qpainterpath.QPainterPath): gen_qgraphicsitem.QGraphicsPathItem =

  gen_qgraphicsitem.QGraphicsPathItem(h: fcQGraphicsScene_addPath(self.h, path.h))

proc addPixmap*(self: QGraphicsScene, pixmap: gen_qpixmap.QPixmap): gen_qgraphicsitem.QGraphicsPixmapItem =

  gen_qgraphicsitem.QGraphicsPixmapItem(h: fcQGraphicsScene_addPixmap(self.h, pixmap.h))

proc addRect*(self: QGraphicsScene, rect: gen_qrect.QRectF): gen_qgraphicsitem.QGraphicsRectItem =

  gen_qgraphicsitem.QGraphicsRectItem(h: fcQGraphicsScene_addRect(self.h, rect.h))

proc addText*(self: QGraphicsScene, text: string): gen_qgraphicsitem.QGraphicsTextItem =

  gen_qgraphicsitem.QGraphicsTextItem(h: fcQGraphicsScene_addText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addSimpleText*(self: QGraphicsScene, text: string): gen_qgraphicsitem.QGraphicsSimpleTextItem =

  gen_qgraphicsitem.QGraphicsSimpleTextItem(h: fcQGraphicsScene_addSimpleText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addWidget*(self: QGraphicsScene, widget: gen_qwidget.QWidget): gen_qgraphicsproxywidget.QGraphicsProxyWidget =

  gen_qgraphicsproxywidget.QGraphicsProxyWidget(h: fcQGraphicsScene_addWidget(self.h, widget.h))

proc addEllipse2*(self: QGraphicsScene, x: float64, y: float64, w: float64, h: float64): gen_qgraphicsitem.QGraphicsEllipseItem =

  gen_qgraphicsitem.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse2(self.h, x, y, w, h))

proc addLine2*(self: QGraphicsScene, x1: float64, y1: float64, x2: float64, y2: float64): gen_qgraphicsitem.QGraphicsLineItem =

  gen_qgraphicsitem.QGraphicsLineItem(h: fcQGraphicsScene_addLine2(self.h, x1, y1, x2, y2))

proc addRect2*(self: QGraphicsScene, x: float64, y: float64, w: float64, h: float64): gen_qgraphicsitem.QGraphicsRectItem =

  gen_qgraphicsitem.QGraphicsRectItem(h: fcQGraphicsScene_addRect2(self.h, x, y, w, h))

proc removeItem*(self: QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem): void =

  fcQGraphicsScene_removeItem(self.h, item.h)

proc focusItem*(self: QGraphicsScene, ): gen_qgraphicsitem.QGraphicsItem =

  gen_qgraphicsitem.QGraphicsItem(h: fcQGraphicsScene_focusItem(self.h))

proc setFocusItem*(self: QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem): void =

  fcQGraphicsScene_setFocusItem(self.h, item.h)

proc hasFocus*(self: QGraphicsScene, ): bool =

  fcQGraphicsScene_hasFocus(self.h)

proc setFocus*(self: QGraphicsScene, ): void =

  fcQGraphicsScene_setFocus(self.h)

proc clearFocus*(self: QGraphicsScene, ): void =

  fcQGraphicsScene_clearFocus(self.h)

proc setStickyFocus*(self: QGraphicsScene, enabled: bool): void =

  fcQGraphicsScene_setStickyFocus(self.h, enabled)

proc stickyFocus*(self: QGraphicsScene, ): bool =

  fcQGraphicsScene_stickyFocus(self.h)

proc mouseGrabberItem*(self: QGraphicsScene, ): gen_qgraphicsitem.QGraphicsItem =

  gen_qgraphicsitem.QGraphicsItem(h: fcQGraphicsScene_mouseGrabberItem(self.h))

proc backgroundBrush*(self: QGraphicsScene, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQGraphicsScene_backgroundBrush(self.h))

proc setBackgroundBrush*(self: QGraphicsScene, brush: gen_qbrush.QBrush): void =

  fcQGraphicsScene_setBackgroundBrush(self.h, brush.h)

proc foregroundBrush*(self: QGraphicsScene, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQGraphicsScene_foregroundBrush(self.h))

proc setForegroundBrush*(self: QGraphicsScene, brush: gen_qbrush.QBrush): void =

  fcQGraphicsScene_setForegroundBrush(self.h, brush.h)

proc inputMethodQuery*(self: QGraphicsScene, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQGraphicsScene_inputMethodQuery(self.h, cint(query)))

proc views*(self: QGraphicsScene, ): seq[gen_qgraphicsview.QGraphicsView] =

  var v_ma = fcQGraphicsScene_views(self.h)
  var vx_ret = newSeq[gen_qgraphicsview.QGraphicsView](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsview.QGraphicsView(h: v_outCast[i])
  vx_ret

proc update*(self: QGraphicsScene, x: float64, y: float64, w: float64, h: float64): void =

  fcQGraphicsScene_update(self.h, x, y, w, h)

proc invalidate*(self: QGraphicsScene, x: float64, y: float64, w: float64, h: float64): void =

  fcQGraphicsScene_invalidate(self.h, x, y, w, h)

proc style*(self: QGraphicsScene, ): gen_qstyle.QStyle =

  gen_qstyle.QStyle(h: fcQGraphicsScene_style(self.h))

proc setStyle*(self: QGraphicsScene, style: gen_qstyle.QStyle): void =

  fcQGraphicsScene_setStyle(self.h, style.h)

proc font*(self: QGraphicsScene, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQGraphicsScene_font(self.h))

proc setFont*(self: QGraphicsScene, font: gen_qfont.QFont): void =

  fcQGraphicsScene_setFont(self.h, font.h)

proc palette*(self: QGraphicsScene, ): gen_qpalette.QPalette =

  gen_qpalette.QPalette(h: fcQGraphicsScene_palette(self.h))

proc setPalette*(self: QGraphicsScene, palette: gen_qpalette.QPalette): void =

  fcQGraphicsScene_setPalette(self.h, palette.h)

proc isActive*(self: QGraphicsScene, ): bool =

  fcQGraphicsScene_isActive(self.h)

proc activePanel*(self: QGraphicsScene, ): gen_qgraphicsitem.QGraphicsItem =

  gen_qgraphicsitem.QGraphicsItem(h: fcQGraphicsScene_activePanel(self.h))

proc setActivePanel*(self: QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem): void =

  fcQGraphicsScene_setActivePanel(self.h, item.h)

proc activeWindow*(self: QGraphicsScene, ): gen_qgraphicswidget.QGraphicsWidget =

  gen_qgraphicswidget.QGraphicsWidget(h: fcQGraphicsScene_activeWindow(self.h))

proc setActiveWindow*(self: QGraphicsScene, widget: gen_qgraphicswidget.QGraphicsWidget): void =

  fcQGraphicsScene_setActiveWindow(self.h, widget.h)

proc sendEvent*(self: QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool =

  fcQGraphicsScene_sendEvent(self.h, item.h, event.h)

proc minimumRenderSize*(self: QGraphicsScene, ): float64 =

  fcQGraphicsScene_minimumRenderSize(self.h)

proc setMinimumRenderSize*(self: QGraphicsScene, minSize: float64): void =

  fcQGraphicsScene_setMinimumRenderSize(self.h, minSize)

proc focusOnTouch*(self: QGraphicsScene, ): bool =

  fcQGraphicsScene_focusOnTouch(self.h)

proc setFocusOnTouch*(self: QGraphicsScene, enabled: bool): void =

  fcQGraphicsScene_setFocusOnTouch(self.h, enabled)

proc update2*(self: QGraphicsScene, ): void =

  fcQGraphicsScene_update2(self.h)

proc invalidate2*(self: QGraphicsScene, ): void =

  fcQGraphicsScene_invalidate2(self.h)

proc advance*(self: QGraphicsScene, ): void =

  fcQGraphicsScene_advance(self.h)

proc clearSelection*(self: QGraphicsScene, ): void =

  fcQGraphicsScene_clearSelection(self.h)

proc clear*(self: QGraphicsScene, ): void =

  fcQGraphicsScene_clear(self.h)

proc changed*(self: QGraphicsScene, region: seq[gen_qrect.QRectF]): void =

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

proc onchanged*(self: QGraphicsScene, slot: proc(region: seq[gen_qrect.QRectF])) =
  type Cb = proc(region: seq[gen_qrect.QRectF])
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsScene_connect_changed(self.h, cast[int](addr tmp[]))
proc sceneRectChanged*(self: QGraphicsScene, rect: gen_qrect.QRectF): void =

  fcQGraphicsScene_sceneRectChanged(self.h, rect.h)

proc miqt_exec_callback_QGraphicsScene_sceneRectChanged(slot: int, rect: pointer) {.exportc.} =
  type Cb = proc(rect: gen_qrect.QRectF)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRectF(h: rect)


  nimfunc[](slotval1)

proc onsceneRectChanged*(self: QGraphicsScene, slot: proc(rect: gen_qrect.QRectF)) =
  type Cb = proc(rect: gen_qrect.QRectF)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsScene_connect_sceneRectChanged(self.h, cast[int](addr tmp[]))
proc selectionChanged*(self: QGraphicsScene, ): void =

  fcQGraphicsScene_selectionChanged(self.h)

proc miqt_exec_callback_QGraphicsScene_selectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onselectionChanged*(self: QGraphicsScene, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsScene_connect_selectionChanged(self.h, cast[int](addr tmp[]))
proc focusItemChanged*(self: QGraphicsScene, newFocus: gen_qgraphicsitem.QGraphicsItem, oldFocus: gen_qgraphicsitem.QGraphicsItem, reason: gen_qnamespace.FocusReason): void =

  fcQGraphicsScene_focusItemChanged(self.h, newFocus.h, oldFocus.h, cint(reason))

proc miqt_exec_callback_QGraphicsScene_focusItemChanged(slot: int, newFocus: pointer, oldFocus: pointer, reason: cint) {.exportc.} =
  type Cb = proc(newFocus: gen_qgraphicsitem.QGraphicsItem, oldFocus: gen_qgraphicsitem.QGraphicsItem, reason: gen_qnamespace.FocusReason)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: newFocus)

  let slotval2 = gen_qgraphicsitem.QGraphicsItem(h: oldFocus)

  let slotval3 = gen_qnamespace.FocusReason(reason)


  nimfunc[](slotval1, slotval2, slotval3)

proc onfocusItemChanged*(self: QGraphicsScene, slot: proc(newFocus: gen_qgraphicsitem.QGraphicsItem, oldFocus: gen_qgraphicsitem.QGraphicsItem, reason: gen_qnamespace.FocusReason)) =
  type Cb = proc(newFocus: gen_qgraphicsitem.QGraphicsItem, oldFocus: gen_qgraphicsitem.QGraphicsItem, reason: gen_qnamespace.FocusReason)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsScene_connect_focusItemChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGraphicsScene, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsScene_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsScene, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsScene_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc render2*(self: QGraphicsScene, painter: gen_qpainter.QPainter, target: gen_qrect.QRectF): void =

  fcQGraphicsScene_render2(self.h, painter.h, target.h)

proc render3*(self: QGraphicsScene, painter: gen_qpainter.QPainter, target: gen_qrect.QRectF, source: gen_qrect.QRectF): void =

  fcQGraphicsScene_render3(self.h, painter.h, target.h, source.h)

proc render4*(self: QGraphicsScene, painter: gen_qpainter.QPainter, target: gen_qrect.QRectF, source: gen_qrect.QRectF, aspectRatioMode: gen_qnamespace.AspectRatioMode): void =

  fcQGraphicsScene_render4(self.h, painter.h, target.h, source.h, cint(aspectRatioMode))

proc items1*(self: QGraphicsScene, order: gen_qnamespace.SortOrder): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items1(self.h, cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items22*(self: QGraphicsScene, pos: gen_qpoint.QPointF, mode: gen_qnamespace.ItemSelectionMode): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items22(self.h, pos.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items3*(self: QGraphicsScene, pos: gen_qpoint.QPointF, mode: gen_qnamespace.ItemSelectionMode, order: gen_qnamespace.SortOrder): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items3(self.h, pos.h, cint(mode), cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items4*(self: QGraphicsScene, pos: gen_qpoint.QPointF, mode: gen_qnamespace.ItemSelectionMode, order: gen_qnamespace.SortOrder, deviceTransform: gen_qtransform.QTransform): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items4(self.h, pos.h, cint(mode), cint(order), deviceTransform.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items23*(self: QGraphicsScene, rect: gen_qrect.QRectF, mode: gen_qnamespace.ItemSelectionMode): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items23(self.h, rect.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items32*(self: QGraphicsScene, rect: gen_qrect.QRectF, mode: gen_qnamespace.ItemSelectionMode, order: gen_qnamespace.SortOrder): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items32(self.h, rect.h, cint(mode), cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items42*(self: QGraphicsScene, rect: gen_qrect.QRectF, mode: gen_qnamespace.ItemSelectionMode, order: gen_qnamespace.SortOrder, deviceTransform: gen_qtransform.QTransform): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items42(self.h, rect.h, cint(mode), cint(order), deviceTransform.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items25*(self: QGraphicsScene, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items25(self.h, path.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items34*(self: QGraphicsScene, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode, order: gen_qnamespace.SortOrder): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items34(self.h, path.h, cint(mode), cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items44*(self: QGraphicsScene, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode, order: gen_qnamespace.SortOrder, deviceTransform: gen_qtransform.QTransform): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items44(self.h, path.h, cint(mode), cint(order), deviceTransform.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items7*(self: QGraphicsScene, x: float64, y: float64, w: float64, h: float64, mode: gen_qnamespace.ItemSelectionMode, order: gen_qnamespace.SortOrder, deviceTransform: gen_qtransform.QTransform): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_items7(self.h, x, y, w, h, cint(mode), cint(order), deviceTransform.h)
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc collidingItems2*(self: QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): seq[gen_qgraphicsitem.QGraphicsItem] =

  var v_ma = fcQGraphicsScene_collidingItems2(self.h, item.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc setSelectionArea2*(self: QGraphicsScene, path: gen_qpainterpath.QPainterPath, selectionOperation: gen_qnamespace.ItemSelectionOperation): void =

  fcQGraphicsScene_setSelectionArea2(self.h, path.h, cint(selectionOperation))

proc setSelectionArea3*(self: QGraphicsScene, path: gen_qpainterpath.QPainterPath, selectionOperation: gen_qnamespace.ItemSelectionOperation, mode: gen_qnamespace.ItemSelectionMode): void =

  fcQGraphicsScene_setSelectionArea3(self.h, path.h, cint(selectionOperation), cint(mode))

proc setSelectionArea4*(self: QGraphicsScene, path: gen_qpainterpath.QPainterPath, selectionOperation: gen_qnamespace.ItemSelectionOperation, mode: gen_qnamespace.ItemSelectionMode, deviceTransform: gen_qtransform.QTransform): void =

  fcQGraphicsScene_setSelectionArea4(self.h, path.h, cint(selectionOperation), cint(mode), deviceTransform.h)

proc addEllipse22*(self: QGraphicsScene, rect: gen_qrect.QRectF, pen: gen_qpen.QPen): gen_qgraphicsitem.QGraphicsEllipseItem =

  gen_qgraphicsitem.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse22(self.h, rect.h, pen.h))

proc addEllipse3*(self: QGraphicsScene, rect: gen_qrect.QRectF, pen: gen_qpen.QPen, brush: gen_qbrush.QBrush): gen_qgraphicsitem.QGraphicsEllipseItem =

  gen_qgraphicsitem.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse3(self.h, rect.h, pen.h, brush.h))

proc addLine22*(self: QGraphicsScene, line: gen_qline.QLineF, pen: gen_qpen.QPen): gen_qgraphicsitem.QGraphicsLineItem =

  gen_qgraphicsitem.QGraphicsLineItem(h: fcQGraphicsScene_addLine22(self.h, line.h, pen.h))

proc addPath2*(self: QGraphicsScene, path: gen_qpainterpath.QPainterPath, pen: gen_qpen.QPen): gen_qgraphicsitem.QGraphicsPathItem =

  gen_qgraphicsitem.QGraphicsPathItem(h: fcQGraphicsScene_addPath2(self.h, path.h, pen.h))

proc addPath3*(self: QGraphicsScene, path: gen_qpainterpath.QPainterPath, pen: gen_qpen.QPen, brush: gen_qbrush.QBrush): gen_qgraphicsitem.QGraphicsPathItem =

  gen_qgraphicsitem.QGraphicsPathItem(h: fcQGraphicsScene_addPath3(self.h, path.h, pen.h, brush.h))

proc addRect22*(self: QGraphicsScene, rect: gen_qrect.QRectF, pen: gen_qpen.QPen): gen_qgraphicsitem.QGraphicsRectItem =

  gen_qgraphicsitem.QGraphicsRectItem(h: fcQGraphicsScene_addRect22(self.h, rect.h, pen.h))

proc addRect3*(self: QGraphicsScene, rect: gen_qrect.QRectF, pen: gen_qpen.QPen, brush: gen_qbrush.QBrush): gen_qgraphicsitem.QGraphicsRectItem =

  gen_qgraphicsitem.QGraphicsRectItem(h: fcQGraphicsScene_addRect3(self.h, rect.h, pen.h, brush.h))

proc addText2*(self: QGraphicsScene, text: string, font: gen_qfont.QFont): gen_qgraphicsitem.QGraphicsTextItem =

  gen_qgraphicsitem.QGraphicsTextItem(h: fcQGraphicsScene_addText2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), font.h))

proc addSimpleText2*(self: QGraphicsScene, text: string, font: gen_qfont.QFont): gen_qgraphicsitem.QGraphicsSimpleTextItem =

  gen_qgraphicsitem.QGraphicsSimpleTextItem(h: fcQGraphicsScene_addSimpleText2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), font.h))

proc addWidget2*(self: QGraphicsScene, widget: gen_qwidget.QWidget, wFlags: gen_qnamespace.WindowType): gen_qgraphicsproxywidget.QGraphicsProxyWidget =

  gen_qgraphicsproxywidget.QGraphicsProxyWidget(h: fcQGraphicsScene_addWidget2(self.h, widget.h, cint(wFlags)))

proc addEllipse5*(self: QGraphicsScene, x: float64, y: float64, w: float64, h: float64, pen: gen_qpen.QPen): gen_qgraphicsitem.QGraphicsEllipseItem =

  gen_qgraphicsitem.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse5(self.h, x, y, w, h, pen.h))

proc addEllipse6*(self: QGraphicsScene, x: float64, y: float64, w: float64, h: float64, pen: gen_qpen.QPen, brush: gen_qbrush.QBrush): gen_qgraphicsitem.QGraphicsEllipseItem =

  gen_qgraphicsitem.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse6(self.h, x, y, w, h, pen.h, brush.h))

proc addLine5*(self: QGraphicsScene, x1: float64, y1: float64, x2: float64, y2: float64, pen: gen_qpen.QPen): gen_qgraphicsitem.QGraphicsLineItem =

  gen_qgraphicsitem.QGraphicsLineItem(h: fcQGraphicsScene_addLine5(self.h, x1, y1, x2, y2, pen.h))

proc addRect5*(self: QGraphicsScene, x: float64, y: float64, w: float64, h: float64, pen: gen_qpen.QPen): gen_qgraphicsitem.QGraphicsRectItem =

  gen_qgraphicsitem.QGraphicsRectItem(h: fcQGraphicsScene_addRect5(self.h, x, y, w, h, pen.h))

proc addRect6*(self: QGraphicsScene, x: float64, y: float64, w: float64, h: float64, pen: gen_qpen.QPen, brush: gen_qbrush.QBrush): gen_qgraphicsitem.QGraphicsRectItem =

  gen_qgraphicsitem.QGraphicsRectItem(h: fcQGraphicsScene_addRect6(self.h, x, y, w, h, pen.h, brush.h))

proc setFocusItem2*(self: QGraphicsScene, item: gen_qgraphicsitem.QGraphicsItem, focusReason: gen_qnamespace.FocusReason): void =

  fcQGraphicsScene_setFocusItem2(self.h, item.h, cint(focusReason))

proc setFocus1*(self: QGraphicsScene, focusReason: gen_qnamespace.FocusReason): void =

  fcQGraphicsScene_setFocus1(self.h, cint(focusReason))

proc invalidate5*(self: QGraphicsScene, x: float64, y: float64, w: float64, h: float64, layers: QGraphicsSceneSceneLayer): void =

  fcQGraphicsScene_invalidate5(self.h, x, y, w, h, cint(layers))

proc update1*(self: QGraphicsScene, rect: gen_qrect.QRectF): void =

  fcQGraphicsScene_update1(self.h, rect.h)

proc invalidate1*(self: QGraphicsScene, rect: gen_qrect.QRectF): void =

  fcQGraphicsScene_invalidate1(self.h, rect.h)

proc invalidate22*(self: QGraphicsScene, rect: gen_qrect.QRectF, layers: QGraphicsSceneSceneLayer): void =

  fcQGraphicsScene_invalidate22(self.h, rect.h, cint(layers))

proc callVirtualBase_metacall(self: QGraphicsScene, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsScene_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsScenemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsScene, slot: proc(super: QGraphicsScenemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_metacall(self: ptr cQGraphicsScene, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsScene_metacall ".} =
  type Cb = proc(super: QGraphicsScenemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsScene(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QGraphicsScene, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsScene_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsSceneinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsScene, slot: proc(super: QGraphicsSceneinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_inputMethodQuery(self: ptr cQGraphicsScene, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsScene_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsSceneinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsScene(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_event(self: QGraphicsScene, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsScene_virtualbase_event(self.h, event.h)

type QGraphicsSceneeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsScene, slot: proc(super: QGraphicsSceneeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_event(self: ptr cQGraphicsScene, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsScene_event ".} =
  type Cb = proc(super: QGraphicsSceneeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsScene(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsScene, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsScene_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsSceneeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsScene, slot: proc(super: QGraphicsSceneeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_eventFilter(self: ptr cQGraphicsScene, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsScene_eventFilter ".} =
  type Cb = proc(super: QGraphicsSceneeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsScene(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsScene_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsScenecontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenecontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenecontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_contextMenuEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsScenecontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsScene_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsScenedragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenedragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenedragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_dragEnterEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsScenedragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsScene_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsScenedragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenedragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenedragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_dragMoveEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsScenedragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsScene_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsScenedragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenedragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenedragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_dragLeaveEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsScenedragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsScene_virtualbase_dropEvent(self.h, event.h)

type QGraphicsScenedropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenedropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenedropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_dropEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_dropEvent ".} =
  type Cb = proc(super: QGraphicsScenedropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsScene, event: gen_qevent.QFocusEvent): void =


  fQGraphicsScene_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsScenefocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenefocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenefocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_focusInEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_focusInEvent ".} =
  type Cb = proc(super: QGraphicsScenefocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsScene, event: gen_qevent.QFocusEvent): void =


  fQGraphicsScene_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsScenefocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenefocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenefocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_focusOutEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsScenefocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_helpEvent(self: QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneHelpEvent): void =


  fQGraphicsScene_virtualbase_helpEvent(self.h, event.h)

type QGraphicsScenehelpEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHelpEvent): void
proc onhelpEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenehelpEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHelpEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenehelpEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHelpEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_helpEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_helpEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_helpEvent ".} =
  type Cb = proc(super: QGraphicsScenehelpEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHelpEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHelpEvent): auto =
    callVirtualBase_helpEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHelpEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsScene, event: gen_qevent.QKeyEvent): void =


  fQGraphicsScene_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsScenekeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenekeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenekeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_keyPressEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsScenekeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsScene, event: gen_qevent.QKeyEvent): void =


  fQGraphicsScene_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsScenekeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_keyReleaseEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsScenekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsScene_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsScenemousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenemousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenemousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_mousePressEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsScenemousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsScene_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsScenemouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenemouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenemouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_mouseMoveEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsScenemouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsScene_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsScenemouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenemouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenemouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_mouseReleaseEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsScenemouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsScene_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsScenemouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenemouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenemouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_mouseDoubleClickEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsScenemouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsScene, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsScene_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsScenewheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenewheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenewheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_wheelEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_wheelEvent ".} =
  type Cb = proc(super: QGraphicsScenewheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsScene, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsScene_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsSceneinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsSceneinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_inputMethodEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsSceneinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_drawBackground(self: QGraphicsScene, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void =


  fQGraphicsScene_virtualbase_drawBackground(self.h, painter.h, rect.h)

type QGraphicsScenedrawBackgroundBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void
proc ondrawBackground*(self: QGraphicsScene, slot: proc(super: QGraphicsScenedrawBackgroundBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenedrawBackgroundBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_drawBackground(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_drawBackground(self: ptr cQGraphicsScene, slot: int, painter: pointer, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_drawBackground ".} =
  type Cb = proc(super: QGraphicsScenedrawBackgroundBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): auto =
    callVirtualBase_drawBackground(QGraphicsScene(h: self), painter, rect)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRectF(h: rect)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_drawForeground(self: QGraphicsScene, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void =


  fQGraphicsScene_virtualbase_drawForeground(self.h, painter.h, rect.h)

type QGraphicsScenedrawForegroundBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void
proc ondrawForeground*(self: QGraphicsScene, slot: proc(super: QGraphicsScenedrawForegroundBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenedrawForegroundBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_drawForeground(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_drawForeground(self: ptr cQGraphicsScene, slot: int, painter: pointer, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_drawForeground ".} =
  type Cb = proc(super: QGraphicsScenedrawForegroundBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): auto =
    callVirtualBase_drawForeground(QGraphicsScene(h: self), painter, rect)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRectF(h: rect)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_focusNextPrevChild(self: QGraphicsScene, next: bool): bool =


  fQGraphicsScene_virtualbase_focusNextPrevChild(self.h, next)

type QGraphicsScenefocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QGraphicsScene, slot: proc(super: QGraphicsScenefocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenefocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_focusNextPrevChild(self: ptr cQGraphicsScene, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QGraphicsScene_focusNextPrevChild ".} =
  type Cb = proc(super: QGraphicsScenefocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QGraphicsScene(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsScene, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsScene_virtualbase_timerEvent(self.h, event.h)

type QGraphicsScenetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_timerEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_timerEvent ".} =
  type Cb = proc(super: QGraphicsScenetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsScene, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsScene_virtualbase_childEvent(self.h, event.h)

type QGraphicsScenechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_childEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_childEvent ".} =
  type Cb = proc(super: QGraphicsScenechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsScene, event: gen_qcoreevent.QEvent): void =


  fQGraphicsScene_virtualbase_customEvent(self.h, event.h)

type QGraphicsScenecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsScene, slot: proc(super: QGraphicsScenecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_customEvent(self: ptr cQGraphicsScene, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_customEvent ".} =
  type Cb = proc(super: QGraphicsScenecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsScene(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsScene, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsScene_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsSceneconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsScene, slot: proc(super: QGraphicsSceneconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_connectNotify(self: ptr cQGraphicsScene, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_connectNotify ".} =
  type Cb = proc(super: QGraphicsSceneconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsScene(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsScene, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsScene_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsScenedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsScene, slot: proc(super: QGraphicsScenedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScenedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScene_disconnectNotify(self: ptr cQGraphicsScene, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScene_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsScenedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsScene(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QGraphicsScene) =
  fcQGraphicsScene_delete(self.h)
