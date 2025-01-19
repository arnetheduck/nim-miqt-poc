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
{.compile("gen_qgraphicsitem.cpp", cflags).}


type QGraphicsItemGraphicsItemFlag* = cint
const
  QGraphicsItemItemIsMovable* = 1
  QGraphicsItemItemIsSelectable* = 2
  QGraphicsItemItemIsFocusable* = 4
  QGraphicsItemItemClipsToShape* = 8
  QGraphicsItemItemClipsChildrenToShape* = 16
  QGraphicsItemItemIgnoresTransformations* = 32
  QGraphicsItemItemIgnoresParentOpacity* = 64
  QGraphicsItemItemDoesntPropagateOpacityToChildren* = 128
  QGraphicsItemItemStacksBehindParent* = 256
  QGraphicsItemItemUsesExtendedStyleOption* = 512
  QGraphicsItemItemHasNoContents* = 1024
  QGraphicsItemItemSendsGeometryChanges* = 2048
  QGraphicsItemItemAcceptsInputMethod* = 4096
  QGraphicsItemItemNegativeZStacksBehindParent* = 8192
  QGraphicsItemItemIsPanel* = 16384
  QGraphicsItemItemIsFocusScope* = 32768
  QGraphicsItemItemSendsScenePositionChanges* = 65536
  QGraphicsItemItemStopsClickFocusPropagation* = 131072
  QGraphicsItemItemStopsFocusHandling* = 262144
  QGraphicsItemItemContainsChildrenInShape* = 524288



type QGraphicsItemGraphicsItemChange* = cint
const
  QGraphicsItemItemPositionChange* = 0
  QGraphicsItemItemMatrixChange* = 1
  QGraphicsItemItemVisibleChange* = 2
  QGraphicsItemItemEnabledChange* = 3
  QGraphicsItemItemSelectedChange* = 4
  QGraphicsItemItemParentChange* = 5
  QGraphicsItemItemChildAddedChange* = 6
  QGraphicsItemItemChildRemovedChange* = 7
  QGraphicsItemItemTransformChange* = 8
  QGraphicsItemItemPositionHasChanged* = 9
  QGraphicsItemItemTransformHasChanged* = 10
  QGraphicsItemItemSceneChange* = 11
  QGraphicsItemItemVisibleHasChanged* = 12
  QGraphicsItemItemEnabledHasChanged* = 13
  QGraphicsItemItemSelectedHasChanged* = 14
  QGraphicsItemItemParentHasChanged* = 15
  QGraphicsItemItemSceneHasChanged* = 16
  QGraphicsItemItemCursorChange* = 17
  QGraphicsItemItemCursorHasChanged* = 18
  QGraphicsItemItemToolTipChange* = 19
  QGraphicsItemItemToolTipHasChanged* = 20
  QGraphicsItemItemFlagsChange* = 21
  QGraphicsItemItemFlagsHaveChanged* = 22
  QGraphicsItemItemZValueChange* = 23
  QGraphicsItemItemZValueHasChanged* = 24
  QGraphicsItemItemOpacityChange* = 25
  QGraphicsItemItemOpacityHasChanged* = 26
  QGraphicsItemItemScenePositionHasChanged* = 27
  QGraphicsItemItemRotationChange* = 28
  QGraphicsItemItemRotationHasChanged* = 29
  QGraphicsItemItemScaleChange* = 30
  QGraphicsItemItemScaleHasChanged* = 31
  QGraphicsItemItemTransformOriginPointChange* = 32
  QGraphicsItemItemTransformOriginPointHasChanged* = 33



type QGraphicsItemCacheMode* = cint
const
  QGraphicsItemNoCache* = 0
  QGraphicsItemItemCoordinateCache* = 1
  QGraphicsItemDeviceCoordinateCache* = 2



type QGraphicsItemPanelModality* = cint
const
  QGraphicsItemNonModal* = 0
  QGraphicsItemPanelModal* = 1
  QGraphicsItemSceneModal* = 2



type QGraphicsItemEnum* = cint
const
  QGraphicsItemType* = 1
  QGraphicsItemUserType* = 65536



type QGraphicsItemExtension* = cint
const
  QGraphicsItemUserExtension* = 2147483648



type QGraphicsPathItemEnum* = cint
const
  QGraphicsPathItemType* = 2



type QGraphicsRectItemEnum* = cint
const
  QGraphicsRectItemType* = 3



type QGraphicsEllipseItemEnum* = cint
const
  QGraphicsEllipseItemType* = 4



type QGraphicsPolygonItemEnum* = cint
const
  QGraphicsPolygonItemType* = 5



type QGraphicsLineItemEnum* = cint
const
  QGraphicsLineItemType* = 6



type QGraphicsPixmapItemShapeMode* = cint
const
  QGraphicsPixmapItemMaskShape* = 0
  QGraphicsPixmapItemBoundingRectShape* = 1
  QGraphicsPixmapItemHeuristicMaskShape* = 2



type QGraphicsPixmapItemEnum* = cint
const
  QGraphicsPixmapItemType* = 7



type QGraphicsTextItemEnum* = cint
const
  QGraphicsTextItemType* = 8



type QGraphicsSimpleTextItemEnum* = cint
const
  QGraphicsSimpleTextItemType* = 9



type QGraphicsItemGroupEnum* = cint
const
  QGraphicsItemGroupType* = 10



import gen_qgraphicsitem_types
export gen_qgraphicsitem_types

import
  gen_qbrush,
  gen_qcolor,
  gen_qcoreevent,
  gen_qcursor,
  gen_qevent,
  gen_qfont,
  gen_qgraphicseffect,
  gen_qgraphicsscene,
  gen_qgraphicssceneevent,
  gen_qgraphicstransform,
  gen_qgraphicswidget,
  gen_qline,
  gen_qmatrix,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpen,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qsize,
  gen_qstyleoption,
  gen_qtextcursor,
  gen_qtextdocument,
  gen_qtransform,
  gen_qvariant,
  gen_qwidget
export
  gen_qbrush,
  gen_qcolor,
  gen_qcoreevent,
  gen_qcursor,
  gen_qevent,
  gen_qfont,
  gen_qgraphicseffect,
  gen_qgraphicsscene,
  gen_qgraphicssceneevent,
  gen_qgraphicstransform,
  gen_qgraphicswidget,
  gen_qline,
  gen_qmatrix,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpen,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qsize,
  gen_qstyleoption,
  gen_qtextcursor,
  gen_qtextdocument,
  gen_qtransform,
  gen_qvariant,
  gen_qwidget

type cQGraphicsItem*{.exportc: "QGraphicsItem", incompleteStruct.} = object
type cQGraphicsObject*{.exportc: "QGraphicsObject", incompleteStruct.} = object
type cQAbstractGraphicsShapeItem*{.exportc: "QAbstractGraphicsShapeItem", incompleteStruct.} = object
type cQGraphicsPathItem*{.exportc: "QGraphicsPathItem", incompleteStruct.} = object
type cQGraphicsRectItem*{.exportc: "QGraphicsRectItem", incompleteStruct.} = object
type cQGraphicsEllipseItem*{.exportc: "QGraphicsEllipseItem", incompleteStruct.} = object
type cQGraphicsPolygonItem*{.exportc: "QGraphicsPolygonItem", incompleteStruct.} = object
type cQGraphicsLineItem*{.exportc: "QGraphicsLineItem", incompleteStruct.} = object
type cQGraphicsPixmapItem*{.exportc: "QGraphicsPixmapItem", incompleteStruct.} = object
type cQGraphicsTextItem*{.exportc: "QGraphicsTextItem", incompleteStruct.} = object
type cQGraphicsSimpleTextItem*{.exportc: "QGraphicsSimpleTextItem", incompleteStruct.} = object
type cQGraphicsItemGroup*{.exportc: "QGraphicsItemGroup", incompleteStruct.} = object

