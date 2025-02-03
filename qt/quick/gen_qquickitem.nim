import Qt5Quick_libs

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

const cflags = gorge("pkg-config -cflags Qt5Quick")
{.compile("gen_qquickitem.cpp", cflags).}


type QQuickItemFlag* = cint
const
  QQuickItemItemClipsChildrenToShape* = 1
  QQuickItemItemAcceptsInputMethod* = 2
  QQuickItemItemIsFocusScope* = 4
  QQuickItemItemHasContents* = 8
  QQuickItemItemAcceptsDrops* = 16



type QQuickItemItemChange* = cint
const
  QQuickItemItemChildAddedChange* = 0
  QQuickItemItemChildRemovedChange* = 1
  QQuickItemItemSceneChange* = 2
  QQuickItemItemVisibleHasChanged* = 3
  QQuickItemItemParentHasChanged* = 4
  QQuickItemItemOpacityHasChanged* = 5
  QQuickItemItemActiveFocusHasChanged* = 6
  QQuickItemItemRotationHasChanged* = 7
  QQuickItemItemAntialiasingHasChanged* = 8
  QQuickItemItemDevicePixelRatioHasChanged* = 9
  QQuickItemItemEnabledHasChanged* = 10



type QQuickItemTransformOrigin* = cint
const
  QQuickItemTopLeft* = 0
  QQuickItemTop* = 1
  QQuickItemTopRight* = 2
  QQuickItemLeft* = 3
  QQuickItemCenter* = 4
  QQuickItemRight* = 5
  QQuickItemBottomLeft* = 6
  QQuickItemBottom* = 7
  QQuickItemBottomRight* = 8



import gen_qquickitem_types
export gen_qquickitem_types

import
  gen_qcoreevent,
  gen_qcursor,
  gen_qevent,
  gen_qjsvalue,
  gen_qmatrix4x4,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qquickwindow,
  gen_qrect,
  gen_qsgnode,
  gen_qsgtextureprovider,
  gen_qsize,
  gen_qtransform,
  gen_qvariant
export
  gen_qcoreevent,
  gen_qcursor,
  gen_qevent,
  gen_qjsvalue,
  gen_qmatrix4x4,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qquickwindow,
  gen_qrect,
  gen_qsgnode,
  gen_qsgtextureprovider,
  gen_qsize,
  gen_qtransform,
  gen_qvariant

type cQQuickTransform*{.exportc: "QQuickTransform", incompleteStruct.} = object
type cQQuickItem*{.exportc: "QQuickItem", incompleteStruct.} = object
type cQQuickItemItemChangeData*{.exportc: "QQuickItem__ItemChangeData", incompleteStruct.} = object
type cQQuickItemUpdatePaintNodeData*{.exportc: "QQuickItem__UpdatePaintNodeData", incompleteStruct.} = object