proc fcQGraphicsItem_new(): ptr cQGraphicsItem {.importc: "QGraphicsItem_new".}
proc fcQGraphicsItem_new2(parent: pointer): ptr cQGraphicsItem {.importc: "QGraphicsItem_new2".}
proc fcQGraphicsItem_scene(self: pointer, ): pointer {.importc: "QGraphicsItem_scene".}
proc fcQGraphicsItem_parentItem(self: pointer, ): pointer {.importc: "QGraphicsItem_parentItem".}
proc fcQGraphicsItem_topLevelItem(self: pointer, ): pointer {.importc: "QGraphicsItem_topLevelItem".}
proc fcQGraphicsItem_parentObject(self: pointer, ): pointer {.importc: "QGraphicsItem_parentObject".}
proc fcQGraphicsItem_parentWidget(self: pointer, ): pointer {.importc: "QGraphicsItem_parentWidget".}
proc fcQGraphicsItem_topLevelWidget(self: pointer, ): pointer {.importc: "QGraphicsItem_topLevelWidget".}
proc fcQGraphicsItem_window(self: pointer, ): pointer {.importc: "QGraphicsItem_window".}
proc fcQGraphicsItem_panel(self: pointer, ): pointer {.importc: "QGraphicsItem_panel".}
proc fcQGraphicsItem_setParentItem(self: pointer, parent: pointer): void {.importc: "QGraphicsItem_setParentItem".}
proc fcQGraphicsItem_childItems(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItem_childItems".}
proc fcQGraphicsItem_isWidget(self: pointer, ): bool {.importc: "QGraphicsItem_isWidget".}
proc fcQGraphicsItem_isWindow(self: pointer, ): bool {.importc: "QGraphicsItem_isWindow".}
proc fcQGraphicsItem_isPanel(self: pointer, ): bool {.importc: "QGraphicsItem_isPanel".}
proc fcQGraphicsItem_toGraphicsObject(self: pointer, ): pointer {.importc: "QGraphicsItem_toGraphicsObject".}
proc fcQGraphicsItem_toGraphicsObject2(self: pointer, ): pointer {.importc: "QGraphicsItem_toGraphicsObject2".}
proc fcQGraphicsItem_group(self: pointer, ): pointer {.importc: "QGraphicsItem_group".}
proc fcQGraphicsItem_setGroup(self: pointer, group: pointer): void {.importc: "QGraphicsItem_setGroup".}
proc fcQGraphicsItem_flags(self: pointer, ): cint {.importc: "QGraphicsItem_flags".}
proc fcQGraphicsItem_setFlag(self: pointer, flag: cint): void {.importc: "QGraphicsItem_setFlag".}
proc fcQGraphicsItem_setFlags(self: pointer, flags: cint): void {.importc: "QGraphicsItem_setFlags".}
proc fcQGraphicsItem_cacheMode(self: pointer, ): cint {.importc: "QGraphicsItem_cacheMode".}
proc fcQGraphicsItem_setCacheMode(self: pointer, mode: cint): void {.importc: "QGraphicsItem_setCacheMode".}
proc fcQGraphicsItem_panelModality(self: pointer, ): cint {.importc: "QGraphicsItem_panelModality".}
proc fcQGraphicsItem_setPanelModality(self: pointer, panelModality: cint): void {.importc: "QGraphicsItem_setPanelModality".}
proc fcQGraphicsItem_isBlockedByModalPanel(self: pointer, ): bool {.importc: "QGraphicsItem_isBlockedByModalPanel".}
proc fcQGraphicsItem_toolTip(self: pointer, ): struct_miqt_string {.importc: "QGraphicsItem_toolTip".}
proc fcQGraphicsItem_setToolTip(self: pointer, toolTip: struct_miqt_string): void {.importc: "QGraphicsItem_setToolTip".}
proc fcQGraphicsItem_cursor(self: pointer, ): pointer {.importc: "QGraphicsItem_cursor".}
proc fcQGraphicsItem_setCursor(self: pointer, cursor: pointer): void {.importc: "QGraphicsItem_setCursor".}
proc fcQGraphicsItem_hasCursor(self: pointer, ): bool {.importc: "QGraphicsItem_hasCursor".}
proc fcQGraphicsItem_unsetCursor(self: pointer, ): void {.importc: "QGraphicsItem_unsetCursor".}
proc fcQGraphicsItem_isVisible(self: pointer, ): bool {.importc: "QGraphicsItem_isVisible".}
proc fcQGraphicsItem_isVisibleTo(self: pointer, parent: pointer): bool {.importc: "QGraphicsItem_isVisibleTo".}
proc fcQGraphicsItem_setVisible(self: pointer, visible: bool): void {.importc: "QGraphicsItem_setVisible".}
proc fcQGraphicsItem_hide(self: pointer, ): void {.importc: "QGraphicsItem_hide".}
proc fcQGraphicsItem_show(self: pointer, ): void {.importc: "QGraphicsItem_show".}
proc fcQGraphicsItem_isEnabled(self: pointer, ): bool {.importc: "QGraphicsItem_isEnabled".}
proc fcQGraphicsItem_setEnabled(self: pointer, enabled: bool): void {.importc: "QGraphicsItem_setEnabled".}
proc fcQGraphicsItem_isSelected(self: pointer, ): bool {.importc: "QGraphicsItem_isSelected".}
proc fcQGraphicsItem_setSelected(self: pointer, selected: bool): void {.importc: "QGraphicsItem_setSelected".}
proc fcQGraphicsItem_acceptDrops(self: pointer, ): bool {.importc: "QGraphicsItem_acceptDrops".}
proc fcQGraphicsItem_setAcceptDrops(self: pointer, on: bool): void {.importc: "QGraphicsItem_setAcceptDrops".}
proc fcQGraphicsItem_opacity(self: pointer, ): float64 {.importc: "QGraphicsItem_opacity".}
proc fcQGraphicsItem_effectiveOpacity(self: pointer, ): float64 {.importc: "QGraphicsItem_effectiveOpacity".}
proc fcQGraphicsItem_setOpacity(self: pointer, opacity: float64): void {.importc: "QGraphicsItem_setOpacity".}
proc fcQGraphicsItem_graphicsEffect(self: pointer, ): pointer {.importc: "QGraphicsItem_graphicsEffect".}
proc fcQGraphicsItem_setGraphicsEffect(self: pointer, effect: pointer): void {.importc: "QGraphicsItem_setGraphicsEffect".}
proc fcQGraphicsItem_acceptedMouseButtons(self: pointer, ): cint {.importc: "QGraphicsItem_acceptedMouseButtons".}
proc fcQGraphicsItem_setAcceptedMouseButtons(self: pointer, buttons: cint): void {.importc: "QGraphicsItem_setAcceptedMouseButtons".}
proc fcQGraphicsItem_acceptHoverEvents(self: pointer, ): bool {.importc: "QGraphicsItem_acceptHoverEvents".}
proc fcQGraphicsItem_setAcceptHoverEvents(self: pointer, enabled: bool): void {.importc: "QGraphicsItem_setAcceptHoverEvents".}
proc fcQGraphicsItem_acceptTouchEvents(self: pointer, ): bool {.importc: "QGraphicsItem_acceptTouchEvents".}
proc fcQGraphicsItem_setAcceptTouchEvents(self: pointer, enabled: bool): void {.importc: "QGraphicsItem_setAcceptTouchEvents".}
proc fcQGraphicsItem_filtersChildEvents(self: pointer, ): bool {.importc: "QGraphicsItem_filtersChildEvents".}
proc fcQGraphicsItem_setFiltersChildEvents(self: pointer, enabled: bool): void {.importc: "QGraphicsItem_setFiltersChildEvents".}
proc fcQGraphicsItem_handlesChildEvents(self: pointer, ): bool {.importc: "QGraphicsItem_handlesChildEvents".}
proc fcQGraphicsItem_setHandlesChildEvents(self: pointer, enabled: bool): void {.importc: "QGraphicsItem_setHandlesChildEvents".}
proc fcQGraphicsItem_isActive(self: pointer, ): bool {.importc: "QGraphicsItem_isActive".}
proc fcQGraphicsItem_setActive(self: pointer, active: bool): void {.importc: "QGraphicsItem_setActive".}
proc fcQGraphicsItem_hasFocus(self: pointer, ): bool {.importc: "QGraphicsItem_hasFocus".}
proc fcQGraphicsItem_setFocus(self: pointer, ): void {.importc: "QGraphicsItem_setFocus".}
proc fcQGraphicsItem_clearFocus(self: pointer, ): void {.importc: "QGraphicsItem_clearFocus".}
proc fcQGraphicsItem_focusProxy(self: pointer, ): pointer {.importc: "QGraphicsItem_focusProxy".}
proc fcQGraphicsItem_setFocusProxy(self: pointer, item: pointer): void {.importc: "QGraphicsItem_setFocusProxy".}
proc fcQGraphicsItem_focusItem(self: pointer, ): pointer {.importc: "QGraphicsItem_focusItem".}
proc fcQGraphicsItem_focusScopeItem(self: pointer, ): pointer {.importc: "QGraphicsItem_focusScopeItem".}
proc fcQGraphicsItem_grabMouse(self: pointer, ): void {.importc: "QGraphicsItem_grabMouse".}
proc fcQGraphicsItem_ungrabMouse(self: pointer, ): void {.importc: "QGraphicsItem_ungrabMouse".}
proc fcQGraphicsItem_grabKeyboard(self: pointer, ): void {.importc: "QGraphicsItem_grabKeyboard".}
proc fcQGraphicsItem_ungrabKeyboard(self: pointer, ): void {.importc: "QGraphicsItem_ungrabKeyboard".}
proc fcQGraphicsItem_pos(self: pointer, ): pointer {.importc: "QGraphicsItem_pos".}
proc fcQGraphicsItem_x(self: pointer, ): float64 {.importc: "QGraphicsItem_x".}
proc fcQGraphicsItem_setX(self: pointer, x: float64): void {.importc: "QGraphicsItem_setX".}
proc fcQGraphicsItem_y(self: pointer, ): float64 {.importc: "QGraphicsItem_y".}
proc fcQGraphicsItem_setY(self: pointer, y: float64): void {.importc: "QGraphicsItem_setY".}
proc fcQGraphicsItem_scenePos(self: pointer, ): pointer {.importc: "QGraphicsItem_scenePos".}
proc fcQGraphicsItem_setPos(self: pointer, pos: pointer): void {.importc: "QGraphicsItem_setPos".}
proc fcQGraphicsItem_setPos2(self: pointer, x: float64, y: float64): void {.importc: "QGraphicsItem_setPos2".}
proc fcQGraphicsItem_moveBy(self: pointer, dx: float64, dy: float64): void {.importc: "QGraphicsItem_moveBy".}
proc fcQGraphicsItem_ensureVisible(self: pointer, ): void {.importc: "QGraphicsItem_ensureVisible".}
proc fcQGraphicsItem_ensureVisible2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsItem_ensureVisible2".}
proc fcQGraphicsItem_matrix(self: pointer, ): pointer {.importc: "QGraphicsItem_matrix".}
proc fcQGraphicsItem_sceneMatrix(self: pointer, ): pointer {.importc: "QGraphicsItem_sceneMatrix".}
proc fcQGraphicsItem_setMatrix(self: pointer, matrix: pointer): void {.importc: "QGraphicsItem_setMatrix".}
proc fcQGraphicsItem_resetMatrix(self: pointer, ): void {.importc: "QGraphicsItem_resetMatrix".}
proc fcQGraphicsItem_transform(self: pointer, ): pointer {.importc: "QGraphicsItem_transform".}
proc fcQGraphicsItem_sceneTransform(self: pointer, ): pointer {.importc: "QGraphicsItem_sceneTransform".}
proc fcQGraphicsItem_deviceTransform(self: pointer, viewportTransform: pointer): pointer {.importc: "QGraphicsItem_deviceTransform".}
proc fcQGraphicsItem_itemTransform(self: pointer, other: pointer): pointer {.importc: "QGraphicsItem_itemTransform".}
proc fcQGraphicsItem_setTransform(self: pointer, matrix: pointer): void {.importc: "QGraphicsItem_setTransform".}
proc fcQGraphicsItem_resetTransform(self: pointer, ): void {.importc: "QGraphicsItem_resetTransform".}
proc fcQGraphicsItem_setRotation(self: pointer, angle: float64): void {.importc: "QGraphicsItem_setRotation".}
proc fcQGraphicsItem_rotation(self: pointer, ): float64 {.importc: "QGraphicsItem_rotation".}
proc fcQGraphicsItem_setScale(self: pointer, scale: float64): void {.importc: "QGraphicsItem_setScale".}
proc fcQGraphicsItem_scale(self: pointer, ): float64 {.importc: "QGraphicsItem_scale".}
proc fcQGraphicsItem_transformations(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItem_transformations".}
proc fcQGraphicsItem_setTransformations(self: pointer, transformations: struct_miqt_array): void {.importc: "QGraphicsItem_setTransformations".}
proc fcQGraphicsItem_transformOriginPoint(self: pointer, ): pointer {.importc: "QGraphicsItem_transformOriginPoint".}
proc fcQGraphicsItem_setTransformOriginPoint(self: pointer, origin: pointer): void {.importc: "QGraphicsItem_setTransformOriginPoint".}
proc fcQGraphicsItem_setTransformOriginPoint2(self: pointer, ax: float64, ay: float64): void {.importc: "QGraphicsItem_setTransformOriginPoint2".}
proc fcQGraphicsItem_advance(self: pointer, phase: cint): void {.importc: "QGraphicsItem_advance".}
proc fcQGraphicsItem_zValue(self: pointer, ): float64 {.importc: "QGraphicsItem_zValue".}
proc fcQGraphicsItem_setZValue(self: pointer, z: float64): void {.importc: "QGraphicsItem_setZValue".}
proc fcQGraphicsItem_stackBefore(self: pointer, sibling: pointer): void {.importc: "QGraphicsItem_stackBefore".}
proc fcQGraphicsItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsItem_boundingRect".}
proc fcQGraphicsItem_childrenBoundingRect(self: pointer, ): pointer {.importc: "QGraphicsItem_childrenBoundingRect".}
proc fcQGraphicsItem_sceneBoundingRect(self: pointer, ): pointer {.importc: "QGraphicsItem_sceneBoundingRect".}
proc fcQGraphicsItem_shape(self: pointer, ): pointer {.importc: "QGraphicsItem_shape".}
proc fcQGraphicsItem_isClipped(self: pointer, ): bool {.importc: "QGraphicsItem_isClipped".}
proc fcQGraphicsItem_clipPath(self: pointer, ): pointer {.importc: "QGraphicsItem_clipPath".}
proc fcQGraphicsItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsItem_contains".}
proc fcQGraphicsItem_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsItem_collidesWithItem".}
proc fcQGraphicsItem_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsItem_collidesWithPath".}
proc fcQGraphicsItem_collidingItems(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItem_collidingItems".}
proc fcQGraphicsItem_isObscured(self: pointer, ): bool {.importc: "QGraphicsItem_isObscured".}
proc fcQGraphicsItem_isObscured2(self: pointer, x: float64, y: float64, w: float64, h: float64): bool {.importc: "QGraphicsItem_isObscured2".}
proc fcQGraphicsItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsItem_isObscuredBy".}
proc fcQGraphicsItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsItem_opaqueArea".}
proc fcQGraphicsItem_boundingRegion(self: pointer, itemToDeviceTransform: pointer): pointer {.importc: "QGraphicsItem_boundingRegion".}
proc fcQGraphicsItem_boundingRegionGranularity(self: pointer, ): float64 {.importc: "QGraphicsItem_boundingRegionGranularity".}
proc fcQGraphicsItem_setBoundingRegionGranularity(self: pointer, granularity: float64): void {.importc: "QGraphicsItem_setBoundingRegionGranularity".}
proc fcQGraphicsItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsItem_paint".}
proc fcQGraphicsItem_update(self: pointer, ): void {.importc: "QGraphicsItem_update".}
proc fcQGraphicsItem_update2(self: pointer, x: float64, y: float64, width: float64, height: float64): void {.importc: "QGraphicsItem_update2".}
proc fcQGraphicsItem_scroll(self: pointer, dx: float64, dy: float64): void {.importc: "QGraphicsItem_scroll".}
proc fcQGraphicsItem_mapToItem(self: pointer, item: pointer, point: pointer): pointer {.importc: "QGraphicsItem_mapToItem".}
proc fcQGraphicsItem_mapToParent(self: pointer, point: pointer): pointer {.importc: "QGraphicsItem_mapToParent".}
proc fcQGraphicsItem_mapToScene(self: pointer, point: pointer): pointer {.importc: "QGraphicsItem_mapToScene".}
proc fcQGraphicsItem_mapRectToItem(self: pointer, item: pointer, rect: pointer): pointer {.importc: "QGraphicsItem_mapRectToItem".}
proc fcQGraphicsItem_mapRectToParent(self: pointer, rect: pointer): pointer {.importc: "QGraphicsItem_mapRectToParent".}
proc fcQGraphicsItem_mapRectToScene(self: pointer, rect: pointer): pointer {.importc: "QGraphicsItem_mapRectToScene".}
proc fcQGraphicsItem_mapToItem4(self: pointer, item: pointer, path: pointer): pointer {.importc: "QGraphicsItem_mapToItem4".}
proc fcQGraphicsItem_mapToParentWithPath(self: pointer, path: pointer): pointer {.importc: "QGraphicsItem_mapToParentWithPath".}
proc fcQGraphicsItem_mapToSceneWithPath(self: pointer, path: pointer): pointer {.importc: "QGraphicsItem_mapToSceneWithPath".}
proc fcQGraphicsItem_mapFromItem(self: pointer, item: pointer, point: pointer): pointer {.importc: "QGraphicsItem_mapFromItem".}
proc fcQGraphicsItem_mapFromParent(self: pointer, point: pointer): pointer {.importc: "QGraphicsItem_mapFromParent".}
proc fcQGraphicsItem_mapFromScene(self: pointer, point: pointer): pointer {.importc: "QGraphicsItem_mapFromScene".}
proc fcQGraphicsItem_mapRectFromItem(self: pointer, item: pointer, rect: pointer): pointer {.importc: "QGraphicsItem_mapRectFromItem".}
proc fcQGraphicsItem_mapRectFromParent(self: pointer, rect: pointer): pointer {.importc: "QGraphicsItem_mapRectFromParent".}
proc fcQGraphicsItem_mapRectFromScene(self: pointer, rect: pointer): pointer {.importc: "QGraphicsItem_mapRectFromScene".}
proc fcQGraphicsItem_mapFromItem4(self: pointer, item: pointer, path: pointer): pointer {.importc: "QGraphicsItem_mapFromItem4".}
proc fcQGraphicsItem_mapFromParentWithPath(self: pointer, path: pointer): pointer {.importc: "QGraphicsItem_mapFromParentWithPath".}
proc fcQGraphicsItem_mapFromSceneWithPath(self: pointer, path: pointer): pointer {.importc: "QGraphicsItem_mapFromSceneWithPath".}
proc fcQGraphicsItem_mapToItem5(self: pointer, item: pointer, x: float64, y: float64): pointer {.importc: "QGraphicsItem_mapToItem5".}
proc fcQGraphicsItem_mapToParent2(self: pointer, x: float64, y: float64): pointer {.importc: "QGraphicsItem_mapToParent2".}
proc fcQGraphicsItem_mapToScene2(self: pointer, x: float64, y: float64): pointer {.importc: "QGraphicsItem_mapToScene2".}
proc fcQGraphicsItem_mapRectToItem2(self: pointer, item: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsItem_mapRectToItem2".}
proc fcQGraphicsItem_mapRectToParent2(self: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsItem_mapRectToParent2".}
proc fcQGraphicsItem_mapRectToScene2(self: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsItem_mapRectToScene2".}
proc fcQGraphicsItem_mapFromItem5(self: pointer, item: pointer, x: float64, y: float64): pointer {.importc: "QGraphicsItem_mapFromItem5".}
proc fcQGraphicsItem_mapFromParent2(self: pointer, x: float64, y: float64): pointer {.importc: "QGraphicsItem_mapFromParent2".}
proc fcQGraphicsItem_mapFromScene2(self: pointer, x: float64, y: float64): pointer {.importc: "QGraphicsItem_mapFromScene2".}
proc fcQGraphicsItem_mapRectFromItem2(self: pointer, item: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsItem_mapRectFromItem2".}
proc fcQGraphicsItem_mapRectFromParent2(self: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsItem_mapRectFromParent2".}
proc fcQGraphicsItem_mapRectFromScene2(self: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsItem_mapRectFromScene2".}
proc fcQGraphicsItem_isAncestorOf(self: pointer, child: pointer): bool {.importc: "QGraphicsItem_isAncestorOf".}
proc fcQGraphicsItem_commonAncestorItem(self: pointer, other: pointer): pointer {.importc: "QGraphicsItem_commonAncestorItem".}
proc fcQGraphicsItem_isUnderMouse(self: pointer, ): bool {.importc: "QGraphicsItem_isUnderMouse".}
proc fcQGraphicsItem_data(self: pointer, key: cint): pointer {.importc: "QGraphicsItem_data".}
proc fcQGraphicsItem_setData(self: pointer, key: cint, value: pointer): void {.importc: "QGraphicsItem_setData".}
proc fcQGraphicsItem_inputMethodHints(self: pointer, ): cint {.importc: "QGraphicsItem_inputMethodHints".}
proc fcQGraphicsItem_setInputMethodHints(self: pointer, hints: cint): void {.importc: "QGraphicsItem_setInputMethodHints".}
proc fcQGraphicsItem_typeX(self: pointer, ): cint {.importc: "QGraphicsItem_type".}
proc fcQGraphicsItem_installSceneEventFilter(self: pointer, filterItem: pointer): void {.importc: "QGraphicsItem_installSceneEventFilter".}
proc fcQGraphicsItem_removeSceneEventFilter(self: pointer, filterItem: pointer): void {.importc: "QGraphicsItem_removeSceneEventFilter".}
proc fcQGraphicsItem_setFlag2(self: pointer, flag: cint, enabled: bool): void {.importc: "QGraphicsItem_setFlag2".}
proc fcQGraphicsItem_setCacheMode2(self: pointer, mode: cint, cacheSize: pointer): void {.importc: "QGraphicsItem_setCacheMode2".}
proc fcQGraphicsItem_setFocus1(self: pointer, focusReason: cint): void {.importc: "QGraphicsItem_setFocus1".}
proc fcQGraphicsItem_ensureVisible1(self: pointer, rect: pointer): void {.importc: "QGraphicsItem_ensureVisible1".}
proc fcQGraphicsItem_ensureVisible22(self: pointer, rect: pointer, xmargin: cint): void {.importc: "QGraphicsItem_ensureVisible22".}
proc fcQGraphicsItem_ensureVisible3(self: pointer, rect: pointer, xmargin: cint, ymargin: cint): void {.importc: "QGraphicsItem_ensureVisible3".}
proc fcQGraphicsItem_ensureVisible5(self: pointer, x: float64, y: float64, w: float64, h: float64, xmargin: cint): void {.importc: "QGraphicsItem_ensureVisible5".}
proc fcQGraphicsItem_ensureVisible6(self: pointer, x: float64, y: float64, w: float64, h: float64, xmargin: cint, ymargin: cint): void {.importc: "QGraphicsItem_ensureVisible6".}
proc fcQGraphicsItem_setMatrix2(self: pointer, matrix: pointer, combine: bool): void {.importc: "QGraphicsItem_setMatrix2".}
proc fcQGraphicsItem_itemTransform2(self: pointer, other: pointer, ok: ptr bool): pointer {.importc: "QGraphicsItem_itemTransform2".}
proc fcQGraphicsItem_setTransform2(self: pointer, matrix: pointer, combine: bool): void {.importc: "QGraphicsItem_setTransform2".}
proc fcQGraphicsItem_collidingItems1(self: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsItem_collidingItems1".}
proc fcQGraphicsItem_isObscured1(self: pointer, rect: pointer): bool {.importc: "QGraphicsItem_isObscured1".}
proc fcQGraphicsItem_update1(self: pointer, rect: pointer): void {.importc: "QGraphicsItem_update1".}
proc fcQGraphicsItem_scroll3(self: pointer, dx: float64, dy: float64, rect: pointer): void {.importc: "QGraphicsItem_scroll3".}
proc fQGraphicsItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsItem_virtualbase_advance".}
proc fcQGraphicsItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_advance".}
proc fcQGraphicsItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_boundingRect".}
proc fQGraphicsItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsItem_virtualbase_shape".}
proc fcQGraphicsItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_shape".}
proc fQGraphicsItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsItem_virtualbase_contains".}
proc fcQGraphicsItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_contains".}
proc fQGraphicsItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsItem_virtualbase_collidesWithItem".}
proc fcQGraphicsItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_collidesWithItem".}
proc fQGraphicsItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsItem_virtualbase_collidesWithPath".}
proc fcQGraphicsItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_collidesWithPath".}
proc fQGraphicsItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsItem_virtualbase_isObscuredBy".}
proc fcQGraphicsItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_isObscuredBy".}
proc fQGraphicsItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsItem_virtualbase_opaqueArea".}
proc fcQGraphicsItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_opaqueArea".}
proc fcQGraphicsItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_paint".}
proc fQGraphicsItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsItem_virtualbase_type".}
proc fcQGraphicsItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_type".}
proc fQGraphicsItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_sceneEventFilter".}
proc fQGraphicsItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsItem_virtualbase_sceneEvent".}
proc fcQGraphicsItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_sceneEvent".}
proc fQGraphicsItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_contextMenuEvent".}
proc fQGraphicsItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_dragEnterEvent".}
proc fQGraphicsItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_dragMoveEvent".}
proc fQGraphicsItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_dropEvent".}
proc fcQGraphicsItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_dropEvent".}
proc fQGraphicsItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_focusInEvent".}
proc fcQGraphicsItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_focusInEvent".}
proc fQGraphicsItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_focusOutEvent".}
proc fcQGraphicsItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_focusOutEvent".}
proc fQGraphicsItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_keyPressEvent".}
proc fcQGraphicsItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_keyPressEvent".}
proc fQGraphicsItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_mousePressEvent".}
proc fcQGraphicsItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_mousePressEvent".}
proc fQGraphicsItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_wheelEvent".}
proc fcQGraphicsItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_wheelEvent".}
proc fQGraphicsItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_inputMethodEvent".}
proc fQGraphicsItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_inputMethodQuery".}
proc fQGraphicsItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsItem_virtualbase_itemChange".}
proc fcQGraphicsItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_itemChange".}
proc fQGraphicsItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsItem_virtualbase_supportsExtension".}
proc fcQGraphicsItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_supportsExtension".}
proc fQGraphicsItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsItem_virtualbase_setExtension".}
proc fcQGraphicsItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_setExtension".}
proc fQGraphicsItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsItem_virtualbase_extension".}
proc fcQGraphicsItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_extension".}
proc fcQGraphicsItem_delete(self: pointer) {.importc: "QGraphicsItem_delete".}
proc fcQGraphicsObject_new(): ptr cQGraphicsObject {.importc: "QGraphicsObject_new".}
proc fcQGraphicsObject_new2(parent: pointer): ptr cQGraphicsObject {.importc: "QGraphicsObject_new2".}
proc fcQGraphicsObject_metaObject(self: pointer, ): pointer {.importc: "QGraphicsObject_metaObject".}
proc fcQGraphicsObject_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsObject_metacast".}
proc fcQGraphicsObject_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsObject_metacall".}
proc fcQGraphicsObject_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsObject_tr".}
proc fcQGraphicsObject_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsObject_trUtf8".}
proc fcQGraphicsObject_grabGesture(self: pointer, typeVal: cint): void {.importc: "QGraphicsObject_grabGesture".}
proc fcQGraphicsObject_ungrabGesture(self: pointer, typeVal: cint): void {.importc: "QGraphicsObject_ungrabGesture".}
proc fcQGraphicsObject_parentChanged(self: pointer, ): void {.importc: "QGraphicsObject_parentChanged".}
proc fQGraphicsObject_connect_parentChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_parentChanged".}
proc fcQGraphicsObject_opacityChanged(self: pointer, ): void {.importc: "QGraphicsObject_opacityChanged".}
proc fQGraphicsObject_connect_opacityChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_opacityChanged".}
proc fcQGraphicsObject_visibleChanged(self: pointer, ): void {.importc: "QGraphicsObject_visibleChanged".}
proc fQGraphicsObject_connect_visibleChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_visibleChanged".}
proc fcQGraphicsObject_enabledChanged(self: pointer, ): void {.importc: "QGraphicsObject_enabledChanged".}
proc fQGraphicsObject_connect_enabledChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_enabledChanged".}
proc fcQGraphicsObject_xChanged(self: pointer, ): void {.importc: "QGraphicsObject_xChanged".}
proc fQGraphicsObject_connect_xChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_xChanged".}
proc fcQGraphicsObject_yChanged(self: pointer, ): void {.importc: "QGraphicsObject_yChanged".}
proc fQGraphicsObject_connect_yChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_yChanged".}
proc fcQGraphicsObject_zChanged(self: pointer, ): void {.importc: "QGraphicsObject_zChanged".}
proc fQGraphicsObject_connect_zChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_zChanged".}
proc fcQGraphicsObject_rotationChanged(self: pointer, ): void {.importc: "QGraphicsObject_rotationChanged".}
proc fQGraphicsObject_connect_rotationChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_rotationChanged".}
proc fcQGraphicsObject_scaleChanged(self: pointer, ): void {.importc: "QGraphicsObject_scaleChanged".}
proc fQGraphicsObject_connect_scaleChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_scaleChanged".}
proc fcQGraphicsObject_childrenChanged(self: pointer, ): void {.importc: "QGraphicsObject_childrenChanged".}
proc fQGraphicsObject_connect_childrenChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_childrenChanged".}
proc fcQGraphicsObject_widthChanged(self: pointer, ): void {.importc: "QGraphicsObject_widthChanged".}
proc fQGraphicsObject_connect_widthChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_widthChanged".}
proc fcQGraphicsObject_heightChanged(self: pointer, ): void {.importc: "QGraphicsObject_heightChanged".}
proc fQGraphicsObject_connect_heightChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_heightChanged".}
proc fcQGraphicsObject_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsObject_tr2".}
proc fcQGraphicsObject_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsObject_tr3".}
proc fcQGraphicsObject_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsObject_trUtf82".}
proc fcQGraphicsObject_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsObject_trUtf83".}
proc fcQGraphicsObject_grabGesture2(self: pointer, typeVal: cint, flags: cint): void {.importc: "QGraphicsObject_grabGesture2".}
proc fQGraphicsObject_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsObject_virtualbase_metacall".}
proc fcQGraphicsObject_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_metacall".}
proc fQGraphicsObject_virtualbase_event(self: pointer, ev: pointer): bool{.importc: "QGraphicsObject_virtualbase_event".}
proc fcQGraphicsObject_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_event".}
proc fQGraphicsObject_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsObject_virtualbase_eventFilter".}
proc fcQGraphicsObject_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_eventFilter".}
proc fQGraphicsObject_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_timerEvent".}
proc fcQGraphicsObject_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_timerEvent".}
proc fQGraphicsObject_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_childEvent".}
proc fcQGraphicsObject_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_childEvent".}
proc fQGraphicsObject_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_customEvent".}
proc fcQGraphicsObject_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_customEvent".}
proc fQGraphicsObject_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsObject_virtualbase_connectNotify".}
proc fcQGraphicsObject_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_connectNotify".}
proc fQGraphicsObject_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsObject_virtualbase_disconnectNotify".}
proc fcQGraphicsObject_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_disconnectNotify".}
proc fQGraphicsObject_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsObject_virtualbase_advance".}
proc fcQGraphicsObject_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_advance".}
proc fcQGraphicsObject_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_boundingRect".}
proc fQGraphicsObject_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsObject_virtualbase_shape".}
proc fcQGraphicsObject_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_shape".}
proc fQGraphicsObject_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsObject_virtualbase_contains".}
proc fcQGraphicsObject_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_contains".}
proc fQGraphicsObject_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsObject_virtualbase_collidesWithItem".}
proc fcQGraphicsObject_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_collidesWithItem".}
proc fQGraphicsObject_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsObject_virtualbase_collidesWithPath".}
proc fcQGraphicsObject_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_collidesWithPath".}
proc fQGraphicsObject_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsObject_virtualbase_isObscuredBy".}
proc fcQGraphicsObject_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_isObscuredBy".}
proc fQGraphicsObject_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsObject_virtualbase_opaqueArea".}
proc fcQGraphicsObject_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_opaqueArea".}
proc fcQGraphicsObject_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_paint".}
proc fQGraphicsObject_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsObject_virtualbase_type".}
proc fcQGraphicsObject_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_type".}
proc fQGraphicsObject_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsObject_virtualbase_sceneEventFilter".}
proc fcQGraphicsObject_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_sceneEventFilter".}
proc fQGraphicsObject_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsObject_virtualbase_sceneEvent".}
proc fcQGraphicsObject_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_sceneEvent".}
proc fQGraphicsObject_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_contextMenuEvent".}
proc fcQGraphicsObject_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_contextMenuEvent".}
proc fQGraphicsObject_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_dragEnterEvent".}
proc fcQGraphicsObject_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_dragEnterEvent".}
proc fQGraphicsObject_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_dragLeaveEvent".}
proc fcQGraphicsObject_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_dragLeaveEvent".}
proc fQGraphicsObject_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_dragMoveEvent".}
proc fcQGraphicsObject_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_dragMoveEvent".}
proc fQGraphicsObject_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_dropEvent".}
proc fcQGraphicsObject_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_dropEvent".}
proc fQGraphicsObject_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_focusInEvent".}
proc fcQGraphicsObject_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_focusInEvent".}
proc fQGraphicsObject_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_focusOutEvent".}
proc fcQGraphicsObject_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_focusOutEvent".}
proc fQGraphicsObject_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_hoverEnterEvent".}
proc fcQGraphicsObject_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_hoverEnterEvent".}
proc fQGraphicsObject_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_hoverMoveEvent".}
proc fcQGraphicsObject_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_hoverMoveEvent".}
proc fQGraphicsObject_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsObject_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_hoverLeaveEvent".}
proc fQGraphicsObject_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_keyPressEvent".}
proc fcQGraphicsObject_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_keyPressEvent".}
proc fQGraphicsObject_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_keyReleaseEvent".}
proc fcQGraphicsObject_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_keyReleaseEvent".}
proc fQGraphicsObject_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_mousePressEvent".}
proc fcQGraphicsObject_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_mousePressEvent".}
proc fQGraphicsObject_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_mouseMoveEvent".}
proc fcQGraphicsObject_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_mouseMoveEvent".}
proc fQGraphicsObject_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsObject_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_mouseReleaseEvent".}
proc fQGraphicsObject_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsObject_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsObject_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_wheelEvent".}
proc fcQGraphicsObject_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_wheelEvent".}
proc fQGraphicsObject_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_inputMethodEvent".}
proc fcQGraphicsObject_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_inputMethodEvent".}
proc fQGraphicsObject_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsObject_virtualbase_inputMethodQuery".}
proc fcQGraphicsObject_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_inputMethodQuery".}
proc fQGraphicsObject_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsObject_virtualbase_itemChange".}
proc fcQGraphicsObject_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_itemChange".}
proc fQGraphicsObject_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsObject_virtualbase_supportsExtension".}
proc fcQGraphicsObject_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_supportsExtension".}
proc fQGraphicsObject_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsObject_virtualbase_setExtension".}
proc fcQGraphicsObject_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_setExtension".}
proc fQGraphicsObject_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsObject_virtualbase_extension".}
proc fcQGraphicsObject_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_extension".}
proc fcQGraphicsObject_staticMetaObject(): pointer {.importc: "QGraphicsObject_staticMetaObject".}
proc fcQGraphicsObject_delete(self: pointer) {.importc: "QGraphicsObject_delete".}
proc fcQAbstractGraphicsShapeItem_new(): ptr cQAbstractGraphicsShapeItem {.importc: "QAbstractGraphicsShapeItem_new".}
proc fcQAbstractGraphicsShapeItem_new2(parent: pointer): ptr cQAbstractGraphicsShapeItem {.importc: "QAbstractGraphicsShapeItem_new2".}
proc fcQAbstractGraphicsShapeItem_pen(self: pointer, ): pointer {.importc: "QAbstractGraphicsShapeItem_pen".}
proc fcQAbstractGraphicsShapeItem_setPen(self: pointer, pen: pointer): void {.importc: "QAbstractGraphicsShapeItem_setPen".}
proc fcQAbstractGraphicsShapeItem_brush(self: pointer, ): pointer {.importc: "QAbstractGraphicsShapeItem_brush".}
proc fcQAbstractGraphicsShapeItem_setBrush(self: pointer, brush: pointer): void {.importc: "QAbstractGraphicsShapeItem_setBrush".}
proc fcQAbstractGraphicsShapeItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QAbstractGraphicsShapeItem_isObscuredBy".}
proc fcQAbstractGraphicsShapeItem_opaqueArea(self: pointer, ): pointer {.importc: "QAbstractGraphicsShapeItem_opaqueArea".}
proc fQAbstractGraphicsShapeItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QAbstractGraphicsShapeItem_virtualbase_isObscuredBy".}
proc fcQAbstractGraphicsShapeItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_isObscuredBy".}
proc fQAbstractGraphicsShapeItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QAbstractGraphicsShapeItem_virtualbase_opaqueArea".}
proc fcQAbstractGraphicsShapeItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_opaqueArea".}
proc fQAbstractGraphicsShapeItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_advance".}
proc fcQAbstractGraphicsShapeItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_advance".}
proc fcQAbstractGraphicsShapeItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_boundingRect".}
proc fQAbstractGraphicsShapeItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QAbstractGraphicsShapeItem_virtualbase_shape".}
proc fcQAbstractGraphicsShapeItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_shape".}
proc fQAbstractGraphicsShapeItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QAbstractGraphicsShapeItem_virtualbase_contains".}
proc fcQAbstractGraphicsShapeItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_contains".}
proc fQAbstractGraphicsShapeItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QAbstractGraphicsShapeItem_virtualbase_collidesWithItem".}
proc fcQAbstractGraphicsShapeItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_collidesWithItem".}
proc fQAbstractGraphicsShapeItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QAbstractGraphicsShapeItem_virtualbase_collidesWithPath".}
proc fcQAbstractGraphicsShapeItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_collidesWithPath".}
proc fcQAbstractGraphicsShapeItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_paint".}
proc fQAbstractGraphicsShapeItem_virtualbase_type(self: pointer, ): cint{.importc: "QAbstractGraphicsShapeItem_virtualbase_type".}
proc fcQAbstractGraphicsShapeItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_type".}
proc fQAbstractGraphicsShapeItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractGraphicsShapeItem_virtualbase_sceneEventFilter".}
proc fcQAbstractGraphicsShapeItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_sceneEventFilter".}
proc fQAbstractGraphicsShapeItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QAbstractGraphicsShapeItem_virtualbase_sceneEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_sceneEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_contextMenuEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_contextMenuEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_dragEnterEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_dragEnterEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_dragLeaveEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_dragLeaveEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_dragMoveEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_dragMoveEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_dropEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_dropEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_focusInEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_focusInEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_focusOutEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_focusOutEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_hoverEnterEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_hoverEnterEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_hoverMoveEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_hoverMoveEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_hoverLeaveEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_hoverLeaveEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_keyPressEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_keyPressEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_keyReleaseEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_keyReleaseEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_mousePressEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_mousePressEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_mouseMoveEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_mouseMoveEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_mouseReleaseEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_mouseReleaseEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_mouseDoubleClickEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_wheelEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_wheelEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_inputMethodEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_inputMethodEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QAbstractGraphicsShapeItem_virtualbase_inputMethodQuery".}
proc fcQAbstractGraphicsShapeItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_inputMethodQuery".}
proc fQAbstractGraphicsShapeItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QAbstractGraphicsShapeItem_virtualbase_itemChange".}
proc fcQAbstractGraphicsShapeItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_itemChange".}
proc fQAbstractGraphicsShapeItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QAbstractGraphicsShapeItem_virtualbase_supportsExtension".}
proc fcQAbstractGraphicsShapeItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_supportsExtension".}
proc fQAbstractGraphicsShapeItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_setExtension".}
proc fcQAbstractGraphicsShapeItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_setExtension".}
proc fQAbstractGraphicsShapeItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QAbstractGraphicsShapeItem_virtualbase_extension".}
proc fcQAbstractGraphicsShapeItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_extension".}
proc fcQAbstractGraphicsShapeItem_delete(self: pointer) {.importc: "QAbstractGraphicsShapeItem_delete".}
proc fcQGraphicsPathItem_new(): ptr cQGraphicsPathItem {.importc: "QGraphicsPathItem_new".}
proc fcQGraphicsPathItem_new2(path: pointer): ptr cQGraphicsPathItem {.importc: "QGraphicsPathItem_new2".}
proc fcQGraphicsPathItem_new3(parent: pointer): ptr cQGraphicsPathItem {.importc: "QGraphicsPathItem_new3".}
proc fcQGraphicsPathItem_new4(path: pointer, parent: pointer): ptr cQGraphicsPathItem {.importc: "QGraphicsPathItem_new4".}
proc fcQGraphicsPathItem_path(self: pointer, ): pointer {.importc: "QGraphicsPathItem_path".}
proc fcQGraphicsPathItem_setPath(self: pointer, path: pointer): void {.importc: "QGraphicsPathItem_setPath".}
proc fcQGraphicsPathItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsPathItem_boundingRect".}
proc fcQGraphicsPathItem_shape(self: pointer, ): pointer {.importc: "QGraphicsPathItem_shape".}
proc fcQGraphicsPathItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsPathItem_contains".}
proc fcQGraphicsPathItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsPathItem_paint".}
proc fcQGraphicsPathItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsPathItem_isObscuredBy".}
proc fcQGraphicsPathItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsPathItem_opaqueArea".}
proc fcQGraphicsPathItem_typeX(self: pointer, ): cint {.importc: "QGraphicsPathItem_type".}
proc fQGraphicsPathItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsPathItem_virtualbase_boundingRect".}
proc fcQGraphicsPathItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_boundingRect".}
proc fQGraphicsPathItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsPathItem_virtualbase_shape".}
proc fcQGraphicsPathItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_shape".}
proc fQGraphicsPathItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsPathItem_virtualbase_contains".}
proc fcQGraphicsPathItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_contains".}
proc fQGraphicsPathItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsPathItem_virtualbase_paint".}
proc fcQGraphicsPathItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_paint".}
proc fQGraphicsPathItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsPathItem_virtualbase_isObscuredBy".}
proc fcQGraphicsPathItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_isObscuredBy".}
proc fQGraphicsPathItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsPathItem_virtualbase_opaqueArea".}
proc fcQGraphicsPathItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_opaqueArea".}
proc fQGraphicsPathItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsPathItem_virtualbase_type".}
proc fcQGraphicsPathItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_type".}
proc fQGraphicsPathItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsPathItem_virtualbase_supportsExtension".}
proc fcQGraphicsPathItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_supportsExtension".}
proc fQGraphicsPathItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsPathItem_virtualbase_setExtension".}
proc fcQGraphicsPathItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_setExtension".}
proc fQGraphicsPathItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsPathItem_virtualbase_extension".}
proc fcQGraphicsPathItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_extension".}
proc fQGraphicsPathItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsPathItem_virtualbase_advance".}
proc fcQGraphicsPathItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_advance".}
proc fQGraphicsPathItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsPathItem_virtualbase_collidesWithItem".}
proc fcQGraphicsPathItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_collidesWithItem".}
proc fQGraphicsPathItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsPathItem_virtualbase_collidesWithPath".}
proc fcQGraphicsPathItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_collidesWithPath".}
proc fQGraphicsPathItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsPathItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsPathItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_sceneEventFilter".}
proc fQGraphicsPathItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsPathItem_virtualbase_sceneEvent".}
proc fcQGraphicsPathItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_sceneEvent".}
proc fQGraphicsPathItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsPathItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_contextMenuEvent".}
proc fQGraphicsPathItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsPathItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_dragEnterEvent".}
proc fQGraphicsPathItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsPathItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsPathItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsPathItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_dragMoveEvent".}
proc fQGraphicsPathItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_dropEvent".}
proc fcQGraphicsPathItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_dropEvent".}
proc fQGraphicsPathItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_focusInEvent".}
proc fcQGraphicsPathItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_focusInEvent".}
proc fQGraphicsPathItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_focusOutEvent".}
proc fcQGraphicsPathItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_focusOutEvent".}
proc fQGraphicsPathItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsPathItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsPathItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsPathItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsPathItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsPathItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsPathItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_keyPressEvent".}
proc fcQGraphicsPathItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_keyPressEvent".}
proc fQGraphicsPathItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsPathItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsPathItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_mousePressEvent".}
proc fcQGraphicsPathItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_mousePressEvent".}
proc fQGraphicsPathItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsPathItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsPathItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsPathItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsPathItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsPathItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsPathItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_wheelEvent".}
proc fcQGraphicsPathItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_wheelEvent".}
proc fQGraphicsPathItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsPathItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_inputMethodEvent".}
proc fQGraphicsPathItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsPathItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsPathItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_inputMethodQuery".}
proc fQGraphicsPathItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsPathItem_virtualbase_itemChange".}
proc fcQGraphicsPathItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_itemChange".}
proc fcQGraphicsPathItem_delete(self: pointer) {.importc: "QGraphicsPathItem_delete".}
proc fcQGraphicsRectItem_new(): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new".}
proc fcQGraphicsRectItem_new2(rect: pointer): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new2".}
proc fcQGraphicsRectItem_new3(x: float64, y: float64, w: float64, h: float64): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new3".}
proc fcQGraphicsRectItem_new4(parent: pointer): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new4".}
proc fcQGraphicsRectItem_new5(rect: pointer, parent: pointer): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new5".}
proc fcQGraphicsRectItem_new6(x: float64, y: float64, w: float64, h: float64, parent: pointer): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new6".}
proc fcQGraphicsRectItem_rect(self: pointer, ): pointer {.importc: "QGraphicsRectItem_rect".}
proc fcQGraphicsRectItem_setRect(self: pointer, rect: pointer): void {.importc: "QGraphicsRectItem_setRect".}
proc fcQGraphicsRectItem_setRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsRectItem_setRect2".}
proc fcQGraphicsRectItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsRectItem_boundingRect".}
proc fcQGraphicsRectItem_shape(self: pointer, ): pointer {.importc: "QGraphicsRectItem_shape".}
proc fcQGraphicsRectItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsRectItem_contains".}
proc fcQGraphicsRectItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsRectItem_paint".}
proc fcQGraphicsRectItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsRectItem_isObscuredBy".}
proc fcQGraphicsRectItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsRectItem_opaqueArea".}
proc fcQGraphicsRectItem_typeX(self: pointer, ): cint {.importc: "QGraphicsRectItem_type".}
proc fQGraphicsRectItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsRectItem_virtualbase_boundingRect".}
proc fcQGraphicsRectItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_boundingRect".}
proc fQGraphicsRectItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsRectItem_virtualbase_shape".}
proc fcQGraphicsRectItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_shape".}
proc fQGraphicsRectItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsRectItem_virtualbase_contains".}
proc fcQGraphicsRectItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_contains".}
proc fQGraphicsRectItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsRectItem_virtualbase_paint".}
proc fcQGraphicsRectItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_paint".}
proc fQGraphicsRectItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsRectItem_virtualbase_isObscuredBy".}
proc fcQGraphicsRectItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_isObscuredBy".}
proc fQGraphicsRectItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsRectItem_virtualbase_opaqueArea".}
proc fcQGraphicsRectItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_opaqueArea".}
proc fQGraphicsRectItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsRectItem_virtualbase_type".}
proc fcQGraphicsRectItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_type".}
proc fQGraphicsRectItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsRectItem_virtualbase_supportsExtension".}
proc fcQGraphicsRectItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_supportsExtension".}
proc fQGraphicsRectItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsRectItem_virtualbase_setExtension".}
proc fcQGraphicsRectItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_setExtension".}
proc fQGraphicsRectItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsRectItem_virtualbase_extension".}
proc fcQGraphicsRectItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_extension".}
proc fQGraphicsRectItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsRectItem_virtualbase_advance".}
proc fcQGraphicsRectItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_advance".}
proc fQGraphicsRectItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsRectItem_virtualbase_collidesWithItem".}
proc fcQGraphicsRectItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_collidesWithItem".}
proc fQGraphicsRectItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsRectItem_virtualbase_collidesWithPath".}
proc fcQGraphicsRectItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_collidesWithPath".}
proc fQGraphicsRectItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsRectItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsRectItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_sceneEventFilter".}
proc fQGraphicsRectItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsRectItem_virtualbase_sceneEvent".}
proc fcQGraphicsRectItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_sceneEvent".}
proc fQGraphicsRectItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsRectItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_contextMenuEvent".}
proc fQGraphicsRectItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsRectItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_dragEnterEvent".}
proc fQGraphicsRectItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsRectItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsRectItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsRectItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_dragMoveEvent".}
proc fQGraphicsRectItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_dropEvent".}
proc fcQGraphicsRectItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_dropEvent".}
proc fQGraphicsRectItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_focusInEvent".}
proc fcQGraphicsRectItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_focusInEvent".}
proc fQGraphicsRectItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_focusOutEvent".}
proc fcQGraphicsRectItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_focusOutEvent".}
proc fQGraphicsRectItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsRectItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsRectItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsRectItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsRectItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsRectItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsRectItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_keyPressEvent".}
proc fcQGraphicsRectItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_keyPressEvent".}
proc fQGraphicsRectItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsRectItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsRectItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_mousePressEvent".}
proc fcQGraphicsRectItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_mousePressEvent".}
proc fQGraphicsRectItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsRectItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsRectItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsRectItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsRectItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsRectItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsRectItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_wheelEvent".}
proc fcQGraphicsRectItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_wheelEvent".}
proc fQGraphicsRectItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsRectItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_inputMethodEvent".}
proc fQGraphicsRectItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsRectItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsRectItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_inputMethodQuery".}
proc fQGraphicsRectItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsRectItem_virtualbase_itemChange".}
proc fcQGraphicsRectItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_itemChange".}
proc fcQGraphicsRectItem_delete(self: pointer) {.importc: "QGraphicsRectItem_delete".}
proc fcQGraphicsEllipseItem_new(): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new".}
proc fcQGraphicsEllipseItem_new2(rect: pointer): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new2".}
proc fcQGraphicsEllipseItem_new3(x: float64, y: float64, w: float64, h: float64): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new3".}
proc fcQGraphicsEllipseItem_new4(parent: pointer): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new4".}
proc fcQGraphicsEllipseItem_new5(rect: pointer, parent: pointer): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new5".}
proc fcQGraphicsEllipseItem_new6(x: float64, y: float64, w: float64, h: float64, parent: pointer): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new6".}
proc fcQGraphicsEllipseItem_rect(self: pointer, ): pointer {.importc: "QGraphicsEllipseItem_rect".}
proc fcQGraphicsEllipseItem_setRect(self: pointer, rect: pointer): void {.importc: "QGraphicsEllipseItem_setRect".}
proc fcQGraphicsEllipseItem_setRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsEllipseItem_setRect2".}
proc fcQGraphicsEllipseItem_startAngle(self: pointer, ): cint {.importc: "QGraphicsEllipseItem_startAngle".}
proc fcQGraphicsEllipseItem_setStartAngle(self: pointer, angle: cint): void {.importc: "QGraphicsEllipseItem_setStartAngle".}
proc fcQGraphicsEllipseItem_spanAngle(self: pointer, ): cint {.importc: "QGraphicsEllipseItem_spanAngle".}
proc fcQGraphicsEllipseItem_setSpanAngle(self: pointer, angle: cint): void {.importc: "QGraphicsEllipseItem_setSpanAngle".}
proc fcQGraphicsEllipseItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsEllipseItem_boundingRect".}
proc fcQGraphicsEllipseItem_shape(self: pointer, ): pointer {.importc: "QGraphicsEllipseItem_shape".}
proc fcQGraphicsEllipseItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsEllipseItem_contains".}
proc fcQGraphicsEllipseItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsEllipseItem_paint".}
proc fcQGraphicsEllipseItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsEllipseItem_isObscuredBy".}
proc fcQGraphicsEllipseItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsEllipseItem_opaqueArea".}
proc fcQGraphicsEllipseItem_typeX(self: pointer, ): cint {.importc: "QGraphicsEllipseItem_type".}
proc fQGraphicsEllipseItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsEllipseItem_virtualbase_boundingRect".}
proc fcQGraphicsEllipseItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_boundingRect".}
proc fQGraphicsEllipseItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsEllipseItem_virtualbase_shape".}
proc fcQGraphicsEllipseItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_shape".}
proc fQGraphicsEllipseItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsEllipseItem_virtualbase_contains".}
proc fcQGraphicsEllipseItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_contains".}
proc fQGraphicsEllipseItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_paint".}
proc fcQGraphicsEllipseItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_paint".}
proc fQGraphicsEllipseItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsEllipseItem_virtualbase_isObscuredBy".}
proc fcQGraphicsEllipseItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_isObscuredBy".}
proc fQGraphicsEllipseItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsEllipseItem_virtualbase_opaqueArea".}
proc fcQGraphicsEllipseItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_opaqueArea".}
proc fQGraphicsEllipseItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsEllipseItem_virtualbase_type".}
proc fcQGraphicsEllipseItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_type".}
proc fQGraphicsEllipseItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsEllipseItem_virtualbase_supportsExtension".}
proc fcQGraphicsEllipseItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_supportsExtension".}
proc fQGraphicsEllipseItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_setExtension".}
proc fcQGraphicsEllipseItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_setExtension".}
proc fQGraphicsEllipseItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsEllipseItem_virtualbase_extension".}
proc fcQGraphicsEllipseItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_extension".}
proc fQGraphicsEllipseItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsEllipseItem_virtualbase_advance".}
proc fcQGraphicsEllipseItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_advance".}
proc fQGraphicsEllipseItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsEllipseItem_virtualbase_collidesWithItem".}
proc fcQGraphicsEllipseItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_collidesWithItem".}
proc fQGraphicsEllipseItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsEllipseItem_virtualbase_collidesWithPath".}
proc fcQGraphicsEllipseItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_collidesWithPath".}
proc fQGraphicsEllipseItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsEllipseItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsEllipseItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_sceneEventFilter".}
proc fQGraphicsEllipseItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsEllipseItem_virtualbase_sceneEvent".}
proc fcQGraphicsEllipseItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_sceneEvent".}
proc fQGraphicsEllipseItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsEllipseItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_contextMenuEvent".}
proc fQGraphicsEllipseItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsEllipseItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_dragEnterEvent".}
proc fQGraphicsEllipseItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsEllipseItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsEllipseItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsEllipseItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_dragMoveEvent".}
proc fQGraphicsEllipseItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_dropEvent".}
proc fcQGraphicsEllipseItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_dropEvent".}
proc fQGraphicsEllipseItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_focusInEvent".}
proc fcQGraphicsEllipseItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_focusInEvent".}
proc fQGraphicsEllipseItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_focusOutEvent".}
proc fcQGraphicsEllipseItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_focusOutEvent".}
proc fQGraphicsEllipseItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsEllipseItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsEllipseItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsEllipseItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsEllipseItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsEllipseItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsEllipseItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_keyPressEvent".}
proc fcQGraphicsEllipseItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_keyPressEvent".}
proc fQGraphicsEllipseItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsEllipseItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsEllipseItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_mousePressEvent".}
proc fcQGraphicsEllipseItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_mousePressEvent".}
proc fQGraphicsEllipseItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsEllipseItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsEllipseItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsEllipseItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsEllipseItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsEllipseItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsEllipseItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_wheelEvent".}
proc fcQGraphicsEllipseItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_wheelEvent".}
proc fQGraphicsEllipseItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsEllipseItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_inputMethodEvent".}
proc fQGraphicsEllipseItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsEllipseItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsEllipseItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_inputMethodQuery".}
proc fQGraphicsEllipseItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsEllipseItem_virtualbase_itemChange".}
proc fcQGraphicsEllipseItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_itemChange".}
proc fcQGraphicsEllipseItem_delete(self: pointer) {.importc: "QGraphicsEllipseItem_delete".}
proc fcQGraphicsPolygonItem_new(): ptr cQGraphicsPolygonItem {.importc: "QGraphicsPolygonItem_new".}
proc fcQGraphicsPolygonItem_new2(parent: pointer): ptr cQGraphicsPolygonItem {.importc: "QGraphicsPolygonItem_new2".}
proc fcQGraphicsPolygonItem_fillRule(self: pointer, ): cint {.importc: "QGraphicsPolygonItem_fillRule".}
proc fcQGraphicsPolygonItem_setFillRule(self: pointer, rule: cint): void {.importc: "QGraphicsPolygonItem_setFillRule".}
proc fcQGraphicsPolygonItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsPolygonItem_boundingRect".}
proc fcQGraphicsPolygonItem_shape(self: pointer, ): pointer {.importc: "QGraphicsPolygonItem_shape".}
proc fcQGraphicsPolygonItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsPolygonItem_contains".}
proc fcQGraphicsPolygonItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsPolygonItem_paint".}
proc fcQGraphicsPolygonItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsPolygonItem_isObscuredBy".}
proc fcQGraphicsPolygonItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsPolygonItem_opaqueArea".}
proc fcQGraphicsPolygonItem_typeX(self: pointer, ): cint {.importc: "QGraphicsPolygonItem_type".}
proc fQGraphicsPolygonItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsPolygonItem_virtualbase_boundingRect".}
proc fcQGraphicsPolygonItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_boundingRect".}
proc fQGraphicsPolygonItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsPolygonItem_virtualbase_shape".}
proc fcQGraphicsPolygonItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_shape".}
proc fQGraphicsPolygonItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsPolygonItem_virtualbase_contains".}
proc fcQGraphicsPolygonItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_contains".}
proc fQGraphicsPolygonItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_paint".}
proc fcQGraphicsPolygonItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_paint".}
proc fQGraphicsPolygonItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsPolygonItem_virtualbase_isObscuredBy".}
proc fcQGraphicsPolygonItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_isObscuredBy".}
proc fQGraphicsPolygonItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsPolygonItem_virtualbase_opaqueArea".}
proc fcQGraphicsPolygonItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_opaqueArea".}
proc fQGraphicsPolygonItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsPolygonItem_virtualbase_type".}
proc fcQGraphicsPolygonItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_type".}
proc fQGraphicsPolygonItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsPolygonItem_virtualbase_supportsExtension".}
proc fcQGraphicsPolygonItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_supportsExtension".}
proc fQGraphicsPolygonItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_setExtension".}
proc fcQGraphicsPolygonItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_setExtension".}
proc fQGraphicsPolygonItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsPolygonItem_virtualbase_extension".}
proc fcQGraphicsPolygonItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_extension".}
proc fQGraphicsPolygonItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsPolygonItem_virtualbase_advance".}
proc fcQGraphicsPolygonItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_advance".}
proc fQGraphicsPolygonItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsPolygonItem_virtualbase_collidesWithItem".}
proc fcQGraphicsPolygonItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_collidesWithItem".}
proc fQGraphicsPolygonItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsPolygonItem_virtualbase_collidesWithPath".}
proc fcQGraphicsPolygonItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_collidesWithPath".}
proc fQGraphicsPolygonItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsPolygonItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsPolygonItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_sceneEventFilter".}
proc fQGraphicsPolygonItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsPolygonItem_virtualbase_sceneEvent".}
proc fcQGraphicsPolygonItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_sceneEvent".}
proc fQGraphicsPolygonItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsPolygonItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_contextMenuEvent".}
proc fQGraphicsPolygonItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsPolygonItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_dragEnterEvent".}
proc fQGraphicsPolygonItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsPolygonItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsPolygonItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsPolygonItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_dragMoveEvent".}
proc fQGraphicsPolygonItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_dropEvent".}
proc fcQGraphicsPolygonItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_dropEvent".}
proc fQGraphicsPolygonItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_focusInEvent".}
proc fcQGraphicsPolygonItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_focusInEvent".}
proc fQGraphicsPolygonItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_focusOutEvent".}
proc fcQGraphicsPolygonItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_focusOutEvent".}
proc fQGraphicsPolygonItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsPolygonItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsPolygonItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsPolygonItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsPolygonItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsPolygonItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsPolygonItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_keyPressEvent".}
proc fcQGraphicsPolygonItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_keyPressEvent".}
proc fQGraphicsPolygonItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsPolygonItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsPolygonItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_mousePressEvent".}
proc fcQGraphicsPolygonItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_mousePressEvent".}
proc fQGraphicsPolygonItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsPolygonItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsPolygonItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsPolygonItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsPolygonItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsPolygonItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsPolygonItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_wheelEvent".}
proc fcQGraphicsPolygonItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_wheelEvent".}
proc fQGraphicsPolygonItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsPolygonItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_inputMethodEvent".}
proc fQGraphicsPolygonItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsPolygonItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsPolygonItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_inputMethodQuery".}
proc fQGraphicsPolygonItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsPolygonItem_virtualbase_itemChange".}
proc fcQGraphicsPolygonItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_itemChange".}
proc fcQGraphicsPolygonItem_delete(self: pointer) {.importc: "QGraphicsPolygonItem_delete".}
proc fcQGraphicsLineItem_new(): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new".}
proc fcQGraphicsLineItem_new2(line: pointer): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new2".}
proc fcQGraphicsLineItem_new3(x1: float64, y1: float64, x2: float64, y2: float64): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new3".}
proc fcQGraphicsLineItem_new4(parent: pointer): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new4".}
proc fcQGraphicsLineItem_new5(line: pointer, parent: pointer): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new5".}
proc fcQGraphicsLineItem_new6(x1: float64, y1: float64, x2: float64, y2: float64, parent: pointer): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new6".}
proc fcQGraphicsLineItem_pen(self: pointer, ): pointer {.importc: "QGraphicsLineItem_pen".}
proc fcQGraphicsLineItem_setPen(self: pointer, pen: pointer): void {.importc: "QGraphicsLineItem_setPen".}
proc fcQGraphicsLineItem_line(self: pointer, ): pointer {.importc: "QGraphicsLineItem_line".}
proc fcQGraphicsLineItem_setLine(self: pointer, line: pointer): void {.importc: "QGraphicsLineItem_setLine".}
proc fcQGraphicsLineItem_setLine2(self: pointer, x1: float64, y1: float64, x2: float64, y2: float64): void {.importc: "QGraphicsLineItem_setLine2".}
proc fcQGraphicsLineItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsLineItem_boundingRect".}
proc fcQGraphicsLineItem_shape(self: pointer, ): pointer {.importc: "QGraphicsLineItem_shape".}
proc fcQGraphicsLineItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsLineItem_contains".}
proc fcQGraphicsLineItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsLineItem_paint".}
proc fcQGraphicsLineItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsLineItem_isObscuredBy".}
proc fcQGraphicsLineItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsLineItem_opaqueArea".}
proc fcQGraphicsLineItem_typeX(self: pointer, ): cint {.importc: "QGraphicsLineItem_type".}
proc fQGraphicsLineItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsLineItem_virtualbase_boundingRect".}
proc fcQGraphicsLineItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_boundingRect".}
proc fQGraphicsLineItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsLineItem_virtualbase_shape".}
proc fcQGraphicsLineItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_shape".}
proc fQGraphicsLineItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsLineItem_virtualbase_contains".}
proc fcQGraphicsLineItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_contains".}
proc fQGraphicsLineItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsLineItem_virtualbase_paint".}
proc fcQGraphicsLineItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_paint".}
proc fQGraphicsLineItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsLineItem_virtualbase_isObscuredBy".}
proc fcQGraphicsLineItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_isObscuredBy".}
proc fQGraphicsLineItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsLineItem_virtualbase_opaqueArea".}
proc fcQGraphicsLineItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_opaqueArea".}
proc fQGraphicsLineItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsLineItem_virtualbase_type".}
proc fcQGraphicsLineItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_type".}
proc fQGraphicsLineItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsLineItem_virtualbase_supportsExtension".}
proc fcQGraphicsLineItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_supportsExtension".}
proc fQGraphicsLineItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsLineItem_virtualbase_setExtension".}
proc fcQGraphicsLineItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_setExtension".}
proc fQGraphicsLineItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsLineItem_virtualbase_extension".}
proc fcQGraphicsLineItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_extension".}
proc fQGraphicsLineItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsLineItem_virtualbase_advance".}
proc fcQGraphicsLineItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_advance".}
proc fQGraphicsLineItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsLineItem_virtualbase_collidesWithItem".}
proc fcQGraphicsLineItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_collidesWithItem".}
proc fQGraphicsLineItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsLineItem_virtualbase_collidesWithPath".}
proc fcQGraphicsLineItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_collidesWithPath".}
proc fQGraphicsLineItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsLineItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsLineItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_sceneEventFilter".}
proc fQGraphicsLineItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsLineItem_virtualbase_sceneEvent".}
proc fcQGraphicsLineItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_sceneEvent".}
proc fQGraphicsLineItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsLineItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_contextMenuEvent".}
proc fQGraphicsLineItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsLineItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_dragEnterEvent".}
proc fQGraphicsLineItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsLineItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsLineItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsLineItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_dragMoveEvent".}
proc fQGraphicsLineItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_dropEvent".}
proc fcQGraphicsLineItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_dropEvent".}
proc fQGraphicsLineItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_focusInEvent".}
proc fcQGraphicsLineItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_focusInEvent".}
proc fQGraphicsLineItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_focusOutEvent".}
proc fcQGraphicsLineItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_focusOutEvent".}
proc fQGraphicsLineItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsLineItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsLineItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsLineItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsLineItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsLineItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsLineItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_keyPressEvent".}
proc fcQGraphicsLineItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_keyPressEvent".}
proc fQGraphicsLineItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsLineItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsLineItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_mousePressEvent".}
proc fcQGraphicsLineItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_mousePressEvent".}
proc fQGraphicsLineItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsLineItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsLineItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsLineItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsLineItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsLineItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsLineItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_wheelEvent".}
proc fcQGraphicsLineItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_wheelEvent".}
proc fQGraphicsLineItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsLineItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_inputMethodEvent".}
proc fQGraphicsLineItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsLineItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsLineItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_inputMethodQuery".}
proc fQGraphicsLineItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsLineItem_virtualbase_itemChange".}
proc fcQGraphicsLineItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_itemChange".}
proc fcQGraphicsLineItem_delete(self: pointer) {.importc: "QGraphicsLineItem_delete".}
proc fcQGraphicsPixmapItem_new(): ptr cQGraphicsPixmapItem {.importc: "QGraphicsPixmapItem_new".}
proc fcQGraphicsPixmapItem_new2(pixmap: pointer): ptr cQGraphicsPixmapItem {.importc: "QGraphicsPixmapItem_new2".}
proc fcQGraphicsPixmapItem_new3(parent: pointer): ptr cQGraphicsPixmapItem {.importc: "QGraphicsPixmapItem_new3".}
proc fcQGraphicsPixmapItem_new4(pixmap: pointer, parent: pointer): ptr cQGraphicsPixmapItem {.importc: "QGraphicsPixmapItem_new4".}
proc fcQGraphicsPixmapItem_pixmap(self: pointer, ): pointer {.importc: "QGraphicsPixmapItem_pixmap".}
proc fcQGraphicsPixmapItem_setPixmap(self: pointer, pixmap: pointer): void {.importc: "QGraphicsPixmapItem_setPixmap".}
proc fcQGraphicsPixmapItem_transformationMode(self: pointer, ): cint {.importc: "QGraphicsPixmapItem_transformationMode".}
proc fcQGraphicsPixmapItem_setTransformationMode(self: pointer, mode: cint): void {.importc: "QGraphicsPixmapItem_setTransformationMode".}
proc fcQGraphicsPixmapItem_offset(self: pointer, ): pointer {.importc: "QGraphicsPixmapItem_offset".}
proc fcQGraphicsPixmapItem_setOffset(self: pointer, offset: pointer): void {.importc: "QGraphicsPixmapItem_setOffset".}
proc fcQGraphicsPixmapItem_setOffset2(self: pointer, x: float64, y: float64): void {.importc: "QGraphicsPixmapItem_setOffset2".}
proc fcQGraphicsPixmapItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsPixmapItem_boundingRect".}
proc fcQGraphicsPixmapItem_shape(self: pointer, ): pointer {.importc: "QGraphicsPixmapItem_shape".}
proc fcQGraphicsPixmapItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsPixmapItem_contains".}
proc fcQGraphicsPixmapItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsPixmapItem_paint".}
proc fcQGraphicsPixmapItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsPixmapItem_isObscuredBy".}
proc fcQGraphicsPixmapItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsPixmapItem_opaqueArea".}
proc fcQGraphicsPixmapItem_typeX(self: pointer, ): cint {.importc: "QGraphicsPixmapItem_type".}
proc fcQGraphicsPixmapItem_shapeMode(self: pointer, ): cint {.importc: "QGraphicsPixmapItem_shapeMode".}
proc fcQGraphicsPixmapItem_setShapeMode(self: pointer, mode: cint): void {.importc: "QGraphicsPixmapItem_setShapeMode".}
proc fQGraphicsPixmapItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsPixmapItem_virtualbase_boundingRect".}
proc fcQGraphicsPixmapItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_boundingRect".}
proc fQGraphicsPixmapItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsPixmapItem_virtualbase_shape".}
proc fcQGraphicsPixmapItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_shape".}
proc fQGraphicsPixmapItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsPixmapItem_virtualbase_contains".}
proc fcQGraphicsPixmapItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_contains".}
proc fQGraphicsPixmapItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_paint".}
proc fcQGraphicsPixmapItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_paint".}
proc fQGraphicsPixmapItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsPixmapItem_virtualbase_isObscuredBy".}
proc fcQGraphicsPixmapItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_isObscuredBy".}
proc fQGraphicsPixmapItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsPixmapItem_virtualbase_opaqueArea".}
proc fcQGraphicsPixmapItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_opaqueArea".}
proc fQGraphicsPixmapItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsPixmapItem_virtualbase_type".}
proc fcQGraphicsPixmapItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_type".}
proc fQGraphicsPixmapItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsPixmapItem_virtualbase_supportsExtension".}
proc fcQGraphicsPixmapItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_supportsExtension".}
proc fQGraphicsPixmapItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_setExtension".}
proc fcQGraphicsPixmapItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_setExtension".}
proc fQGraphicsPixmapItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsPixmapItem_virtualbase_extension".}
proc fcQGraphicsPixmapItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_extension".}
proc fQGraphicsPixmapItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsPixmapItem_virtualbase_advance".}
proc fcQGraphicsPixmapItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_advance".}
proc fQGraphicsPixmapItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsPixmapItem_virtualbase_collidesWithItem".}
proc fcQGraphicsPixmapItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_collidesWithItem".}
proc fQGraphicsPixmapItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsPixmapItem_virtualbase_collidesWithPath".}
proc fcQGraphicsPixmapItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_collidesWithPath".}
proc fQGraphicsPixmapItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsPixmapItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsPixmapItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_sceneEventFilter".}
proc fQGraphicsPixmapItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsPixmapItem_virtualbase_sceneEvent".}
proc fcQGraphicsPixmapItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_sceneEvent".}
proc fQGraphicsPixmapItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsPixmapItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_contextMenuEvent".}
proc fQGraphicsPixmapItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsPixmapItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_dragEnterEvent".}
proc fQGraphicsPixmapItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsPixmapItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsPixmapItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsPixmapItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_dragMoveEvent".}
proc fQGraphicsPixmapItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_dropEvent".}
proc fcQGraphicsPixmapItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_dropEvent".}
proc fQGraphicsPixmapItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_focusInEvent".}
proc fcQGraphicsPixmapItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_focusInEvent".}
proc fQGraphicsPixmapItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_focusOutEvent".}
proc fcQGraphicsPixmapItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_focusOutEvent".}
proc fQGraphicsPixmapItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsPixmapItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsPixmapItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsPixmapItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsPixmapItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsPixmapItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsPixmapItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_keyPressEvent".}
proc fcQGraphicsPixmapItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_keyPressEvent".}
proc fQGraphicsPixmapItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsPixmapItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsPixmapItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_mousePressEvent".}
proc fcQGraphicsPixmapItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_mousePressEvent".}
proc fQGraphicsPixmapItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsPixmapItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsPixmapItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsPixmapItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsPixmapItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsPixmapItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsPixmapItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_wheelEvent".}
proc fcQGraphicsPixmapItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_wheelEvent".}
proc fQGraphicsPixmapItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsPixmapItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_inputMethodEvent".}
proc fQGraphicsPixmapItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsPixmapItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsPixmapItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_inputMethodQuery".}
proc fQGraphicsPixmapItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsPixmapItem_virtualbase_itemChange".}
proc fcQGraphicsPixmapItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_itemChange".}
proc fcQGraphicsPixmapItem_delete(self: pointer) {.importc: "QGraphicsPixmapItem_delete".}
proc fcQGraphicsTextItem_new(): ptr cQGraphicsTextItem {.importc: "QGraphicsTextItem_new".}
proc fcQGraphicsTextItem_new2(text: struct_miqt_string): ptr cQGraphicsTextItem {.importc: "QGraphicsTextItem_new2".}
proc fcQGraphicsTextItem_new3(parent: pointer): ptr cQGraphicsTextItem {.importc: "QGraphicsTextItem_new3".}
proc fcQGraphicsTextItem_new4(text: struct_miqt_string, parent: pointer): ptr cQGraphicsTextItem {.importc: "QGraphicsTextItem_new4".}
proc fcQGraphicsTextItem_metaObject(self: pointer, ): pointer {.importc: "QGraphicsTextItem_metaObject".}
proc fcQGraphicsTextItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsTextItem_metacast".}
proc fcQGraphicsTextItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsTextItem_metacall".}
proc fcQGraphicsTextItem_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsTextItem_tr".}
proc fcQGraphicsTextItem_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsTextItem_trUtf8".}
proc fcQGraphicsTextItem_toHtml(self: pointer, ): struct_miqt_string {.importc: "QGraphicsTextItem_toHtml".}
proc fcQGraphicsTextItem_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QGraphicsTextItem_setHtml".}
proc fcQGraphicsTextItem_toPlainText(self: pointer, ): struct_miqt_string {.importc: "QGraphicsTextItem_toPlainText".}
proc fcQGraphicsTextItem_setPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QGraphicsTextItem_setPlainText".}
proc fcQGraphicsTextItem_font(self: pointer, ): pointer {.importc: "QGraphicsTextItem_font".}
proc fcQGraphicsTextItem_setFont(self: pointer, font: pointer): void {.importc: "QGraphicsTextItem_setFont".}
proc fcQGraphicsTextItem_setDefaultTextColor(self: pointer, c: pointer): void {.importc: "QGraphicsTextItem_setDefaultTextColor".}
proc fcQGraphicsTextItem_defaultTextColor(self: pointer, ): pointer {.importc: "QGraphicsTextItem_defaultTextColor".}
proc fcQGraphicsTextItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsTextItem_boundingRect".}
proc fcQGraphicsTextItem_shape(self: pointer, ): pointer {.importc: "QGraphicsTextItem_shape".}
proc fcQGraphicsTextItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsTextItem_contains".}
proc fcQGraphicsTextItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsTextItem_paint".}
proc fcQGraphicsTextItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsTextItem_isObscuredBy".}
proc fcQGraphicsTextItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsTextItem_opaqueArea".}
proc fcQGraphicsTextItem_typeX(self: pointer, ): cint {.importc: "QGraphicsTextItem_type".}
proc fcQGraphicsTextItem_setTextWidth(self: pointer, width: float64): void {.importc: "QGraphicsTextItem_setTextWidth".}
proc fcQGraphicsTextItem_textWidth(self: pointer, ): float64 {.importc: "QGraphicsTextItem_textWidth".}
proc fcQGraphicsTextItem_adjustSize(self: pointer, ): void {.importc: "QGraphicsTextItem_adjustSize".}
proc fcQGraphicsTextItem_setDocument(self: pointer, document: pointer): void {.importc: "QGraphicsTextItem_setDocument".}
proc fcQGraphicsTextItem_document(self: pointer, ): pointer {.importc: "QGraphicsTextItem_document".}
proc fcQGraphicsTextItem_setTextInteractionFlags(self: pointer, flags: cint): void {.importc: "QGraphicsTextItem_setTextInteractionFlags".}
proc fcQGraphicsTextItem_textInteractionFlags(self: pointer, ): cint {.importc: "QGraphicsTextItem_textInteractionFlags".}
proc fcQGraphicsTextItem_setTabChangesFocus(self: pointer, b: bool): void {.importc: "QGraphicsTextItem_setTabChangesFocus".}
proc fcQGraphicsTextItem_tabChangesFocus(self: pointer, ): bool {.importc: "QGraphicsTextItem_tabChangesFocus".}
proc fcQGraphicsTextItem_setOpenExternalLinks(self: pointer, open: bool): void {.importc: "QGraphicsTextItem_setOpenExternalLinks".}
proc fcQGraphicsTextItem_openExternalLinks(self: pointer, ): bool {.importc: "QGraphicsTextItem_openExternalLinks".}
proc fcQGraphicsTextItem_setTextCursor(self: pointer, cursor: pointer): void {.importc: "QGraphicsTextItem_setTextCursor".}
proc fcQGraphicsTextItem_textCursor(self: pointer, ): pointer {.importc: "QGraphicsTextItem_textCursor".}
proc fcQGraphicsTextItem_linkActivated(self: pointer, param1: struct_miqt_string): void {.importc: "QGraphicsTextItem_linkActivated".}
proc fQGraphicsTextItem_connect_linkActivated(self: pointer, slot: int) {.importc: "QGraphicsTextItem_connect_linkActivated".}
proc fcQGraphicsTextItem_linkHovered(self: pointer, param1: struct_miqt_string): void {.importc: "QGraphicsTextItem_linkHovered".}
proc fQGraphicsTextItem_connect_linkHovered(self: pointer, slot: int) {.importc: "QGraphicsTextItem_connect_linkHovered".}
proc fcQGraphicsTextItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsTextItem_tr2".}
proc fcQGraphicsTextItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsTextItem_tr3".}
proc fcQGraphicsTextItem_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsTextItem_trUtf82".}
proc fcQGraphicsTextItem_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsTextItem_trUtf83".}
proc fQGraphicsTextItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsTextItem_virtualbase_metacall".}
proc fcQGraphicsTextItem_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_metacall".}
proc fQGraphicsTextItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsTextItem_virtualbase_boundingRect".}
proc fcQGraphicsTextItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_boundingRect".}
proc fQGraphicsTextItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsTextItem_virtualbase_shape".}
proc fcQGraphicsTextItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_shape".}
proc fQGraphicsTextItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsTextItem_virtualbase_contains".}
proc fcQGraphicsTextItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_contains".}
proc fQGraphicsTextItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsTextItem_virtualbase_paint".}
proc fcQGraphicsTextItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_paint".}
proc fQGraphicsTextItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsTextItem_virtualbase_isObscuredBy".}
proc fcQGraphicsTextItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_isObscuredBy".}
proc fQGraphicsTextItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsTextItem_virtualbase_opaqueArea".}
proc fcQGraphicsTextItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_opaqueArea".}
proc fQGraphicsTextItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsTextItem_virtualbase_type".}
proc fcQGraphicsTextItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_type".}
proc fQGraphicsTextItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsTextItem_virtualbase_sceneEvent".}
proc fcQGraphicsTextItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_sceneEvent".}
proc fQGraphicsTextItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_mousePressEvent".}
proc fcQGraphicsTextItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_mousePressEvent".}
proc fQGraphicsTextItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsTextItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsTextItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsTextItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsTextItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsTextItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsTextItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsTextItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_contextMenuEvent".}
proc fQGraphicsTextItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_keyPressEvent".}
proc fcQGraphicsTextItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_keyPressEvent".}
proc fQGraphicsTextItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsTextItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsTextItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_focusInEvent".}
proc fcQGraphicsTextItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_focusInEvent".}
proc fQGraphicsTextItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_focusOutEvent".}
proc fcQGraphicsTextItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_focusOutEvent".}
proc fQGraphicsTextItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsTextItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_dragEnterEvent".}
proc fQGraphicsTextItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsTextItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsTextItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsTextItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_dragMoveEvent".}
proc fQGraphicsTextItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_dropEvent".}
proc fcQGraphicsTextItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_dropEvent".}
proc fQGraphicsTextItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsTextItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_inputMethodEvent".}
proc fQGraphicsTextItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsTextItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsTextItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsTextItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsTextItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsTextItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsTextItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsTextItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsTextItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_inputMethodQuery".}
proc fQGraphicsTextItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsTextItem_virtualbase_supportsExtension".}
proc fcQGraphicsTextItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_supportsExtension".}
proc fQGraphicsTextItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsTextItem_virtualbase_setExtension".}
proc fcQGraphicsTextItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_setExtension".}
proc fQGraphicsTextItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsTextItem_virtualbase_extension".}
proc fcQGraphicsTextItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_extension".}
proc fQGraphicsTextItem_virtualbase_event(self: pointer, ev: pointer): bool{.importc: "QGraphicsTextItem_virtualbase_event".}
proc fcQGraphicsTextItem_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_event".}
proc fQGraphicsTextItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsTextItem_virtualbase_eventFilter".}
proc fcQGraphicsTextItem_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_eventFilter".}
proc fQGraphicsTextItem_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_timerEvent".}
proc fcQGraphicsTextItem_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_timerEvent".}
proc fQGraphicsTextItem_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_childEvent".}
proc fcQGraphicsTextItem_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_childEvent".}
proc fQGraphicsTextItem_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_customEvent".}
proc fcQGraphicsTextItem_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_customEvent".}
proc fQGraphicsTextItem_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsTextItem_virtualbase_connectNotify".}
proc fcQGraphicsTextItem_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_connectNotify".}
proc fQGraphicsTextItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsTextItem_virtualbase_disconnectNotify".}
proc fcQGraphicsTextItem_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_disconnectNotify".}
proc fQGraphicsTextItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsTextItem_virtualbase_advance".}
proc fcQGraphicsTextItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_advance".}
proc fQGraphicsTextItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsTextItem_virtualbase_collidesWithItem".}
proc fcQGraphicsTextItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_collidesWithItem".}
proc fQGraphicsTextItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsTextItem_virtualbase_collidesWithPath".}
proc fcQGraphicsTextItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_collidesWithPath".}
proc fQGraphicsTextItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsTextItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsTextItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_sceneEventFilter".}
proc fQGraphicsTextItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_wheelEvent".}
proc fcQGraphicsTextItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_wheelEvent".}
proc fQGraphicsTextItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsTextItem_virtualbase_itemChange".}
proc fcQGraphicsTextItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_itemChange".}
proc fcQGraphicsTextItem_staticMetaObject(): pointer {.importc: "QGraphicsTextItem_staticMetaObject".}
proc fcQGraphicsTextItem_delete(self: pointer) {.importc: "QGraphicsTextItem_delete".}
proc fcQGraphicsSimpleTextItem_new(): ptr cQGraphicsSimpleTextItem {.importc: "QGraphicsSimpleTextItem_new".}
proc fcQGraphicsSimpleTextItem_new2(text: struct_miqt_string): ptr cQGraphicsSimpleTextItem {.importc: "QGraphicsSimpleTextItem_new2".}
proc fcQGraphicsSimpleTextItem_new3(parent: pointer): ptr cQGraphicsSimpleTextItem {.importc: "QGraphicsSimpleTextItem_new3".}
proc fcQGraphicsSimpleTextItem_new4(text: struct_miqt_string, parent: pointer): ptr cQGraphicsSimpleTextItem {.importc: "QGraphicsSimpleTextItem_new4".}
proc fcQGraphicsSimpleTextItem_setText(self: pointer, text: struct_miqt_string): void {.importc: "QGraphicsSimpleTextItem_setText".}
proc fcQGraphicsSimpleTextItem_text(self: pointer, ): struct_miqt_string {.importc: "QGraphicsSimpleTextItem_text".}
proc fcQGraphicsSimpleTextItem_setFont(self: pointer, font: pointer): void {.importc: "QGraphicsSimpleTextItem_setFont".}
proc fcQGraphicsSimpleTextItem_font(self: pointer, ): pointer {.importc: "QGraphicsSimpleTextItem_font".}
proc fcQGraphicsSimpleTextItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsSimpleTextItem_boundingRect".}
proc fcQGraphicsSimpleTextItem_shape(self: pointer, ): pointer {.importc: "QGraphicsSimpleTextItem_shape".}
proc fcQGraphicsSimpleTextItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsSimpleTextItem_contains".}
proc fcQGraphicsSimpleTextItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsSimpleTextItem_paint".}
proc fcQGraphicsSimpleTextItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsSimpleTextItem_isObscuredBy".}
proc fcQGraphicsSimpleTextItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsSimpleTextItem_opaqueArea".}
proc fcQGraphicsSimpleTextItem_typeX(self: pointer, ): cint {.importc: "QGraphicsSimpleTextItem_type".}
proc fQGraphicsSimpleTextItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsSimpleTextItem_virtualbase_boundingRect".}
proc fcQGraphicsSimpleTextItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_boundingRect".}
proc fQGraphicsSimpleTextItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsSimpleTextItem_virtualbase_shape".}
proc fcQGraphicsSimpleTextItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_shape".}
proc fQGraphicsSimpleTextItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsSimpleTextItem_virtualbase_contains".}
proc fcQGraphicsSimpleTextItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_contains".}
proc fQGraphicsSimpleTextItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_paint".}
proc fcQGraphicsSimpleTextItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_paint".}
proc fQGraphicsSimpleTextItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsSimpleTextItem_virtualbase_isObscuredBy".}
proc fcQGraphicsSimpleTextItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_isObscuredBy".}
proc fQGraphicsSimpleTextItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsSimpleTextItem_virtualbase_opaqueArea".}
proc fcQGraphicsSimpleTextItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_opaqueArea".}
proc fQGraphicsSimpleTextItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsSimpleTextItem_virtualbase_type".}
proc fcQGraphicsSimpleTextItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_type".}
proc fQGraphicsSimpleTextItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsSimpleTextItem_virtualbase_supportsExtension".}
proc fcQGraphicsSimpleTextItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_supportsExtension".}
proc fQGraphicsSimpleTextItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_setExtension".}
proc fcQGraphicsSimpleTextItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_setExtension".}
proc fQGraphicsSimpleTextItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsSimpleTextItem_virtualbase_extension".}
proc fcQGraphicsSimpleTextItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_extension".}
proc fQGraphicsSimpleTextItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsSimpleTextItem_virtualbase_advance".}
proc fcQGraphicsSimpleTextItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_advance".}
proc fQGraphicsSimpleTextItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsSimpleTextItem_virtualbase_collidesWithItem".}
proc fcQGraphicsSimpleTextItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_collidesWithItem".}
proc fQGraphicsSimpleTextItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsSimpleTextItem_virtualbase_collidesWithPath".}
proc fcQGraphicsSimpleTextItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_collidesWithPath".}
proc fQGraphicsSimpleTextItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsSimpleTextItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsSimpleTextItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_sceneEventFilter".}
proc fQGraphicsSimpleTextItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsSimpleTextItem_virtualbase_sceneEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_sceneEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_contextMenuEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_dragEnterEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_dragMoveEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_dropEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_dropEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_focusInEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_focusInEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_focusOutEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_focusOutEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_keyPressEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_keyPressEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_mousePressEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_mousePressEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_wheelEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_wheelEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_inputMethodEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsSimpleTextItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsSimpleTextItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_inputMethodQuery".}
proc fQGraphicsSimpleTextItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsSimpleTextItem_virtualbase_itemChange".}
proc fcQGraphicsSimpleTextItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_itemChange".}
proc fcQGraphicsSimpleTextItem_delete(self: pointer) {.importc: "QGraphicsSimpleTextItem_delete".}
proc fcQGraphicsItemGroup_new(): ptr cQGraphicsItemGroup {.importc: "QGraphicsItemGroup_new".}
proc fcQGraphicsItemGroup_new2(parent: pointer): ptr cQGraphicsItemGroup {.importc: "QGraphicsItemGroup_new2".}
proc fcQGraphicsItemGroup_addToGroup(self: pointer, item: pointer): void {.importc: "QGraphicsItemGroup_addToGroup".}
proc fcQGraphicsItemGroup_removeFromGroup(self: pointer, item: pointer): void {.importc: "QGraphicsItemGroup_removeFromGroup".}
proc fcQGraphicsItemGroup_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsItemGroup_boundingRect".}
proc fcQGraphicsItemGroup_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsItemGroup_paint".}
proc fcQGraphicsItemGroup_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsItemGroup_isObscuredBy".}
proc fcQGraphicsItemGroup_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsItemGroup_opaqueArea".}
proc fcQGraphicsItemGroup_typeX(self: pointer, ): cint {.importc: "QGraphicsItemGroup_type".}
proc fQGraphicsItemGroup_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsItemGroup_virtualbase_boundingRect".}
proc fcQGraphicsItemGroup_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_boundingRect".}
proc fQGraphicsItemGroup_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_paint".}
proc fcQGraphicsItemGroup_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_paint".}
proc fQGraphicsItemGroup_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsItemGroup_virtualbase_isObscuredBy".}
proc fcQGraphicsItemGroup_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_isObscuredBy".}
proc fQGraphicsItemGroup_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsItemGroup_virtualbase_opaqueArea".}
proc fcQGraphicsItemGroup_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_opaqueArea".}
proc fQGraphicsItemGroup_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsItemGroup_virtualbase_type".}
proc fcQGraphicsItemGroup_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_type".}
proc fQGraphicsItemGroup_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsItemGroup_virtualbase_advance".}
proc fcQGraphicsItemGroup_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_advance".}
proc fQGraphicsItemGroup_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsItemGroup_virtualbase_shape".}
proc fcQGraphicsItemGroup_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_shape".}
proc fQGraphicsItemGroup_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsItemGroup_virtualbase_contains".}
proc fcQGraphicsItemGroup_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_contains".}
proc fQGraphicsItemGroup_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsItemGroup_virtualbase_collidesWithItem".}
proc fcQGraphicsItemGroup_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_collidesWithItem".}
proc fQGraphicsItemGroup_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsItemGroup_virtualbase_collidesWithPath".}
proc fcQGraphicsItemGroup_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_collidesWithPath".}
proc fQGraphicsItemGroup_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsItemGroup_virtualbase_sceneEventFilter".}
proc fcQGraphicsItemGroup_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_sceneEventFilter".}
proc fQGraphicsItemGroup_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsItemGroup_virtualbase_sceneEvent".}
proc fcQGraphicsItemGroup_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_sceneEvent".}
proc fQGraphicsItemGroup_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_contextMenuEvent".}
proc fcQGraphicsItemGroup_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_contextMenuEvent".}
proc fQGraphicsItemGroup_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_dragEnterEvent".}
proc fcQGraphicsItemGroup_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_dragEnterEvent".}
proc fQGraphicsItemGroup_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_dragLeaveEvent".}
proc fcQGraphicsItemGroup_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_dragLeaveEvent".}
proc fQGraphicsItemGroup_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_dragMoveEvent".}
proc fcQGraphicsItemGroup_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_dragMoveEvent".}
proc fQGraphicsItemGroup_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_dropEvent".}
proc fcQGraphicsItemGroup_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_dropEvent".}
proc fQGraphicsItemGroup_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_focusInEvent".}
proc fcQGraphicsItemGroup_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_focusInEvent".}
proc fQGraphicsItemGroup_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_focusOutEvent".}
proc fcQGraphicsItemGroup_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_focusOutEvent".}
proc fQGraphicsItemGroup_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_hoverEnterEvent".}
proc fcQGraphicsItemGroup_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_hoverEnterEvent".}
proc fQGraphicsItemGroup_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_hoverMoveEvent".}
proc fcQGraphicsItemGroup_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_hoverMoveEvent".}
proc fQGraphicsItemGroup_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsItemGroup_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_hoverLeaveEvent".}
proc fQGraphicsItemGroup_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_keyPressEvent".}
proc fcQGraphicsItemGroup_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_keyPressEvent".}
proc fQGraphicsItemGroup_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_keyReleaseEvent".}
proc fcQGraphicsItemGroup_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_keyReleaseEvent".}
proc fQGraphicsItemGroup_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_mousePressEvent".}
proc fcQGraphicsItemGroup_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_mousePressEvent".}
proc fQGraphicsItemGroup_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_mouseMoveEvent".}
proc fcQGraphicsItemGroup_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_mouseMoveEvent".}
proc fQGraphicsItemGroup_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsItemGroup_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_mouseReleaseEvent".}
proc fQGraphicsItemGroup_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsItemGroup_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsItemGroup_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_wheelEvent".}
proc fcQGraphicsItemGroup_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_wheelEvent".}
proc fQGraphicsItemGroup_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_inputMethodEvent".}
proc fcQGraphicsItemGroup_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_inputMethodEvent".}
proc fQGraphicsItemGroup_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsItemGroup_virtualbase_inputMethodQuery".}
proc fcQGraphicsItemGroup_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_inputMethodQuery".}
proc fQGraphicsItemGroup_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsItemGroup_virtualbase_itemChange".}
proc fcQGraphicsItemGroup_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_itemChange".}
proc fQGraphicsItemGroup_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsItemGroup_virtualbase_supportsExtension".}
proc fcQGraphicsItemGroup_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_supportsExtension".}
proc fQGraphicsItemGroup_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_setExtension".}
proc fcQGraphicsItemGroup_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_setExtension".}
proc fQGraphicsItemGroup_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsItemGroup_virtualbase_extension".}
proc fcQGraphicsItemGroup_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_extension".}
proc fcQGraphicsItemGroup_delete(self: pointer) {.importc: "QGraphicsItemGroup_delete".}


func init*(T: type QGraphicsItem, h: ptr cQGraphicsItem): QGraphicsItem =
  T(h: h)
proc create*(T: type QGraphicsItem, ): QGraphicsItem =

  QGraphicsItem.init(fcQGraphicsItem_new())
proc create*(T: type QGraphicsItem, parent: QGraphicsItem): QGraphicsItem =

  QGraphicsItem.init(fcQGraphicsItem_new2(parent.h))
proc scene*(self: QGraphicsItem, ): gen_qgraphicsscene.QGraphicsScene =

  gen_qgraphicsscene.QGraphicsScene(h: fcQGraphicsItem_scene(self.h))

proc parentItem*(self: QGraphicsItem, ): QGraphicsItem =

  QGraphicsItem(h: fcQGraphicsItem_parentItem(self.h))

proc topLevelItem*(self: QGraphicsItem, ): QGraphicsItem =

  QGraphicsItem(h: fcQGraphicsItem_topLevelItem(self.h))

proc parentObject*(self: QGraphicsItem, ): QGraphicsObject =

  QGraphicsObject(h: fcQGraphicsItem_parentObject(self.h))

proc parentWidget*(self: QGraphicsItem, ): gen_qgraphicswidget.QGraphicsWidget =

  gen_qgraphicswidget.QGraphicsWidget(h: fcQGraphicsItem_parentWidget(self.h))

proc topLevelWidget*(self: QGraphicsItem, ): gen_qgraphicswidget.QGraphicsWidget =

  gen_qgraphicswidget.QGraphicsWidget(h: fcQGraphicsItem_topLevelWidget(self.h))

proc window*(self: QGraphicsItem, ): gen_qgraphicswidget.QGraphicsWidget =

  gen_qgraphicswidget.QGraphicsWidget(h: fcQGraphicsItem_window(self.h))

proc panel*(self: QGraphicsItem, ): QGraphicsItem =

  QGraphicsItem(h: fcQGraphicsItem_panel(self.h))

proc setParentItem*(self: QGraphicsItem, parent: QGraphicsItem): void =

  fcQGraphicsItem_setParentItem(self.h, parent.h)

proc childItems*(self: QGraphicsItem, ): seq[QGraphicsItem] =

  var v_ma = fcQGraphicsItem_childItems(self.h)
  var vx_ret = newSeq[QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QGraphicsItem(h: v_outCast[i])
  vx_ret

proc isWidget*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_isWidget(self.h)

proc isWindow*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_isWindow(self.h)

proc isPanel*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_isPanel(self.h)

proc toGraphicsObject*(self: QGraphicsItem, ): QGraphicsObject =

  QGraphicsObject(h: fcQGraphicsItem_toGraphicsObject(self.h))

proc toGraphicsObject2*(self: QGraphicsItem, ): QGraphicsObject =

  QGraphicsObject(h: fcQGraphicsItem_toGraphicsObject2(self.h))

proc group*(self: QGraphicsItem, ): QGraphicsItemGroup =

  QGraphicsItemGroup(h: fcQGraphicsItem_group(self.h))

proc setGroup*(self: QGraphicsItem, group: QGraphicsItemGroup): void =

  fcQGraphicsItem_setGroup(self.h, group.h)

proc flags*(self: QGraphicsItem, ): QGraphicsItemGraphicsItemFlag =

  QGraphicsItemGraphicsItemFlag(fcQGraphicsItem_flags(self.h))

proc setFlag*(self: QGraphicsItem, flag: QGraphicsItemGraphicsItemFlag): void =

  fcQGraphicsItem_setFlag(self.h, cint(flag))

proc setFlags*(self: QGraphicsItem, flags: QGraphicsItemGraphicsItemFlag): void =

  fcQGraphicsItem_setFlags(self.h, cint(flags))

proc cacheMode*(self: QGraphicsItem, ): QGraphicsItemCacheMode =

  QGraphicsItemCacheMode(fcQGraphicsItem_cacheMode(self.h))

proc setCacheMode*(self: QGraphicsItem, mode: QGraphicsItemCacheMode): void =

  fcQGraphicsItem_setCacheMode(self.h, cint(mode))

proc panelModality*(self: QGraphicsItem, ): QGraphicsItemPanelModality =

  QGraphicsItemPanelModality(fcQGraphicsItem_panelModality(self.h))

proc setPanelModality*(self: QGraphicsItem, panelModality: QGraphicsItemPanelModality): void =

  fcQGraphicsItem_setPanelModality(self.h, cint(panelModality))

proc isBlockedByModalPanel*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_isBlockedByModalPanel(self.h)

proc toolTip*(self: QGraphicsItem, ): string =

  let v_ms = fcQGraphicsItem_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: QGraphicsItem, toolTip: string): void =

  fcQGraphicsItem_setToolTip(self.h, struct_miqt_string(data: toolTip, len: csize_t(len(toolTip))))

proc cursor*(self: QGraphicsItem, ): gen_qcursor.QCursor =

  gen_qcursor.QCursor(h: fcQGraphicsItem_cursor(self.h))

proc setCursor*(self: QGraphicsItem, cursor: gen_qcursor.QCursor): void =

  fcQGraphicsItem_setCursor(self.h, cursor.h)

proc hasCursor*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_hasCursor(self.h)

proc unsetCursor*(self: QGraphicsItem, ): void =

  fcQGraphicsItem_unsetCursor(self.h)

proc isVisible*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_isVisible(self.h)

proc isVisibleTo*(self: QGraphicsItem, parent: QGraphicsItem): bool =

  fcQGraphicsItem_isVisibleTo(self.h, parent.h)

proc setVisible*(self: QGraphicsItem, visible: bool): void =

  fcQGraphicsItem_setVisible(self.h, visible)

proc hide*(self: QGraphicsItem, ): void =

  fcQGraphicsItem_hide(self.h)

proc show*(self: QGraphicsItem, ): void =

  fcQGraphicsItem_show(self.h)

proc isEnabled*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_isEnabled(self.h)

proc setEnabled*(self: QGraphicsItem, enabled: bool): void =

  fcQGraphicsItem_setEnabled(self.h, enabled)

proc isSelected*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_isSelected(self.h)

proc setSelected*(self: QGraphicsItem, selected: bool): void =

  fcQGraphicsItem_setSelected(self.h, selected)

proc acceptDrops*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_acceptDrops(self.h)

proc setAcceptDrops*(self: QGraphicsItem, on: bool): void =

  fcQGraphicsItem_setAcceptDrops(self.h, on)

proc opacity*(self: QGraphicsItem, ): float64 =

  fcQGraphicsItem_opacity(self.h)

proc effectiveOpacity*(self: QGraphicsItem, ): float64 =

  fcQGraphicsItem_effectiveOpacity(self.h)

proc setOpacity*(self: QGraphicsItem, opacity: float64): void =

  fcQGraphicsItem_setOpacity(self.h, opacity)

proc graphicsEffect*(self: QGraphicsItem, ): gen_qgraphicseffect.QGraphicsEffect =

  gen_qgraphicseffect.QGraphicsEffect(h: fcQGraphicsItem_graphicsEffect(self.h))

proc setGraphicsEffect*(self: QGraphicsItem, effect: gen_qgraphicseffect.QGraphicsEffect): void =

  fcQGraphicsItem_setGraphicsEffect(self.h, effect.h)

proc acceptedMouseButtons*(self: QGraphicsItem, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQGraphicsItem_acceptedMouseButtons(self.h))

proc setAcceptedMouseButtons*(self: QGraphicsItem, buttons: gen_qnamespace.MouseButton): void =

  fcQGraphicsItem_setAcceptedMouseButtons(self.h, cint(buttons))

proc acceptHoverEvents*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_acceptHoverEvents(self.h)

proc setAcceptHoverEvents*(self: QGraphicsItem, enabled: bool): void =

  fcQGraphicsItem_setAcceptHoverEvents(self.h, enabled)

proc acceptTouchEvents*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_acceptTouchEvents(self.h)

proc setAcceptTouchEvents*(self: QGraphicsItem, enabled: bool): void =

  fcQGraphicsItem_setAcceptTouchEvents(self.h, enabled)

proc filtersChildEvents*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_filtersChildEvents(self.h)

proc setFiltersChildEvents*(self: QGraphicsItem, enabled: bool): void =

  fcQGraphicsItem_setFiltersChildEvents(self.h, enabled)

proc handlesChildEvents*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_handlesChildEvents(self.h)

proc setHandlesChildEvents*(self: QGraphicsItem, enabled: bool): void =

  fcQGraphicsItem_setHandlesChildEvents(self.h, enabled)

proc isActive*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_isActive(self.h)

proc setActive*(self: QGraphicsItem, active: bool): void =

  fcQGraphicsItem_setActive(self.h, active)

proc hasFocus*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_hasFocus(self.h)

proc setFocus*(self: QGraphicsItem, ): void =

  fcQGraphicsItem_setFocus(self.h)

proc clearFocus*(self: QGraphicsItem, ): void =

  fcQGraphicsItem_clearFocus(self.h)

proc focusProxy*(self: QGraphicsItem, ): QGraphicsItem =

  QGraphicsItem(h: fcQGraphicsItem_focusProxy(self.h))

proc setFocusProxy*(self: QGraphicsItem, item: QGraphicsItem): void =

  fcQGraphicsItem_setFocusProxy(self.h, item.h)

proc focusItem*(self: QGraphicsItem, ): QGraphicsItem =

  QGraphicsItem(h: fcQGraphicsItem_focusItem(self.h))

proc focusScopeItem*(self: QGraphicsItem, ): QGraphicsItem =

  QGraphicsItem(h: fcQGraphicsItem_focusScopeItem(self.h))

proc grabMouse*(self: QGraphicsItem, ): void =

  fcQGraphicsItem_grabMouse(self.h)

proc ungrabMouse*(self: QGraphicsItem, ): void =

  fcQGraphicsItem_ungrabMouse(self.h)

proc grabKeyboard*(self: QGraphicsItem, ): void =

  fcQGraphicsItem_grabKeyboard(self.h)

proc ungrabKeyboard*(self: QGraphicsItem, ): void =

  fcQGraphicsItem_ungrabKeyboard(self.h)

proc pos*(self: QGraphicsItem, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_pos(self.h))

proc x*(self: QGraphicsItem, ): float64 =

  fcQGraphicsItem_x(self.h)

proc setX*(self: QGraphicsItem, x: float64): void =

  fcQGraphicsItem_setX(self.h, x)

proc y*(self: QGraphicsItem, ): float64 =

  fcQGraphicsItem_y(self.h)

proc setY*(self: QGraphicsItem, y: float64): void =

  fcQGraphicsItem_setY(self.h, y)

proc scenePos*(self: QGraphicsItem, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_scenePos(self.h))

proc setPos*(self: QGraphicsItem, pos: gen_qpoint.QPointF): void =

  fcQGraphicsItem_setPos(self.h, pos.h)

proc setPos2*(self: QGraphicsItem, x: float64, y: float64): void =

  fcQGraphicsItem_setPos2(self.h, x, y)

proc moveBy*(self: QGraphicsItem, dx: float64, dy: float64): void =

  fcQGraphicsItem_moveBy(self.h, dx, dy)

proc ensureVisible*(self: QGraphicsItem, ): void =

  fcQGraphicsItem_ensureVisible(self.h)

proc ensureVisible2*(self: QGraphicsItem, x: float64, y: float64, w: float64, h: float64): void =

  fcQGraphicsItem_ensureVisible2(self.h, x, y, w, h)

proc matrix*(self: QGraphicsItem, ): gen_qmatrix.QMatrix =

  gen_qmatrix.QMatrix(h: fcQGraphicsItem_matrix(self.h))

proc sceneMatrix*(self: QGraphicsItem, ): gen_qmatrix.QMatrix =

  gen_qmatrix.QMatrix(h: fcQGraphicsItem_sceneMatrix(self.h))

proc setMatrix*(self: QGraphicsItem, matrix: gen_qmatrix.QMatrix): void =

  fcQGraphicsItem_setMatrix(self.h, matrix.h)

proc resetMatrix*(self: QGraphicsItem, ): void =

  fcQGraphicsItem_resetMatrix(self.h)

proc transform*(self: QGraphicsItem, ): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQGraphicsItem_transform(self.h))

proc sceneTransform*(self: QGraphicsItem, ): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQGraphicsItem_sceneTransform(self.h))

proc deviceTransform*(self: QGraphicsItem, viewportTransform: gen_qtransform.QTransform): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQGraphicsItem_deviceTransform(self.h, viewportTransform.h))

proc itemTransform*(self: QGraphicsItem, other: QGraphicsItem): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQGraphicsItem_itemTransform(self.h, other.h))

proc setTransform*(self: QGraphicsItem, matrix: gen_qtransform.QTransform): void =

  fcQGraphicsItem_setTransform(self.h, matrix.h)

proc resetTransform*(self: QGraphicsItem, ): void =

  fcQGraphicsItem_resetTransform(self.h)

proc setRotation*(self: QGraphicsItem, angle: float64): void =

  fcQGraphicsItem_setRotation(self.h, angle)

proc rotation*(self: QGraphicsItem, ): float64 =

  fcQGraphicsItem_rotation(self.h)

proc setScale*(self: QGraphicsItem, scale: float64): void =

  fcQGraphicsItem_setScale(self.h, scale)

proc scale*(self: QGraphicsItem, ): float64 =

  fcQGraphicsItem_scale(self.h)

proc transformations*(self: QGraphicsItem, ): seq[gen_qgraphicstransform.QGraphicsTransform] =

  var v_ma = fcQGraphicsItem_transformations(self.h)
  var vx_ret = newSeq[gen_qgraphicstransform.QGraphicsTransform](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicstransform.QGraphicsTransform(h: v_outCast[i])
  vx_ret

proc setTransformations*(self: QGraphicsItem, transformations: seq[gen_qgraphicstransform.QGraphicsTransform]): void =

  var transformations_CArray = newSeq[pointer](len(transformations))
  for i in 0..<len(transformations):
    transformations_CArray[i] = transformations[i].h

  fcQGraphicsItem_setTransformations(self.h, struct_miqt_array(len: csize_t(len(transformations)), data: if len(transformations) == 0: nil else: addr(transformations_CArray[0])))

proc transformOriginPoint*(self: QGraphicsItem, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_transformOriginPoint(self.h))

proc setTransformOriginPoint*(self: QGraphicsItem, origin: gen_qpoint.QPointF): void =

  fcQGraphicsItem_setTransformOriginPoint(self.h, origin.h)

proc setTransformOriginPoint2*(self: QGraphicsItem, ax: float64, ay: float64): void =

  fcQGraphicsItem_setTransformOriginPoint2(self.h, ax, ay)

proc advance*(self: QGraphicsItem, phase: cint): void =

  fcQGraphicsItem_advance(self.h, phase)

proc zValue*(self: QGraphicsItem, ): float64 =

  fcQGraphicsItem_zValue(self.h)

proc setZValue*(self: QGraphicsItem, z: float64): void =

  fcQGraphicsItem_setZValue(self.h, z)

proc stackBefore*(self: QGraphicsItem, sibling: QGraphicsItem): void =

  fcQGraphicsItem_stackBefore(self.h, sibling.h)

proc boundingRect*(self: QGraphicsItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_boundingRect(self.h))

proc childrenBoundingRect*(self: QGraphicsItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_childrenBoundingRect(self.h))

proc sceneBoundingRect*(self: QGraphicsItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_sceneBoundingRect(self.h))

proc shape*(self: QGraphicsItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsItem_shape(self.h))

proc isClipped*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_isClipped(self.h)

proc clipPath*(self: QGraphicsItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsItem_clipPath(self.h))

proc contains*(self: QGraphicsItem, point: gen_qpoint.QPointF): bool =

  fcQGraphicsItem_contains(self.h, point.h)

proc collidesWithItem*(self: QGraphicsItem, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =

  fcQGraphicsItem_collidesWithItem(self.h, other.h, cint(mode))

proc collidesWithPath*(self: QGraphicsItem, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =

  fcQGraphicsItem_collidesWithPath(self.h, path.h, cint(mode))

proc collidingItems*(self: QGraphicsItem, ): seq[QGraphicsItem] =

  var v_ma = fcQGraphicsItem_collidingItems(self.h)
  var vx_ret = newSeq[QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QGraphicsItem(h: v_outCast[i])
  vx_ret

proc isObscured*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_isObscured(self.h)

proc isObscured2*(self: QGraphicsItem, x: float64, y: float64, w: float64, h: float64): bool =

  fcQGraphicsItem_isObscured2(self.h, x, y, w, h)

proc isObscuredBy*(self: QGraphicsItem, item: QGraphicsItem): bool =

  fcQGraphicsItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: QGraphicsItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsItem_opaqueArea(self.h))

proc boundingRegion*(self: QGraphicsItem, itemToDeviceTransform: gen_qtransform.QTransform): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQGraphicsItem_boundingRegion(self.h, itemToDeviceTransform.h))

proc boundingRegionGranularity*(self: QGraphicsItem, ): float64 =

  fcQGraphicsItem_boundingRegionGranularity(self.h)

proc setBoundingRegionGranularity*(self: QGraphicsItem, granularity: float64): void =

  fcQGraphicsItem_setBoundingRegionGranularity(self.h, granularity)

proc paint*(self: QGraphicsItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsItem_paint(self.h, painter.h, option.h, widget.h)

proc update*(self: QGraphicsItem, ): void =

  fcQGraphicsItem_update(self.h)

proc update2*(self: QGraphicsItem, x: float64, y: float64, width: float64, height: float64): void =

  fcQGraphicsItem_update2(self.h, x, y, width, height)

proc scroll*(self: QGraphicsItem, dx: float64, dy: float64): void =

  fcQGraphicsItem_scroll(self.h, dx, dy)

proc mapToItem*(self: QGraphicsItem, item: QGraphicsItem, point: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_mapToItem(self.h, item.h, point.h))

proc mapToParent*(self: QGraphicsItem, point: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_mapToParent(self.h, point.h))

proc mapToScene*(self: QGraphicsItem, point: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_mapToScene(self.h, point.h))

proc mapRectToItem*(self: QGraphicsItem, item: QGraphicsItem, rect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_mapRectToItem(self.h, item.h, rect.h))

proc mapRectToParent*(self: QGraphicsItem, rect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_mapRectToParent(self.h, rect.h))

proc mapRectToScene*(self: QGraphicsItem, rect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_mapRectToScene(self.h, rect.h))

proc mapToItem4*(self: QGraphicsItem, item: QGraphicsItem, path: gen_qpainterpath.QPainterPath): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsItem_mapToItem4(self.h, item.h, path.h))

proc mapToParentWithPath*(self: QGraphicsItem, path: gen_qpainterpath.QPainterPath): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsItem_mapToParentWithPath(self.h, path.h))

proc mapToSceneWithPath*(self: QGraphicsItem, path: gen_qpainterpath.QPainterPath): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsItem_mapToSceneWithPath(self.h, path.h))

proc mapFromItem*(self: QGraphicsItem, item: QGraphicsItem, point: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_mapFromItem(self.h, item.h, point.h))

proc mapFromParent*(self: QGraphicsItem, point: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_mapFromParent(self.h, point.h))

proc mapFromScene*(self: QGraphicsItem, point: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_mapFromScene(self.h, point.h))

proc mapRectFromItem*(self: QGraphicsItem, item: QGraphicsItem, rect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_mapRectFromItem(self.h, item.h, rect.h))

proc mapRectFromParent*(self: QGraphicsItem, rect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_mapRectFromParent(self.h, rect.h))

proc mapRectFromScene*(self: QGraphicsItem, rect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_mapRectFromScene(self.h, rect.h))

proc mapFromItem4*(self: QGraphicsItem, item: QGraphicsItem, path: gen_qpainterpath.QPainterPath): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsItem_mapFromItem4(self.h, item.h, path.h))

proc mapFromParentWithPath*(self: QGraphicsItem, path: gen_qpainterpath.QPainterPath): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsItem_mapFromParentWithPath(self.h, path.h))

proc mapFromSceneWithPath*(self: QGraphicsItem, path: gen_qpainterpath.QPainterPath): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsItem_mapFromSceneWithPath(self.h, path.h))

proc mapToItem5*(self: QGraphicsItem, item: QGraphicsItem, x: float64, y: float64): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_mapToItem5(self.h, item.h, x, y))

proc mapToParent2*(self: QGraphicsItem, x: float64, y: float64): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_mapToParent2(self.h, x, y))

proc mapToScene2*(self: QGraphicsItem, x: float64, y: float64): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_mapToScene2(self.h, x, y))

proc mapRectToItem2*(self: QGraphicsItem, item: QGraphicsItem, x: float64, y: float64, w: float64, h: float64): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_mapRectToItem2(self.h, item.h, x, y, w, h))

proc mapRectToParent2*(self: QGraphicsItem, x: float64, y: float64, w: float64, h: float64): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_mapRectToParent2(self.h, x, y, w, h))

proc mapRectToScene2*(self: QGraphicsItem, x: float64, y: float64, w: float64, h: float64): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_mapRectToScene2(self.h, x, y, w, h))

proc mapFromItem5*(self: QGraphicsItem, item: QGraphicsItem, x: float64, y: float64): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_mapFromItem5(self.h, item.h, x, y))

proc mapFromParent2*(self: QGraphicsItem, x: float64, y: float64): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_mapFromParent2(self.h, x, y))

proc mapFromScene2*(self: QGraphicsItem, x: float64, y: float64): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItem_mapFromScene2(self.h, x, y))

proc mapRectFromItem2*(self: QGraphicsItem, item: QGraphicsItem, x: float64, y: float64, w: float64, h: float64): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_mapRectFromItem2(self.h, item.h, x, y, w, h))

proc mapRectFromParent2*(self: QGraphicsItem, x: float64, y: float64, w: float64, h: float64): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_mapRectFromParent2(self.h, x, y, w, h))