proc fcQQuickTransform_new(): ptr cQQuickTransform {.importc: "QQuickTransform_new".}
proc fcQQuickTransform_new2(parent: pointer): ptr cQQuickTransform {.importc: "QQuickTransform_new2".}
proc fcQQuickTransform_metaObject(self: pointer, ): pointer {.importc: "QQuickTransform_metaObject".}
proc fcQQuickTransform_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTransform_metacast".}
proc fcQQuickTransform_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTransform_metacall".}
proc fcQQuickTransform_tr(s: cstring): struct_miqt_string {.importc: "QQuickTransform_tr".}
proc fcQQuickTransform_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickTransform_trUtf8".}
proc fcQQuickTransform_appendToItem(self: pointer, param1: pointer): void {.importc: "QQuickTransform_appendToItem".}
proc fcQQuickTransform_prependToItem(self: pointer, param1: pointer): void {.importc: "QQuickTransform_prependToItem".}
proc fcQQuickTransform_applyTo(self: pointer, matrix: pointer): void {.importc: "QQuickTransform_applyTo".}
proc fcQQuickTransform_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTransform_tr2".}
proc fcQQuickTransform_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTransform_tr3".}
proc fcQQuickTransform_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTransform_trUtf82".}
proc fcQQuickTransform_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTransform_trUtf83".}
proc fQQuickTransform_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickTransform_virtualbase_metacall".}
proc fcQQuickTransform_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_metacall".}
proc fcQQuickTransform_override_virtual_applyTo(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_applyTo".}
proc fQQuickTransform_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQuickTransform_virtualbase_event".}
proc fcQQuickTransform_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_event".}
proc fQQuickTransform_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickTransform_virtualbase_eventFilter".}
proc fcQQuickTransform_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_eventFilter".}
proc fQQuickTransform_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickTransform_virtualbase_timerEvent".}
proc fcQQuickTransform_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_timerEvent".}
proc fQQuickTransform_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickTransform_virtualbase_childEvent".}
proc fcQQuickTransform_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_childEvent".}
proc fQQuickTransform_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickTransform_virtualbase_customEvent".}
proc fcQQuickTransform_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_customEvent".}
proc fQQuickTransform_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickTransform_virtualbase_connectNotify".}
proc fcQQuickTransform_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_connectNotify".}
proc fQQuickTransform_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickTransform_virtualbase_disconnectNotify".}
proc fcQQuickTransform_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_disconnectNotify".}
proc fcQQuickTransform_delete(self: pointer) {.importc: "QQuickTransform_delete".}
proc fcQQuickItem_new(): ptr cQQuickItem {.importc: "QQuickItem_new".}
proc fcQQuickItem_new2(parent: pointer): ptr cQQuickItem {.importc: "QQuickItem_new2".}
proc fcQQuickItem_metaObject(self: pointer, ): pointer {.importc: "QQuickItem_metaObject".}
proc fcQQuickItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickItem_metacast".}
proc fcQQuickItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickItem_metacall".}
proc fcQQuickItem_tr(s: cstring): struct_miqt_string {.importc: "QQuickItem_tr".}
proc fcQQuickItem_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickItem_trUtf8".}
proc fcQQuickItem_window(self: pointer, ): pointer {.importc: "QQuickItem_window".}
proc fcQQuickItem_parentItem(self: pointer, ): pointer {.importc: "QQuickItem_parentItem".}
proc fcQQuickItem_setParentItem(self: pointer, parent: pointer): void {.importc: "QQuickItem_setParentItem".}
proc fcQQuickItem_stackBefore(self: pointer, param1: pointer): void {.importc: "QQuickItem_stackBefore".}
proc fcQQuickItem_stackAfter(self: pointer, param1: pointer): void {.importc: "QQuickItem_stackAfter".}
proc fcQQuickItem_childrenRect(self: pointer, ): pointer {.importc: "QQuickItem_childrenRect".}
proc fcQQuickItem_childItems(self: pointer, ): struct_miqt_array {.importc: "QQuickItem_childItems".}
proc fcQQuickItem_clip(self: pointer, ): bool {.importc: "QQuickItem_clip".}
proc fcQQuickItem_setClip(self: pointer, clip: bool): void {.importc: "QQuickItem_setClip".}
proc fcQQuickItem_state(self: pointer, ): struct_miqt_string {.importc: "QQuickItem_state".}
proc fcQQuickItem_setState(self: pointer, state: struct_miqt_string): void {.importc: "QQuickItem_setState".}
proc fcQQuickItem_baselineOffset(self: pointer, ): float64 {.importc: "QQuickItem_baselineOffset".}
proc fcQQuickItem_setBaselineOffset(self: pointer, baselineOffset: float64): void {.importc: "QQuickItem_setBaselineOffset".}
proc fcQQuickItem_x(self: pointer, ): float64 {.importc: "QQuickItem_x".}
proc fcQQuickItem_y(self: pointer, ): float64 {.importc: "QQuickItem_y".}
proc fcQQuickItem_position(self: pointer, ): pointer {.importc: "QQuickItem_position".}
proc fcQQuickItem_setX(self: pointer, x: float64): void {.importc: "QQuickItem_setX".}
proc fcQQuickItem_setY(self: pointer, y: float64): void {.importc: "QQuickItem_setY".}
proc fcQQuickItem_setPosition(self: pointer, position: pointer): void {.importc: "QQuickItem_setPosition".}
proc fcQQuickItem_width(self: pointer, ): float64 {.importc: "QQuickItem_width".}
proc fcQQuickItem_setWidth(self: pointer, width: float64): void {.importc: "QQuickItem_setWidth".}
proc fcQQuickItem_resetWidth(self: pointer, ): void {.importc: "QQuickItem_resetWidth".}
proc fcQQuickItem_setImplicitWidth(self: pointer, implicitWidth: float64): void {.importc: "QQuickItem_setImplicitWidth".}
proc fcQQuickItem_implicitWidth(self: pointer, ): float64 {.importc: "QQuickItem_implicitWidth".}
proc fcQQuickItem_height(self: pointer, ): float64 {.importc: "QQuickItem_height".}
proc fcQQuickItem_setHeight(self: pointer, height: float64): void {.importc: "QQuickItem_setHeight".}
proc fcQQuickItem_resetHeight(self: pointer, ): void {.importc: "QQuickItem_resetHeight".}
proc fcQQuickItem_setImplicitHeight(self: pointer, implicitHeight: float64): void {.importc: "QQuickItem_setImplicitHeight".}
proc fcQQuickItem_implicitHeight(self: pointer, ): float64 {.importc: "QQuickItem_implicitHeight".}
proc fcQQuickItem_size(self: pointer, ): pointer {.importc: "QQuickItem_size".}
proc fcQQuickItem_setSize(self: pointer, size: pointer): void {.importc: "QQuickItem_setSize".}
proc fcQQuickItem_transformOrigin(self: pointer, ): cint {.importc: "QQuickItem_transformOrigin".}
proc fcQQuickItem_setTransformOrigin(self: pointer, transformOrigin: cint): void {.importc: "QQuickItem_setTransformOrigin".}
proc fcQQuickItem_transformOriginPoint(self: pointer, ): pointer {.importc: "QQuickItem_transformOriginPoint".}
proc fcQQuickItem_setTransformOriginPoint(self: pointer, transformOriginPoint: pointer): void {.importc: "QQuickItem_setTransformOriginPoint".}
proc fcQQuickItem_z(self: pointer, ): float64 {.importc: "QQuickItem_z".}
proc fcQQuickItem_setZ(self: pointer, z: float64): void {.importc: "QQuickItem_setZ".}
proc fcQQuickItem_rotation(self: pointer, ): float64 {.importc: "QQuickItem_rotation".}
proc fcQQuickItem_setRotation(self: pointer, rotation: float64): void {.importc: "QQuickItem_setRotation".}
proc fcQQuickItem_scale(self: pointer, ): float64 {.importc: "QQuickItem_scale".}
proc fcQQuickItem_setScale(self: pointer, scale: float64): void {.importc: "QQuickItem_setScale".}
proc fcQQuickItem_opacity(self: pointer, ): float64 {.importc: "QQuickItem_opacity".}
proc fcQQuickItem_setOpacity(self: pointer, opacity: float64): void {.importc: "QQuickItem_setOpacity".}
proc fcQQuickItem_isVisible(self: pointer, ): bool {.importc: "QQuickItem_isVisible".}
proc fcQQuickItem_setVisible(self: pointer, visible: bool): void {.importc: "QQuickItem_setVisible".}
proc fcQQuickItem_isEnabled(self: pointer, ): bool {.importc: "QQuickItem_isEnabled".}
proc fcQQuickItem_setEnabled(self: pointer, enabled: bool): void {.importc: "QQuickItem_setEnabled".}
proc fcQQuickItem_smooth(self: pointer, ): bool {.importc: "QQuickItem_smooth".}
proc fcQQuickItem_setSmooth(self: pointer, smooth: bool): void {.importc: "QQuickItem_setSmooth".}
proc fcQQuickItem_activeFocusOnTab(self: pointer, ): bool {.importc: "QQuickItem_activeFocusOnTab".}
proc fcQQuickItem_setActiveFocusOnTab(self: pointer, activeFocusOnTab: bool): void {.importc: "QQuickItem_setActiveFocusOnTab".}
proc fcQQuickItem_antialiasing(self: pointer, ): bool {.importc: "QQuickItem_antialiasing".}
proc fcQQuickItem_setAntialiasing(self: pointer, antialiasing: bool): void {.importc: "QQuickItem_setAntialiasing".}
proc fcQQuickItem_resetAntialiasing(self: pointer, ): void {.importc: "QQuickItem_resetAntialiasing".}
proc fcQQuickItem_flags(self: pointer, ): cint {.importc: "QQuickItem_flags".}
proc fcQQuickItem_setFlag(self: pointer, flag: cint): void {.importc: "QQuickItem_setFlag".}
proc fcQQuickItem_setFlags(self: pointer, flags: cint): void {.importc: "QQuickItem_setFlags".}
proc fcQQuickItem_boundingRect(self: pointer, ): pointer {.importc: "QQuickItem_boundingRect".}
proc fcQQuickItem_clipRect(self: pointer, ): pointer {.importc: "QQuickItem_clipRect".}
proc fcQQuickItem_hasActiveFocus(self: pointer, ): bool {.importc: "QQuickItem_hasActiveFocus".}
proc fcQQuickItem_hasFocus(self: pointer, ): bool {.importc: "QQuickItem_hasFocus".}
proc fcQQuickItem_setFocus(self: pointer, focus: bool): void {.importc: "QQuickItem_setFocus".}
proc fcQQuickItem_setFocus2(self: pointer, focus: bool, reason: cint): void {.importc: "QQuickItem_setFocus2".}
proc fcQQuickItem_isFocusScope(self: pointer, ): bool {.importc: "QQuickItem_isFocusScope".}
proc fcQQuickItem_scopedFocusItem(self: pointer, ): pointer {.importc: "QQuickItem_scopedFocusItem".}
proc fcQQuickItem_isAncestorOf(self: pointer, child: pointer): bool {.importc: "QQuickItem_isAncestorOf".}
proc fcQQuickItem_acceptedMouseButtons(self: pointer, ): cint {.importc: "QQuickItem_acceptedMouseButtons".}
proc fcQQuickItem_setAcceptedMouseButtons(self: pointer, buttons: cint): void {.importc: "QQuickItem_setAcceptedMouseButtons".}
proc fcQQuickItem_acceptHoverEvents(self: pointer, ): bool {.importc: "QQuickItem_acceptHoverEvents".}
proc fcQQuickItem_setAcceptHoverEvents(self: pointer, enabled: bool): void {.importc: "QQuickItem_setAcceptHoverEvents".}
proc fcQQuickItem_acceptTouchEvents(self: pointer, ): bool {.importc: "QQuickItem_acceptTouchEvents".}
proc fcQQuickItem_setAcceptTouchEvents(self: pointer, accept: bool): void {.importc: "QQuickItem_setAcceptTouchEvents".}
proc fcQQuickItem_cursor(self: pointer, ): pointer {.importc: "QQuickItem_cursor".}
proc fcQQuickItem_setCursor(self: pointer, cursor: pointer): void {.importc: "QQuickItem_setCursor".}
proc fcQQuickItem_unsetCursor(self: pointer, ): void {.importc: "QQuickItem_unsetCursor".}
proc fcQQuickItem_isUnderMouse(self: pointer, ): bool {.importc: "QQuickItem_isUnderMouse".}
proc fcQQuickItem_grabMouse(self: pointer, ): void {.importc: "QQuickItem_grabMouse".}
proc fcQQuickItem_ungrabMouse(self: pointer, ): void {.importc: "QQuickItem_ungrabMouse".}
proc fcQQuickItem_keepMouseGrab(self: pointer, ): bool {.importc: "QQuickItem_keepMouseGrab".}
proc fcQQuickItem_setKeepMouseGrab(self: pointer, keepMouseGrab: bool): void {.importc: "QQuickItem_setKeepMouseGrab".}
proc fcQQuickItem_filtersChildMouseEvents(self: pointer, ): bool {.importc: "QQuickItem_filtersChildMouseEvents".}
proc fcQQuickItem_setFiltersChildMouseEvents(self: pointer, filter: bool): void {.importc: "QQuickItem_setFiltersChildMouseEvents".}
proc fcQQuickItem_grabTouchPoints(self: pointer, ids: struct_miqt_array): void {.importc: "QQuickItem_grabTouchPoints".}
proc fcQQuickItem_ungrabTouchPoints(self: pointer, ): void {.importc: "QQuickItem_ungrabTouchPoints".}
proc fcQQuickItem_keepTouchGrab(self: pointer, ): bool {.importc: "QQuickItem_keepTouchGrab".}
proc fcQQuickItem_setKeepTouchGrab(self: pointer, keepTouchGrab: bool): void {.importc: "QQuickItem_setKeepTouchGrab".}
proc fcQQuickItem_grabToImage(self: pointer, callback: pointer): bool {.importc: "QQuickItem_grabToImage".}
proc fcQQuickItem_contains(self: pointer, point: pointer): bool {.importc: "QQuickItem_contains".}
proc fcQQuickItem_containmentMask(self: pointer, ): pointer {.importc: "QQuickItem_containmentMask".}
proc fcQQuickItem_setContainmentMask(self: pointer, mask: pointer): void {.importc: "QQuickItem_setContainmentMask".}
proc fcQQuickItem_itemTransform(self: pointer, param1: pointer, param2: ptr bool): pointer {.importc: "QQuickItem_itemTransform".}
proc fcQQuickItem_mapToItem(self: pointer, item: pointer, point: pointer): pointer {.importc: "QQuickItem_mapToItem".}
proc fcQQuickItem_mapToScene(self: pointer, point: pointer): pointer {.importc: "QQuickItem_mapToScene".}
proc fcQQuickItem_mapToGlobal(self: pointer, point: pointer): pointer {.importc: "QQuickItem_mapToGlobal".}
proc fcQQuickItem_mapRectToItem(self: pointer, item: pointer, rect: pointer): pointer {.importc: "QQuickItem_mapRectToItem".}
proc fcQQuickItem_mapRectToScene(self: pointer, rect: pointer): pointer {.importc: "QQuickItem_mapRectToScene".}
proc fcQQuickItem_mapFromItem(self: pointer, item: pointer, point: pointer): pointer {.importc: "QQuickItem_mapFromItem".}
proc fcQQuickItem_mapFromScene(self: pointer, point: pointer): pointer {.importc: "QQuickItem_mapFromScene".}
proc fcQQuickItem_mapFromGlobal(self: pointer, point: pointer): pointer {.importc: "QQuickItem_mapFromGlobal".}
proc fcQQuickItem_mapRectFromItem(self: pointer, item: pointer, rect: pointer): pointer {.importc: "QQuickItem_mapRectFromItem".}
proc fcQQuickItem_mapRectFromScene(self: pointer, rect: pointer): pointer {.importc: "QQuickItem_mapRectFromScene".}
proc fcQQuickItem_polish(self: pointer, ): void {.importc: "QQuickItem_polish".}
proc fcQQuickItem_forceActiveFocus(self: pointer, ): void {.importc: "QQuickItem_forceActiveFocus".}
proc fcQQuickItem_forceActiveFocusWithReason(self: pointer, reason: cint): void {.importc: "QQuickItem_forceActiveFocusWithReason".}
proc fcQQuickItem_nextItemInFocusChain(self: pointer, ): pointer {.importc: "QQuickItem_nextItemInFocusChain".}
proc fcQQuickItem_childAt(self: pointer, x: float64, y: float64): pointer {.importc: "QQuickItem_childAt".}
proc fcQQuickItem_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QQuickItem_inputMethodQuery".}
proc fcQQuickItem_isTextureProvider(self: pointer, ): bool {.importc: "QQuickItem_isTextureProvider".}
proc fcQQuickItem_textureProvider(self: pointer, ): pointer {.importc: "QQuickItem_textureProvider".}
proc fcQQuickItem_update(self: pointer, ): void {.importc: "QQuickItem_update".}
proc fcQQuickItem_childrenRectChanged(self: pointer, param1: pointer): void {.importc: "QQuickItem_childrenRectChanged".}
proc fQQuickItem_connect_childrenRectChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_childrenRectChanged".}
proc fcQQuickItem_baselineOffsetChanged(self: pointer, param1: float64): void {.importc: "QQuickItem_baselineOffsetChanged".}
proc fQQuickItem_connect_baselineOffsetChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_baselineOffsetChanged".}
proc fcQQuickItem_stateChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QQuickItem_stateChanged".}
proc fQQuickItem_connect_stateChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_stateChanged".}
proc fcQQuickItem_focusChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_focusChanged".}
proc fQQuickItem_connect_focusChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_focusChanged".}
proc fcQQuickItem_activeFocusChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_activeFocusChanged".}
proc fQQuickItem_connect_activeFocusChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_activeFocusChanged".}
proc fcQQuickItem_activeFocusOnTabChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_activeFocusOnTabChanged".}
proc fQQuickItem_connect_activeFocusOnTabChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_activeFocusOnTabChanged".}
proc fcQQuickItem_parentChanged(self: pointer, param1: pointer): void {.importc: "QQuickItem_parentChanged".}
proc fQQuickItem_connect_parentChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_parentChanged".}
proc fcQQuickItem_transformOriginChanged(self: pointer, param1: cint): void {.importc: "QQuickItem_transformOriginChanged".}
proc fQQuickItem_connect_transformOriginChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_transformOriginChanged".}
proc fcQQuickItem_smoothChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_smoothChanged".}
proc fQQuickItem_connect_smoothChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_smoothChanged".}
proc fcQQuickItem_antialiasingChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_antialiasingChanged".}
proc fQQuickItem_connect_antialiasingChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_antialiasingChanged".}
proc fcQQuickItem_clipChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_clipChanged".}
proc fQQuickItem_connect_clipChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_clipChanged".}
proc fcQQuickItem_windowChanged(self: pointer, window: pointer): void {.importc: "QQuickItem_windowChanged".}
proc fQQuickItem_connect_windowChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_windowChanged".}
proc fcQQuickItem_childrenChanged(self: pointer, ): void {.importc: "QQuickItem_childrenChanged".}
proc fQQuickItem_connect_childrenChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_childrenChanged".}
proc fcQQuickItem_opacityChanged(self: pointer, ): void {.importc: "QQuickItem_opacityChanged".}
proc fQQuickItem_connect_opacityChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_opacityChanged".}
proc fcQQuickItem_enabledChanged(self: pointer, ): void {.importc: "QQuickItem_enabledChanged".}
proc fQQuickItem_connect_enabledChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_enabledChanged".}
proc fcQQuickItem_visibleChanged(self: pointer, ): void {.importc: "QQuickItem_visibleChanged".}
proc fQQuickItem_connect_visibleChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_visibleChanged".}
proc fcQQuickItem_visibleChildrenChanged(self: pointer, ): void {.importc: "QQuickItem_visibleChildrenChanged".}
proc fQQuickItem_connect_visibleChildrenChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_visibleChildrenChanged".}
proc fcQQuickItem_rotationChanged(self: pointer, ): void {.importc: "QQuickItem_rotationChanged".}
proc fQQuickItem_connect_rotationChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_rotationChanged".}
proc fcQQuickItem_scaleChanged(self: pointer, ): void {.importc: "QQuickItem_scaleChanged".}
proc fQQuickItem_connect_scaleChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_scaleChanged".}
proc fcQQuickItem_xChanged(self: pointer, ): void {.importc: "QQuickItem_xChanged".}
proc fQQuickItem_connect_xChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_xChanged".}
proc fcQQuickItem_yChanged(self: pointer, ): void {.importc: "QQuickItem_yChanged".}
proc fQQuickItem_connect_yChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_yChanged".}
proc fcQQuickItem_widthChanged(self: pointer, ): void {.importc: "QQuickItem_widthChanged".}
proc fQQuickItem_connect_widthChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_widthChanged".}
proc fcQQuickItem_heightChanged(self: pointer, ): void {.importc: "QQuickItem_heightChanged".}
proc fQQuickItem_connect_heightChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_heightChanged".}
proc fcQQuickItem_zChanged(self: pointer, ): void {.importc: "QQuickItem_zChanged".}
proc fQQuickItem_connect_zChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_zChanged".}
proc fcQQuickItem_implicitWidthChanged(self: pointer, ): void {.importc: "QQuickItem_implicitWidthChanged".}
proc fQQuickItem_connect_implicitWidthChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_implicitWidthChanged".}
proc fcQQuickItem_implicitHeightChanged(self: pointer, ): void {.importc: "QQuickItem_implicitHeightChanged".}
proc fQQuickItem_connect_implicitHeightChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_implicitHeightChanged".}
proc fcQQuickItem_containmentMaskChanged(self: pointer, ): void {.importc: "QQuickItem_containmentMaskChanged".}
proc fQQuickItem_connect_containmentMaskChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_containmentMaskChanged".}
proc fcQQuickItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickItem_tr2".}
proc fcQQuickItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickItem_tr3".}
proc fcQQuickItem_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickItem_trUtf82".}
proc fcQQuickItem_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickItem_trUtf83".}
proc fcQQuickItem_setFlag2(self: pointer, flag: cint, enabled: bool): void {.importc: "QQuickItem_setFlag2".}
proc fcQQuickItem_grabToImage22(self: pointer, callback: pointer, targetSize: pointer): bool {.importc: "QQuickItem_grabToImage22".}
proc fcQQuickItem_nextItemInFocusChain1(self: pointer, forward: bool): pointer {.importc: "QQuickItem_nextItemInFocusChain1".}
proc fQQuickItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickItem_virtualbase_metacall".}
proc fcQQuickItem_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_metacall".}
proc fQQuickItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QQuickItem_virtualbase_boundingRect".}
proc fcQQuickItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_boundingRect".}
proc fQQuickItem_virtualbase_clipRect(self: pointer, ): pointer{.importc: "QQuickItem_virtualbase_clipRect".}
proc fcQQuickItem_override_virtual_clipRect(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_clipRect".}
proc fQQuickItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QQuickItem_virtualbase_contains".}
proc fcQQuickItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_contains".}
proc fQQuickItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QQuickItem_virtualbase_inputMethodQuery".}
proc fcQQuickItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_inputMethodQuery".}
proc fQQuickItem_virtualbase_isTextureProvider(self: pointer, ): bool{.importc: "QQuickItem_virtualbase_isTextureProvider".}
proc fcQQuickItem_override_virtual_isTextureProvider(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_isTextureProvider".}
proc fQQuickItem_virtualbase_textureProvider(self: pointer, ): pointer{.importc: "QQuickItem_virtualbase_textureProvider".}
proc fcQQuickItem_override_virtual_textureProvider(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_textureProvider".}
proc fQQuickItem_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QQuickItem_virtualbase_event".}
proc fcQQuickItem_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_event".}
proc fQQuickItem_virtualbase_itemChange(self: pointer, param1: cint, param2: pointer): void{.importc: "QQuickItem_virtualbase_itemChange".}
proc fcQQuickItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_itemChange".}
proc fQQuickItem_virtualbase_classBegin(self: pointer, ): void{.importc: "QQuickItem_virtualbase_classBegin".}
proc fcQQuickItem_override_virtual_classBegin(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_classBegin".}
proc fQQuickItem_virtualbase_componentComplete(self: pointer, ): void{.importc: "QQuickItem_virtualbase_componentComplete".}
proc fcQQuickItem_override_virtual_componentComplete(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_componentComplete".}
proc fQQuickItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_keyPressEvent".}
proc fcQQuickItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_keyPressEvent".}
proc fQQuickItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_keyReleaseEvent".}
proc fcQQuickItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_keyReleaseEvent".}
proc fQQuickItem_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QQuickItem_virtualbase_inputMethodEvent".}
proc fcQQuickItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_inputMethodEvent".}
proc fQQuickItem_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QQuickItem_virtualbase_focusInEvent".}
proc fcQQuickItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_focusInEvent".}
proc fQQuickItem_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QQuickItem_virtualbase_focusOutEvent".}
proc fcQQuickItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_focusOutEvent".}
proc fQQuickItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_mousePressEvent".}
proc fcQQuickItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_mousePressEvent".}
proc fQQuickItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_mouseMoveEvent".}
proc fcQQuickItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_mouseMoveEvent".}
proc fQQuickItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_mouseReleaseEvent".}
proc fcQQuickItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_mouseReleaseEvent".}
proc fQQuickItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_mouseDoubleClickEvent".}
proc fQQuickItem_virtualbase_mouseUngrabEvent(self: pointer, ): void{.importc: "QQuickItem_virtualbase_mouseUngrabEvent".}
proc fcQQuickItem_override_virtual_mouseUngrabEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_mouseUngrabEvent".}
proc fQQuickItem_virtualbase_touchUngrabEvent(self: pointer, ): void{.importc: "QQuickItem_virtualbase_touchUngrabEvent".}
proc fcQQuickItem_override_virtual_touchUngrabEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_touchUngrabEvent".}
proc fQQuickItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_wheelEvent".}
proc fcQQuickItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_wheelEvent".}
proc fQQuickItem_virtualbase_touchEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_touchEvent".}
proc fcQQuickItem_override_virtual_touchEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_touchEvent".}
proc fQQuickItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_hoverEnterEvent".}
proc fcQQuickItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_hoverEnterEvent".}
proc fQQuickItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_hoverMoveEvent".}
proc fcQQuickItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_hoverMoveEvent".}
proc fQQuickItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_hoverLeaveEvent".}
proc fcQQuickItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_hoverLeaveEvent".}
proc fQQuickItem_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QQuickItem_virtualbase_dragEnterEvent".}
proc fcQQuickItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_dragEnterEvent".}
proc fQQuickItem_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QQuickItem_virtualbase_dragMoveEvent".}
proc fcQQuickItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_dragMoveEvent".}
proc fQQuickItem_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QQuickItem_virtualbase_dragLeaveEvent".}
proc fcQQuickItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_dragLeaveEvent".}
proc fQQuickItem_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QQuickItem_virtualbase_dropEvent".}
proc fcQQuickItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_dropEvent".}
proc fQQuickItem_virtualbase_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QQuickItem_virtualbase_childMouseEventFilter".}
proc fcQQuickItem_override_virtual_childMouseEventFilter(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_childMouseEventFilter".}
proc fQQuickItem_virtualbase_windowDeactivateEvent(self: pointer, ): void{.importc: "QQuickItem_virtualbase_windowDeactivateEvent".}
proc fcQQuickItem_override_virtual_windowDeactivateEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_windowDeactivateEvent".}
proc fQQuickItem_virtualbase_geometryChanged(self: pointer, newGeometry: pointer, oldGeometry: pointer): void{.importc: "QQuickItem_virtualbase_geometryChanged".}
proc fcQQuickItem_override_virtual_geometryChanged(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_geometryChanged".}
proc fQQuickItem_virtualbase_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer{.importc: "QQuickItem_virtualbase_updatePaintNode".}
proc fcQQuickItem_override_virtual_updatePaintNode(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_updatePaintNode".}
proc fQQuickItem_virtualbase_releaseResources(self: pointer, ): void{.importc: "QQuickItem_virtualbase_releaseResources".}
proc fcQQuickItem_override_virtual_releaseResources(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_releaseResources".}
proc fQQuickItem_virtualbase_updatePolish(self: pointer, ): void{.importc: "QQuickItem_virtualbase_updatePolish".}
proc fcQQuickItem_override_virtual_updatePolish(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_updatePolish".}
proc fQQuickItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickItem_virtualbase_eventFilter".}
proc fcQQuickItem_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_eventFilter".}
proc fQQuickItem_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_timerEvent".}
proc fcQQuickItem_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_timerEvent".}
proc fQQuickItem_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_childEvent".}
proc fcQQuickItem_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_childEvent".}
proc fQQuickItem_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_customEvent".}
proc fcQQuickItem_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_customEvent".}
proc fQQuickItem_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickItem_virtualbase_connectNotify".}
proc fcQQuickItem_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_connectNotify".}
proc fQQuickItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickItem_virtualbase_disconnectNotify".}
proc fcQQuickItem_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_disconnectNotify".}
proc fcQQuickItem_delete(self: pointer) {.importc: "QQuickItem_delete".}
proc fcQQuickItemItemChangeData_new(v: pointer): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new".}
proc fcQQuickItemItemChangeData_new2(v: pointer): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new2".}
proc fcQQuickItemItemChangeData_new3(v: float64): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new3".}
proc fcQQuickItemItemChangeData_new4(v: bool): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new4".}
proc fcQQuickItemItemChangeData_delete(self: pointer) {.importc: "QQuickItem__ItemChangeData_delete".}
proc fcQQuickItemUpdatePaintNodeData_delete(self: pointer) {.importc: "QQuickItem__UpdatePaintNodeData_delete".}


func init*(T: type QQuickTransform, h: ptr cQQuickTransform): QQuickTransform =
  T(h: h)
proc create*(T: type QQuickTransform, ): QQuickTransform =

  QQuickTransform.init(fcQQuickTransform_new())
proc create*(T: type QQuickTransform, parent: gen_qobject.QObject): QQuickTransform =

  QQuickTransform.init(fcQQuickTransform_new2(parent.h))
proc metaObject*(self: QQuickTransform, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQuickTransform_metaObject(self.h))

proc metacast*(self: QQuickTransform, param1: cstring): pointer =

  fcQQuickTransform_metacast(self.h, param1)

proc metacall*(self: QQuickTransform, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQuickTransform_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQuickTransform, s: cstring): string =

  let v_ms = fcQQuickTransform_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQuickTransform, s: cstring): string =

  let v_ms = fcQQuickTransform_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc appendToItem*(self: QQuickTransform, param1: QQuickItem): void =

  fcQQuickTransform_appendToItem(self.h, param1.h)

proc prependToItem*(self: QQuickTransform, param1: QQuickItem): void =

  fcQQuickTransform_prependToItem(self.h, param1.h)

proc applyTo*(self: QQuickTransform, matrix: gen_qmatrix4x4.QMatrix4x4): void =

  fcQQuickTransform_applyTo(self.h, matrix.h)

proc tr2*(_: type QQuickTransform, s: cstring, c: cstring): string =

  let v_ms = fcQQuickTransform_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQuickTransform, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickTransform_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQuickTransform, s: cstring, c: cstring): string =

  let v_ms = fcQQuickTransform_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQuickTransform, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickTransform_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QQuickTransform, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQuickTransform_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickTransformmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQuickTransform, slot: proc(super: QQuickTransformmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQuickTransformmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_metacall(self: ptr cQQuickTransform, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickTransform_metacall ".} =
  type Cb = proc(super: QQuickTransformmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQuickTransform(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QQuickTransformapplyToBase* = proc(matrix: gen_qmatrix4x4.QMatrix4x4): void
proc onapplyTo*(self: QQuickTransform, slot: proc(matrix: gen_qmatrix4x4.QMatrix4x4): void) =
  # TODO check subclass
  type Cb = proc(matrix: gen_qmatrix4x4.QMatrix4x4): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_applyTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_applyTo(self: ptr cQQuickTransform, slot: int, matrix: pointer): void {.exportc: "miqt_exec_callback_QQuickTransform_applyTo ".} =
  type Cb = proc(matrix: gen_qmatrix4x4.QMatrix4x4): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmatrix4x4.QMatrix4x4(h: matrix)


  nimfunc[](slotval1)
proc callVirtualBase_event(self: QQuickTransform, event: gen_qcoreevent.QEvent): bool =


  fQQuickTransform_virtualbase_event(self.h, event.h)

type QQuickTransformeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQuickTransform, slot: proc(super: QQuickTransformeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickTransformeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_event(self: ptr cQQuickTransform, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickTransform_event ".} =
  type Cb = proc(super: QQuickTransformeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQuickTransform(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQuickTransform, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQuickTransform_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickTransformeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQuickTransform, slot: proc(super: QQuickTransformeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickTransformeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_eventFilter(self: ptr cQQuickTransform, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickTransform_eventFilter ".} =
  type Cb = proc(super: QQuickTransformeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQuickTransform(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQuickTransform, event: gen_qcoreevent.QTimerEvent): void =


  fQQuickTransform_virtualbase_timerEvent(self.h, event.h)

type QQuickTransformtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQuickTransform, slot: proc(super: QQuickTransformtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTransformtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_timerEvent(self: ptr cQQuickTransform, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTransform_timerEvent ".} =
  type Cb = proc(super: QQuickTransformtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQuickTransform(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQuickTransform, event: gen_qcoreevent.QChildEvent): void =


  fQQuickTransform_virtualbase_childEvent(self.h, event.h)

type QQuickTransformchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQuickTransform, slot: proc(super: QQuickTransformchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTransformchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_childEvent(self: ptr cQQuickTransform, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTransform_childEvent ".} =
  type Cb = proc(super: QQuickTransformchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQuickTransform(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQuickTransform, event: gen_qcoreevent.QEvent): void =


  fQQuickTransform_virtualbase_customEvent(self.h, event.h)

type QQuickTransformcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQuickTransform, slot: proc(super: QQuickTransformcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTransformcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_customEvent(self: ptr cQQuickTransform, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTransform_customEvent ".} =
  type Cb = proc(super: QQuickTransformcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQuickTransform(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQuickTransform, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickTransform_virtualbase_connectNotify(self.h, signal.h)

type QQuickTransformconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQuickTransform, slot: proc(super: QQuickTransformconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTransformconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_connectNotify(self: ptr cQQuickTransform, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickTransform_connectNotify ".} =
  type Cb = proc(super: QQuickTransformconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQuickTransform(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQuickTransform, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickTransform_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickTransformdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQuickTransform, slot: proc(super: QQuickTransformdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTransformdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_disconnectNotify(self: ptr cQQuickTransform, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickTransform_disconnectNotify ".} =
  type Cb = proc(super: QQuickTransformdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQuickTransform(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QQuickTransform) =
  fcQQuickTransform_delete(self.h)

func init*(T: type QQuickItem, h: ptr cQQuickItem): QQuickItem =
  T(h: h)
proc create*(T: type QQuickItem, ): QQuickItem =

  QQuickItem.init(fcQQuickItem_new())
proc create*(T: type QQuickItem, parent: QQuickItem): QQuickItem =

  QQuickItem.init(fcQQuickItem_new2(parent.h))
proc metaObject*(self: QQuickItem, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQuickItem_metaObject(self.h))

proc metacast*(self: QQuickItem, param1: cstring): pointer =

  fcQQuickItem_metacast(self.h, param1)

proc metacall*(self: QQuickItem, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQuickItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQuickItem, s: cstring): string =

  let v_ms = fcQQuickItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQuickItem, s: cstring): string =

  let v_ms = fcQQuickItem_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc window*(self: QQuickItem, ): gen_qquickwindow.QQuickWindow =

  gen_qquickwindow.QQuickWindow(h: fcQQuickItem_window(self.h))

proc parentItem*(self: QQuickItem, ): QQuickItem =

  QQuickItem(h: fcQQuickItem_parentItem(self.h))

proc setParentItem*(self: QQuickItem, parent: QQuickItem): void =

  fcQQuickItem_setParentItem(self.h, parent.h)

proc stackBefore*(self: QQuickItem, param1: QQuickItem): void =

  fcQQuickItem_stackBefore(self.h, param1.h)

proc stackAfter*(self: QQuickItem, param1: QQuickItem): void =

  fcQQuickItem_stackAfter(self.h, param1.h)

proc childrenRect*(self: QQuickItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQQuickItem_childrenRect(self.h))

proc childItems*(self: QQuickItem, ): seq[QQuickItem] =

  var v_ma = fcQQuickItem_childItems(self.h)
  var vx_ret = newSeq[QQuickItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QQuickItem(h: v_outCast[i])
  vx_ret

proc clip*(self: QQuickItem, ): bool =

  fcQQuickItem_clip(self.h)

proc setClip*(self: QQuickItem, clip: bool): void =

  fcQQuickItem_setClip(self.h, clip)

proc state*(self: QQuickItem, ): string =

  let v_ms = fcQQuickItem_state(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setState*(self: QQuickItem, state: string): void =

  fcQQuickItem_setState(self.h, struct_miqt_string(data: state, len: csize_t(len(state))))

proc baselineOffset*(self: QQuickItem, ): float64 =

  fcQQuickItem_baselineOffset(self.h)

proc setBaselineOffset*(self: QQuickItem, baselineOffset: float64): void =

  fcQQuickItem_setBaselineOffset(self.h, baselineOffset)

proc x*(self: QQuickItem, ): float64 =

  fcQQuickItem_x(self.h)

proc y*(self: QQuickItem, ): float64 =

  fcQQuickItem_y(self.h)

proc position*(self: QQuickItem, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQQuickItem_position(self.h))

proc setX*(self: QQuickItem, x: float64): void =

  fcQQuickItem_setX(self.h, x)

proc setY*(self: QQuickItem, y: float64): void =

  fcQQuickItem_setY(self.h, y)

proc setPosition*(self: QQuickItem, position: gen_qpoint.QPointF): void =

  fcQQuickItem_setPosition(self.h, position.h)

proc width*(self: QQuickItem, ): float64 =

  fcQQuickItem_width(self.h)

proc setWidth*(self: QQuickItem, width: float64): void =

  fcQQuickItem_setWidth(self.h, width)

proc resetWidth*(self: QQuickItem, ): void =

  fcQQuickItem_resetWidth(self.h)

proc setImplicitWidth*(self: QQuickItem, implicitWidth: float64): void =

  fcQQuickItem_setImplicitWidth(self.h, implicitWidth)

proc implicitWidth*(self: QQuickItem, ): float64 =

  fcQQuickItem_implicitWidth(self.h)

proc height*(self: QQuickItem, ): float64 =

  fcQQuickItem_height(self.h)

proc setHeight*(self: QQuickItem, height: float64): void =

  fcQQuickItem_setHeight(self.h, height)

proc resetHeight*(self: QQuickItem, ): void =

  fcQQuickItem_resetHeight(self.h)

proc setImplicitHeight*(self: QQuickItem, implicitHeight: float64): void =

  fcQQuickItem_setImplicitHeight(self.h, implicitHeight)

proc implicitHeight*(self: QQuickItem, ): float64 =

  fcQQuickItem_implicitHeight(self.h)

proc size*(self: QQuickItem, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQQuickItem_size(self.h))

proc setSize*(self: QQuickItem, size: gen_qsize.QSizeF): void =

  fcQQuickItem_setSize(self.h, size.h)

proc transformOrigin*(self: QQuickItem, ): QQuickItemTransformOrigin =

  QQuickItemTransformOrigin(fcQQuickItem_transformOrigin(self.h))

proc setTransformOrigin*(self: QQuickItem, transformOrigin: QQuickItemTransformOrigin): void =

  fcQQuickItem_setTransformOrigin(self.h, cint(transformOrigin))

proc transformOriginPoint*(self: QQuickItem, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQQuickItem_transformOriginPoint(self.h))

proc setTransformOriginPoint*(self: QQuickItem, transformOriginPoint: gen_qpoint.QPointF): void =

  fcQQuickItem_setTransformOriginPoint(self.h, transformOriginPoint.h)

proc z*(self: QQuickItem, ): float64 =

  fcQQuickItem_z(self.h)

proc setZ*(self: QQuickItem, z: float64): void =

  fcQQuickItem_setZ(self.h, z)

proc rotation*(self: QQuickItem, ): float64 =

  fcQQuickItem_rotation(self.h)

proc setRotation*(self: QQuickItem, rotation: float64): void =

  fcQQuickItem_setRotation(self.h, rotation)

proc scale*(self: QQuickItem, ): float64 =

  fcQQuickItem_scale(self.h)

proc setScale*(self: QQuickItem, scale: float64): void =

  fcQQuickItem_setScale(self.h, scale)

proc opacity*(self: QQuickItem, ): float64 =

  fcQQuickItem_opacity(self.h)

proc setOpacity*(self: QQuickItem, opacity: float64): void =

  fcQQuickItem_setOpacity(self.h, opacity)

proc isVisible*(self: QQuickItem, ): bool =

  fcQQuickItem_isVisible(self.h)

proc setVisible*(self: QQuickItem, visible: bool): void =

  fcQQuickItem_setVisible(self.h, visible)

proc isEnabled*(self: QQuickItem, ): bool =

  fcQQuickItem_isEnabled(self.h)

proc setEnabled*(self: QQuickItem, enabled: bool): void =

  fcQQuickItem_setEnabled(self.h, enabled)

proc smooth*(self: QQuickItem, ): bool =

  fcQQuickItem_smooth(self.h)

proc setSmooth*(self: QQuickItem, smooth: bool): void =

  fcQQuickItem_setSmooth(self.h, smooth)

proc activeFocusOnTab*(self: QQuickItem, ): bool =

  fcQQuickItem_activeFocusOnTab(self.h)

proc setActiveFocusOnTab*(self: QQuickItem, activeFocusOnTab: bool): void =

  fcQQuickItem_setActiveFocusOnTab(self.h, activeFocusOnTab)

proc antialiasing*(self: QQuickItem, ): bool =

  fcQQuickItem_antialiasing(self.h)

proc setAntialiasing*(self: QQuickItem, antialiasing: bool): void =

  fcQQuickItem_setAntialiasing(self.h, antialiasing)

proc resetAntialiasing*(self: QQuickItem, ): void =

  fcQQuickItem_resetAntialiasing(self.h)

proc flags*(self: QQuickItem, ): QQuickItemFlag =

  QQuickItemFlag(fcQQuickItem_flags(self.h))

proc setFlag*(self: QQuickItem, flag: QQuickItemFlag): void =

  fcQQuickItem_setFlag(self.h, cint(flag))

proc setFlags*(self: QQuickItem, flags: QQuickItemFlag): void =

  fcQQuickItem_setFlags(self.h, cint(flags))

proc boundingRect*(self: QQuickItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQQuickItem_boundingRect(self.h))

proc clipRect*(self: QQuickItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQQuickItem_clipRect(self.h))

proc hasActiveFocus*(self: QQuickItem, ): bool =

  fcQQuickItem_hasActiveFocus(self.h)

proc hasFocus*(self: QQuickItem, ): bool =

  fcQQuickItem_hasFocus(self.h)

proc setFocus*(self: QQuickItem, focus: bool): void =

  fcQQuickItem_setFocus(self.h, focus)

proc setFocus2*(self: QQuickItem, focus: bool, reason: gen_qnamespace.FocusReason): void =

  fcQQuickItem_setFocus2(self.h, focus, cint(reason))

proc isFocusScope*(self: QQuickItem, ): bool =

  fcQQuickItem_isFocusScope(self.h)

proc scopedFocusItem*(self: QQuickItem, ): QQuickItem =

  QQuickItem(h: fcQQuickItem_scopedFocusItem(self.h))

proc isAncestorOf*(self: QQuickItem, child: QQuickItem): bool =

  fcQQuickItem_isAncestorOf(self.h, child.h)

proc acceptedMouseButtons*(self: QQuickItem, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQQuickItem_acceptedMouseButtons(self.h))

proc setAcceptedMouseButtons*(self: QQuickItem, buttons: gen_qnamespace.MouseButton): void =

  fcQQuickItem_setAcceptedMouseButtons(self.h, cint(buttons))

proc acceptHoverEvents*(self: QQuickItem, ): bool =

  fcQQuickItem_acceptHoverEvents(self.h)

proc setAcceptHoverEvents*(self: QQuickItem, enabled: bool): void =

  fcQQuickItem_setAcceptHoverEvents(self.h, enabled)

proc acceptTouchEvents*(self: QQuickItem, ): bool =

  fcQQuickItem_acceptTouchEvents(self.h)

proc setAcceptTouchEvents*(self: QQuickItem, accept: bool): void =

  fcQQuickItem_setAcceptTouchEvents(self.h, accept)

proc cursor*(self: QQuickItem, ): gen_qcursor.QCursor =

  gen_qcursor.QCursor(h: fcQQuickItem_cursor(self.h))

proc setCursor*(self: QQuickItem, cursor: gen_qcursor.QCursor): void =

  fcQQuickItem_setCursor(self.h, cursor.h)

proc unsetCursor*(self: QQuickItem, ): void =

  fcQQuickItem_unsetCursor(self.h)

proc isUnderMouse*(self: QQuickItem, ): bool =

  fcQQuickItem_isUnderMouse(self.h)

proc grabMouse*(self: QQuickItem, ): void =

  fcQQuickItem_grabMouse(self.h)

proc ungrabMouse*(self: QQuickItem, ): void =

  fcQQuickItem_ungrabMouse(self.h)

proc keepMouseGrab*(self: QQuickItem, ): bool =

  fcQQuickItem_keepMouseGrab(self.h)

proc setKeepMouseGrab*(self: QQuickItem, keepMouseGrab: bool): void =

  fcQQuickItem_setKeepMouseGrab(self.h, keepMouseGrab)

proc filtersChildMouseEvents*(self: QQuickItem, ): bool =

  fcQQuickItem_filtersChildMouseEvents(self.h)

proc setFiltersChildMouseEvents*(self: QQuickItem, filter: bool): void =

  fcQQuickItem_setFiltersChildMouseEvents(self.h, filter)

proc grabTouchPoints*(self: QQuickItem, ids: seq[cint]): void =

  var ids_CArray = newSeq[cint](len(ids))
  for i in 0..<len(ids):
    ids_CArray[i] = ids[i]

  fcQQuickItem_grabTouchPoints(self.h, struct_miqt_array(len: csize_t(len(ids)), data: if len(ids) == 0: nil else: addr(ids_CArray[0])))

proc ungrabTouchPoints*(self: QQuickItem, ): void =

  fcQQuickItem_ungrabTouchPoints(self.h)

proc keepTouchGrab*(self: QQuickItem, ): bool =

  fcQQuickItem_keepTouchGrab(self.h)

proc setKeepTouchGrab*(self: QQuickItem, keepTouchGrab: bool): void =

  fcQQuickItem_setKeepTouchGrab(self.h, keepTouchGrab)

proc grabToImage*(self: QQuickItem, callback: gen_qjsvalue.QJSValue): bool =

  fcQQuickItem_grabToImage(self.h, callback.h)

proc contains*(self: QQuickItem, point: gen_qpoint.QPointF): bool =

  fcQQuickItem_contains(self.h, point.h)

proc containmentMask*(self: QQuickItem, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQQuickItem_containmentMask(self.h))

proc setContainmentMask*(self: QQuickItem, mask: gen_qobject.QObject): void =

  fcQQuickItem_setContainmentMask(self.h, mask.h)

proc itemTransform*(self: QQuickItem, param1: QQuickItem, param2: ptr bool): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQQuickItem_itemTransform(self.h, param1.h, param2))

proc mapToItem*(self: QQuickItem, item: QQuickItem, point: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQQuickItem_mapToItem(self.h, item.h, point.h))

proc mapToScene*(self: QQuickItem, point: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQQuickItem_mapToScene(self.h, point.h))

proc mapToGlobal*(self: QQuickItem, point: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQQuickItem_mapToGlobal(self.h, point.h))

proc mapRectToItem*(self: QQuickItem, item: QQuickItem, rect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQQuickItem_mapRectToItem(self.h, item.h, rect.h))

proc mapRectToScene*(self: QQuickItem, rect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQQuickItem_mapRectToScene(self.h, rect.h))

proc mapFromItem*(self: QQuickItem, item: QQuickItem, point: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQQuickItem_mapFromItem(self.h, item.h, point.h))

proc mapFromScene*(self: QQuickItem, point: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQQuickItem_mapFromScene(self.h, point.h))

proc mapFromGlobal*(self: QQuickItem, point: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQQuickItem_mapFromGlobal(self.h, point.h))

proc mapRectFromItem*(self: QQuickItem, item: QQuickItem, rect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQQuickItem_mapRectFromItem(self.h, item.h, rect.h))

proc mapRectFromScene*(self: QQuickItem, rect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQQuickItem_mapRectFromScene(self.h, rect.h))

proc polish*(self: QQuickItem, ): void =

  fcQQuickItem_polish(self.h)

proc forceActiveFocus*(self: QQuickItem, ): void =

  fcQQuickItem_forceActiveFocus(self.h)

proc forceActiveFocusWithReason*(self: QQuickItem, reason: gen_qnamespace.FocusReason): void =

  fcQQuickItem_forceActiveFocusWithReason(self.h, cint(reason))

proc nextItemInFocusChain*(self: QQuickItem, ): QQuickItem =

  QQuickItem(h: fcQQuickItem_nextItemInFocusChain(self.h))

proc childAt*(self: QQuickItem, x: float64, y: float64): QQuickItem =

  QQuickItem(h: fcQQuickItem_childAt(self.h, x, y))

proc inputMethodQuery*(self: QQuickItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQQuickItem_inputMethodQuery(self.h, cint(query)))

proc isTextureProvider*(self: QQuickItem, ): bool =

  fcQQuickItem_isTextureProvider(self.h)

proc textureProvider*(self: QQuickItem, ): gen_qsgtextureprovider.QSGTextureProvider =

  gen_qsgtextureprovider.QSGTextureProvider(h: fcQQuickItem_textureProvider(self.h))

proc update*(self: QQuickItem, ): void =

  fcQQuickItem_update(self.h)

proc childrenRectChanged*(self: QQuickItem, param1: gen_qrect.QRectF): void =

  fcQQuickItem_childrenRectChanged(self.h, param1.h)

proc miqt_exec_callback_QQuickItem_childrenRectChanged(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qrect.QRectF)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRectF(h: param1)


  nimfunc[](slotval1)

proc onchildrenRectChanged*(self: QQuickItem, slot: proc(param1: gen_qrect.QRectF)) =
  type Cb = proc(param1: gen_qrect.QRectF)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_childrenRectChanged(self.h, cast[int](addr tmp[]))
proc baselineOffsetChanged*(self: QQuickItem, param1: float64): void =

  fcQQuickItem_baselineOffsetChanged(self.h, param1)

proc miqt_exec_callback_QQuickItem_baselineOffsetChanged(slot: int, param1: float64) {.exportc.} =
  type Cb = proc(param1: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onbaselineOffsetChanged*(self: QQuickItem, slot: proc(param1: float64)) =
  type Cb = proc(param1: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_baselineOffsetChanged(self.h, cast[int](addr tmp[]))
proc stateChanged*(self: QQuickItem, param1: string): void =

  fcQQuickItem_stateChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QQuickItem_stateChanged(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc onstateChanged*(self: QQuickItem, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc focusChanged*(self: QQuickItem, param1: bool): void =

  fcQQuickItem_focusChanged(self.h, param1)

proc miqt_exec_callback_QQuickItem_focusChanged(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onfocusChanged*(self: QQuickItem, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_focusChanged(self.h, cast[int](addr tmp[]))
proc activeFocusChanged*(self: QQuickItem, param1: bool): void =

  fcQQuickItem_activeFocusChanged(self.h, param1)

proc miqt_exec_callback_QQuickItem_activeFocusChanged(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onactiveFocusChanged*(self: QQuickItem, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_activeFocusChanged(self.h, cast[int](addr tmp[]))
proc activeFocusOnTabChanged*(self: QQuickItem, param1: bool): void =

  fcQQuickItem_activeFocusOnTabChanged(self.h, param1)

proc miqt_exec_callback_QQuickItem_activeFocusOnTabChanged(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onactiveFocusOnTabChanged*(self: QQuickItem, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_activeFocusOnTabChanged(self.h, cast[int](addr tmp[]))
proc parentChanged*(self: QQuickItem, param1: QQuickItem): void =

  fcQQuickItem_parentChanged(self.h, param1.h)

proc miqt_exec_callback_QQuickItem_parentChanged(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: QQuickItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QQuickItem(h: param1)


  nimfunc[](slotval1)

proc onparentChanged*(self: QQuickItem, slot: proc(param1: QQuickItem)) =
  type Cb = proc(param1: QQuickItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_parentChanged(self.h, cast[int](addr tmp[]))
proc transformOriginChanged*(self: QQuickItem, param1: QQuickItemTransformOrigin): void =

  fcQQuickItem_transformOriginChanged(self.h, cint(param1))

proc miqt_exec_callback_QQuickItem_transformOriginChanged(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: QQuickItemTransformOrigin)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QQuickItemTransformOrigin(param1)


  nimfunc[](slotval1)

proc ontransformOriginChanged*(self: QQuickItem, slot: proc(param1: QQuickItemTransformOrigin)) =
  type Cb = proc(param1: QQuickItemTransformOrigin)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_transformOriginChanged(self.h, cast[int](addr tmp[]))
proc smoothChanged*(self: QQuickItem, param1: bool): void =

  fcQQuickItem_smoothChanged(self.h, param1)

proc miqt_exec_callback_QQuickItem_smoothChanged(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onsmoothChanged*(self: QQuickItem, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_smoothChanged(self.h, cast[int](addr tmp[]))
proc antialiasingChanged*(self: QQuickItem, param1: bool): void =

  fcQQuickItem_antialiasingChanged(self.h, param1)

proc miqt_exec_callback_QQuickItem_antialiasingChanged(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onantialiasingChanged*(self: QQuickItem, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_antialiasingChanged(self.h, cast[int](addr tmp[]))
proc clipChanged*(self: QQuickItem, param1: bool): void =

  fcQQuickItem_clipChanged(self.h, param1)

proc miqt_exec_callback_QQuickItem_clipChanged(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onclipChanged*(self: QQuickItem, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_clipChanged(self.h, cast[int](addr tmp[]))
proc windowChanged*(self: QQuickItem, window: gen_qquickwindow.QQuickWindow): void =

  fcQQuickItem_windowChanged(self.h, window.h)

proc miqt_exec_callback_QQuickItem_windowChanged(slot: int, window: pointer) {.exportc.} =
  type Cb = proc(window: gen_qquickwindow.QQuickWindow)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qquickwindow.QQuickWindow(h: window)


  nimfunc[](slotval1)

proc onwindowChanged*(self: QQuickItem, slot: proc(window: gen_qquickwindow.QQuickWindow)) =
  type Cb = proc(window: gen_qquickwindow.QQuickWindow)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_windowChanged(self.h, cast[int](addr tmp[]))
proc childrenChanged*(self: QQuickItem, ): void =

  fcQQuickItem_childrenChanged(self.h)

proc miqt_exec_callback_QQuickItem_childrenChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onchildrenChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_childrenChanged(self.h, cast[int](addr tmp[]))
proc opacityChanged*(self: QQuickItem, ): void =

  fcQQuickItem_opacityChanged(self.h)

proc miqt_exec_callback_QQuickItem_opacityChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onopacityChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_opacityChanged(self.h, cast[int](addr tmp[]))
proc enabledChanged*(self: QQuickItem, ): void =

  fcQQuickItem_enabledChanged(self.h)

proc miqt_exec_callback_QQuickItem_enabledChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onenabledChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_enabledChanged(self.h, cast[int](addr tmp[]))
proc visibleChanged*(self: QQuickItem, ): void =

  fcQQuickItem_visibleChanged(self.h)

proc miqt_exec_callback_QQuickItem_visibleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvisibleChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_visibleChanged(self.h, cast[int](addr tmp[]))
proc visibleChildrenChanged*(self: QQuickItem, ): void =

  fcQQuickItem_visibleChildrenChanged(self.h)

proc miqt_exec_callback_QQuickItem_visibleChildrenChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvisibleChildrenChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_visibleChildrenChanged(self.h, cast[int](addr tmp[]))
proc rotationChanged*(self: QQuickItem, ): void =

  fcQQuickItem_rotationChanged(self.h)

proc miqt_exec_callback_QQuickItem_rotationChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onrotationChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_rotationChanged(self.h, cast[int](addr tmp[]))
proc scaleChanged*(self: QQuickItem, ): void =

  fcQQuickItem_scaleChanged(self.h)

proc miqt_exec_callback_QQuickItem_scaleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onscaleChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_scaleChanged(self.h, cast[int](addr tmp[]))
proc xChanged*(self: QQuickItem, ): void =

  fcQQuickItem_xChanged(self.h)

proc miqt_exec_callback_QQuickItem_xChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onxChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_xChanged(self.h, cast[int](addr tmp[]))
proc yChanged*(self: QQuickItem, ): void =

  fcQQuickItem_yChanged(self.h)

proc miqt_exec_callback_QQuickItem_yChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onyChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_yChanged(self.h, cast[int](addr tmp[]))
proc widthChanged*(self: QQuickItem, ): void =

  fcQQuickItem_widthChanged(self.h)

proc miqt_exec_callback_QQuickItem_widthChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onwidthChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_widthChanged(self.h, cast[int](addr tmp[]))
proc heightChanged*(self: QQuickItem, ): void =

  fcQQuickItem_heightChanged(self.h)

proc miqt_exec_callback_QQuickItem_heightChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onheightChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_heightChanged(self.h, cast[int](addr tmp[]))
proc zChanged*(self: QQuickItem, ): void =

  fcQQuickItem_zChanged(self.h)

proc miqt_exec_callback_QQuickItem_zChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onzChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_zChanged(self.h, cast[int](addr tmp[]))
proc implicitWidthChanged*(self: QQuickItem, ): void =

  fcQQuickItem_implicitWidthChanged(self.h)

proc miqt_exec_callback_QQuickItem_implicitWidthChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onimplicitWidthChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_implicitWidthChanged(self.h, cast[int](addr tmp[]))
proc implicitHeightChanged*(self: QQuickItem, ): void =

  fcQQuickItem_implicitHeightChanged(self.h)

proc miqt_exec_callback_QQuickItem_implicitHeightChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onimplicitHeightChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_implicitHeightChanged(self.h, cast[int](addr tmp[]))
proc containmentMaskChanged*(self: QQuickItem, ): void =

  fcQQuickItem_containmentMaskChanged(self.h)

proc miqt_exec_callback_QQuickItem_containmentMaskChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncontainmentMaskChanged*(self: QQuickItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItem_connect_containmentMaskChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QQuickItem, s: cstring, c: cstring): string =

  let v_ms = fcQQuickItem_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQuickItem, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQuickItem, s: cstring, c: cstring): string =

  let v_ms = fcQQuickItem_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQuickItem, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickItem_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFlag2*(self: QQuickItem, flag: QQuickItemFlag, enabled: bool): void =

  fcQQuickItem_setFlag2(self.h, cint(flag), enabled)

proc grabToImage22*(self: QQuickItem, callback: gen_qjsvalue.QJSValue, targetSize: gen_qsize.QSize): bool =

  fcQQuickItem_grabToImage22(self.h, callback.h, targetSize.h)

proc nextItemInFocusChain1*(self: QQuickItem, forward: bool): QQuickItem =

  QQuickItem(h: fcQQuickItem_nextItemInFocusChain1(self.h, forward))

proc callVirtualBase_metacall(self: QQuickItem, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQuickItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickItemmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQuickItem, slot: proc(super: QQuickItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_metacall(self: ptr cQQuickItem, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickItem_metacall ".} =
  type Cb = proc(super: QQuickItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQuickItem(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_boundingRect(self: QQuickItem, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQQuickItem_virtualbase_boundingRect(self.h))

type QQuickItemboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QQuickItem, slot: proc(super: QQuickItemboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_boundingRect(self: ptr cQQuickItem, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickItem_boundingRect ".} =
  type Cb = proc(super: QQuickItemboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QQuickItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_clipRect(self: QQuickItem, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQQuickItem_virtualbase_clipRect(self.h))

type QQuickItemclipRectBase* = proc(): gen_qrect.QRectF
proc onclipRect*(self: QQuickItem, slot: proc(super: QQuickItemclipRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemclipRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_clipRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_clipRect(self: ptr cQQuickItem, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickItem_clipRect ".} =
  type Cb = proc(super: QQuickItemclipRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clipRect(QQuickItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QQuickItem, point: gen_qpoint.QPointF): bool =


  fQQuickItem_virtualbase_contains(self.h, point.h)

type QQuickItemcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QQuickItem, slot: proc(super: QQuickItemcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_contains(self: ptr cQQuickItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QQuickItem_contains ".} =
  type Cb = proc(super: QQuickItemcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QQuickItem(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QQuickItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQQuickItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QQuickIteminputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QQuickItem, slot: proc(super: QQuickIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QQuickIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_inputMethodQuery(self: ptr cQQuickItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QQuickItem_inputMethodQuery ".} =
  type Cb = proc(super: QQuickIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QQuickItem(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_isTextureProvider(self: QQuickItem, ): bool =


  fQQuickItem_virtualbase_isTextureProvider(self.h)

type QQuickItemisTextureProviderBase* = proc(): bool
proc onisTextureProvider*(self: QQuickItem, slot: proc(super: QQuickItemisTextureProviderBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemisTextureProviderBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_isTextureProvider(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_isTextureProvider(self: ptr cQQuickItem, slot: int): bool {.exportc: "miqt_exec_callback_QQuickItem_isTextureProvider ".} =
  type Cb = proc(super: QQuickItemisTextureProviderBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isTextureProvider(QQuickItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_textureProvider(self: QQuickItem, ): gen_qsgtextureprovider.QSGTextureProvider =


  gen_qsgtextureprovider.QSGTextureProvider(h: fQQuickItem_virtualbase_textureProvider(self.h))

type QQuickItemtextureProviderBase* = proc(): gen_qsgtextureprovider.QSGTextureProvider
proc ontextureProvider*(self: QQuickItem, slot: proc(super: QQuickItemtextureProviderBase): gen_qsgtextureprovider.QSGTextureProvider) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemtextureProviderBase): gen_qsgtextureprovider.QSGTextureProvider
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_textureProvider(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_textureProvider(self: ptr cQQuickItem, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickItem_textureProvider ".} =
  type Cb = proc(super: QQuickItemtextureProviderBase): gen_qsgtextureprovider.QSGTextureProvider
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_textureProvider(QQuickItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QQuickItem, param1: gen_qcoreevent.QEvent): bool =


  fQQuickItem_virtualbase_event(self.h, param1.h)

type QQuickItemeventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQuickItem, slot: proc(super: QQuickItemeventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemeventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_event(self: ptr cQQuickItem, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QQuickItem_event ".} =
  type Cb = proc(super: QQuickItemeventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQuickItem(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_itemChange(self: QQuickItem, param1: QQuickItemItemChange, param2: QQuickItemItemChangeData): void =


  fQQuickItem_virtualbase_itemChange(self.h, cint(param1), param2.h)

type QQuickItemitemChangeBase* = proc(param1: QQuickItemItemChange, param2: QQuickItemItemChangeData): void
proc onitemChange*(self: QQuickItem, slot: proc(super: QQuickItemitemChangeBase, param1: QQuickItemItemChange, param2: QQuickItemItemChangeData): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemitemChangeBase, param1: QQuickItemItemChange, param2: QQuickItemItemChangeData): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_itemChange(self: ptr cQQuickItem, slot: int, param1: cint, param2: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_itemChange ".} =
  type Cb = proc(super: QQuickItemitemChangeBase, param1: QQuickItemItemChange, param2: QQuickItemItemChangeData): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: QQuickItemItemChange, param2: QQuickItemItemChangeData): auto =
    callVirtualBase_itemChange(QQuickItem(h: self), param1, param2)
  let slotval1 = QQuickItemItemChange(param1)

  let slotval2 = QQuickItemItemChangeData(h: param2)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_classBegin(self: QQuickItem, ): void =


  fQQuickItem_virtualbase_classBegin(self.h)

type QQuickItemclassBeginBase* = proc(): void
proc onclassBegin*(self: QQuickItem, slot: proc(super: QQuickItemclassBeginBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemclassBeginBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_classBegin(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_classBegin(self: ptr cQQuickItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickItem_classBegin ".} =
  type Cb = proc(super: QQuickItemclassBeginBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_classBegin(QQuickItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_componentComplete(self: QQuickItem, ): void =


  fQQuickItem_virtualbase_componentComplete(self.h)

type QQuickItemcomponentCompleteBase* = proc(): void
proc oncomponentComplete*(self: QQuickItem, slot: proc(super: QQuickItemcomponentCompleteBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemcomponentCompleteBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_componentComplete(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_componentComplete(self: ptr cQQuickItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickItem_componentComplete ".} =
  type Cb = proc(super: QQuickItemcomponentCompleteBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_componentComplete(QQuickItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QQuickItem, event: gen_qevent.QKeyEvent): void =


  fQQuickItem_virtualbase_keyPressEvent(self.h, event.h)

type QQuickItemkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QQuickItem, slot: proc(super: QQuickItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_keyPressEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_keyPressEvent ".} =
  type Cb = proc(super: QQuickItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QQuickItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QQuickItem, event: gen_qevent.QKeyEvent): void =


  fQQuickItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QQuickItemkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QQuickItem, slot: proc(super: QQuickItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_keyReleaseEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_keyReleaseEvent ".} =
  type Cb = proc(super: QQuickItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QQuickItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QQuickItem, param1: gen_qevent.QInputMethodEvent): void =


  fQQuickItem_virtualbase_inputMethodEvent(self.h, param1.h)

type QQuickIteminputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QQuickItem, slot: proc(super: QQuickIteminputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickIteminputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_inputMethodEvent(self: ptr cQQuickItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_inputMethodEvent ".} =
  type Cb = proc(super: QQuickIteminputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QQuickItem(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QQuickItem, param1: gen_qevent.QFocusEvent): void =


  fQQuickItem_virtualbase_focusInEvent(self.h, param1.h)

type QQuickItemfocusInEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QQuickItem, slot: proc(super: QQuickItemfocusInEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_focusInEvent(self: ptr cQQuickItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_focusInEvent ".} =
  type Cb = proc(super: QQuickItemfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QQuickItem(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QQuickItem, param1: gen_qevent.QFocusEvent): void =


  fQQuickItem_virtualbase_focusOutEvent(self.h, param1.h)

type QQuickItemfocusOutEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QQuickItem, slot: proc(super: QQuickItemfocusOutEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_focusOutEvent(self: ptr cQQuickItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_focusOutEvent ".} =
  type Cb = proc(super: QQuickItemfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QQuickItem(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QQuickItem, event: gen_qevent.QMouseEvent): void =


  fQQuickItem_virtualbase_mousePressEvent(self.h, event.h)

type QQuickItemmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QQuickItem, slot: proc(super: QQuickItemmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_mousePressEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_mousePressEvent ".} =
  type Cb = proc(super: QQuickItemmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QQuickItem(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QQuickItem, event: gen_qevent.QMouseEvent): void =


  fQQuickItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QQuickItemmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QQuickItem, slot: proc(super: QQuickItemmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_mouseMoveEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_mouseMoveEvent ".} =
  type Cb = proc(super: QQuickItemmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QQuickItem(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QQuickItem, event: gen_qevent.QMouseEvent): void =


  fQQuickItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QQuickItemmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QQuickItem, slot: proc(super: QQuickItemmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_mouseReleaseEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_mouseReleaseEvent ".} =
  type Cb = proc(super: QQuickItemmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QQuickItem(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QQuickItem, event: gen_qevent.QMouseEvent): void =


  fQQuickItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QQuickItemmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QQuickItem, slot: proc(super: QQuickItemmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_mouseDoubleClickEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QQuickItemmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QQuickItem(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseUngrabEvent(self: QQuickItem, ): void =


  fQQuickItem_virtualbase_mouseUngrabEvent(self.h)

type QQuickItemmouseUngrabEventBase* = proc(): void
proc onmouseUngrabEvent*(self: QQuickItem, slot: proc(super: QQuickItemmouseUngrabEventBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemmouseUngrabEventBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_mouseUngrabEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_mouseUngrabEvent(self: ptr cQQuickItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickItem_mouseUngrabEvent ".} =
  type Cb = proc(super: QQuickItemmouseUngrabEventBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mouseUngrabEvent(QQuickItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_touchUngrabEvent(self: QQuickItem, ): void =


  fQQuickItem_virtualbase_touchUngrabEvent(self.h)

type QQuickItemtouchUngrabEventBase* = proc(): void
proc ontouchUngrabEvent*(self: QQuickItem, slot: proc(super: QQuickItemtouchUngrabEventBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemtouchUngrabEventBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_touchUngrabEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_touchUngrabEvent(self: ptr cQQuickItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickItem_touchUngrabEvent ".} =
  type Cb = proc(super: QQuickItemtouchUngrabEventBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_touchUngrabEvent(QQuickItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_wheelEvent(self: QQuickItem, event: gen_qevent.QWheelEvent): void =


  fQQuickItem_virtualbase_wheelEvent(self.h, event.h)

type QQuickItemwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QQuickItem, slot: proc(super: QQuickItemwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_wheelEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_wheelEvent ".} =
  type Cb = proc(super: QQuickItemwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QQuickItem(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_touchEvent(self: QQuickItem, event: gen_qevent.QTouchEvent): void =


  fQQuickItem_virtualbase_touchEvent(self.h, event.h)

type QQuickItemtouchEventBase* = proc(event: gen_qevent.QTouchEvent): void
proc ontouchEvent*(self: QQuickItem, slot: proc(super: QQuickItemtouchEventBase, event: gen_qevent.QTouchEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemtouchEventBase, event: gen_qevent.QTouchEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_touchEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_touchEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_touchEvent ".} =
  type Cb = proc(super: QQuickItemtouchEventBase, event: gen_qevent.QTouchEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTouchEvent): auto =
    callVirtualBase_touchEvent(QQuickItem(h: self), event)
  let slotval1 = gen_qevent.QTouchEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QQuickItem, event: gen_qevent.QHoverEvent): void =


  fQQuickItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QQuickItemhoverEnterEventBase* = proc(event: gen_qevent.QHoverEvent): void
proc onhoverEnterEvent*(self: QQuickItem, slot: proc(super: QQuickItemhoverEnterEventBase, event: gen_qevent.QHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemhoverEnterEventBase, event: gen_qevent.QHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_hoverEnterEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_hoverEnterEvent ".} =
  type Cb = proc(super: QQuickItemhoverEnterEventBase, event: gen_qevent.QHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QQuickItem(h: self), event)
  let slotval1 = gen_qevent.QHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QQuickItem, event: gen_qevent.QHoverEvent): void =


  fQQuickItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QQuickItemhoverMoveEventBase* = proc(event: gen_qevent.QHoverEvent): void
proc onhoverMoveEvent*(self: QQuickItem, slot: proc(super: QQuickItemhoverMoveEventBase, event: gen_qevent.QHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemhoverMoveEventBase, event: gen_qevent.QHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_hoverMoveEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_hoverMoveEvent ".} =
  type Cb = proc(super: QQuickItemhoverMoveEventBase, event: gen_qevent.QHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QQuickItem(h: self), event)
  let slotval1 = gen_qevent.QHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QQuickItem, event: gen_qevent.QHoverEvent): void =


  fQQuickItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QQuickItemhoverLeaveEventBase* = proc(event: gen_qevent.QHoverEvent): void
proc onhoverLeaveEvent*(self: QQuickItem, slot: proc(super: QQuickItemhoverLeaveEventBase, event: gen_qevent.QHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemhoverLeaveEventBase, event: gen_qevent.QHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_hoverLeaveEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_hoverLeaveEvent ".} =
  type Cb = proc(super: QQuickItemhoverLeaveEventBase, event: gen_qevent.QHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QQuickItem(h: self), event)
  let slotval1 = gen_qevent.QHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QQuickItem, param1: gen_qevent.QDragEnterEvent): void =


  fQQuickItem_virtualbase_dragEnterEvent(self.h, param1.h)

type QQuickItemdragEnterEventBase* = proc(param1: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QQuickItem, slot: proc(super: QQuickItemdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_dragEnterEvent(self: ptr cQQuickItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_dragEnterEvent ".} =
  type Cb = proc(super: QQuickItemdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QQuickItem(h: self), param1)
  let slotval1 = gen_qevent.QDragEnterEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QQuickItem, param1: gen_qevent.QDragMoveEvent): void =


  fQQuickItem_virtualbase_dragMoveEvent(self.h, param1.h)

type QQuickItemdragMoveEventBase* = proc(param1: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QQuickItem, slot: proc(super: QQuickItemdragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemdragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_dragMoveEvent(self: ptr cQQuickItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_dragMoveEvent ".} =
  type Cb = proc(super: QQuickItemdragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QQuickItem(h: self), param1)
  let slotval1 = gen_qevent.QDragMoveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QQuickItem, param1: gen_qevent.QDragLeaveEvent): void =


  fQQuickItem_virtualbase_dragLeaveEvent(self.h, param1.h)

type QQuickItemdragLeaveEventBase* = proc(param1: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QQuickItem, slot: proc(super: QQuickItemdragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemdragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_dragLeaveEvent(self: ptr cQQuickItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_dragLeaveEvent ".} =
  type Cb = proc(super: QQuickItemdragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QQuickItem(h: self), param1)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QQuickItem, param1: gen_qevent.QDropEvent): void =


  fQQuickItem_virtualbase_dropEvent(self.h, param1.h)

type QQuickItemdropEventBase* = proc(param1: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QQuickItem, slot: proc(super: QQuickItemdropEventBase, param1: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemdropEventBase, param1: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_dropEvent(self: ptr cQQuickItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_dropEvent ".} =
  type Cb = proc(super: QQuickItemdropEventBase, param1: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QQuickItem(h: self), param1)
  let slotval1 = gen_qevent.QDropEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childMouseEventFilter(self: QQuickItem, param1: QQuickItem, param2: gen_qcoreevent.QEvent): bool =


  fQQuickItem_virtualbase_childMouseEventFilter(self.h, param1.h, param2.h)

type QQuickItemchildMouseEventFilterBase* = proc(param1: QQuickItem, param2: gen_qcoreevent.QEvent): bool
proc onchildMouseEventFilter*(self: QQuickItem, slot: proc(super: QQuickItemchildMouseEventFilterBase, param1: QQuickItem, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemchildMouseEventFilterBase, param1: QQuickItem, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_childMouseEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_childMouseEventFilter(self: ptr cQQuickItem, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QQuickItem_childMouseEventFilter ".} =
  type Cb = proc(super: QQuickItemchildMouseEventFilterBase, param1: QQuickItem, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: QQuickItem, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_childMouseEventFilter(QQuickItem(h: self), param1, param2)
  let slotval1 = QQuickItem(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_windowDeactivateEvent(self: QQuickItem, ): void =


  fQQuickItem_virtualbase_windowDeactivateEvent(self.h)

type QQuickItemwindowDeactivateEventBase* = proc(): void
proc onwindowDeactivateEvent*(self: QQuickItem, slot: proc(super: QQuickItemwindowDeactivateEventBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemwindowDeactivateEventBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_windowDeactivateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_windowDeactivateEvent(self: ptr cQQuickItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickItem_windowDeactivateEvent ".} =
  type Cb = proc(super: QQuickItemwindowDeactivateEventBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_windowDeactivateEvent(QQuickItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_geometryChanged(self: QQuickItem, newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void =


  fQQuickItem_virtualbase_geometryChanged(self.h, newGeometry.h, oldGeometry.h)

type QQuickItemgeometryChangedBase* = proc(newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void
proc ongeometryChanged*(self: QQuickItem, slot: proc(super: QQuickItemgeometryChangedBase, newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemgeometryChangedBase, newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_geometryChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_geometryChanged(self: ptr cQQuickItem, slot: int, newGeometry: pointer, oldGeometry: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_geometryChanged ".} =
  type Cb = proc(super: QQuickItemgeometryChangedBase, newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): auto =
    callVirtualBase_geometryChanged(QQuickItem(h: self), newGeometry, oldGeometry)
  let slotval1 = gen_qrect.QRectF(h: newGeometry)

  let slotval2 = gen_qrect.QRectF(h: oldGeometry)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_updatePaintNode(self: QQuickItem, param1: gen_qsgnode.QSGNode, param2: QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode =


  gen_qsgnode.QSGNode(h: fQQuickItem_virtualbase_updatePaintNode(self.h, param1.h, param2.h))

type QQuickItemupdatePaintNodeBase* = proc(param1: gen_qsgnode.QSGNode, param2: QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode
proc onupdatePaintNode*(self: QQuickItem, slot: proc(super: QQuickItemupdatePaintNodeBase, param1: gen_qsgnode.QSGNode, param2: QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemupdatePaintNodeBase, param1: gen_qsgnode.QSGNode, param2: QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_updatePaintNode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_updatePaintNode(self: ptr cQQuickItem, slot: int, param1: pointer, param2: pointer): pointer {.exportc: "miqt_exec_callback_QQuickItem_updatePaintNode ".} =
  type Cb = proc(super: QQuickItemupdatePaintNodeBase, param1: gen_qsgnode.QSGNode, param2: QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qsgnode.QSGNode, param2: QQuickItemUpdatePaintNodeData): auto =
    callVirtualBase_updatePaintNode(QQuickItem(h: self), param1, param2)
  let slotval1 = gen_qsgnode.QSGNode(h: param1)

  let slotval2 = QQuickItemUpdatePaintNodeData(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_releaseResources(self: QQuickItem, ): void =


  fQQuickItem_virtualbase_releaseResources(self.h)

type QQuickItemreleaseResourcesBase* = proc(): void
proc onreleaseResources*(self: QQuickItem, slot: proc(super: QQuickItemreleaseResourcesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemreleaseResourcesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_releaseResources(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_releaseResources(self: ptr cQQuickItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickItem_releaseResources ".} =
  type Cb = proc(super: QQuickItemreleaseResourcesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_releaseResources(QQuickItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updatePolish(self: QQuickItem, ): void =


  fQQuickItem_virtualbase_updatePolish(self.h)

type QQuickItemupdatePolishBase* = proc(): void
proc onupdatePolish*(self: QQuickItem, slot: proc(super: QQuickItemupdatePolishBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemupdatePolishBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_updatePolish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_updatePolish(self: ptr cQQuickItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickItem_updatePolish ".} =
  type Cb = proc(super: QQuickItemupdatePolishBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updatePolish(QQuickItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_eventFilter(self: QQuickItem, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQuickItem_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickItemeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQuickItem, slot: proc(super: QQuickItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_eventFilter(self: ptr cQQuickItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickItem_eventFilter ".} =
  type Cb = proc(super: QQuickItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQuickItem(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQuickItem, event: gen_qcoreevent.QTimerEvent): void =


  fQQuickItem_virtualbase_timerEvent(self.h, event.h)

type QQuickItemtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQuickItem, slot: proc(super: QQuickItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_timerEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_timerEvent ".} =
  type Cb = proc(super: QQuickItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQuickItem(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQuickItem, event: gen_qcoreevent.QChildEvent): void =


  fQQuickItem_virtualbase_childEvent(self.h, event.h)

type QQuickItemchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQuickItem, slot: proc(super: QQuickItemchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_childEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_childEvent ".} =
  type Cb = proc(super: QQuickItemchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQuickItem(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQuickItem, event: gen_qcoreevent.QEvent): void =


  fQQuickItem_virtualbase_customEvent(self.h, event.h)

type QQuickItemcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQuickItem, slot: proc(super: QQuickItemcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_customEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_customEvent ".} =
  type Cb = proc(super: QQuickItemcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQuickItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQuickItem, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickItem_virtualbase_connectNotify(self.h, signal.h)

type QQuickItemconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQuickItem, slot: proc(super: QQuickItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_connectNotify(self: ptr cQQuickItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_connectNotify ".} =
  type Cb = proc(super: QQuickItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQuickItem(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQuickItem, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickItem_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickItemdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQuickItem, slot: proc(super: QQuickItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_disconnectNotify(self: ptr cQQuickItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_disconnectNotify ".} =
  type Cb = proc(super: QQuickItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQuickItem(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QQuickItem) =
  fcQQuickItem_delete(self.h)

func init*(T: type QQuickItemItemChangeData, h: ptr cQQuickItemItemChangeData): QQuickItemItemChangeData =
  T(h: h)
proc create*(T: type QQuickItemItemChangeData, v: QQuickItem): QQuickItemItemChangeData =

  QQuickItemItemChangeData.init(fcQQuickItemItemChangeData_new(v.h))
proc create2*(T: type QQuickItemItemChangeData, v: gen_qquickwindow.QQuickWindow): QQuickItemItemChangeData =

  QQuickItemItemChangeData.init(fcQQuickItemItemChangeData_new2(v.h))
proc create*(T: type QQuickItemItemChangeData, v: float64): QQuickItemItemChangeData =

  QQuickItemItemChangeData.init(fcQQuickItemItemChangeData_new3(v))
proc create*(T: type QQuickItemItemChangeData, v: bool): QQuickItemItemChangeData =

  QQuickItemItemChangeData.init(fcQQuickItemItemChangeData_new4(v))
proc delete*(self: QQuickItemItemChangeData) =
  fcQQuickItemItemChangeData_delete(self.h)

func init*(T: type QQuickItemUpdatePaintNodeData, h: ptr cQQuickItemUpdatePaintNodeData): QQuickItemUpdatePaintNodeData =
  T(h: h)
proc delete*(self: QQuickItemUpdatePaintNodeData) =
  fcQQuickItemUpdatePaintNodeData_delete(self.h)