proc mapRectFromScene2*(self: QGraphicsItem, x: float64, y: float64, w: float64, h: float64): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItem_mapRectFromScene2(self.h, x, y, w, h))

proc isAncestorOf*(self: QGraphicsItem, child: QGraphicsItem): bool =

  fcQGraphicsItem_isAncestorOf(self.h, child.h)

proc commonAncestorItem*(self: QGraphicsItem, other: QGraphicsItem): QGraphicsItem =

  QGraphicsItem(h: fcQGraphicsItem_commonAncestorItem(self.h, other.h))

proc isUnderMouse*(self: QGraphicsItem, ): bool =

  fcQGraphicsItem_isUnderMouse(self.h)

proc data*(self: QGraphicsItem, key: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQGraphicsItem_data(self.h, key))

proc setData*(self: QGraphicsItem, key: cint, value: gen_qvariant.QVariant): void =

  fcQGraphicsItem_setData(self.h, key, value.h)

proc inputMethodHints*(self: QGraphicsItem, ): gen_qnamespace.InputMethodHint =

  gen_qnamespace.InputMethodHint(fcQGraphicsItem_inputMethodHints(self.h))

proc setInputMethodHints*(self: QGraphicsItem, hints: gen_qnamespace.InputMethodHint): void =

  fcQGraphicsItem_setInputMethodHints(self.h, cint(hints))

proc typeX*(self: QGraphicsItem, ): cint =

  fcQGraphicsItem_typeX(self.h)

proc installSceneEventFilter*(self: QGraphicsItem, filterItem: QGraphicsItem): void =

  fcQGraphicsItem_installSceneEventFilter(self.h, filterItem.h)

proc removeSceneEventFilter*(self: QGraphicsItem, filterItem: QGraphicsItem): void =

  fcQGraphicsItem_removeSceneEventFilter(self.h, filterItem.h)

proc setFlag2*(self: QGraphicsItem, flag: QGraphicsItemGraphicsItemFlag, enabled: bool): void =

  fcQGraphicsItem_setFlag2(self.h, cint(flag), enabled)

proc setCacheMode2*(self: QGraphicsItem, mode: QGraphicsItemCacheMode, cacheSize: gen_qsize.QSize): void =

  fcQGraphicsItem_setCacheMode2(self.h, cint(mode), cacheSize.h)

proc setFocus1*(self: QGraphicsItem, focusReason: gen_qnamespace.FocusReason): void =

  fcQGraphicsItem_setFocus1(self.h, cint(focusReason))

proc ensureVisible1*(self: QGraphicsItem, rect: gen_qrect.QRectF): void =

  fcQGraphicsItem_ensureVisible1(self.h, rect.h)

proc ensureVisible22*(self: QGraphicsItem, rect: gen_qrect.QRectF, xmargin: cint): void =

  fcQGraphicsItem_ensureVisible22(self.h, rect.h, xmargin)

proc ensureVisible3*(self: QGraphicsItem, rect: gen_qrect.QRectF, xmargin: cint, ymargin: cint): void =

  fcQGraphicsItem_ensureVisible3(self.h, rect.h, xmargin, ymargin)

proc ensureVisible5*(self: QGraphicsItem, x: float64, y: float64, w: float64, h: float64, xmargin: cint): void =

  fcQGraphicsItem_ensureVisible5(self.h, x, y, w, h, xmargin)

proc ensureVisible6*(self: QGraphicsItem, x: float64, y: float64, w: float64, h: float64, xmargin: cint, ymargin: cint): void =

  fcQGraphicsItem_ensureVisible6(self.h, x, y, w, h, xmargin, ymargin)

proc setMatrix2*(self: QGraphicsItem, matrix: gen_qmatrix.QMatrix, combine: bool): void =

  fcQGraphicsItem_setMatrix2(self.h, matrix.h, combine)

proc itemTransform2*(self: QGraphicsItem, other: QGraphicsItem, ok: ptr bool): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQGraphicsItem_itemTransform2(self.h, other.h, ok))

proc setTransform2*(self: QGraphicsItem, matrix: gen_qtransform.QTransform, combine: bool): void =

  fcQGraphicsItem_setTransform2(self.h, matrix.h, combine)

proc collidingItems1*(self: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): seq[QGraphicsItem] =

  var v_ma = fcQGraphicsItem_collidingItems1(self.h, cint(mode))
  var vx_ret = newSeq[QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QGraphicsItem(h: v_outCast[i])
  vx_ret

proc isObscured1*(self: QGraphicsItem, rect: gen_qrect.QRectF): bool =

  fcQGraphicsItem_isObscured1(self.h, rect.h)

proc update1*(self: QGraphicsItem, rect: gen_qrect.QRectF): void =

  fcQGraphicsItem_update1(self.h, rect.h)

proc scroll3*(self: QGraphicsItem, dx: float64, dy: float64, rect: gen_qrect.QRectF): void =

  fcQGraphicsItem_scroll3(self.h, dx, dy, rect.h)

proc callVirtualBase_advance(self: QGraphicsItem, phase: cint): void =


  fQGraphicsItem_virtualbase_advance(self.h, phase)

type QGraphicsItemadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsItem, slot: proc(super: QGraphicsItemadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_advance(self: ptr cQGraphicsItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsItem_advance ".} =
  type Cb = proc(super: QGraphicsItemadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsItem(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
type QGraphicsItemboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsItem, slot: proc(): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_boundingRect(self: ptr cQGraphicsItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsItem_boundingRect ".} =
  type Cb = proc(): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc callVirtualBase_shape(self: QGraphicsItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsItem_virtualbase_shape(self.h))

type QGraphicsItemshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsItem, slot: proc(super: QGraphicsItemshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_shape(self: ptr cQGraphicsItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsItem_shape ".} =
  type Cb = proc(super: QGraphicsItemshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QGraphicsItem, point: gen_qpoint.QPointF): bool =


  fQGraphicsItem_virtualbase_contains(self.h, point.h)

type QGraphicsItemcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsItem, slot: proc(super: QGraphicsItemcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_contains(self: ptr cQGraphicsItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItem_contains ".} =
  type Cb = proc(super: QGraphicsItemcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsItem(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_collidesWithItem(self: QGraphicsItem, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsItemcollidesWithItemBase* = proc(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsItem, slot: proc(super: QGraphicsItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_collidesWithItem(self: ptr cQGraphicsItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsItem_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsItem(h: self), other, mode)
  let slotval1 = QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsItem, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsItemcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsItem, slot: proc(super: QGraphicsItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_collidesWithPath(self: ptr cQGraphicsItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsItem_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsItem(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_isObscuredBy(self: QGraphicsItem, item: QGraphicsItem): bool =


  fQGraphicsItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsItemisObscuredByBase* = proc(item: QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsItem, slot: proc(super: QGraphicsItemisObscuredByBase, item: QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemisObscuredByBase, item: QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_isObscuredBy(self: ptr cQGraphicsItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItem_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsItemisObscuredByBase, item: QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsItem(h: self), item)
  let slotval1 = QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsItem_virtualbase_opaqueArea(self.h))

type QGraphicsItemopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsItem, slot: proc(super: QGraphicsItemopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_opaqueArea(self: ptr cQGraphicsItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsItem_opaqueArea ".} =
  type Cb = proc(super: QGraphicsItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
type QGraphicsItempaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsItem, slot: proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_paint(self: ptr cQGraphicsItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_paint ".} =
  type Cb = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc callVirtualBase_typeX(self: QGraphicsItem, ): cint =


  fQGraphicsItem_virtualbase_type(self.h)

type QGraphicsItemtypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsItem, slot: proc(super: QGraphicsItemtypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemtypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_type(self: ptr cQGraphicsItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsItem_type ".} =
  type Cb = proc(super: QGraphicsItemtypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_sceneEventFilter(self: QGraphicsItem, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsItemsceneEventFilterBase* = proc(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsItem, slot: proc(super: QGraphicsItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_sceneEventFilter(self: ptr cQGraphicsItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItem_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsItem(h: self), watched, event)
  let slotval1 = QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsItemsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_sceneEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItem_sceneEvent ".} =
  type Cb = proc(super: QGraphicsItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsItem, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsItemcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_contextMenuEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsItemdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_dragEnterEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsItemdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_dragLeaveEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsItemdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_dragMoveEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsItemdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_dropEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_dropEvent ".} =
  type Cb = proc(super: QGraphicsItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsItemfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_focusInEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_focusInEvent ".} =
  type Cb = proc(super: QGraphicsItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsItemfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_focusOutEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsItemhoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_hoverEnterEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsItemhoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_hoverMoveEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsItemhoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_hoverLeaveEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsItemkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_keyPressEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsItemkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_keyReleaseEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsItemmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_mousePressEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsItemmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_mouseMoveEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsItemmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_mouseReleaseEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsItemmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_mouseDoubleClickEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsItem, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsItemwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_wheelEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_wheelEvent ".} =
  type Cb = proc(super: QGraphicsItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsItem, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsIteminputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsItem, slot: proc(super: QGraphicsIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_inputMethodEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsItem(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGraphicsItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsIteminputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsItem, slot: proc(super: QGraphicsIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_inputMethodQuery(self: ptr cQGraphicsItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsItem_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsItem(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_itemChange(self: QGraphicsItem, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsItemitemChangeBase* = proc(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsItem, slot: proc(super: QGraphicsItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_itemChange(self: ptr cQGraphicsItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsItem_itemChange ".} =
  type Cb = proc(super: QGraphicsItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsItem(h: self), change, value)
  let slotval1 = QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_supportsExtension(self: QGraphicsItem, extension: QGraphicsItemExtension): bool =


  fQGraphicsItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsItemsupportsExtensionBase* = proc(extension: QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsItem, slot: proc(super: QGraphicsItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_supportsExtension(self: ptr cQGraphicsItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsItem_supportsExtension ".} =
  type Cb = proc(super: QGraphicsItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsItem(h: self), extension)
  let slotval1 = QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsItem, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsItemsetExtensionBase* = proc(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsItem, slot: proc(super: QGraphicsItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_setExtension(self: ptr cQGraphicsItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_setExtension ".} =
  type Cb = proc(super: QGraphicsItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsItem(h: self), extension, variant)
  let slotval1 = QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsItem, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsItem_virtualbase_extension(self.h, variant.h))

type QGraphicsItemextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsItem, slot: proc(super: QGraphicsItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_extension(self: ptr cQGraphicsItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsItem_extension ".} =
  type Cb = proc(super: QGraphicsItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsItem(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc delete*(self: QGraphicsItem) =
  fcQGraphicsItem_delete(self.h)

func init*(T: type QGraphicsObject, h: ptr cQGraphicsObject): QGraphicsObject =
  T(h: h)
proc create*(T: type QGraphicsObject, ): QGraphicsObject =

  QGraphicsObject.init(fcQGraphicsObject_new())
proc create*(T: type QGraphicsObject, parent: QGraphicsItem): QGraphicsObject =

  QGraphicsObject.init(fcQGraphicsObject_new2(parent.h))
proc metaObject*(self: QGraphicsObject, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsObject_metaObject(self.h))

proc metacast*(self: QGraphicsObject, param1: cstring): pointer =

  fcQGraphicsObject_metacast(self.h, param1)

proc metacall*(self: QGraphicsObject, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsObject_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsObject, s: cstring): string =

  let v_ms = fcQGraphicsObject_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsObject, s: cstring): string =

  let v_ms = fcQGraphicsObject_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc grabGesture*(self: QGraphicsObject, typeVal: gen_qnamespace.GestureType): void =

  fcQGraphicsObject_grabGesture(self.h, cint(typeVal))

proc ungrabGesture*(self: QGraphicsObject, typeVal: gen_qnamespace.GestureType): void =

  fcQGraphicsObject_ungrabGesture(self.h, cint(typeVal))

proc parentChanged*(self: QGraphicsObject, ): void =

  fcQGraphicsObject_parentChanged(self.h)

proc miqt_exec_callback_QGraphicsObject_parentChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onparentChanged*(self: QGraphicsObject, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsObject_connect_parentChanged(self.h, cast[int](addr tmp[]))
proc opacityChanged*(self: QGraphicsObject, ): void =

  fcQGraphicsObject_opacityChanged(self.h)

proc miqt_exec_callback_QGraphicsObject_opacityChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onopacityChanged*(self: QGraphicsObject, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsObject_connect_opacityChanged(self.h, cast[int](addr tmp[]))
proc visibleChanged*(self: QGraphicsObject, ): void =

  fcQGraphicsObject_visibleChanged(self.h)

proc miqt_exec_callback_QGraphicsObject_visibleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvisibleChanged*(self: QGraphicsObject, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsObject_connect_visibleChanged(self.h, cast[int](addr tmp[]))
proc enabledChanged*(self: QGraphicsObject, ): void =

  fcQGraphicsObject_enabledChanged(self.h)

proc miqt_exec_callback_QGraphicsObject_enabledChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onenabledChanged*(self: QGraphicsObject, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsObject_connect_enabledChanged(self.h, cast[int](addr tmp[]))
proc xChanged*(self: QGraphicsObject, ): void =

  fcQGraphicsObject_xChanged(self.h)

proc miqt_exec_callback_QGraphicsObject_xChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onxChanged*(self: QGraphicsObject, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsObject_connect_xChanged(self.h, cast[int](addr tmp[]))
proc yChanged*(self: QGraphicsObject, ): void =

  fcQGraphicsObject_yChanged(self.h)

proc miqt_exec_callback_QGraphicsObject_yChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onyChanged*(self: QGraphicsObject, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsObject_connect_yChanged(self.h, cast[int](addr tmp[]))
proc zChanged*(self: QGraphicsObject, ): void =

  fcQGraphicsObject_zChanged(self.h)

proc miqt_exec_callback_QGraphicsObject_zChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onzChanged*(self: QGraphicsObject, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsObject_connect_zChanged(self.h, cast[int](addr tmp[]))
proc rotationChanged*(self: QGraphicsObject, ): void =

  fcQGraphicsObject_rotationChanged(self.h)

proc miqt_exec_callback_QGraphicsObject_rotationChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onrotationChanged*(self: QGraphicsObject, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsObject_connect_rotationChanged(self.h, cast[int](addr tmp[]))
proc scaleChanged*(self: QGraphicsObject, ): void =

  fcQGraphicsObject_scaleChanged(self.h)

proc miqt_exec_callback_QGraphicsObject_scaleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onscaleChanged*(self: QGraphicsObject, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsObject_connect_scaleChanged(self.h, cast[int](addr tmp[]))
proc childrenChanged*(self: QGraphicsObject, ): void =

  fcQGraphicsObject_childrenChanged(self.h)

proc miqt_exec_callback_QGraphicsObject_childrenChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onchildrenChanged*(self: QGraphicsObject, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsObject_connect_childrenChanged(self.h, cast[int](addr tmp[]))
proc widthChanged*(self: QGraphicsObject, ): void =

  fcQGraphicsObject_widthChanged(self.h)

proc miqt_exec_callback_QGraphicsObject_widthChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onwidthChanged*(self: QGraphicsObject, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsObject_connect_widthChanged(self.h, cast[int](addr tmp[]))
proc heightChanged*(self: QGraphicsObject, ): void =

  fcQGraphicsObject_heightChanged(self.h)

proc miqt_exec_callback_QGraphicsObject_heightChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onheightChanged*(self: QGraphicsObject, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsObject_connect_heightChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGraphicsObject, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsObject_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsObject, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsObject_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsObject, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsObject_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsObject, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsObject_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc grabGesture2*(self: QGraphicsObject, typeVal: gen_qnamespace.GestureType, flags: gen_qnamespace.GestureFlag): void =

  fcQGraphicsObject_grabGesture2(self.h, cint(typeVal), cint(flags))

proc callVirtualBase_metacall(self: QGraphicsObject, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsObject_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsObjectmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_metacall(self: ptr cQGraphicsObject, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsObject_metacall ".} =
  type Cb = proc(super: QGraphicsObjectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsObject(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QGraphicsObject, ev: gen_qcoreevent.QEvent): bool =


  fQGraphicsObject_virtualbase_event(self.h, ev.h)

type QGraphicsObjecteventBase* = proc(ev: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjecteventBase, ev: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjecteventBase, ev: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_event(self: ptr cQGraphicsObject, slot: int, ev: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsObject_event ".} =
  type Cb = proc(super: QGraphicsObjecteventBase, ev: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsObject(h: self), ev)
  let slotval1 = gen_qcoreevent.QEvent(h: ev)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsObject, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsObject_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsObjecteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsObject, slot: proc(super: QGraphicsObjecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_eventFilter(self: ptr cQGraphicsObject, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsObject_eventFilter ".} =
  type Cb = proc(super: QGraphicsObjecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsObject(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsObject, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsObject_virtualbase_timerEvent(self.h, event.h)

type QGraphicsObjecttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_timerEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_timerEvent ".} =
  type Cb = proc(super: QGraphicsObjecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsObject, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsObject_virtualbase_childEvent(self.h, event.h)

type QGraphicsObjectchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_childEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_childEvent ".} =
  type Cb = proc(super: QGraphicsObjectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsObject, event: gen_qcoreevent.QEvent): void =


  fQGraphicsObject_virtualbase_customEvent(self.h, event.h)

type QGraphicsObjectcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_customEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_customEvent ".} =
  type Cb = proc(super: QGraphicsObjectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsObject, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsObject_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsObjectconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_connectNotify(self: ptr cQGraphicsObject, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_connectNotify ".} =
  type Cb = proc(super: QGraphicsObjectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsObject(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsObject, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsObject_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsObjectdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_disconnectNotify(self: ptr cQGraphicsObject, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsObjectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsObject(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_advance(self: QGraphicsObject, phase: cint): void =


  fQGraphicsObject_virtualbase_advance(self.h, phase)

type QGraphicsObjectadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_advance(self: ptr cQGraphicsObject, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsObject_advance ".} =
  type Cb = proc(super: QGraphicsObjectadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsObject(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
type QGraphicsObjectboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsObject, slot: proc(): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_boundingRect(self: ptr cQGraphicsObject, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsObject_boundingRect ".} =
  type Cb = proc(): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc callVirtualBase_shape(self: QGraphicsObject, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsObject_virtualbase_shape(self.h))

type QGraphicsObjectshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_shape(self: ptr cQGraphicsObject, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsObject_shape ".} =
  type Cb = proc(super: QGraphicsObjectshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsObject(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QGraphicsObject, point: gen_qpoint.QPointF): bool =


  fQGraphicsObject_virtualbase_contains(self.h, point.h)

type QGraphicsObjectcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_contains(self: ptr cQGraphicsObject, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsObject_contains ".} =
  type Cb = proc(super: QGraphicsObjectcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsObject(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_collidesWithItem(self: QGraphicsObject, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsObject_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsObjectcollidesWithItemBase* = proc(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_collidesWithItem(self: ptr cQGraphicsObject, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsObject_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsObjectcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsObject(h: self), other, mode)
  let slotval1 = QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsObject, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsObject_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsObjectcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_collidesWithPath(self: ptr cQGraphicsObject, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsObject_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsObjectcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsObject(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_isObscuredBy(self: QGraphicsObject, item: QGraphicsItem): bool =


  fQGraphicsObject_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsObjectisObscuredByBase* = proc(item: QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectisObscuredByBase, item: QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectisObscuredByBase, item: QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_isObscuredBy(self: ptr cQGraphicsObject, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsObject_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsObjectisObscuredByBase, item: QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsObject(h: self), item)
  let slotval1 = QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsObject, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsObject_virtualbase_opaqueArea(self.h))

type QGraphicsObjectopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_opaqueArea(self: ptr cQGraphicsObject, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsObject_opaqueArea ".} =
  type Cb = proc(super: QGraphicsObjectopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsObject(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
type QGraphicsObjectpaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsObject, slot: proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_paint(self: ptr cQGraphicsObject, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_paint ".} =
  type Cb = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc callVirtualBase_typeX(self: QGraphicsObject, ): cint =


  fQGraphicsObject_virtualbase_type(self.h)

type QGraphicsObjecttypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsObject, slot: proc(super: QGraphicsObjecttypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjecttypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_type(self: ptr cQGraphicsObject, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsObject_type ".} =
  type Cb = proc(super: QGraphicsObjecttypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsObject(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_sceneEventFilter(self: QGraphicsObject, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsObject_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsObjectsceneEventFilterBase* = proc(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_sceneEventFilter(self: ptr cQGraphicsObject, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsObject_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsObjectsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsObject(h: self), watched, event)
  let slotval1 = QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QGraphicsObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsObject_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsObjectsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_sceneEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsObject_sceneEvent ".} =
  type Cb = proc(super: QGraphicsObjectsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsObject, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsObject_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsObjectcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_contextMenuEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsObjectcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsObject, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsObject_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsObjectdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_dragEnterEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsObjectdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsObject, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsObject_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsObjectdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_dragLeaveEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsObjectdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsObject, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsObject_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsObjectdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_dragMoveEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsObjectdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsObject, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsObject_virtualbase_dropEvent(self.h, event.h)

type QGraphicsObjectdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_dropEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_dropEvent ".} =
  type Cb = proc(super: QGraphicsObjectdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsObject, event: gen_qevent.QFocusEvent): void =


  fQGraphicsObject_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsObjectfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_focusInEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_focusInEvent ".} =
  type Cb = proc(super: QGraphicsObjectfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsObject, event: gen_qevent.QFocusEvent): void =


  fQGraphicsObject_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsObjectfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_focusOutEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsObjectfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsObject, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsObject_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsObjecthoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjecthoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjecthoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_hoverEnterEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsObjecthoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsObject, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsObject_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsObjecthoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjecthoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjecthoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_hoverMoveEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsObjecthoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsObject, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsObject_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsObjecthoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjecthoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjecthoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_hoverLeaveEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsObjecthoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsObject, event: gen_qevent.QKeyEvent): void =


  fQGraphicsObject_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsObjectkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_keyPressEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsObjectkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsObject, event: gen_qevent.QKeyEvent): void =


  fQGraphicsObject_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsObjectkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_keyReleaseEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsObjectkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsObject, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsObject_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsObjectmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_mousePressEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsObjectmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsObject, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsObject_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsObjectmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_mouseMoveEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsObjectmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsObject, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsObject_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsObjectmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_mouseReleaseEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsObjectmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsObject, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsObject_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsObjectmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_mouseDoubleClickEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsObjectmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsObject, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsObject_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsObjectwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_wheelEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_wheelEvent ".} =
  type Cb = proc(super: QGraphicsObjectwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsObject, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsObject_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsObjectinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_inputMethodEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsObjectinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsObject(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGraphicsObject, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsObject_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsObjectinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_inputMethodQuery(self: ptr cQGraphicsObject, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsObject_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsObjectinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsObject(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_itemChange(self: QGraphicsObject, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsObject_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsObjectitemChangeBase* = proc(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_itemChange(self: ptr cQGraphicsObject, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsObject_itemChange ".} =
  type Cb = proc(super: QGraphicsObjectitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsObject(h: self), change, value)
  let slotval1 = QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_supportsExtension(self: QGraphicsObject, extension: QGraphicsItemExtension): bool =


  fQGraphicsObject_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsObjectsupportsExtensionBase* = proc(extension: QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectsupportsExtensionBase, extension: QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_supportsExtension(self: ptr cQGraphicsObject, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsObject_supportsExtension ".} =
  type Cb = proc(super: QGraphicsObjectsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsObject(h: self), extension)
  let slotval1 = QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsObject, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsObject_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsObjectsetExtensionBase* = proc(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_setExtension(self: ptr cQGraphicsObject, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_setExtension ".} =
  type Cb = proc(super: QGraphicsObjectsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsObject(h: self), extension, variant)
  let slotval1 = QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsObject, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsObject_virtualbase_extension(self.h, variant.h))

type QGraphicsObjectextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsObject, slot: proc(super: QGraphicsObjectextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsObjectextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_extension(self: ptr cQGraphicsObject, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsObject_extension ".} =
  type Cb = proc(super: QGraphicsObjectextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsObject(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc staticMetaObject*(_: type QGraphicsObject): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsObject_staticMetaObject())
proc delete*(self: QGraphicsObject) =
  fcQGraphicsObject_delete(self.h)

func init*(T: type QAbstractGraphicsShapeItem, h: ptr cQAbstractGraphicsShapeItem): QAbstractGraphicsShapeItem =
  T(h: h)
proc create*(T: type QAbstractGraphicsShapeItem, ): QAbstractGraphicsShapeItem =

  QAbstractGraphicsShapeItem.init(fcQAbstractGraphicsShapeItem_new())
proc create*(T: type QAbstractGraphicsShapeItem, parent: QGraphicsItem): QAbstractGraphicsShapeItem =

  QAbstractGraphicsShapeItem.init(fcQAbstractGraphicsShapeItem_new2(parent.h))
proc pen*(self: QAbstractGraphicsShapeItem, ): gen_qpen.QPen =

  gen_qpen.QPen(h: fcQAbstractGraphicsShapeItem_pen(self.h))

proc setPen*(self: QAbstractGraphicsShapeItem, pen: gen_qpen.QPen): void =

  fcQAbstractGraphicsShapeItem_setPen(self.h, pen.h)

proc brush*(self: QAbstractGraphicsShapeItem, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQAbstractGraphicsShapeItem_brush(self.h))

proc setBrush*(self: QAbstractGraphicsShapeItem, brush: gen_qbrush.QBrush): void =

  fcQAbstractGraphicsShapeItem_setBrush(self.h, brush.h)

proc isObscuredBy*(self: QAbstractGraphicsShapeItem, item: QGraphicsItem): bool =

  fcQAbstractGraphicsShapeItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: QAbstractGraphicsShapeItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQAbstractGraphicsShapeItem_opaqueArea(self.h))

proc callVirtualBase_isObscuredBy(self: QAbstractGraphicsShapeItem, item: QGraphicsItem): bool =


  fQAbstractGraphicsShapeItem_virtualbase_isObscuredBy(self.h, item.h)

type QAbstractGraphicsShapeItemisObscuredByBase* = proc(item: QGraphicsItem): bool
proc onisObscuredBy*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemisObscuredByBase, item: QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemisObscuredByBase, item: QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_isObscuredBy(self: ptr cQAbstractGraphicsShapeItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_isObscuredBy ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemisObscuredByBase, item: QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QAbstractGraphicsShapeItem(h: self), item)
  let slotval1 = QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QAbstractGraphicsShapeItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQAbstractGraphicsShapeItem_virtualbase_opaqueArea(self.h))

type QAbstractGraphicsShapeItemopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_opaqueArea(self: ptr cQAbstractGraphicsShapeItem, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_opaqueArea ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QAbstractGraphicsShapeItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_advance(self: QAbstractGraphicsShapeItem, phase: cint): void =


  fQAbstractGraphicsShapeItem_virtualbase_advance(self.h, phase)

type QAbstractGraphicsShapeItemadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_advance(self: ptr cQAbstractGraphicsShapeItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_advance ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QAbstractGraphicsShapeItem(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
type QAbstractGraphicsShapeItemboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QAbstractGraphicsShapeItem, slot: proc(): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_boundingRect(self: ptr cQAbstractGraphicsShapeItem, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_boundingRect ".} =
  type Cb = proc(): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc callVirtualBase_shape(self: QAbstractGraphicsShapeItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQAbstractGraphicsShapeItem_virtualbase_shape(self.h))

type QAbstractGraphicsShapeItemshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_shape(self: ptr cQAbstractGraphicsShapeItem, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_shape ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QAbstractGraphicsShapeItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QAbstractGraphicsShapeItem, point: gen_qpoint.QPointF): bool =


  fQAbstractGraphicsShapeItem_virtualbase_contains(self.h, point.h)

type QAbstractGraphicsShapeItemcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_contains(self: ptr cQAbstractGraphicsShapeItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_contains ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QAbstractGraphicsShapeItem(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_collidesWithItem(self: QAbstractGraphicsShapeItem, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQAbstractGraphicsShapeItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QAbstractGraphicsShapeItemcollidesWithItemBase* = proc(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_collidesWithItem(self: ptr cQAbstractGraphicsShapeItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_collidesWithItem ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QAbstractGraphicsShapeItem(h: self), other, mode)
  let slotval1 = QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QAbstractGraphicsShapeItem, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQAbstractGraphicsShapeItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QAbstractGraphicsShapeItemcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_collidesWithPath(self: ptr cQAbstractGraphicsShapeItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_collidesWithPath ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QAbstractGraphicsShapeItem(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
type QAbstractGraphicsShapeItempaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QAbstractGraphicsShapeItem, slot: proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_paint(self: ptr cQAbstractGraphicsShapeItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_paint ".} =
  type Cb = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc callVirtualBase_typeX(self: QAbstractGraphicsShapeItem, ): cint =


  fQAbstractGraphicsShapeItem_virtualbase_type(self.h)

type QAbstractGraphicsShapeItemtypeXBase* = proc(): cint
proc ontypeX*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemtypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemtypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_type(self: ptr cQAbstractGraphicsShapeItem, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_type ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemtypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QAbstractGraphicsShapeItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_sceneEventFilter(self: QAbstractGraphicsShapeItem, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQAbstractGraphicsShapeItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QAbstractGraphicsShapeItemsceneEventFilterBase* = proc(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_sceneEventFilter(self: ptr cQAbstractGraphicsShapeItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_sceneEventFilter ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QAbstractGraphicsShapeItem(h: self), watched, event)
  let slotval1 = QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QAbstractGraphicsShapeItem, event: gen_qcoreevent.QEvent): bool =


  fQAbstractGraphicsShapeItem_virtualbase_sceneEvent(self.h, event.h)

type QAbstractGraphicsShapeItemsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_sceneEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_sceneEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_contextMenuEvent(self.h, event.h)

type QAbstractGraphicsShapeItemcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_contextMenuEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_contextMenuEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_dragEnterEvent(self.h, event.h)

type QAbstractGraphicsShapeItemdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_dragEnterEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_dragEnterEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QAbstractGraphicsShapeItemdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_dragLeaveEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_dragLeaveEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_dragMoveEvent(self.h, event.h)

type QAbstractGraphicsShapeItemdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_dragMoveEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_dragMoveEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_dropEvent(self.h, event.h)

type QAbstractGraphicsShapeItemdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_dropEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_dropEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QAbstractGraphicsShapeItem, event: gen_qevent.QFocusEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_focusInEvent(self.h, event.h)

type QAbstractGraphicsShapeItemfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_focusInEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_focusInEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QAbstractGraphicsShapeItem, event: gen_qevent.QFocusEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_focusOutEvent(self.h, event.h)

type QAbstractGraphicsShapeItemfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_focusOutEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_focusOutEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QAbstractGraphicsShapeItemhoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_hoverEnterEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_hoverEnterEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QAbstractGraphicsShapeItemhoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_hoverMoveEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_hoverMoveEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QAbstractGraphicsShapeItemhoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_hoverLeaveEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_hoverLeaveEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QAbstractGraphicsShapeItem, event: gen_qevent.QKeyEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_keyPressEvent(self.h, event.h)

type QAbstractGraphicsShapeItemkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_keyPressEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_keyPressEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QAbstractGraphicsShapeItem, event: gen_qevent.QKeyEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QAbstractGraphicsShapeItemkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_keyReleaseEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_keyReleaseEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_mousePressEvent(self.h, event.h)

type QAbstractGraphicsShapeItemmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_mousePressEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_mousePressEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QAbstractGraphicsShapeItemmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_mouseMoveEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_mouseMoveEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QAbstractGraphicsShapeItemmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_mouseReleaseEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_mouseReleaseEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QAbstractGraphicsShapeItemmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_mouseDoubleClickEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_wheelEvent(self.h, event.h)

type QAbstractGraphicsShapeItemwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_wheelEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_wheelEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QAbstractGraphicsShapeItem, event: gen_qevent.QInputMethodEvent): void =


  fQAbstractGraphicsShapeItem_virtualbase_inputMethodEvent(self.h, event.h)

type QAbstractGraphicsShapeIteminputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_inputMethodEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_inputMethodEvent ".} =
  type Cb = proc(super: QAbstractGraphicsShapeIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QAbstractGraphicsShapeItem(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QAbstractGraphicsShapeItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractGraphicsShapeItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QAbstractGraphicsShapeIteminputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_inputMethodQuery(self: ptr cQAbstractGraphicsShapeItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_inputMethodQuery ".} =
  type Cb = proc(super: QAbstractGraphicsShapeIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QAbstractGraphicsShapeItem(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_itemChange(self: QAbstractGraphicsShapeItem, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractGraphicsShapeItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QAbstractGraphicsShapeItemitemChangeBase* = proc(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_itemChange(self: ptr cQAbstractGraphicsShapeItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_itemChange ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QAbstractGraphicsShapeItem(h: self), change, value)
  let slotval1 = QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_supportsExtension(self: QAbstractGraphicsShapeItem, extension: QGraphicsItemExtension): bool =


  fQAbstractGraphicsShapeItem_virtualbase_supportsExtension(self.h, cint(extension))

type QAbstractGraphicsShapeItemsupportsExtensionBase* = proc(extension: QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_supportsExtension(self: ptr cQAbstractGraphicsShapeItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_supportsExtension ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QAbstractGraphicsShapeItem(h: self), extension)
  let slotval1 = QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QAbstractGraphicsShapeItem, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQAbstractGraphicsShapeItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QAbstractGraphicsShapeItemsetExtensionBase* = proc(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_setExtension(self: ptr cQAbstractGraphicsShapeItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_setExtension ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QAbstractGraphicsShapeItem(h: self), extension, variant)
  let slotval1 = QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QAbstractGraphicsShapeItem, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractGraphicsShapeItem_virtualbase_extension(self.h, variant.h))

type QAbstractGraphicsShapeItemextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QAbstractGraphicsShapeItem, slot: proc(super: QAbstractGraphicsShapeItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractGraphicsShapeItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_extension(self: ptr cQAbstractGraphicsShapeItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_extension ".} =
  type Cb = proc(super: QAbstractGraphicsShapeItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QAbstractGraphicsShapeItem(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc delete*(self: QAbstractGraphicsShapeItem) =
  fcQAbstractGraphicsShapeItem_delete(self.h)

func init*(T: type QGraphicsPathItem, h: ptr cQGraphicsPathItem): QGraphicsPathItem =
  T(h: h)
proc create*(T: type QGraphicsPathItem, ): QGraphicsPathItem =

  QGraphicsPathItem.init(fcQGraphicsPathItem_new())
proc create*(T: type QGraphicsPathItem, path: gen_qpainterpath.QPainterPath): QGraphicsPathItem =

  QGraphicsPathItem.init(fcQGraphicsPathItem_new2(path.h))
proc create2*(T: type QGraphicsPathItem, parent: QGraphicsItem): QGraphicsPathItem =

  QGraphicsPathItem.init(fcQGraphicsPathItem_new3(parent.h))
proc create*(T: type QGraphicsPathItem, path: gen_qpainterpath.QPainterPath, parent: QGraphicsItem): QGraphicsPathItem =

  QGraphicsPathItem.init(fcQGraphicsPathItem_new4(path.h, parent.h))
proc path*(self: QGraphicsPathItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsPathItem_path(self.h))

proc setPath*(self: QGraphicsPathItem, path: gen_qpainterpath.QPainterPath): void =

  fcQGraphicsPathItem_setPath(self.h, path.h)

proc boundingRect*(self: QGraphicsPathItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsPathItem_boundingRect(self.h))

proc shape*(self: QGraphicsPathItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsPathItem_shape(self.h))

proc contains*(self: QGraphicsPathItem, point: gen_qpoint.QPointF): bool =

  fcQGraphicsPathItem_contains(self.h, point.h)

proc paint*(self: QGraphicsPathItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsPathItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: QGraphicsPathItem, item: QGraphicsItem): bool =

  fcQGraphicsPathItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: QGraphicsPathItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsPathItem_opaqueArea(self.h))

proc typeX*(self: QGraphicsPathItem, ): cint =

  fcQGraphicsPathItem_typeX(self.h)

proc callVirtualBase_boundingRect(self: QGraphicsPathItem, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsPathItem_virtualbase_boundingRect(self.h))

type QGraphicsPathItemboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_boundingRect(self: ptr cQGraphicsPathItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPathItem_boundingRect ".} =
  type Cb = proc(super: QGraphicsPathItemboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QGraphicsPathItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_shape(self: QGraphicsPathItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsPathItem_virtualbase_shape(self.h))

type QGraphicsPathItemshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_shape(self: ptr cQGraphicsPathItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPathItem_shape ".} =
  type Cb = proc(super: QGraphicsPathItemshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsPathItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QGraphicsPathItem, point: gen_qpoint.QPointF): bool =


  fQGraphicsPathItem_virtualbase_contains(self.h, point.h)

type QGraphicsPathItemcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_contains(self: ptr cQGraphicsPathItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPathItem_contains ".} =
  type Cb = proc(super: QGraphicsPathItemcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsPathItem(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paint(self: QGraphicsPathItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsPathItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsPathItempaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_paint(self: ptr cQGraphicsPathItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_paint ".} =
  type Cb = proc(super: QGraphicsPathItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paint(QGraphicsPathItem(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_isObscuredBy(self: QGraphicsPathItem, item: QGraphicsItem): bool =


  fQGraphicsPathItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsPathItemisObscuredByBase* = proc(item: QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemisObscuredByBase, item: QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemisObscuredByBase, item: QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_isObscuredBy(self: ptr cQGraphicsPathItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPathItem_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsPathItemisObscuredByBase, item: QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsPathItem(h: self), item)
  let slotval1 = QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsPathItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsPathItem_virtualbase_opaqueArea(self.h))

type QGraphicsPathItemopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_opaqueArea(self: ptr cQGraphicsPathItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPathItem_opaqueArea ".} =
  type Cb = proc(super: QGraphicsPathItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsPathItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_typeX(self: QGraphicsPathItem, ): cint =


  fQGraphicsPathItem_virtualbase_type(self.h)

type QGraphicsPathItemtypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemtypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemtypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_type(self: ptr cQGraphicsPathItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsPathItem_type ".} =
  type Cb = proc(super: QGraphicsPathItemtypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsPathItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_supportsExtension(self: QGraphicsPathItem, extension: QGraphicsItemExtension): bool =


  fQGraphicsPathItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsPathItemsupportsExtensionBase* = proc(extension: QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_supportsExtension(self: ptr cQGraphicsPathItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPathItem_supportsExtension ".} =
  type Cb = proc(super: QGraphicsPathItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsPathItem(h: self), extension)
  let slotval1 = QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsPathItem, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsPathItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsPathItemsetExtensionBase* = proc(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_setExtension(self: ptr cQGraphicsPathItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_setExtension ".} =
  type Cb = proc(super: QGraphicsPathItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsPathItem(h: self), extension, variant)
  let slotval1 = QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsPathItem, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsPathItem_virtualbase_extension(self.h, variant.h))

type QGraphicsPathItemextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_extension(self: ptr cQGraphicsPathItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsPathItem_extension ".} =
  type Cb = proc(super: QGraphicsPathItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsPathItem(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_advance(self: QGraphicsPathItem, phase: cint): void =


  fQGraphicsPathItem_virtualbase_advance(self.h, phase)

type QGraphicsPathItemadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_advance(self: ptr cQGraphicsPathItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_advance ".} =
  type Cb = proc(super: QGraphicsPathItemadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsPathItem(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
proc callVirtualBase_collidesWithItem(self: QGraphicsPathItem, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsPathItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsPathItemcollidesWithItemBase* = proc(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_collidesWithItem(self: ptr cQGraphicsPathItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPathItem_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsPathItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsPathItem(h: self), other, mode)
  let slotval1 = QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsPathItem, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsPathItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsPathItemcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_collidesWithPath(self: ptr cQGraphicsPathItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPathItem_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsPathItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsPathItem(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEventFilter(self: QGraphicsPathItem, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsPathItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsPathItemsceneEventFilterBase* = proc(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_sceneEventFilter(self: ptr cQGraphicsPathItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPathItem_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsPathItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsPathItem(h: self), watched, event)
  let slotval1 = QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QGraphicsPathItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsPathItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsPathItemsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_sceneEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPathItem_sceneEvent ".} =
  type Cb = proc(super: QGraphicsPathItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsPathItem, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsPathItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsPathItemcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_contextMenuEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsPathItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsPathItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsPathItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsPathItemdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_dragEnterEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsPathItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsPathItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsPathItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsPathItemdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_dragLeaveEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsPathItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsPathItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsPathItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsPathItemdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_dragMoveEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsPathItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsPathItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsPathItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsPathItemdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_dropEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_dropEvent ".} =
  type Cb = proc(super: QGraphicsPathItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsPathItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsPathItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsPathItemfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_focusInEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_focusInEvent ".} =
  type Cb = proc(super: QGraphicsPathItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsPathItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsPathItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsPathItemfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_focusOutEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsPathItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsPathItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsPathItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsPathItemhoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_hoverEnterEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsPathItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsPathItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsPathItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsPathItemhoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_hoverMoveEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsPathItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsPathItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsPathItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsPathItemhoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_hoverLeaveEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsPathItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsPathItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsPathItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsPathItemkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_keyPressEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsPathItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsPathItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsPathItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsPathItemkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_keyReleaseEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsPathItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsPathItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsPathItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsPathItemmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_mousePressEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsPathItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsPathItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsPathItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsPathItemmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_mouseMoveEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsPathItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsPathItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsPathItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsPathItemmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_mouseReleaseEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsPathItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsPathItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsPathItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsPathItemmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_mouseDoubleClickEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsPathItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsPathItem, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsPathItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsPathItemwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_wheelEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_wheelEvent ".} =
  type Cb = proc(super: QGraphicsPathItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsPathItem, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsPathItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsPathIteminputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_inputMethodEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsPathIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsPathItem(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGraphicsPathItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsPathItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsPathIteminputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_inputMethodQuery(self: ptr cQGraphicsPathItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsPathItem_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsPathIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsPathItem(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_itemChange(self: QGraphicsPathItem, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsPathItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsPathItemitemChangeBase* = proc(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsPathItem, slot: proc(super: QGraphicsPathItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPathItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_itemChange(self: ptr cQGraphicsPathItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsPathItem_itemChange ".} =
  type Cb = proc(super: QGraphicsPathItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsPathItem(h: self), change, value)
  let slotval1 = QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: QGraphicsPathItem) =
  fcQGraphicsPathItem_delete(self.h)

func init*(T: type QGraphicsRectItem, h: ptr cQGraphicsRectItem): QGraphicsRectItem =
  T(h: h)
proc create*(T: type QGraphicsRectItem, ): QGraphicsRectItem =

  QGraphicsRectItem.init(fcQGraphicsRectItem_new())
proc create*(T: type QGraphicsRectItem, rect: gen_qrect.QRectF): QGraphicsRectItem =

  QGraphicsRectItem.init(fcQGraphicsRectItem_new2(rect.h))
proc create*(T: type QGraphicsRectItem, x: float64, y: float64, w: float64, h: float64): QGraphicsRectItem =

  QGraphicsRectItem.init(fcQGraphicsRectItem_new3(x, y, w, h))
proc create2*(T: type QGraphicsRectItem, parent: QGraphicsItem): QGraphicsRectItem =

  QGraphicsRectItem.init(fcQGraphicsRectItem_new4(parent.h))
proc create*(T: type QGraphicsRectItem, rect: gen_qrect.QRectF, parent: QGraphicsItem): QGraphicsRectItem =

  QGraphicsRectItem.init(fcQGraphicsRectItem_new5(rect.h, parent.h))
proc create*(T: type QGraphicsRectItem, x: float64, y: float64, w: float64, h: float64, parent: QGraphicsItem): QGraphicsRectItem =

  QGraphicsRectItem.init(fcQGraphicsRectItem_new6(x, y, w, h, parent.h))
proc rect*(self: QGraphicsRectItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsRectItem_rect(self.h))

proc setRect*(self: QGraphicsRectItem, rect: gen_qrect.QRectF): void =

  fcQGraphicsRectItem_setRect(self.h, rect.h)

proc setRect2*(self: QGraphicsRectItem, x: float64, y: float64, w: float64, h: float64): void =

  fcQGraphicsRectItem_setRect2(self.h, x, y, w, h)

proc boundingRect*(self: QGraphicsRectItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsRectItem_boundingRect(self.h))

proc shape*(self: QGraphicsRectItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsRectItem_shape(self.h))

proc contains*(self: QGraphicsRectItem, point: gen_qpoint.QPointF): bool =

  fcQGraphicsRectItem_contains(self.h, point.h)

proc paint*(self: QGraphicsRectItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsRectItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: QGraphicsRectItem, item: QGraphicsItem): bool =

  fcQGraphicsRectItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: QGraphicsRectItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsRectItem_opaqueArea(self.h))

proc typeX*(self: QGraphicsRectItem, ): cint =

  fcQGraphicsRectItem_typeX(self.h)

proc callVirtualBase_boundingRect(self: QGraphicsRectItem, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsRectItem_virtualbase_boundingRect(self.h))

type QGraphicsRectItemboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_boundingRect(self: ptr cQGraphicsRectItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsRectItem_boundingRect ".} =
  type Cb = proc(super: QGraphicsRectItemboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QGraphicsRectItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_shape(self: QGraphicsRectItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsRectItem_virtualbase_shape(self.h))

type QGraphicsRectItemshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_shape(self: ptr cQGraphicsRectItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsRectItem_shape ".} =
  type Cb = proc(super: QGraphicsRectItemshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsRectItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QGraphicsRectItem, point: gen_qpoint.QPointF): bool =


  fQGraphicsRectItem_virtualbase_contains(self.h, point.h)

type QGraphicsRectItemcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_contains(self: ptr cQGraphicsRectItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsRectItem_contains ".} =
  type Cb = proc(super: QGraphicsRectItemcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsRectItem(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paint(self: QGraphicsRectItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsRectItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsRectItempaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_paint(self: ptr cQGraphicsRectItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_paint ".} =
  type Cb = proc(super: QGraphicsRectItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paint(QGraphicsRectItem(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_isObscuredBy(self: QGraphicsRectItem, item: QGraphicsItem): bool =


  fQGraphicsRectItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsRectItemisObscuredByBase* = proc(item: QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemisObscuredByBase, item: QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemisObscuredByBase, item: QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_isObscuredBy(self: ptr cQGraphicsRectItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsRectItem_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsRectItemisObscuredByBase, item: QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsRectItem(h: self), item)
  let slotval1 = QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsRectItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsRectItem_virtualbase_opaqueArea(self.h))

type QGraphicsRectItemopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_opaqueArea(self: ptr cQGraphicsRectItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsRectItem_opaqueArea ".} =
  type Cb = proc(super: QGraphicsRectItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsRectItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_typeX(self: QGraphicsRectItem, ): cint =


  fQGraphicsRectItem_virtualbase_type(self.h)

type QGraphicsRectItemtypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemtypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemtypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_type(self: ptr cQGraphicsRectItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsRectItem_type ".} =
  type Cb = proc(super: QGraphicsRectItemtypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsRectItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_supportsExtension(self: QGraphicsRectItem, extension: QGraphicsItemExtension): bool =


  fQGraphicsRectItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsRectItemsupportsExtensionBase* = proc(extension: QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_supportsExtension(self: ptr cQGraphicsRectItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsRectItem_supportsExtension ".} =
  type Cb = proc(super: QGraphicsRectItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsRectItem(h: self), extension)
  let slotval1 = QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsRectItem, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsRectItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsRectItemsetExtensionBase* = proc(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_setExtension(self: ptr cQGraphicsRectItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_setExtension ".} =
  type Cb = proc(super: QGraphicsRectItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsRectItem(h: self), extension, variant)
  let slotval1 = QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsRectItem, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsRectItem_virtualbase_extension(self.h, variant.h))

type QGraphicsRectItemextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_extension(self: ptr cQGraphicsRectItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsRectItem_extension ".} =
  type Cb = proc(super: QGraphicsRectItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsRectItem(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_advance(self: QGraphicsRectItem, phase: cint): void =


  fQGraphicsRectItem_virtualbase_advance(self.h, phase)

type QGraphicsRectItemadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_advance(self: ptr cQGraphicsRectItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_advance ".} =
  type Cb = proc(super: QGraphicsRectItemadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsRectItem(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
proc callVirtualBase_collidesWithItem(self: QGraphicsRectItem, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsRectItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsRectItemcollidesWithItemBase* = proc(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_collidesWithItem(self: ptr cQGraphicsRectItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsRectItem_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsRectItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsRectItem(h: self), other, mode)
  let slotval1 = QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsRectItem, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsRectItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsRectItemcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_collidesWithPath(self: ptr cQGraphicsRectItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsRectItem_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsRectItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsRectItem(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEventFilter(self: QGraphicsRectItem, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsRectItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsRectItemsceneEventFilterBase* = proc(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_sceneEventFilter(self: ptr cQGraphicsRectItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsRectItem_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsRectItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsRectItem(h: self), watched, event)
  let slotval1 = QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QGraphicsRectItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsRectItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsRectItemsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_sceneEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsRectItem_sceneEvent ".} =
  type Cb = proc(super: QGraphicsRectItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsRectItem, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsRectItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsRectItemcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_contextMenuEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsRectItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsRectItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsRectItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsRectItemdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_dragEnterEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsRectItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsRectItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsRectItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsRectItemdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_dragLeaveEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsRectItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsRectItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsRectItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsRectItemdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_dragMoveEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsRectItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsRectItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsRectItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsRectItemdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_dropEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_dropEvent ".} =
  type Cb = proc(super: QGraphicsRectItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsRectItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsRectItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsRectItemfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_focusInEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_focusInEvent ".} =
  type Cb = proc(super: QGraphicsRectItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsRectItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsRectItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsRectItemfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_focusOutEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsRectItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsRectItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsRectItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsRectItemhoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_hoverEnterEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsRectItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsRectItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsRectItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsRectItemhoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_hoverMoveEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsRectItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsRectItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsRectItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsRectItemhoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_hoverLeaveEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsRectItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsRectItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsRectItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsRectItemkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_keyPressEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsRectItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsRectItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsRectItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsRectItemkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_keyReleaseEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsRectItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsRectItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsRectItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsRectItemmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_mousePressEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsRectItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsRectItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsRectItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsRectItemmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_mouseMoveEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsRectItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsRectItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsRectItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsRectItemmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_mouseReleaseEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsRectItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsRectItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsRectItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsRectItemmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_mouseDoubleClickEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsRectItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsRectItem, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsRectItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsRectItemwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_wheelEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_wheelEvent ".} =
  type Cb = proc(super: QGraphicsRectItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsRectItem, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsRectItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsRectIteminputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_inputMethodEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsRectIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsRectItem(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGraphicsRectItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsRectItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsRectIteminputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_inputMethodQuery(self: ptr cQGraphicsRectItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsRectItem_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsRectIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsRectItem(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_itemChange(self: QGraphicsRectItem, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsRectItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsRectItemitemChangeBase* = proc(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsRectItem, slot: proc(super: QGraphicsRectItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRectItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_itemChange(self: ptr cQGraphicsRectItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsRectItem_itemChange ".} =
  type Cb = proc(super: QGraphicsRectItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsRectItem(h: self), change, value)
  let slotval1 = QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: QGraphicsRectItem) =
  fcQGraphicsRectItem_delete(self.h)

func init*(T: type QGraphicsEllipseItem, h: ptr cQGraphicsEllipseItem): QGraphicsEllipseItem =
  T(h: h)
proc create*(T: type QGraphicsEllipseItem, ): QGraphicsEllipseItem =

  QGraphicsEllipseItem.init(fcQGraphicsEllipseItem_new())
proc create*(T: type QGraphicsEllipseItem, rect: gen_qrect.QRectF): QGraphicsEllipseItem =

  QGraphicsEllipseItem.init(fcQGraphicsEllipseItem_new2(rect.h))
proc create*(T: type QGraphicsEllipseItem, x: float64, y: float64, w: float64, h: float64): QGraphicsEllipseItem =

  QGraphicsEllipseItem.init(fcQGraphicsEllipseItem_new3(x, y, w, h))
proc create2*(T: type QGraphicsEllipseItem, parent: QGraphicsItem): QGraphicsEllipseItem =

  QGraphicsEllipseItem.init(fcQGraphicsEllipseItem_new4(parent.h))
proc create*(T: type QGraphicsEllipseItem, rect: gen_qrect.QRectF, parent: QGraphicsItem): QGraphicsEllipseItem =

  QGraphicsEllipseItem.init(fcQGraphicsEllipseItem_new5(rect.h, parent.h))
proc create*(T: type QGraphicsEllipseItem, x: float64, y: float64, w: float64, h: float64, parent: QGraphicsItem): QGraphicsEllipseItem =

  QGraphicsEllipseItem.init(fcQGraphicsEllipseItem_new6(x, y, w, h, parent.h))
proc rect*(self: QGraphicsEllipseItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsEllipseItem_rect(self.h))

proc setRect*(self: QGraphicsEllipseItem, rect: gen_qrect.QRectF): void =

  fcQGraphicsEllipseItem_setRect(self.h, rect.h)

proc setRect2*(self: QGraphicsEllipseItem, x: float64, y: float64, w: float64, h: float64): void =

  fcQGraphicsEllipseItem_setRect2(self.h, x, y, w, h)

proc startAngle*(self: QGraphicsEllipseItem, ): cint =

  fcQGraphicsEllipseItem_startAngle(self.h)

proc setStartAngle*(self: QGraphicsEllipseItem, angle: cint): void =

  fcQGraphicsEllipseItem_setStartAngle(self.h, angle)

proc spanAngle*(self: QGraphicsEllipseItem, ): cint =

  fcQGraphicsEllipseItem_spanAngle(self.h)

proc setSpanAngle*(self: QGraphicsEllipseItem, angle: cint): void =

  fcQGraphicsEllipseItem_setSpanAngle(self.h, angle)

proc boundingRect*(self: QGraphicsEllipseItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsEllipseItem_boundingRect(self.h))

proc shape*(self: QGraphicsEllipseItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsEllipseItem_shape(self.h))

proc contains*(self: QGraphicsEllipseItem, point: gen_qpoint.QPointF): bool =

  fcQGraphicsEllipseItem_contains(self.h, point.h)

proc paint*(self: QGraphicsEllipseItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsEllipseItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: QGraphicsEllipseItem, item: QGraphicsItem): bool =

  fcQGraphicsEllipseItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: QGraphicsEllipseItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsEllipseItem_opaqueArea(self.h))

proc typeX*(self: QGraphicsEllipseItem, ): cint =

  fcQGraphicsEllipseItem_typeX(self.h)

proc callVirtualBase_boundingRect(self: QGraphicsEllipseItem, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsEllipseItem_virtualbase_boundingRect(self.h))

type QGraphicsEllipseItemboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_boundingRect(self: ptr cQGraphicsEllipseItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_boundingRect ".} =
  type Cb = proc(super: QGraphicsEllipseItemboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QGraphicsEllipseItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_shape(self: QGraphicsEllipseItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsEllipseItem_virtualbase_shape(self.h))

type QGraphicsEllipseItemshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_shape(self: ptr cQGraphicsEllipseItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_shape ".} =
  type Cb = proc(super: QGraphicsEllipseItemshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsEllipseItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QGraphicsEllipseItem, point: gen_qpoint.QPointF): bool =


  fQGraphicsEllipseItem_virtualbase_contains(self.h, point.h)

type QGraphicsEllipseItemcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_contains(self: ptr cQGraphicsEllipseItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_contains ".} =
  type Cb = proc(super: QGraphicsEllipseItemcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsEllipseItem(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paint(self: QGraphicsEllipseItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsEllipseItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsEllipseItempaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_paint(self: ptr cQGraphicsEllipseItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_paint ".} =
  type Cb = proc(super: QGraphicsEllipseItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paint(QGraphicsEllipseItem(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_isObscuredBy(self: QGraphicsEllipseItem, item: QGraphicsItem): bool =


  fQGraphicsEllipseItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsEllipseItemisObscuredByBase* = proc(item: QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemisObscuredByBase, item: QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemisObscuredByBase, item: QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_isObscuredBy(self: ptr cQGraphicsEllipseItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsEllipseItemisObscuredByBase, item: QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsEllipseItem(h: self), item)
  let slotval1 = QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsEllipseItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsEllipseItem_virtualbase_opaqueArea(self.h))

type QGraphicsEllipseItemopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_opaqueArea(self: ptr cQGraphicsEllipseItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_opaqueArea ".} =
  type Cb = proc(super: QGraphicsEllipseItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsEllipseItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_typeX(self: QGraphicsEllipseItem, ): cint =


  fQGraphicsEllipseItem_virtualbase_type(self.h)

type QGraphicsEllipseItemtypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemtypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemtypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_type(self: ptr cQGraphicsEllipseItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_type ".} =
  type Cb = proc(super: QGraphicsEllipseItemtypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsEllipseItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_supportsExtension(self: QGraphicsEllipseItem, extension: QGraphicsItemExtension): bool =


  fQGraphicsEllipseItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsEllipseItemsupportsExtensionBase* = proc(extension: QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_supportsExtension(self: ptr cQGraphicsEllipseItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_supportsExtension ".} =
  type Cb = proc(super: QGraphicsEllipseItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsEllipseItem(h: self), extension)
  let slotval1 = QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsEllipseItem, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsEllipseItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsEllipseItemsetExtensionBase* = proc(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_setExtension(self: ptr cQGraphicsEllipseItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_setExtension ".} =
  type Cb = proc(super: QGraphicsEllipseItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsEllipseItem(h: self), extension, variant)
  let slotval1 = QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsEllipseItem, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsEllipseItem_virtualbase_extension(self.h, variant.h))

type QGraphicsEllipseItemextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_extension(self: ptr cQGraphicsEllipseItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_extension ".} =
  type Cb = proc(super: QGraphicsEllipseItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsEllipseItem(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_advance(self: QGraphicsEllipseItem, phase: cint): void =


  fQGraphicsEllipseItem_virtualbase_advance(self.h, phase)

type QGraphicsEllipseItemadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_advance(self: ptr cQGraphicsEllipseItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_advance ".} =
  type Cb = proc(super: QGraphicsEllipseItemadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsEllipseItem(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
proc callVirtualBase_collidesWithItem(self: QGraphicsEllipseItem, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsEllipseItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsEllipseItemcollidesWithItemBase* = proc(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_collidesWithItem(self: ptr cQGraphicsEllipseItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsEllipseItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsEllipseItem(h: self), other, mode)
  let slotval1 = QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsEllipseItem, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsEllipseItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsEllipseItemcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_collidesWithPath(self: ptr cQGraphicsEllipseItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsEllipseItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsEllipseItem(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEventFilter(self: QGraphicsEllipseItem, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsEllipseItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsEllipseItemsceneEventFilterBase* = proc(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_sceneEventFilter(self: ptr cQGraphicsEllipseItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsEllipseItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsEllipseItem(h: self), watched, event)
  let slotval1 = QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QGraphicsEllipseItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsEllipseItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsEllipseItemsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_sceneEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_sceneEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsEllipseItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsEllipseItemcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_contextMenuEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsEllipseItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsEllipseItemdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_dragEnterEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsEllipseItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsEllipseItemdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_dragLeaveEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsEllipseItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsEllipseItemdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_dragMoveEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsEllipseItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsEllipseItemdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_dropEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_dropEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsEllipseItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsEllipseItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsEllipseItemfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_focusInEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_focusInEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsEllipseItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsEllipseItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsEllipseItemfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_focusOutEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsEllipseItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsEllipseItemhoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_hoverEnterEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsEllipseItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsEllipseItemhoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_hoverMoveEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsEllipseItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsEllipseItemhoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_hoverLeaveEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsEllipseItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsEllipseItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsEllipseItemkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_keyPressEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsEllipseItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsEllipseItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsEllipseItemkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_keyReleaseEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsEllipseItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsEllipseItemmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_mousePressEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsEllipseItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsEllipseItemmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_mouseMoveEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsEllipseItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsEllipseItemmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_mouseReleaseEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsEllipseItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsEllipseItemmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_mouseDoubleClickEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsEllipseItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsEllipseItemwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_wheelEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_wheelEvent ".} =
  type Cb = proc(super: QGraphicsEllipseItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsEllipseItem, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsEllipseItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsEllipseIteminputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_inputMethodEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsEllipseIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsEllipseItem(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGraphicsEllipseItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsEllipseItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsEllipseIteminputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_inputMethodQuery(self: ptr cQGraphicsEllipseItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsEllipseIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsEllipseItem(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_itemChange(self: QGraphicsEllipseItem, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsEllipseItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsEllipseItemitemChangeBase* = proc(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsEllipseItem, slot: proc(super: QGraphicsEllipseItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEllipseItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_itemChange(self: ptr cQGraphicsEllipseItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_itemChange ".} =
  type Cb = proc(super: QGraphicsEllipseItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsEllipseItem(h: self), change, value)
  let slotval1 = QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: QGraphicsEllipseItem) =
  fcQGraphicsEllipseItem_delete(self.h)

func init*(T: type QGraphicsPolygonItem, h: ptr cQGraphicsPolygonItem): QGraphicsPolygonItem =
  T(h: h)
proc create*(T: type QGraphicsPolygonItem, ): QGraphicsPolygonItem =

  QGraphicsPolygonItem.init(fcQGraphicsPolygonItem_new())
proc create*(T: type QGraphicsPolygonItem, parent: QGraphicsItem): QGraphicsPolygonItem =

  QGraphicsPolygonItem.init(fcQGraphicsPolygonItem_new2(parent.h))
proc fillRule*(self: QGraphicsPolygonItem, ): gen_qnamespace.FillRule =

  gen_qnamespace.FillRule(fcQGraphicsPolygonItem_fillRule(self.h))

proc setFillRule*(self: QGraphicsPolygonItem, rule: gen_qnamespace.FillRule): void =

  fcQGraphicsPolygonItem_setFillRule(self.h, cint(rule))

proc boundingRect*(self: QGraphicsPolygonItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsPolygonItem_boundingRect(self.h))

proc shape*(self: QGraphicsPolygonItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsPolygonItem_shape(self.h))

proc contains*(self: QGraphicsPolygonItem, point: gen_qpoint.QPointF): bool =

  fcQGraphicsPolygonItem_contains(self.h, point.h)

proc paint*(self: QGraphicsPolygonItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsPolygonItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: QGraphicsPolygonItem, item: QGraphicsItem): bool =

  fcQGraphicsPolygonItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: QGraphicsPolygonItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsPolygonItem_opaqueArea(self.h))

proc typeX*(self: QGraphicsPolygonItem, ): cint =

  fcQGraphicsPolygonItem_typeX(self.h)

proc callVirtualBase_boundingRect(self: QGraphicsPolygonItem, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsPolygonItem_virtualbase_boundingRect(self.h))

type QGraphicsPolygonItemboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_boundingRect(self: ptr cQGraphicsPolygonItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_boundingRect ".} =
  type Cb = proc(super: QGraphicsPolygonItemboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QGraphicsPolygonItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_shape(self: QGraphicsPolygonItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsPolygonItem_virtualbase_shape(self.h))

type QGraphicsPolygonItemshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_shape(self: ptr cQGraphicsPolygonItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_shape ".} =
  type Cb = proc(super: QGraphicsPolygonItemshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsPolygonItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QGraphicsPolygonItem, point: gen_qpoint.QPointF): bool =


  fQGraphicsPolygonItem_virtualbase_contains(self.h, point.h)

type QGraphicsPolygonItemcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_contains(self: ptr cQGraphicsPolygonItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_contains ".} =
  type Cb = proc(super: QGraphicsPolygonItemcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsPolygonItem(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paint(self: QGraphicsPolygonItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsPolygonItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsPolygonItempaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_paint(self: ptr cQGraphicsPolygonItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_paint ".} =
  type Cb = proc(super: QGraphicsPolygonItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paint(QGraphicsPolygonItem(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_isObscuredBy(self: QGraphicsPolygonItem, item: QGraphicsItem): bool =


  fQGraphicsPolygonItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsPolygonItemisObscuredByBase* = proc(item: QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemisObscuredByBase, item: QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemisObscuredByBase, item: QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_isObscuredBy(self: ptr cQGraphicsPolygonItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsPolygonItemisObscuredByBase, item: QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsPolygonItem(h: self), item)
  let slotval1 = QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsPolygonItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsPolygonItem_virtualbase_opaqueArea(self.h))

type QGraphicsPolygonItemopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_opaqueArea(self: ptr cQGraphicsPolygonItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_opaqueArea ".} =
  type Cb = proc(super: QGraphicsPolygonItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsPolygonItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_typeX(self: QGraphicsPolygonItem, ): cint =


  fQGraphicsPolygonItem_virtualbase_type(self.h)

type QGraphicsPolygonItemtypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemtypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemtypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_type(self: ptr cQGraphicsPolygonItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_type ".} =
  type Cb = proc(super: QGraphicsPolygonItemtypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsPolygonItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_supportsExtension(self: QGraphicsPolygonItem, extension: QGraphicsItemExtension): bool =


  fQGraphicsPolygonItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsPolygonItemsupportsExtensionBase* = proc(extension: QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_supportsExtension(self: ptr cQGraphicsPolygonItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_supportsExtension ".} =
  type Cb = proc(super: QGraphicsPolygonItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsPolygonItem(h: self), extension)
  let slotval1 = QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsPolygonItem, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsPolygonItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsPolygonItemsetExtensionBase* = proc(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_setExtension(self: ptr cQGraphicsPolygonItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_setExtension ".} =
  type Cb = proc(super: QGraphicsPolygonItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsPolygonItem(h: self), extension, variant)
  let slotval1 = QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsPolygonItem, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsPolygonItem_virtualbase_extension(self.h, variant.h))

type QGraphicsPolygonItemextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_extension(self: ptr cQGraphicsPolygonItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_extension ".} =
  type Cb = proc(super: QGraphicsPolygonItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsPolygonItem(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_advance(self: QGraphicsPolygonItem, phase: cint): void =


  fQGraphicsPolygonItem_virtualbase_advance(self.h, phase)

type QGraphicsPolygonItemadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_advance(self: ptr cQGraphicsPolygonItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_advance ".} =
  type Cb = proc(super: QGraphicsPolygonItemadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsPolygonItem(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
proc callVirtualBase_collidesWithItem(self: QGraphicsPolygonItem, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsPolygonItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsPolygonItemcollidesWithItemBase* = proc(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_collidesWithItem(self: ptr cQGraphicsPolygonItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsPolygonItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsPolygonItem(h: self), other, mode)
  let slotval1 = QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsPolygonItem, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsPolygonItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsPolygonItemcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_collidesWithPath(self: ptr cQGraphicsPolygonItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsPolygonItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsPolygonItem(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEventFilter(self: QGraphicsPolygonItem, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsPolygonItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsPolygonItemsceneEventFilterBase* = proc(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_sceneEventFilter(self: ptr cQGraphicsPolygonItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsPolygonItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsPolygonItem(h: self), watched, event)
  let slotval1 = QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QGraphicsPolygonItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsPolygonItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsPolygonItemsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_sceneEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_sceneEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsPolygonItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsPolygonItemcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_contextMenuEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsPolygonItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsPolygonItemdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_dragEnterEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsPolygonItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsPolygonItemdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_dragLeaveEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsPolygonItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsPolygonItemdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_dragMoveEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsPolygonItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsPolygonItemdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_dropEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_dropEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsPolygonItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsPolygonItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsPolygonItemfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_focusInEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_focusInEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsPolygonItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsPolygonItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsPolygonItemfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_focusOutEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsPolygonItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsPolygonItemhoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_hoverEnterEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsPolygonItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsPolygonItemhoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_hoverMoveEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsPolygonItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsPolygonItemhoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_hoverLeaveEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsPolygonItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsPolygonItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsPolygonItemkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_keyPressEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsPolygonItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsPolygonItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsPolygonItemkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_keyReleaseEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsPolygonItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsPolygonItemmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_mousePressEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsPolygonItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsPolygonItemmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_mouseMoveEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsPolygonItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsPolygonItemmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_mouseReleaseEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsPolygonItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsPolygonItemmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_mouseDoubleClickEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsPolygonItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsPolygonItemwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_wheelEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_wheelEvent ".} =
  type Cb = proc(super: QGraphicsPolygonItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsPolygonItem, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsPolygonItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsPolygonIteminputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_inputMethodEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsPolygonIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsPolygonItem(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGraphicsPolygonItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsPolygonItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsPolygonIteminputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_inputMethodQuery(self: ptr cQGraphicsPolygonItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsPolygonIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsPolygonItem(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_itemChange(self: QGraphicsPolygonItem, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsPolygonItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsPolygonItemitemChangeBase* = proc(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsPolygonItem, slot: proc(super: QGraphicsPolygonItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPolygonItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_itemChange(self: ptr cQGraphicsPolygonItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_itemChange ".} =
  type Cb = proc(super: QGraphicsPolygonItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsPolygonItem(h: self), change, value)
  let slotval1 = QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: QGraphicsPolygonItem) =
  fcQGraphicsPolygonItem_delete(self.h)

func init*(T: type QGraphicsLineItem, h: ptr cQGraphicsLineItem): QGraphicsLineItem =
  T(h: h)
proc create*(T: type QGraphicsLineItem, ): QGraphicsLineItem =

  QGraphicsLineItem.init(fcQGraphicsLineItem_new())
proc create*(T: type QGraphicsLineItem, line: gen_qline.QLineF): QGraphicsLineItem =

  QGraphicsLineItem.init(fcQGraphicsLineItem_new2(line.h))
proc create*(T: type QGraphicsLineItem, x1: float64, y1: float64, x2: float64, y2: float64): QGraphicsLineItem =

  QGraphicsLineItem.init(fcQGraphicsLineItem_new3(x1, y1, x2, y2))
proc create2*(T: type QGraphicsLineItem, parent: QGraphicsItem): QGraphicsLineItem =

  QGraphicsLineItem.init(fcQGraphicsLineItem_new4(parent.h))
proc create*(T: type QGraphicsLineItem, line: gen_qline.QLineF, parent: QGraphicsItem): QGraphicsLineItem =

  QGraphicsLineItem.init(fcQGraphicsLineItem_new5(line.h, parent.h))
proc create*(T: type QGraphicsLineItem, x1: float64, y1: float64, x2: float64, y2: float64, parent: QGraphicsItem): QGraphicsLineItem =

  QGraphicsLineItem.init(fcQGraphicsLineItem_new6(x1, y1, x2, y2, parent.h))
proc pen*(self: QGraphicsLineItem, ): gen_qpen.QPen =

  gen_qpen.QPen(h: fcQGraphicsLineItem_pen(self.h))

proc setPen*(self: QGraphicsLineItem, pen: gen_qpen.QPen): void =

  fcQGraphicsLineItem_setPen(self.h, pen.h)

proc line*(self: QGraphicsLineItem, ): gen_qline.QLineF =

  gen_qline.QLineF(h: fcQGraphicsLineItem_line(self.h))

proc setLine*(self: QGraphicsLineItem, line: gen_qline.QLineF): void =

  fcQGraphicsLineItem_setLine(self.h, line.h)

proc setLine2*(self: QGraphicsLineItem, x1: float64, y1: float64, x2: float64, y2: float64): void =

  fcQGraphicsLineItem_setLine2(self.h, x1, y1, x2, y2)

proc boundingRect*(self: QGraphicsLineItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsLineItem_boundingRect(self.h))

proc shape*(self: QGraphicsLineItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsLineItem_shape(self.h))

proc contains*(self: QGraphicsLineItem, point: gen_qpoint.QPointF): bool =

  fcQGraphicsLineItem_contains(self.h, point.h)

proc paint*(self: QGraphicsLineItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsLineItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: QGraphicsLineItem, item: QGraphicsItem): bool =

  fcQGraphicsLineItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: QGraphicsLineItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsLineItem_opaqueArea(self.h))

proc typeX*(self: QGraphicsLineItem, ): cint =

  fcQGraphicsLineItem_typeX(self.h)

proc callVirtualBase_boundingRect(self: QGraphicsLineItem, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsLineItem_virtualbase_boundingRect(self.h))

type QGraphicsLineItemboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_boundingRect(self: ptr cQGraphicsLineItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsLineItem_boundingRect ".} =
  type Cb = proc(super: QGraphicsLineItemboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QGraphicsLineItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_shape(self: QGraphicsLineItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsLineItem_virtualbase_shape(self.h))

type QGraphicsLineItemshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_shape(self: ptr cQGraphicsLineItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsLineItem_shape ".} =
  type Cb = proc(super: QGraphicsLineItemshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsLineItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QGraphicsLineItem, point: gen_qpoint.QPointF): bool =


  fQGraphicsLineItem_virtualbase_contains(self.h, point.h)

type QGraphicsLineItemcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_contains(self: ptr cQGraphicsLineItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsLineItem_contains ".} =
  type Cb = proc(super: QGraphicsLineItemcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsLineItem(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paint(self: QGraphicsLineItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsLineItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsLineItempaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_paint(self: ptr cQGraphicsLineItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_paint ".} =
  type Cb = proc(super: QGraphicsLineItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paint(QGraphicsLineItem(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_isObscuredBy(self: QGraphicsLineItem, item: QGraphicsItem): bool =


  fQGraphicsLineItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsLineItemisObscuredByBase* = proc(item: QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemisObscuredByBase, item: QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemisObscuredByBase, item: QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_isObscuredBy(self: ptr cQGraphicsLineItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsLineItem_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsLineItemisObscuredByBase, item: QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsLineItem(h: self), item)
  let slotval1 = QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsLineItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsLineItem_virtualbase_opaqueArea(self.h))

type QGraphicsLineItemopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_opaqueArea(self: ptr cQGraphicsLineItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsLineItem_opaqueArea ".} =
  type Cb = proc(super: QGraphicsLineItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsLineItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_typeX(self: QGraphicsLineItem, ): cint =


  fQGraphicsLineItem_virtualbase_type(self.h)

type QGraphicsLineItemtypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemtypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemtypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_type(self: ptr cQGraphicsLineItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsLineItem_type ".} =
  type Cb = proc(super: QGraphicsLineItemtypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsLineItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_supportsExtension(self: QGraphicsLineItem, extension: QGraphicsItemExtension): bool =


  fQGraphicsLineItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsLineItemsupportsExtensionBase* = proc(extension: QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_supportsExtension(self: ptr cQGraphicsLineItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsLineItem_supportsExtension ".} =
  type Cb = proc(super: QGraphicsLineItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsLineItem(h: self), extension)
  let slotval1 = QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsLineItem, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsLineItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsLineItemsetExtensionBase* = proc(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_setExtension(self: ptr cQGraphicsLineItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_setExtension ".} =
  type Cb = proc(super: QGraphicsLineItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsLineItem(h: self), extension, variant)
  let slotval1 = QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsLineItem, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsLineItem_virtualbase_extension(self.h, variant.h))

type QGraphicsLineItemextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_extension(self: ptr cQGraphicsLineItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsLineItem_extension ".} =
  type Cb = proc(super: QGraphicsLineItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsLineItem(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_advance(self: QGraphicsLineItem, phase: cint): void =


  fQGraphicsLineItem_virtualbase_advance(self.h, phase)

type QGraphicsLineItemadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_advance(self: ptr cQGraphicsLineItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_advance ".} =
  type Cb = proc(super: QGraphicsLineItemadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsLineItem(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
proc callVirtualBase_collidesWithItem(self: QGraphicsLineItem, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsLineItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsLineItemcollidesWithItemBase* = proc(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_collidesWithItem(self: ptr cQGraphicsLineItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsLineItem_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsLineItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsLineItem(h: self), other, mode)
  let slotval1 = QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsLineItem, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsLineItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsLineItemcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_collidesWithPath(self: ptr cQGraphicsLineItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsLineItem_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsLineItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsLineItem(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEventFilter(self: QGraphicsLineItem, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsLineItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsLineItemsceneEventFilterBase* = proc(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_sceneEventFilter(self: ptr cQGraphicsLineItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsLineItem_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsLineItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsLineItem(h: self), watched, event)
  let slotval1 = QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QGraphicsLineItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsLineItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsLineItemsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_sceneEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsLineItem_sceneEvent ".} =
  type Cb = proc(super: QGraphicsLineItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsLineItem, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsLineItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsLineItemcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_contextMenuEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsLineItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsLineItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsLineItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsLineItemdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_dragEnterEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsLineItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsLineItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsLineItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsLineItemdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_dragLeaveEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsLineItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsLineItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsLineItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsLineItemdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_dragMoveEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsLineItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsLineItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsLineItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsLineItemdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_dropEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_dropEvent ".} =
  type Cb = proc(super: QGraphicsLineItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsLineItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsLineItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsLineItemfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_focusInEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_focusInEvent ".} =
  type Cb = proc(super: QGraphicsLineItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsLineItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsLineItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsLineItemfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_focusOutEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsLineItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsLineItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsLineItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsLineItemhoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_hoverEnterEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsLineItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsLineItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsLineItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsLineItemhoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_hoverMoveEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsLineItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsLineItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsLineItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsLineItemhoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_hoverLeaveEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsLineItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsLineItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsLineItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsLineItemkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_keyPressEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsLineItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsLineItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsLineItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsLineItemkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_keyReleaseEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsLineItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsLineItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsLineItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsLineItemmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_mousePressEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsLineItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsLineItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsLineItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsLineItemmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_mouseMoveEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsLineItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsLineItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsLineItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsLineItemmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_mouseReleaseEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsLineItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsLineItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsLineItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsLineItemmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_mouseDoubleClickEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsLineItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsLineItem, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsLineItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsLineItemwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_wheelEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_wheelEvent ".} =
  type Cb = proc(super: QGraphicsLineItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsLineItem, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsLineItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsLineIteminputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_inputMethodEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsLineIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsLineItem(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGraphicsLineItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsLineItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsLineIteminputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_inputMethodQuery(self: ptr cQGraphicsLineItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsLineItem_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsLineIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsLineItem(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_itemChange(self: QGraphicsLineItem, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsLineItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsLineItemitemChangeBase* = proc(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsLineItem, slot: proc(super: QGraphicsLineItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLineItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_itemChange(self: ptr cQGraphicsLineItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsLineItem_itemChange ".} =
  type Cb = proc(super: QGraphicsLineItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsLineItem(h: self), change, value)
  let slotval1 = QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: QGraphicsLineItem) =
  fcQGraphicsLineItem_delete(self.h)

func init*(T: type QGraphicsPixmapItem, h: ptr cQGraphicsPixmapItem): QGraphicsPixmapItem =
  T(h: h)
proc create*(T: type QGraphicsPixmapItem, ): QGraphicsPixmapItem =

  QGraphicsPixmapItem.init(fcQGraphicsPixmapItem_new())
proc create*(T: type QGraphicsPixmapItem, pixmap: gen_qpixmap.QPixmap): QGraphicsPixmapItem =

  QGraphicsPixmapItem.init(fcQGraphicsPixmapItem_new2(pixmap.h))
proc create2*(T: type QGraphicsPixmapItem, parent: QGraphicsItem): QGraphicsPixmapItem =

  QGraphicsPixmapItem.init(fcQGraphicsPixmapItem_new3(parent.h))
proc create*(T: type QGraphicsPixmapItem, pixmap: gen_qpixmap.QPixmap, parent: QGraphicsItem): QGraphicsPixmapItem =

  QGraphicsPixmapItem.init(fcQGraphicsPixmapItem_new4(pixmap.h, parent.h))
proc pixmap*(self: QGraphicsPixmapItem, ): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQGraphicsPixmapItem_pixmap(self.h))

proc setPixmap*(self: QGraphicsPixmapItem, pixmap: gen_qpixmap.QPixmap): void =

  fcQGraphicsPixmapItem_setPixmap(self.h, pixmap.h)

proc transformationMode*(self: QGraphicsPixmapItem, ): gen_qnamespace.TransformationMode =

  gen_qnamespace.TransformationMode(fcQGraphicsPixmapItem_transformationMode(self.h))

proc setTransformationMode*(self: QGraphicsPixmapItem, mode: gen_qnamespace.TransformationMode): void =

  fcQGraphicsPixmapItem_setTransformationMode(self.h, cint(mode))

proc offset*(self: QGraphicsPixmapItem, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsPixmapItem_offset(self.h))

proc setOffset*(self: QGraphicsPixmapItem, offset: gen_qpoint.QPointF): void =

  fcQGraphicsPixmapItem_setOffset(self.h, offset.h)

proc setOffset2*(self: QGraphicsPixmapItem, x: float64, y: float64): void =

  fcQGraphicsPixmapItem_setOffset2(self.h, x, y)

proc boundingRect*(self: QGraphicsPixmapItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsPixmapItem_boundingRect(self.h))

proc shape*(self: QGraphicsPixmapItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsPixmapItem_shape(self.h))

proc contains*(self: QGraphicsPixmapItem, point: gen_qpoint.QPointF): bool =

  fcQGraphicsPixmapItem_contains(self.h, point.h)

proc paint*(self: QGraphicsPixmapItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsPixmapItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: QGraphicsPixmapItem, item: QGraphicsItem): bool =

  fcQGraphicsPixmapItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: QGraphicsPixmapItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsPixmapItem_opaqueArea(self.h))

proc typeX*(self: QGraphicsPixmapItem, ): cint =

  fcQGraphicsPixmapItem_typeX(self.h)

proc shapeMode*(self: QGraphicsPixmapItem, ): QGraphicsPixmapItemShapeMode =

  QGraphicsPixmapItemShapeMode(fcQGraphicsPixmapItem_shapeMode(self.h))

proc setShapeMode*(self: QGraphicsPixmapItem, mode: QGraphicsPixmapItemShapeMode): void =

  fcQGraphicsPixmapItem_setShapeMode(self.h, cint(mode))

proc callVirtualBase_boundingRect(self: QGraphicsPixmapItem, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsPixmapItem_virtualbase_boundingRect(self.h))

type QGraphicsPixmapItemboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_boundingRect(self: ptr cQGraphicsPixmapItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_boundingRect ".} =
  type Cb = proc(super: QGraphicsPixmapItemboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QGraphicsPixmapItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_shape(self: QGraphicsPixmapItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsPixmapItem_virtualbase_shape(self.h))

type QGraphicsPixmapItemshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_shape(self: ptr cQGraphicsPixmapItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_shape ".} =
  type Cb = proc(super: QGraphicsPixmapItemshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsPixmapItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QGraphicsPixmapItem, point: gen_qpoint.QPointF): bool =


  fQGraphicsPixmapItem_virtualbase_contains(self.h, point.h)

type QGraphicsPixmapItemcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_contains(self: ptr cQGraphicsPixmapItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_contains ".} =
  type Cb = proc(super: QGraphicsPixmapItemcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsPixmapItem(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paint(self: QGraphicsPixmapItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsPixmapItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsPixmapItempaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_paint(self: ptr cQGraphicsPixmapItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_paint ".} =
  type Cb = proc(super: QGraphicsPixmapItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paint(QGraphicsPixmapItem(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_isObscuredBy(self: QGraphicsPixmapItem, item: QGraphicsItem): bool =


  fQGraphicsPixmapItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsPixmapItemisObscuredByBase* = proc(item: QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemisObscuredByBase, item: QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemisObscuredByBase, item: QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_isObscuredBy(self: ptr cQGraphicsPixmapItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsPixmapItemisObscuredByBase, item: QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsPixmapItem(h: self), item)
  let slotval1 = QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsPixmapItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsPixmapItem_virtualbase_opaqueArea(self.h))

type QGraphicsPixmapItemopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_opaqueArea(self: ptr cQGraphicsPixmapItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_opaqueArea ".} =
  type Cb = proc(super: QGraphicsPixmapItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsPixmapItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_typeX(self: QGraphicsPixmapItem, ): cint =


  fQGraphicsPixmapItem_virtualbase_type(self.h)

type QGraphicsPixmapItemtypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemtypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemtypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_type(self: ptr cQGraphicsPixmapItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_type ".} =
  type Cb = proc(super: QGraphicsPixmapItemtypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsPixmapItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_supportsExtension(self: QGraphicsPixmapItem, extension: QGraphicsItemExtension): bool =


  fQGraphicsPixmapItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsPixmapItemsupportsExtensionBase* = proc(extension: QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_supportsExtension(self: ptr cQGraphicsPixmapItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_supportsExtension ".} =
  type Cb = proc(super: QGraphicsPixmapItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsPixmapItem(h: self), extension)
  let slotval1 = QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsPixmapItem, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsPixmapItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsPixmapItemsetExtensionBase* = proc(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_setExtension(self: ptr cQGraphicsPixmapItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_setExtension ".} =
  type Cb = proc(super: QGraphicsPixmapItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsPixmapItem(h: self), extension, variant)
  let slotval1 = QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsPixmapItem, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsPixmapItem_virtualbase_extension(self.h, variant.h))

type QGraphicsPixmapItemextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_extension(self: ptr cQGraphicsPixmapItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_extension ".} =
  type Cb = proc(super: QGraphicsPixmapItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsPixmapItem(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_advance(self: QGraphicsPixmapItem, phase: cint): void =


  fQGraphicsPixmapItem_virtualbase_advance(self.h, phase)

type QGraphicsPixmapItemadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_advance(self: ptr cQGraphicsPixmapItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_advance ".} =
  type Cb = proc(super: QGraphicsPixmapItemadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsPixmapItem(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
proc callVirtualBase_collidesWithItem(self: QGraphicsPixmapItem, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsPixmapItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsPixmapItemcollidesWithItemBase* = proc(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_collidesWithItem(self: ptr cQGraphicsPixmapItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsPixmapItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsPixmapItem(h: self), other, mode)
  let slotval1 = QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsPixmapItem, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsPixmapItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsPixmapItemcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_collidesWithPath(self: ptr cQGraphicsPixmapItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsPixmapItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsPixmapItem(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEventFilter(self: QGraphicsPixmapItem, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsPixmapItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsPixmapItemsceneEventFilterBase* = proc(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_sceneEventFilter(self: ptr cQGraphicsPixmapItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsPixmapItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsPixmapItem(h: self), watched, event)
  let slotval1 = QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QGraphicsPixmapItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsPixmapItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsPixmapItemsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_sceneEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_sceneEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsPixmapItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsPixmapItemcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_contextMenuEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsPixmapItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsPixmapItemdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_dragEnterEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsPixmapItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsPixmapItemdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_dragLeaveEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsPixmapItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsPixmapItemdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_dragMoveEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsPixmapItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsPixmapItemdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_dropEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_dropEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsPixmapItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsPixmapItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsPixmapItemfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_focusInEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_focusInEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsPixmapItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsPixmapItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsPixmapItemfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_focusOutEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsPixmapItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsPixmapItemhoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_hoverEnterEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsPixmapItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsPixmapItemhoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_hoverMoveEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsPixmapItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsPixmapItemhoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_hoverLeaveEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsPixmapItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsPixmapItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsPixmapItemkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_keyPressEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsPixmapItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsPixmapItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsPixmapItemkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_keyReleaseEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsPixmapItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsPixmapItemmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_mousePressEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsPixmapItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsPixmapItemmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_mouseMoveEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsPixmapItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsPixmapItemmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_mouseReleaseEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsPixmapItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsPixmapItemmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_mouseDoubleClickEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsPixmapItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsPixmapItemwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_wheelEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_wheelEvent ".} =
  type Cb = proc(super: QGraphicsPixmapItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsPixmapItem, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsPixmapItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsPixmapIteminputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_inputMethodEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsPixmapIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsPixmapItem(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGraphicsPixmapItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsPixmapItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsPixmapIteminputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_inputMethodQuery(self: ptr cQGraphicsPixmapItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsPixmapIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsPixmapItem(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_itemChange(self: QGraphicsPixmapItem, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsPixmapItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsPixmapItemitemChangeBase* = proc(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsPixmapItem, slot: proc(super: QGraphicsPixmapItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsPixmapItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_itemChange(self: ptr cQGraphicsPixmapItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_itemChange ".} =
  type Cb = proc(super: QGraphicsPixmapItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsPixmapItem(h: self), change, value)
  let slotval1 = QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: QGraphicsPixmapItem) =
  fcQGraphicsPixmapItem_delete(self.h)

func init*(T: type QGraphicsTextItem, h: ptr cQGraphicsTextItem): QGraphicsTextItem =
  T(h: h)
proc create*(T: type QGraphicsTextItem, ): QGraphicsTextItem =

  QGraphicsTextItem.init(fcQGraphicsTextItem_new())
proc create*(T: type QGraphicsTextItem, text: string): QGraphicsTextItem =

  QGraphicsTextItem.init(fcQGraphicsTextItem_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QGraphicsTextItem, parent: QGraphicsItem): QGraphicsTextItem =

  QGraphicsTextItem.init(fcQGraphicsTextItem_new3(parent.h))
proc create*(T: type QGraphicsTextItem, text: string, parent: QGraphicsItem): QGraphicsTextItem =

  QGraphicsTextItem.init(fcQGraphicsTextItem_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc metaObject*(self: QGraphicsTextItem, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsTextItem_metaObject(self.h))

proc metacast*(self: QGraphicsTextItem, param1: cstring): pointer =

  fcQGraphicsTextItem_metacast(self.h, param1)

proc metacall*(self: QGraphicsTextItem, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsTextItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsTextItem, s: cstring): string =

  let v_ms = fcQGraphicsTextItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsTextItem, s: cstring): string =

  let v_ms = fcQGraphicsTextItem_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toHtml*(self: QGraphicsTextItem, ): string =

  let v_ms = fcQGraphicsTextItem_toHtml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHtml*(self: QGraphicsTextItem, html: string): void =

  fcQGraphicsTextItem_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc toPlainText*(self: QGraphicsTextItem, ): string =

  let v_ms = fcQGraphicsTextItem_toPlainText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPlainText*(self: QGraphicsTextItem, text: string): void =

  fcQGraphicsTextItem_setPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc font*(self: QGraphicsTextItem, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQGraphicsTextItem_font(self.h))

proc setFont*(self: QGraphicsTextItem, font: gen_qfont.QFont): void =

  fcQGraphicsTextItem_setFont(self.h, font.h)

proc setDefaultTextColor*(self: QGraphicsTextItem, c: gen_qcolor.QColor): void =

  fcQGraphicsTextItem_setDefaultTextColor(self.h, c.h)

proc defaultTextColor*(self: QGraphicsTextItem, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQGraphicsTextItem_defaultTextColor(self.h))

proc boundingRect*(self: QGraphicsTextItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsTextItem_boundingRect(self.h))

proc shape*(self: QGraphicsTextItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsTextItem_shape(self.h))

proc contains*(self: QGraphicsTextItem, point: gen_qpoint.QPointF): bool =

  fcQGraphicsTextItem_contains(self.h, point.h)

proc paint*(self: QGraphicsTextItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsTextItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: QGraphicsTextItem, item: QGraphicsItem): bool =

  fcQGraphicsTextItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: QGraphicsTextItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsTextItem_opaqueArea(self.h))

proc typeX*(self: QGraphicsTextItem, ): cint =

  fcQGraphicsTextItem_typeX(self.h)

proc setTextWidth*(self: QGraphicsTextItem, width: float64): void =

  fcQGraphicsTextItem_setTextWidth(self.h, width)

proc textWidth*(self: QGraphicsTextItem, ): float64 =

  fcQGraphicsTextItem_textWidth(self.h)

proc adjustSize*(self: QGraphicsTextItem, ): void =

  fcQGraphicsTextItem_adjustSize(self.h)

proc setDocument*(self: QGraphicsTextItem, document: gen_qtextdocument.QTextDocument): void =

  fcQGraphicsTextItem_setDocument(self.h, document.h)

proc document*(self: QGraphicsTextItem, ): gen_qtextdocument.QTextDocument =

  gen_qtextdocument.QTextDocument(h: fcQGraphicsTextItem_document(self.h))

proc setTextInteractionFlags*(self: QGraphicsTextItem, flags: gen_qnamespace.TextInteractionFlag): void =

  fcQGraphicsTextItem_setTextInteractionFlags(self.h, cint(flags))

proc textInteractionFlags*(self: QGraphicsTextItem, ): gen_qnamespace.TextInteractionFlag =

  gen_qnamespace.TextInteractionFlag(fcQGraphicsTextItem_textInteractionFlags(self.h))

proc setTabChangesFocus*(self: QGraphicsTextItem, b: bool): void =

  fcQGraphicsTextItem_setTabChangesFocus(self.h, b)

proc tabChangesFocus*(self: QGraphicsTextItem, ): bool =

  fcQGraphicsTextItem_tabChangesFocus(self.h)

proc setOpenExternalLinks*(self: QGraphicsTextItem, open: bool): void =

  fcQGraphicsTextItem_setOpenExternalLinks(self.h, open)

proc openExternalLinks*(self: QGraphicsTextItem, ): bool =

  fcQGraphicsTextItem_openExternalLinks(self.h)

proc setTextCursor*(self: QGraphicsTextItem, cursor: gen_qtextcursor.QTextCursor): void =

  fcQGraphicsTextItem_setTextCursor(self.h, cursor.h)

proc textCursor*(self: QGraphicsTextItem, ): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQGraphicsTextItem_textCursor(self.h))

proc linkActivated*(self: QGraphicsTextItem, param1: string): void =

  fcQGraphicsTextItem_linkActivated(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QGraphicsTextItem_linkActivated(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc onlinkActivated*(self: QGraphicsTextItem, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsTextItem_connect_linkActivated(self.h, cast[int](addr tmp[]))
proc linkHovered*(self: QGraphicsTextItem, param1: string): void =

  fcQGraphicsTextItem_linkHovered(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QGraphicsTextItem_linkHovered(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc onlinkHovered*(self: QGraphicsTextItem, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsTextItem_connect_linkHovered(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGraphicsTextItem, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsTextItem_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsTextItem, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsTextItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsTextItem, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsTextItem_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsTextItem, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsTextItem_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QGraphicsTextItem, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsTextItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsTextItemmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_metacall(self: ptr cQGraphicsTextItem, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsTextItem_metacall ".} =
  type Cb = proc(super: QGraphicsTextItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsTextItem(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_boundingRect(self: QGraphicsTextItem, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsTextItem_virtualbase_boundingRect(self.h))

type QGraphicsTextItemboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_boundingRect(self: ptr cQGraphicsTextItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsTextItem_boundingRect ".} =
  type Cb = proc(super: QGraphicsTextItemboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QGraphicsTextItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_shape(self: QGraphicsTextItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsTextItem_virtualbase_shape(self.h))

type QGraphicsTextItemshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_shape(self: ptr cQGraphicsTextItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsTextItem_shape ".} =
  type Cb = proc(super: QGraphicsTextItemshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsTextItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QGraphicsTextItem, point: gen_qpoint.QPointF): bool =


  fQGraphicsTextItem_virtualbase_contains(self.h, point.h)

type QGraphicsTextItemcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_contains(self: ptr cQGraphicsTextItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_contains ".} =
  type Cb = proc(super: QGraphicsTextItemcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsTextItem(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paint(self: QGraphicsTextItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsTextItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsTextItempaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_paint(self: ptr cQGraphicsTextItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_paint ".} =
  type Cb = proc(super: QGraphicsTextItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paint(QGraphicsTextItem(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_isObscuredBy(self: QGraphicsTextItem, item: QGraphicsItem): bool =


  fQGraphicsTextItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsTextItemisObscuredByBase* = proc(item: QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemisObscuredByBase, item: QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemisObscuredByBase, item: QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_isObscuredBy(self: ptr cQGraphicsTextItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsTextItemisObscuredByBase, item: QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsTextItem(h: self), item)
  let slotval1 = QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsTextItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsTextItem_virtualbase_opaqueArea(self.h))

type QGraphicsTextItemopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_opaqueArea(self: ptr cQGraphicsTextItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsTextItem_opaqueArea ".} =
  type Cb = proc(super: QGraphicsTextItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsTextItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_typeX(self: QGraphicsTextItem, ): cint =


  fQGraphicsTextItem_virtualbase_type(self.h)

type QGraphicsTextItemtypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemtypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemtypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_type(self: ptr cQGraphicsTextItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsTextItem_type ".} =
  type Cb = proc(super: QGraphicsTextItemtypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsTextItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QGraphicsTextItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsTextItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsTextItemsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_sceneEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_sceneEvent ".} =
  type Cb = proc(super: QGraphicsTextItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QGraphicsTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsTextItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsTextItemmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_mousePressEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsTextItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsTextItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsTextItemmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_mouseMoveEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsTextItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsTextItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsTextItemmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_mouseReleaseEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsTextItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsTextItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsTextItemmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_mouseDoubleClickEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsTextItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QGraphicsTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsTextItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsTextItemcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_contextMenuEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsTextItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsTextItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsTextItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsTextItemkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_keyPressEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsTextItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsTextItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsTextItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsTextItemkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_keyReleaseEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsTextItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsTextItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsTextItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsTextItemfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_focusInEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_focusInEvent ".} =
  type Cb = proc(super: QGraphicsTextItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsTextItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsTextItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsTextItemfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_focusOutEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsTextItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsTextItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsTextItemdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_dragEnterEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsTextItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsTextItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsTextItemdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_dragLeaveEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsTextItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsTextItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsTextItemdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_dragMoveEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsTextItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsTextItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsTextItemdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_dropEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_dropEvent ".} =
  type Cb = proc(super: QGraphicsTextItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsTextItem, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsTextItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsTextIteminputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_inputMethodEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsTextIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsTextItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsTextItemhoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_hoverEnterEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsTextItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsTextItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsTextItemhoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_hoverMoveEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsTextItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsTextItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsTextItemhoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_hoverLeaveEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsTextItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGraphicsTextItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsTextItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsTextIteminputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_inputMethodQuery(self: ptr cQGraphicsTextItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsTextItem_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsTextIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsTextItem(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_supportsExtension(self: QGraphicsTextItem, extension: QGraphicsItemExtension): bool =


  fQGraphicsTextItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsTextItemsupportsExtensionBase* = proc(extension: QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_supportsExtension(self: ptr cQGraphicsTextItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_supportsExtension ".} =
  type Cb = proc(super: QGraphicsTextItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsTextItem(h: self), extension)
  let slotval1 = QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsTextItem, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsTextItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsTextItemsetExtensionBase* = proc(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_setExtension(self: ptr cQGraphicsTextItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_setExtension ".} =
  type Cb = proc(super: QGraphicsTextItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsTextItem(h: self), extension, variant)
  let slotval1 = QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsTextItem, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsTextItem_virtualbase_extension(self.h, variant.h))

type QGraphicsTextItemextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_extension(self: ptr cQGraphicsTextItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsTextItem_extension ".} =
  type Cb = proc(super: QGraphicsTextItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsTextItem(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_event(self: QGraphicsTextItem, ev: gen_qcoreevent.QEvent): bool =


  fQGraphicsTextItem_virtualbase_event(self.h, ev.h)

type QGraphicsTextItemeventBase* = proc(ev: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemeventBase, ev: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemeventBase, ev: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_event(self: ptr cQGraphicsTextItem, slot: int, ev: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_event ".} =
  type Cb = proc(super: QGraphicsTextItemeventBase, ev: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsTextItem(h: self), ev)
  let slotval1 = gen_qcoreevent.QEvent(h: ev)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsTextItem, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsTextItem_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsTextItemeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_eventFilter(self: ptr cQGraphicsTextItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_eventFilter ".} =
  type Cb = proc(super: QGraphicsTextItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsTextItem(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsTextItem, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsTextItem_virtualbase_timerEvent(self.h, event.h)

type QGraphicsTextItemtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_timerEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_timerEvent ".} =
  type Cb = proc(super: QGraphicsTextItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsTextItem, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsTextItem_virtualbase_childEvent(self.h, event.h)

type QGraphicsTextItemchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_childEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_childEvent ".} =
  type Cb = proc(super: QGraphicsTextItemchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsTextItem, event: gen_qcoreevent.QEvent): void =


  fQGraphicsTextItem_virtualbase_customEvent(self.h, event.h)

type QGraphicsTextItemcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_customEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_customEvent ".} =
  type Cb = proc(super: QGraphicsTextItemcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsTextItem, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsTextItem_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsTextItemconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_connectNotify(self: ptr cQGraphicsTextItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_connectNotify ".} =
  type Cb = proc(super: QGraphicsTextItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsTextItem(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsTextItem, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsTextItem_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsTextItemdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_disconnectNotify(self: ptr cQGraphicsTextItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsTextItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsTextItem(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_advance(self: QGraphicsTextItem, phase: cint): void =


  fQGraphicsTextItem_virtualbase_advance(self.h, phase)

type QGraphicsTextItemadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_advance(self: ptr cQGraphicsTextItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_advance ".} =
  type Cb = proc(super: QGraphicsTextItemadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsTextItem(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
proc callVirtualBase_collidesWithItem(self: QGraphicsTextItem, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsTextItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsTextItemcollidesWithItemBase* = proc(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_collidesWithItem(self: ptr cQGraphicsTextItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsTextItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsTextItem(h: self), other, mode)
  let slotval1 = QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsTextItem, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsTextItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsTextItemcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_collidesWithPath(self: ptr cQGraphicsTextItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsTextItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsTextItem(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEventFilter(self: QGraphicsTextItem, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsTextItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsTextItemsceneEventFilterBase* = proc(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_sceneEventFilter(self: ptr cQGraphicsTextItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsTextItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsTextItem(h: self), watched, event)
  let slotval1 = QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_wheelEvent(self: QGraphicsTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsTextItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsTextItemwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_wheelEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_wheelEvent ".} =
  type Cb = proc(super: QGraphicsTextItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_itemChange(self: QGraphicsTextItem, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsTextItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsTextItemitemChangeBase* = proc(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsTextItem, slot: proc(super: QGraphicsTextItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTextItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_itemChange(self: ptr cQGraphicsTextItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsTextItem_itemChange ".} =
  type Cb = proc(super: QGraphicsTextItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsTextItem(h: self), change, value)
  let slotval1 = QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc staticMetaObject*(_: type QGraphicsTextItem): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsTextItem_staticMetaObject())
proc delete*(self: QGraphicsTextItem) =
  fcQGraphicsTextItem_delete(self.h)

func init*(T: type QGraphicsSimpleTextItem, h: ptr cQGraphicsSimpleTextItem): QGraphicsSimpleTextItem =
  T(h: h)
proc create*(T: type QGraphicsSimpleTextItem, ): QGraphicsSimpleTextItem =

  QGraphicsSimpleTextItem.init(fcQGraphicsSimpleTextItem_new())
proc create*(T: type QGraphicsSimpleTextItem, text: string): QGraphicsSimpleTextItem =

  QGraphicsSimpleTextItem.init(fcQGraphicsSimpleTextItem_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QGraphicsSimpleTextItem, parent: QGraphicsItem): QGraphicsSimpleTextItem =

  QGraphicsSimpleTextItem.init(fcQGraphicsSimpleTextItem_new3(parent.h))
proc create*(T: type QGraphicsSimpleTextItem, text: string, parent: QGraphicsItem): QGraphicsSimpleTextItem =

  QGraphicsSimpleTextItem.init(fcQGraphicsSimpleTextItem_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc setText*(self: QGraphicsSimpleTextItem, text: string): void =

  fcQGraphicsSimpleTextItem_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc text*(self: QGraphicsSimpleTextItem, ): string =

  let v_ms = fcQGraphicsSimpleTextItem_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFont*(self: QGraphicsSimpleTextItem, font: gen_qfont.QFont): void =

  fcQGraphicsSimpleTextItem_setFont(self.h, font.h)

proc font*(self: QGraphicsSimpleTextItem, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQGraphicsSimpleTextItem_font(self.h))

proc boundingRect*(self: QGraphicsSimpleTextItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsSimpleTextItem_boundingRect(self.h))

proc shape*(self: QGraphicsSimpleTextItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsSimpleTextItem_shape(self.h))

proc contains*(self: QGraphicsSimpleTextItem, point: gen_qpoint.QPointF): bool =

  fcQGraphicsSimpleTextItem_contains(self.h, point.h)

proc paint*(self: QGraphicsSimpleTextItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsSimpleTextItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: QGraphicsSimpleTextItem, item: QGraphicsItem): bool =

  fcQGraphicsSimpleTextItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: QGraphicsSimpleTextItem, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsSimpleTextItem_opaqueArea(self.h))

proc typeX*(self: QGraphicsSimpleTextItem, ): cint =

  fcQGraphicsSimpleTextItem_typeX(self.h)

proc callVirtualBase_boundingRect(self: QGraphicsSimpleTextItem, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsSimpleTextItem_virtualbase_boundingRect(self.h))

type QGraphicsSimpleTextItemboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_boundingRect(self: ptr cQGraphicsSimpleTextItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_boundingRect ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QGraphicsSimpleTextItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_shape(self: QGraphicsSimpleTextItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsSimpleTextItem_virtualbase_shape(self.h))

type QGraphicsSimpleTextItemshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_shape(self: ptr cQGraphicsSimpleTextItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_shape ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsSimpleTextItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QGraphicsSimpleTextItem, point: gen_qpoint.QPointF): bool =


  fQGraphicsSimpleTextItem_virtualbase_contains(self.h, point.h)

type QGraphicsSimpleTextItemcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_contains(self: ptr cQGraphicsSimpleTextItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_contains ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsSimpleTextItem(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paint(self: QGraphicsSimpleTextItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsSimpleTextItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsSimpleTextItempaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_paint(self: ptr cQGraphicsSimpleTextItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_paint ".} =
  type Cb = proc(super: QGraphicsSimpleTextItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paint(QGraphicsSimpleTextItem(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_isObscuredBy(self: QGraphicsSimpleTextItem, item: QGraphicsItem): bool =


  fQGraphicsSimpleTextItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsSimpleTextItemisObscuredByBase* = proc(item: QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemisObscuredByBase, item: QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemisObscuredByBase, item: QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_isObscuredBy(self: ptr cQGraphicsSimpleTextItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemisObscuredByBase, item: QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsSimpleTextItem(h: self), item)
  let slotval1 = QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsSimpleTextItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsSimpleTextItem_virtualbase_opaqueArea(self.h))

type QGraphicsSimpleTextItemopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_opaqueArea(self: ptr cQGraphicsSimpleTextItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_opaqueArea ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsSimpleTextItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_typeX(self: QGraphicsSimpleTextItem, ): cint =


  fQGraphicsSimpleTextItem_virtualbase_type(self.h)

type QGraphicsSimpleTextItemtypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemtypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemtypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_type(self: ptr cQGraphicsSimpleTextItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_type ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemtypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsSimpleTextItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_supportsExtension(self: QGraphicsSimpleTextItem, extension: QGraphicsItemExtension): bool =


  fQGraphicsSimpleTextItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsSimpleTextItemsupportsExtensionBase* = proc(extension: QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_supportsExtension(self: ptr cQGraphicsSimpleTextItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_supportsExtension ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsSimpleTextItem(h: self), extension)
  let slotval1 = QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsSimpleTextItem, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsSimpleTextItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsSimpleTextItemsetExtensionBase* = proc(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_setExtension(self: ptr cQGraphicsSimpleTextItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_setExtension ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsSimpleTextItem(h: self), extension, variant)
  let slotval1 = QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsSimpleTextItem, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsSimpleTextItem_virtualbase_extension(self.h, variant.h))

type QGraphicsSimpleTextItemextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_extension(self: ptr cQGraphicsSimpleTextItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_extension ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsSimpleTextItem(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_advance(self: QGraphicsSimpleTextItem, phase: cint): void =


  fQGraphicsSimpleTextItem_virtualbase_advance(self.h, phase)

type QGraphicsSimpleTextItemadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_advance(self: ptr cQGraphicsSimpleTextItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_advance ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsSimpleTextItem(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
proc callVirtualBase_collidesWithItem(self: QGraphicsSimpleTextItem, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsSimpleTextItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsSimpleTextItemcollidesWithItemBase* = proc(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_collidesWithItem(self: ptr cQGraphicsSimpleTextItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsSimpleTextItem(h: self), other, mode)
  let slotval1 = QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsSimpleTextItem, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsSimpleTextItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsSimpleTextItemcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_collidesWithPath(self: ptr cQGraphicsSimpleTextItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsSimpleTextItem(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEventFilter(self: QGraphicsSimpleTextItem, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsSimpleTextItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsSimpleTextItemsceneEventFilterBase* = proc(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_sceneEventFilter(self: ptr cQGraphicsSimpleTextItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsSimpleTextItem(h: self), watched, event)
  let slotval1 = QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QGraphicsSimpleTextItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsSimpleTextItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsSimpleTextItemsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_sceneEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_sceneEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsSimpleTextItemcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_contextMenuEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsSimpleTextItemdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_dragEnterEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsSimpleTextItemdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_dragLeaveEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsSimpleTextItemdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_dragMoveEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsSimpleTextItemdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_dropEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_dropEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsSimpleTextItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsSimpleTextItemfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_focusInEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_focusInEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsSimpleTextItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsSimpleTextItemfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_focusOutEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsSimpleTextItemhoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_hoverEnterEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsSimpleTextItemhoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_hoverMoveEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsSimpleTextItemhoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_hoverLeaveEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsSimpleTextItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsSimpleTextItemkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_keyPressEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsSimpleTextItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsSimpleTextItemkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_keyReleaseEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsSimpleTextItemmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_mousePressEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsSimpleTextItemmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_mouseMoveEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsSimpleTextItemmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_mouseReleaseEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsSimpleTextItemmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_mouseDoubleClickEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsSimpleTextItemwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_wheelEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_wheelEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsSimpleTextItem, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsSimpleTextItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsSimpleTextIteminputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_inputMethodEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsSimpleTextIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsSimpleTextItem(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGraphicsSimpleTextItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsSimpleTextItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsSimpleTextIteminputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_inputMethodQuery(self: ptr cQGraphicsSimpleTextItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsSimpleTextIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsSimpleTextItem(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_itemChange(self: QGraphicsSimpleTextItem, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsSimpleTextItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsSimpleTextItemitemChangeBase* = proc(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsSimpleTextItem, slot: proc(super: QGraphicsSimpleTextItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSimpleTextItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_itemChange(self: ptr cQGraphicsSimpleTextItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_itemChange ".} =
  type Cb = proc(super: QGraphicsSimpleTextItemitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsSimpleTextItem(h: self), change, value)
  let slotval1 = QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: QGraphicsSimpleTextItem) =
  fcQGraphicsSimpleTextItem_delete(self.h)

func init*(T: type QGraphicsItemGroup, h: ptr cQGraphicsItemGroup): QGraphicsItemGroup =
  T(h: h)
proc create*(T: type QGraphicsItemGroup, ): QGraphicsItemGroup =

  QGraphicsItemGroup.init(fcQGraphicsItemGroup_new())
proc create*(T: type QGraphicsItemGroup, parent: QGraphicsItem): QGraphicsItemGroup =

  QGraphicsItemGroup.init(fcQGraphicsItemGroup_new2(parent.h))
proc addToGroup*(self: QGraphicsItemGroup, item: QGraphicsItem): void =

  fcQGraphicsItemGroup_addToGroup(self.h, item.h)

proc removeFromGroup*(self: QGraphicsItemGroup, item: QGraphicsItem): void =

  fcQGraphicsItemGroup_removeFromGroup(self.h, item.h)

proc boundingRect*(self: QGraphicsItemGroup, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsItemGroup_boundingRect(self.h))

proc paint*(self: QGraphicsItemGroup, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsItemGroup_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: QGraphicsItemGroup, item: QGraphicsItem): bool =

  fcQGraphicsItemGroup_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: QGraphicsItemGroup, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsItemGroup_opaqueArea(self.h))

proc typeX*(self: QGraphicsItemGroup, ): cint =

  fcQGraphicsItemGroup_typeX(self.h)

proc callVirtualBase_boundingRect(self: QGraphicsItemGroup, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsItemGroup_virtualbase_boundingRect(self.h))

type QGraphicsItemGroupboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_boundingRect(self: ptr cQGraphicsItemGroup, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsItemGroup_boundingRect ".} =
  type Cb = proc(super: QGraphicsItemGroupboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QGraphicsItemGroup(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_paint(self: QGraphicsItemGroup, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsItemGroup_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsItemGrouppaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGrouppaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGrouppaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_paint(self: ptr cQGraphicsItemGroup, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_paint ".} =
  type Cb = proc(super: QGraphicsItemGrouppaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paint(QGraphicsItemGroup(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_isObscuredBy(self: QGraphicsItemGroup, item: QGraphicsItem): bool =


  fQGraphicsItemGroup_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsItemGroupisObscuredByBase* = proc(item: QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupisObscuredByBase, item: QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupisObscuredByBase, item: QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_isObscuredBy(self: ptr cQGraphicsItemGroup, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItemGroup_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsItemGroupisObscuredByBase, item: QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsItemGroup(h: self), item)
  let slotval1 = QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsItemGroup, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsItemGroup_virtualbase_opaqueArea(self.h))

type QGraphicsItemGroupopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_opaqueArea(self: ptr cQGraphicsItemGroup, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsItemGroup_opaqueArea ".} =
  type Cb = proc(super: QGraphicsItemGroupopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsItemGroup(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_typeX(self: QGraphicsItemGroup, ): cint =


  fQGraphicsItemGroup_virtualbase_type(self.h)

type QGraphicsItemGrouptypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGrouptypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGrouptypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_type(self: ptr cQGraphicsItemGroup, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsItemGroup_type ".} =
  type Cb = proc(super: QGraphicsItemGrouptypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsItemGroup(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_advance(self: QGraphicsItemGroup, phase: cint): void =


  fQGraphicsItemGroup_virtualbase_advance(self.h, phase)

type QGraphicsItemGroupadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_advance(self: ptr cQGraphicsItemGroup, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_advance ".} =
  type Cb = proc(super: QGraphicsItemGroupadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsItemGroup(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
proc callVirtualBase_shape(self: QGraphicsItemGroup, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsItemGroup_virtualbase_shape(self.h))

type QGraphicsItemGroupshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_shape(self: ptr cQGraphicsItemGroup, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsItemGroup_shape ".} =
  type Cb = proc(super: QGraphicsItemGroupshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsItemGroup(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QGraphicsItemGroup, point: gen_qpoint.QPointF): bool =


  fQGraphicsItemGroup_virtualbase_contains(self.h, point.h)

type QGraphicsItemGroupcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_contains(self: ptr cQGraphicsItemGroup, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItemGroup_contains ".} =
  type Cb = proc(super: QGraphicsItemGroupcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsItemGroup(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_collidesWithItem(self: QGraphicsItemGroup, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsItemGroup_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsItemGroupcollidesWithItemBase* = proc(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_collidesWithItem(self: ptr cQGraphicsItemGroup, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsItemGroup_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsItemGroupcollidesWithItemBase, other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsItemGroup(h: self), other, mode)
  let slotval1 = QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsItemGroup, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsItemGroup_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsItemGroupcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_collidesWithPath(self: ptr cQGraphicsItemGroup, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsItemGroup_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsItemGroupcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsItemGroup(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEventFilter(self: QGraphicsItemGroup, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsItemGroup_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsItemGroupsceneEventFilterBase* = proc(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_sceneEventFilter(self: ptr cQGraphicsItemGroup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItemGroup_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsItemGroupsceneEventFilterBase, watched: QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsItemGroup(h: self), watched, event)
  let slotval1 = QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QGraphicsItemGroup, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsItemGroup_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsItemGroupsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_sceneEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItemGroup_sceneEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsItemGroup_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsItemGroupcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_contextMenuEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsItemGroup_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsItemGroupdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_dragEnterEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsItemGroup_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsItemGroupdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_dragLeaveEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsItemGroup_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsItemGroupdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_dragMoveEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsItemGroup_virtualbase_dropEvent(self.h, event.h)

type QGraphicsItemGroupdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_dropEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_dropEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsItemGroup, event: gen_qevent.QFocusEvent): void =


  fQGraphicsItemGroup_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsItemGroupfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_focusInEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_focusInEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsItemGroup, event: gen_qevent.QFocusEvent): void =


  fQGraphicsItemGroup_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsItemGroupfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_focusOutEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsItemGroup_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsItemGrouphoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGrouphoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGrouphoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_hoverEnterEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsItemGrouphoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsItemGroup_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsItemGrouphoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGrouphoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGrouphoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_hoverMoveEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsItemGrouphoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsItemGroup_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsItemGrouphoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGrouphoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGrouphoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_hoverLeaveEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsItemGrouphoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsItemGroup, event: gen_qevent.QKeyEvent): void =


  fQGraphicsItemGroup_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsItemGroupkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_keyPressEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsItemGroup, event: gen_qevent.QKeyEvent): void =


  fQGraphicsItemGroup_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsItemGroupkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_keyReleaseEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsItemGroup_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsItemGroupmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_mousePressEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsItemGroup_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsItemGroupmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_mouseMoveEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsItemGroup_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsItemGroupmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_mouseReleaseEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsItemGroup_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsItemGroupmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_mouseDoubleClickEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsItemGroup_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsItemGroupwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_wheelEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_wheelEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsItemGroup, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsItemGroup_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsItemGroupinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_inputMethodEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsItemGroupinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsItemGroup(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGraphicsItemGroup, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsItemGroup_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsItemGroupinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_inputMethodQuery(self: ptr cQGraphicsItemGroup, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsItemGroup_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsItemGroupinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsItemGroup(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_itemChange(self: QGraphicsItemGroup, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsItemGroup_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsItemGroupitemChangeBase* = proc(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_itemChange(self: ptr cQGraphicsItemGroup, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsItemGroup_itemChange ".} =
  type Cb = proc(super: QGraphicsItemGroupitemChangeBase, change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsItemGroup(h: self), change, value)
  let slotval1 = QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_supportsExtension(self: QGraphicsItemGroup, extension: QGraphicsItemExtension): bool =


  fQGraphicsItemGroup_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsItemGroupsupportsExtensionBase* = proc(extension: QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupsupportsExtensionBase, extension: QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_supportsExtension(self: ptr cQGraphicsItemGroup, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsItemGroup_supportsExtension ".} =
  type Cb = proc(super: QGraphicsItemGroupsupportsExtensionBase, extension: QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsItemGroup(h: self), extension)
  let slotval1 = QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsItemGroup, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsItemGroup_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsItemGroupsetExtensionBase* = proc(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_setExtension(self: ptr cQGraphicsItemGroup, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_setExtension ".} =
  type Cb = proc(super: QGraphicsItemGroupsetExtensionBase, extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsItemGroup(h: self), extension, variant)
  let slotval1 = QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsItemGroup, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsItemGroup_virtualbase_extension(self.h, variant.h))

type QGraphicsItemGroupextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsItemGroup, slot: proc(super: QGraphicsItemGroupextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemGroupextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_extension(self: ptr cQGraphicsItemGroup, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsItemGroup_extension ".} =
  type Cb = proc(super: QGraphicsItemGroupextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsItemGroup(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc delete*(self: QGraphicsItemGroup) =
  fcQGraphicsItemGroup_delete(self.h)
