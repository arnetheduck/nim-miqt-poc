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
{.compile("gen_qwindow.cpp", cflags).}


type QWindowVisibility* = cint
const
  QWindowHidden* = 0
  QWindowAutomaticVisibility* = 1
  QWindowWindowed* = 2
  QWindowMinimized* = 3
  QWindowMaximized* = 4
  QWindowFullScreen* = 5



type QWindowAncestorMode* = cint
const
  QWindowExcludeTransients* = 0
  QWindowIncludeTransients* = 1



import gen_qwindow_types
export gen_qwindow_types

import
  gen_qaccessible,
  gen_qcoreevent,
  gen_qcursor,
  gen_qevent,
  gen_qicon,
  gen_qmargins,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qscreen,
  gen_qsize,
  gen_qsurface,
  gen_qsurfaceformat
export
  gen_qaccessible,
  gen_qcoreevent,
  gen_qcursor,
  gen_qevent,
  gen_qicon,
  gen_qmargins,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qscreen,
  gen_qsize,
  gen_qsurface,
  gen_qsurfaceformat

type cQWindow*{.exportc: "QWindow", incompleteStruct.} = object

proc fcQWindow_new(): ptr cQWindow {.importc: "QWindow_new".}
proc fcQWindow_new2(parent: pointer): ptr cQWindow {.importc: "QWindow_new2".}
proc fcQWindow_new3(screen: pointer): ptr cQWindow {.importc: "QWindow_new3".}
proc fcQWindow_metaObject(self: pointer, ): pointer {.importc: "QWindow_metaObject".}
proc fcQWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QWindow_metacast".}
proc fcQWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWindow_metacall".}
proc fcQWindow_tr(s: cstring): struct_miqt_string {.importc: "QWindow_tr".}
proc fcQWindow_trUtf8(s: cstring): struct_miqt_string {.importc: "QWindow_trUtf8".}
proc fcQWindow_setSurfaceType(self: pointer, surfaceType: cint): void {.importc: "QWindow_setSurfaceType".}
proc fcQWindow_surfaceType(self: pointer, ): cint {.importc: "QWindow_surfaceType".}
proc fcQWindow_isVisible(self: pointer, ): bool {.importc: "QWindow_isVisible".}
proc fcQWindow_visibility(self: pointer, ): cint {.importc: "QWindow_visibility".}
proc fcQWindow_setVisibility(self: pointer, v: cint): void {.importc: "QWindow_setVisibility".}
proc fcQWindow_create(self: pointer, ): void {.importc: "QWindow_create".}
proc fcQWindow_winId(self: pointer, ): uint {.importc: "QWindow_winId".}
proc fcQWindow_parent(self: pointer, mode: cint): pointer {.importc: "QWindow_parent".}
proc fcQWindow_parent2(self: pointer, ): pointer {.importc: "QWindow_parent2".}
proc fcQWindow_setParent(self: pointer, parent: pointer): void {.importc: "QWindow_setParent".}
proc fcQWindow_isTopLevel(self: pointer, ): bool {.importc: "QWindow_isTopLevel".}
proc fcQWindow_isModal(self: pointer, ): bool {.importc: "QWindow_isModal".}
proc fcQWindow_modality(self: pointer, ): cint {.importc: "QWindow_modality".}
proc fcQWindow_setModality(self: pointer, modality: cint): void {.importc: "QWindow_setModality".}
proc fcQWindow_setFormat(self: pointer, format: pointer): void {.importc: "QWindow_setFormat".}
proc fcQWindow_format(self: pointer, ): pointer {.importc: "QWindow_format".}
proc fcQWindow_requestedFormat(self: pointer, ): pointer {.importc: "QWindow_requestedFormat".}
proc fcQWindow_setFlags(self: pointer, flags: cint): void {.importc: "QWindow_setFlags".}
proc fcQWindow_flags(self: pointer, ): cint {.importc: "QWindow_flags".}
proc fcQWindow_setFlag(self: pointer, param1: cint): void {.importc: "QWindow_setFlag".}
proc fcQWindow_typeX(self: pointer, ): cint {.importc: "QWindow_type".}
proc fcQWindow_title(self: pointer, ): struct_miqt_string {.importc: "QWindow_title".}
proc fcQWindow_setOpacity(self: pointer, level: float64): void {.importc: "QWindow_setOpacity".}
proc fcQWindow_opacity(self: pointer, ): float64 {.importc: "QWindow_opacity".}
proc fcQWindow_setMask(self: pointer, region: pointer): void {.importc: "QWindow_setMask".}
proc fcQWindow_mask(self: pointer, ): pointer {.importc: "QWindow_mask".}
proc fcQWindow_isActive(self: pointer, ): bool {.importc: "QWindow_isActive".}
proc fcQWindow_reportContentOrientationChange(self: pointer, orientation: cint): void {.importc: "QWindow_reportContentOrientationChange".}
proc fcQWindow_contentOrientation(self: pointer, ): cint {.importc: "QWindow_contentOrientation".}
proc fcQWindow_devicePixelRatio(self: pointer, ): float64 {.importc: "QWindow_devicePixelRatio".}
proc fcQWindow_windowState(self: pointer, ): cint {.importc: "QWindow_windowState".}
proc fcQWindow_windowStates(self: pointer, ): cint {.importc: "QWindow_windowStates".}
proc fcQWindow_setWindowState(self: pointer, state: cint): void {.importc: "QWindow_setWindowState".}
proc fcQWindow_setWindowStates(self: pointer, states: cint): void {.importc: "QWindow_setWindowStates".}
proc fcQWindow_setTransientParent(self: pointer, parent: pointer): void {.importc: "QWindow_setTransientParent".}
proc fcQWindow_transientParent(self: pointer, ): pointer {.importc: "QWindow_transientParent".}
proc fcQWindow_isAncestorOf(self: pointer, child: pointer): bool {.importc: "QWindow_isAncestorOf".}
proc fcQWindow_isExposed(self: pointer, ): bool {.importc: "QWindow_isExposed".}
proc fcQWindow_minimumWidth(self: pointer, ): cint {.importc: "QWindow_minimumWidth".}
proc fcQWindow_minimumHeight(self: pointer, ): cint {.importc: "QWindow_minimumHeight".}
proc fcQWindow_maximumWidth(self: pointer, ): cint {.importc: "QWindow_maximumWidth".}
proc fcQWindow_maximumHeight(self: pointer, ): cint {.importc: "QWindow_maximumHeight".}
proc fcQWindow_minimumSize(self: pointer, ): pointer {.importc: "QWindow_minimumSize".}
proc fcQWindow_maximumSize(self: pointer, ): pointer {.importc: "QWindow_maximumSize".}
proc fcQWindow_baseSize(self: pointer, ): pointer {.importc: "QWindow_baseSize".}
proc fcQWindow_sizeIncrement(self: pointer, ): pointer {.importc: "QWindow_sizeIncrement".}
proc fcQWindow_setMinimumSize(self: pointer, size: pointer): void {.importc: "QWindow_setMinimumSize".}
proc fcQWindow_setMaximumSize(self: pointer, size: pointer): void {.importc: "QWindow_setMaximumSize".}
proc fcQWindow_setBaseSize(self: pointer, size: pointer): void {.importc: "QWindow_setBaseSize".}
proc fcQWindow_setSizeIncrement(self: pointer, size: pointer): void {.importc: "QWindow_setSizeIncrement".}
proc fcQWindow_geometry(self: pointer, ): pointer {.importc: "QWindow_geometry".}
proc fcQWindow_frameMargins(self: pointer, ): pointer {.importc: "QWindow_frameMargins".}
proc fcQWindow_frameGeometry(self: pointer, ): pointer {.importc: "QWindow_frameGeometry".}
proc fcQWindow_framePosition(self: pointer, ): pointer {.importc: "QWindow_framePosition".}
proc fcQWindow_setFramePosition(self: pointer, point: pointer): void {.importc: "QWindow_setFramePosition".}
proc fcQWindow_width(self: pointer, ): cint {.importc: "QWindow_width".}
proc fcQWindow_height(self: pointer, ): cint {.importc: "QWindow_height".}
proc fcQWindow_x(self: pointer, ): cint {.importc: "QWindow_x".}
proc fcQWindow_y(self: pointer, ): cint {.importc: "QWindow_y".}
proc fcQWindow_size(self: pointer, ): pointer {.importc: "QWindow_size".}
proc fcQWindow_position(self: pointer, ): pointer {.importc: "QWindow_position".}
proc fcQWindow_setPosition(self: pointer, pt: pointer): void {.importc: "QWindow_setPosition".}
proc fcQWindow_setPosition2(self: pointer, posx: cint, posy: cint): void {.importc: "QWindow_setPosition2".}
proc fcQWindow_resize(self: pointer, newSize: pointer): void {.importc: "QWindow_resize".}
proc fcQWindow_resize2(self: pointer, w: cint, h: cint): void {.importc: "QWindow_resize2".}
proc fcQWindow_setFilePath(self: pointer, filePath: struct_miqt_string): void {.importc: "QWindow_setFilePath".}
proc fcQWindow_filePath(self: pointer, ): struct_miqt_string {.importc: "QWindow_filePath".}
proc fcQWindow_setIcon(self: pointer, icon: pointer): void {.importc: "QWindow_setIcon".}
proc fcQWindow_icon(self: pointer, ): pointer {.importc: "QWindow_icon".}
proc fcQWindow_destroy(self: pointer, ): void {.importc: "QWindow_destroy".}
proc fcQWindow_setKeyboardGrabEnabled(self: pointer, grab: bool): bool {.importc: "QWindow_setKeyboardGrabEnabled".}
proc fcQWindow_setMouseGrabEnabled(self: pointer, grab: bool): bool {.importc: "QWindow_setMouseGrabEnabled".}
proc fcQWindow_screen(self: pointer, ): pointer {.importc: "QWindow_screen".}
proc fcQWindow_setScreen(self: pointer, screen: pointer): void {.importc: "QWindow_setScreen".}
proc fcQWindow_accessibleRoot(self: pointer, ): pointer {.importc: "QWindow_accessibleRoot".}
proc fcQWindow_focusObject(self: pointer, ): pointer {.importc: "QWindow_focusObject".}
proc fcQWindow_mapToGlobal(self: pointer, pos: pointer): pointer {.importc: "QWindow_mapToGlobal".}
proc fcQWindow_mapFromGlobal(self: pointer, pos: pointer): pointer {.importc: "QWindow_mapFromGlobal".}
proc fcQWindow_cursor(self: pointer, ): pointer {.importc: "QWindow_cursor".}
proc fcQWindow_setCursor(self: pointer, cursor: pointer): void {.importc: "QWindow_setCursor".}
proc fcQWindow_unsetCursor(self: pointer, ): void {.importc: "QWindow_unsetCursor".}
proc fcQWindow_fromWinId(id: uint): pointer {.importc: "QWindow_fromWinId".}
proc fcQWindow_requestActivate(self: pointer, ): void {.importc: "QWindow_requestActivate".}
proc fcQWindow_setVisible(self: pointer, visible: bool): void {.importc: "QWindow_setVisible".}
proc fcQWindow_show(self: pointer, ): void {.importc: "QWindow_show".}
proc fcQWindow_hide(self: pointer, ): void {.importc: "QWindow_hide".}
proc fcQWindow_showMinimized(self: pointer, ): void {.importc: "QWindow_showMinimized".}
proc fcQWindow_showMaximized(self: pointer, ): void {.importc: "QWindow_showMaximized".}
proc fcQWindow_showFullScreen(self: pointer, ): void {.importc: "QWindow_showFullScreen".}
proc fcQWindow_showNormal(self: pointer, ): void {.importc: "QWindow_showNormal".}
proc fcQWindow_close(self: pointer, ): bool {.importc: "QWindow_close".}
proc fcQWindow_raiseX(self: pointer, ): void {.importc: "QWindow_raise".}
proc fcQWindow_lower(self: pointer, ): void {.importc: "QWindow_lower".}
proc fcQWindow_startSystemResize(self: pointer, edges: cint): bool {.importc: "QWindow_startSystemResize".}
proc fcQWindow_startSystemMove(self: pointer, ): bool {.importc: "QWindow_startSystemMove".}
proc fcQWindow_setTitle(self: pointer, title: struct_miqt_string): void {.importc: "QWindow_setTitle".}
proc fcQWindow_setX(self: pointer, arg: cint): void {.importc: "QWindow_setX".}
proc fcQWindow_setY(self: pointer, arg: cint): void {.importc: "QWindow_setY".}
proc fcQWindow_setWidth(self: pointer, arg: cint): void {.importc: "QWindow_setWidth".}
proc fcQWindow_setHeight(self: pointer, arg: cint): void {.importc: "QWindow_setHeight".}
proc fcQWindow_setGeometry(self: pointer, posx: cint, posy: cint, w: cint, h: cint): void {.importc: "QWindow_setGeometry".}
proc fcQWindow_setGeometryWithRect(self: pointer, rect: pointer): void {.importc: "QWindow_setGeometryWithRect".}
proc fcQWindow_setMinimumWidth(self: pointer, w: cint): void {.importc: "QWindow_setMinimumWidth".}
proc fcQWindow_setMinimumHeight(self: pointer, h: cint): void {.importc: "QWindow_setMinimumHeight".}
proc fcQWindow_setMaximumWidth(self: pointer, w: cint): void {.importc: "QWindow_setMaximumWidth".}
proc fcQWindow_setMaximumHeight(self: pointer, h: cint): void {.importc: "QWindow_setMaximumHeight".}
proc fcQWindow_alert(self: pointer, msec: cint): void {.importc: "QWindow_alert".}
proc fcQWindow_requestUpdate(self: pointer, ): void {.importc: "QWindow_requestUpdate".}
proc fcQWindow_screenChanged(self: pointer, screen: pointer): void {.importc: "QWindow_screenChanged".}
proc fQWindow_connect_screenChanged(self: pointer, slot: int) {.importc: "QWindow_connect_screenChanged".}
proc fcQWindow_modalityChanged(self: pointer, modality: cint): void {.importc: "QWindow_modalityChanged".}
proc fQWindow_connect_modalityChanged(self: pointer, slot: int) {.importc: "QWindow_connect_modalityChanged".}
proc fcQWindow_windowStateChanged(self: pointer, windowState: cint): void {.importc: "QWindow_windowStateChanged".}
proc fQWindow_connect_windowStateChanged(self: pointer, slot: int) {.importc: "QWindow_connect_windowStateChanged".}
proc fcQWindow_windowTitleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWindow_windowTitleChanged".}
proc fQWindow_connect_windowTitleChanged(self: pointer, slot: int) {.importc: "QWindow_connect_windowTitleChanged".}
proc fcQWindow_xChanged(self: pointer, arg: cint): void {.importc: "QWindow_xChanged".}
proc fQWindow_connect_xChanged(self: pointer, slot: int) {.importc: "QWindow_connect_xChanged".}
proc fcQWindow_yChanged(self: pointer, arg: cint): void {.importc: "QWindow_yChanged".}
proc fQWindow_connect_yChanged(self: pointer, slot: int) {.importc: "QWindow_connect_yChanged".}
proc fcQWindow_widthChanged(self: pointer, arg: cint): void {.importc: "QWindow_widthChanged".}
proc fQWindow_connect_widthChanged(self: pointer, slot: int) {.importc: "QWindow_connect_widthChanged".}
proc fcQWindow_heightChanged(self: pointer, arg: cint): void {.importc: "QWindow_heightChanged".}
proc fQWindow_connect_heightChanged(self: pointer, slot: int) {.importc: "QWindow_connect_heightChanged".}
proc fcQWindow_minimumWidthChanged(self: pointer, arg: cint): void {.importc: "QWindow_minimumWidthChanged".}
proc fQWindow_connect_minimumWidthChanged(self: pointer, slot: int) {.importc: "QWindow_connect_minimumWidthChanged".}
proc fcQWindow_minimumHeightChanged(self: pointer, arg: cint): void {.importc: "QWindow_minimumHeightChanged".}
proc fQWindow_connect_minimumHeightChanged(self: pointer, slot: int) {.importc: "QWindow_connect_minimumHeightChanged".}
proc fcQWindow_maximumWidthChanged(self: pointer, arg: cint): void {.importc: "QWindow_maximumWidthChanged".}
proc fQWindow_connect_maximumWidthChanged(self: pointer, slot: int) {.importc: "QWindow_connect_maximumWidthChanged".}
proc fcQWindow_maximumHeightChanged(self: pointer, arg: cint): void {.importc: "QWindow_maximumHeightChanged".}
proc fQWindow_connect_maximumHeightChanged(self: pointer, slot: int) {.importc: "QWindow_connect_maximumHeightChanged".}
proc fcQWindow_visibleChanged(self: pointer, arg: bool): void {.importc: "QWindow_visibleChanged".}
proc fQWindow_connect_visibleChanged(self: pointer, slot: int) {.importc: "QWindow_connect_visibleChanged".}
proc fcQWindow_visibilityChanged(self: pointer, visibility: cint): void {.importc: "QWindow_visibilityChanged".}
proc fQWindow_connect_visibilityChanged(self: pointer, slot: int) {.importc: "QWindow_connect_visibilityChanged".}
proc fcQWindow_activeChanged(self: pointer, ): void {.importc: "QWindow_activeChanged".}
proc fQWindow_connect_activeChanged(self: pointer, slot: int) {.importc: "QWindow_connect_activeChanged".}
proc fcQWindow_contentOrientationChanged(self: pointer, orientation: cint): void {.importc: "QWindow_contentOrientationChanged".}
proc fQWindow_connect_contentOrientationChanged(self: pointer, slot: int) {.importc: "QWindow_connect_contentOrientationChanged".}
proc fcQWindow_focusObjectChanged(self: pointer, objectVal: pointer): void {.importc: "QWindow_focusObjectChanged".}
proc fQWindow_connect_focusObjectChanged(self: pointer, slot: int) {.importc: "QWindow_connect_focusObjectChanged".}
proc fcQWindow_opacityChanged(self: pointer, opacity: float64): void {.importc: "QWindow_opacityChanged".}
proc fQWindow_connect_opacityChanged(self: pointer, slot: int) {.importc: "QWindow_connect_opacityChanged".}
proc fcQWindow_transientParentChanged(self: pointer, transientParent: pointer): void {.importc: "QWindow_transientParentChanged".}
proc fQWindow_connect_transientParentChanged(self: pointer, slot: int) {.importc: "QWindow_connect_transientParentChanged".}
proc fcQWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWindow_tr2".}
proc fcQWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWindow_tr3".}
proc fcQWindow_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWindow_trUtf82".}
proc fcQWindow_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWindow_trUtf83".}
proc fcQWindow_setFlag2(self: pointer, param1: cint, on: bool): void {.importc: "QWindow_setFlag2".}
proc fcQWindow_isAncestorOf2(self: pointer, child: pointer, mode: cint): bool {.importc: "QWindow_isAncestorOf2".}
proc fQWindow_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QWindow_virtualbase_metaObject".}
proc fcQWindow_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QWindow_override_virtual_metaObject".}
proc fQWindow_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QWindow_virtualbase_metacast".}
proc fcQWindow_override_virtual_metacast(self: pointer, slot: int) {.importc: "QWindow_override_virtual_metacast".}
proc fQWindow_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWindow_virtualbase_metacall".}
proc fcQWindow_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWindow_override_virtual_metacall".}
proc fQWindow_virtualbase_surfaceType(self: pointer, ): cint{.importc: "QWindow_virtualbase_surfaceType".}
proc fcQWindow_override_virtual_surfaceType(self: pointer, slot: int) {.importc: "QWindow_override_virtual_surfaceType".}
proc fQWindow_virtualbase_format(self: pointer, ): pointer{.importc: "QWindow_virtualbase_format".}
proc fcQWindow_override_virtual_format(self: pointer, slot: int) {.importc: "QWindow_override_virtual_format".}
proc fQWindow_virtualbase_size(self: pointer, ): pointer{.importc: "QWindow_virtualbase_size".}
proc fcQWindow_override_virtual_size(self: pointer, slot: int) {.importc: "QWindow_override_virtual_size".}
proc fQWindow_virtualbase_accessibleRoot(self: pointer, ): pointer{.importc: "QWindow_virtualbase_accessibleRoot".}
proc fcQWindow_override_virtual_accessibleRoot(self: pointer, slot: int) {.importc: "QWindow_override_virtual_accessibleRoot".}
proc fQWindow_virtualbase_focusObject(self: pointer, ): pointer{.importc: "QWindow_virtualbase_focusObject".}
proc fcQWindow_override_virtual_focusObject(self: pointer, slot: int) {.importc: "QWindow_override_virtual_focusObject".}
proc fQWindow_virtualbase_exposeEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_exposeEvent".}
proc fcQWindow_override_virtual_exposeEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_exposeEvent".}
proc fQWindow_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_resizeEvent".}
proc fcQWindow_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_resizeEvent".}
proc fQWindow_virtualbase_moveEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_moveEvent".}
proc fcQWindow_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_moveEvent".}
proc fQWindow_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_focusInEvent".}
proc fcQWindow_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_focusInEvent".}
proc fQWindow_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_focusOutEvent".}
proc fcQWindow_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_focusOutEvent".}
proc fQWindow_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_showEvent".}
proc fcQWindow_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_showEvent".}
proc fQWindow_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_hideEvent".}
proc fcQWindow_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_hideEvent".}
proc fQWindow_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QWindow_virtualbase_event".}
proc fcQWindow_override_virtual_event(self: pointer, slot: int) {.importc: "QWindow_override_virtual_event".}
proc fQWindow_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_keyPressEvent".}
proc fcQWindow_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_keyPressEvent".}
proc fQWindow_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_keyReleaseEvent".}
proc fcQWindow_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_keyReleaseEvent".}
proc fQWindow_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_mousePressEvent".}
proc fcQWindow_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_mousePressEvent".}
proc fQWindow_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_mouseReleaseEvent".}
proc fcQWindow_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_mouseReleaseEvent".}
proc fQWindow_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQWindow_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_mouseDoubleClickEvent".}
proc fQWindow_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_mouseMoveEvent".}
proc fcQWindow_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_mouseMoveEvent".}
proc fQWindow_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_wheelEvent".}
proc fcQWindow_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_wheelEvent".}
proc fQWindow_virtualbase_touchEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_touchEvent".}
proc fcQWindow_override_virtual_touchEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_touchEvent".}
proc fQWindow_virtualbase_tabletEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_tabletEvent".}
proc fcQWindow_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_tabletEvent".}
proc fQWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QWindow_virtualbase_nativeEvent".}
proc fcQWindow_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_nativeEvent".}
proc fQWindow_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWindow_virtualbase_eventFilter".}
proc fcQWindow_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWindow_override_virtual_eventFilter".}
proc fQWindow_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWindow_virtualbase_timerEvent".}
proc fcQWindow_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_timerEvent".}
proc fQWindow_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWindow_virtualbase_childEvent".}
proc fcQWindow_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_childEvent".}
proc fQWindow_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWindow_virtualbase_customEvent".}
proc fcQWindow_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_customEvent".}
proc fQWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWindow_virtualbase_connectNotify".}
proc fcQWindow_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWindow_override_virtual_connectNotify".}
proc fQWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWindow_virtualbase_disconnectNotify".}
proc fcQWindow_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWindow_override_virtual_disconnectNotify".}
proc fcQWindow_staticMetaObject(): pointer {.importc: "QWindow_staticMetaObject".}
proc fcQWindow_delete(self: pointer) {.importc: "QWindow_delete".}


func init*(T: type QWindow, h: ptr cQWindow): QWindow =
  T(h: h)
proc create*(T: type QWindow, ): QWindow =

  QWindow.init(fcQWindow_new())
proc create*(T: type QWindow, parent: QWindow): QWindow =

  QWindow.init(fcQWindow_new2(parent.h))
proc create2*(T: type QWindow, screen: gen_qscreen.QScreen): QWindow =

  QWindow.init(fcQWindow_new3(screen.h))
proc metaObject*(self: QWindow, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWindow_metaObject(self.h))

proc metacast*(self: QWindow, param1: cstring): pointer =

  fcQWindow_metacast(self.h, param1)

proc metacall*(self: QWindow, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWindow, s: cstring): string =

  let v_ms = fcQWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QWindow, s: cstring): string =

  let v_ms = fcQWindow_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSurfaceType*(self: QWindow, surfaceType: gen_qsurface.QSurfaceSurfaceType): void =

  fcQWindow_setSurfaceType(self.h, cint(surfaceType))

proc surfaceType*(self: QWindow, ): gen_qsurface.QSurfaceSurfaceType =

  gen_qsurface.QSurfaceSurfaceType(fcQWindow_surfaceType(self.h))

proc isVisible*(self: QWindow, ): bool =

  fcQWindow_isVisible(self.h)

proc visibility*(self: QWindow, ): QWindowVisibility =

  QWindowVisibility(fcQWindow_visibility(self.h))

proc setVisibility*(self: QWindow, v: QWindowVisibility): void =

  fcQWindow_setVisibility(self.h, cint(v))

proc create*(self: QWindow, ): void =

  fcQWindow_create(self.h)

proc winId*(self: QWindow, ): uint =

  fcQWindow_winId(self.h)

proc parent*(self: QWindow, mode: QWindowAncestorMode): QWindow =

  QWindow(h: fcQWindow_parent(self.h, cint(mode)))

proc parent2*(self: QWindow, ): QWindow =

  QWindow(h: fcQWindow_parent2(self.h))

proc setParent*(self: QWindow, parent: QWindow): void =

  fcQWindow_setParent(self.h, parent.h)

proc isTopLevel*(self: QWindow, ): bool =

  fcQWindow_isTopLevel(self.h)

proc isModal*(self: QWindow, ): bool =

  fcQWindow_isModal(self.h)

proc modality*(self: QWindow, ): gen_qnamespace.WindowModality =

  gen_qnamespace.WindowModality(fcQWindow_modality(self.h))

proc setModality*(self: QWindow, modality: gen_qnamespace.WindowModality): void =

  fcQWindow_setModality(self.h, cint(modality))

proc setFormat*(self: QWindow, format: gen_qsurfaceformat.QSurfaceFormat): void =

  fcQWindow_setFormat(self.h, format.h)

proc format*(self: QWindow, ): gen_qsurfaceformat.QSurfaceFormat =

  gen_qsurfaceformat.QSurfaceFormat(h: fcQWindow_format(self.h))

proc requestedFormat*(self: QWindow, ): gen_qsurfaceformat.QSurfaceFormat =

  gen_qsurfaceformat.QSurfaceFormat(h: fcQWindow_requestedFormat(self.h))

proc setFlags*(self: QWindow, flags: gen_qnamespace.WindowType): void =

  fcQWindow_setFlags(self.h, cint(flags))

proc flags*(self: QWindow, ): gen_qnamespace.WindowType =

  gen_qnamespace.WindowType(fcQWindow_flags(self.h))

proc setFlag*(self: QWindow, param1: gen_qnamespace.WindowType): void =

  fcQWindow_setFlag(self.h, cint(param1))

proc typeX*(self: QWindow, ): gen_qnamespace.WindowType =

  gen_qnamespace.WindowType(fcQWindow_typeX(self.h))

proc title*(self: QWindow, ): string =

  let v_ms = fcQWindow_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOpacity*(self: QWindow, level: float64): void =

  fcQWindow_setOpacity(self.h, level)

proc opacity*(self: QWindow, ): float64 =

  fcQWindow_opacity(self.h)

proc setMask*(self: QWindow, region: gen_qregion.QRegion): void =

  fcQWindow_setMask(self.h, region.h)

proc mask*(self: QWindow, ): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQWindow_mask(self.h))

proc isActive*(self: QWindow, ): bool =

  fcQWindow_isActive(self.h)

proc reportContentOrientationChange*(self: QWindow, orientation: gen_qnamespace.ScreenOrientation): void =

  fcQWindow_reportContentOrientationChange(self.h, cint(orientation))

proc contentOrientation*(self: QWindow, ): gen_qnamespace.ScreenOrientation =

  gen_qnamespace.ScreenOrientation(fcQWindow_contentOrientation(self.h))

proc devicePixelRatio*(self: QWindow, ): float64 =

  fcQWindow_devicePixelRatio(self.h)

proc windowState*(self: QWindow, ): gen_qnamespace.WindowState =

  gen_qnamespace.WindowState(fcQWindow_windowState(self.h))

proc windowStates*(self: QWindow, ): gen_qnamespace.WindowState =

  gen_qnamespace.WindowState(fcQWindow_windowStates(self.h))

proc setWindowState*(self: QWindow, state: gen_qnamespace.WindowState): void =

  fcQWindow_setWindowState(self.h, cint(state))

proc setWindowStates*(self: QWindow, states: gen_qnamespace.WindowState): void =

  fcQWindow_setWindowStates(self.h, cint(states))

proc setTransientParent*(self: QWindow, parent: QWindow): void =

  fcQWindow_setTransientParent(self.h, parent.h)

proc transientParent*(self: QWindow, ): QWindow =

  QWindow(h: fcQWindow_transientParent(self.h))

proc isAncestorOf*(self: QWindow, child: QWindow): bool =

  fcQWindow_isAncestorOf(self.h, child.h)

proc isExposed*(self: QWindow, ): bool =

  fcQWindow_isExposed(self.h)

proc minimumWidth*(self: QWindow, ): cint =

  fcQWindow_minimumWidth(self.h)

proc minimumHeight*(self: QWindow, ): cint =

  fcQWindow_minimumHeight(self.h)

proc maximumWidth*(self: QWindow, ): cint =

  fcQWindow_maximumWidth(self.h)

proc maximumHeight*(self: QWindow, ): cint =

  fcQWindow_maximumHeight(self.h)

proc minimumSize*(self: QWindow, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWindow_minimumSize(self.h))

proc maximumSize*(self: QWindow, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWindow_maximumSize(self.h))

proc baseSize*(self: QWindow, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWindow_baseSize(self.h))

proc sizeIncrement*(self: QWindow, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWindow_sizeIncrement(self.h))

proc setMinimumSize*(self: QWindow, size: gen_qsize.QSize): void =

  fcQWindow_setMinimumSize(self.h, size.h)

proc setMaximumSize*(self: QWindow, size: gen_qsize.QSize): void =

  fcQWindow_setMaximumSize(self.h, size.h)

proc setBaseSize*(self: QWindow, size: gen_qsize.QSize): void =

  fcQWindow_setBaseSize(self.h, size.h)

proc setSizeIncrement*(self: QWindow, size: gen_qsize.QSize): void =

  fcQWindow_setSizeIncrement(self.h, size.h)

proc geometry*(self: QWindow, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQWindow_geometry(self.h))

proc frameMargins*(self: QWindow, ): gen_qmargins.QMargins =

  gen_qmargins.QMargins(h: fcQWindow_frameMargins(self.h))

proc frameGeometry*(self: QWindow, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQWindow_frameGeometry(self.h))

proc framePosition*(self: QWindow, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWindow_framePosition(self.h))

proc setFramePosition*(self: QWindow, point: gen_qpoint.QPoint): void =

  fcQWindow_setFramePosition(self.h, point.h)

proc width*(self: QWindow, ): cint =

  fcQWindow_width(self.h)

proc height*(self: QWindow, ): cint =

  fcQWindow_height(self.h)

proc x*(self: QWindow, ): cint =

  fcQWindow_x(self.h)

proc y*(self: QWindow, ): cint =

  fcQWindow_y(self.h)

proc size*(self: QWindow, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWindow_size(self.h))

proc position*(self: QWindow, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWindow_position(self.h))

proc setPosition*(self: QWindow, pt: gen_qpoint.QPoint): void =

  fcQWindow_setPosition(self.h, pt.h)

proc setPosition2*(self: QWindow, posx: cint, posy: cint): void =

  fcQWindow_setPosition2(self.h, posx, posy)

proc resize*(self: QWindow, newSize: gen_qsize.QSize): void =

  fcQWindow_resize(self.h, newSize.h)

proc resize2*(self: QWindow, w: cint, h: cint): void =

  fcQWindow_resize2(self.h, w, h)

proc setFilePath*(self: QWindow, filePath: string): void =

  fcQWindow_setFilePath(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))

proc filePath*(self: QWindow, ): string =

  let v_ms = fcQWindow_filePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setIcon*(self: QWindow, icon: gen_qicon.QIcon): void =

  fcQWindow_setIcon(self.h, icon.h)

proc icon*(self: QWindow, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQWindow_icon(self.h))

proc destroy*(self: QWindow, ): void =

  fcQWindow_destroy(self.h)

proc setKeyboardGrabEnabled*(self: QWindow, grab: bool): bool =

  fcQWindow_setKeyboardGrabEnabled(self.h, grab)

proc setMouseGrabEnabled*(self: QWindow, grab: bool): bool =

  fcQWindow_setMouseGrabEnabled(self.h, grab)

proc screen*(self: QWindow, ): gen_qscreen.QScreen =

  gen_qscreen.QScreen(h: fcQWindow_screen(self.h))

proc setScreen*(self: QWindow, screen: gen_qscreen.QScreen): void =

  fcQWindow_setScreen(self.h, screen.h)

proc accessibleRoot*(self: QWindow, ): gen_qaccessible.QAccessibleInterface =

  gen_qaccessible.QAccessibleInterface(h: fcQWindow_accessibleRoot(self.h))

proc focusObject*(self: QWindow, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQWindow_focusObject(self.h))

proc mapToGlobal*(self: QWindow, pos: gen_qpoint.QPoint): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWindow_mapToGlobal(self.h, pos.h))

proc mapFromGlobal*(self: QWindow, pos: gen_qpoint.QPoint): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWindow_mapFromGlobal(self.h, pos.h))

proc cursor*(self: QWindow, ): gen_qcursor.QCursor =

  gen_qcursor.QCursor(h: fcQWindow_cursor(self.h))

proc setCursor*(self: QWindow, cursor: gen_qcursor.QCursor): void =

  fcQWindow_setCursor(self.h, cursor.h)

proc unsetCursor*(self: QWindow, ): void =

  fcQWindow_unsetCursor(self.h)

proc fromWinId*(_: type QWindow, id: uint): QWindow =

  QWindow(h: fcQWindow_fromWinId(id))

proc requestActivate*(self: QWindow, ): void =

  fcQWindow_requestActivate(self.h)

proc setVisible*(self: QWindow, visible: bool): void =

  fcQWindow_setVisible(self.h, visible)

proc show*(self: QWindow, ): void =

  fcQWindow_show(self.h)

proc hide*(self: QWindow, ): void =

  fcQWindow_hide(self.h)

proc showMinimized*(self: QWindow, ): void =

  fcQWindow_showMinimized(self.h)

proc showMaximized*(self: QWindow, ): void =

  fcQWindow_showMaximized(self.h)

proc showFullScreen*(self: QWindow, ): void =

  fcQWindow_showFullScreen(self.h)

proc showNormal*(self: QWindow, ): void =

  fcQWindow_showNormal(self.h)

proc close*(self: QWindow, ): bool =

  fcQWindow_close(self.h)

proc raiseX*(self: QWindow, ): void =

  fcQWindow_raiseX(self.h)

proc lower*(self: QWindow, ): void =

  fcQWindow_lower(self.h)

proc startSystemResize*(self: QWindow, edges: gen_qnamespace.Edge): bool =

  fcQWindow_startSystemResize(self.h, cint(edges))

proc startSystemMove*(self: QWindow, ): bool =

  fcQWindow_startSystemMove(self.h)

proc setTitle*(self: QWindow, title: string): void =

  fcQWindow_setTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc setX*(self: QWindow, arg: cint): void =

  fcQWindow_setX(self.h, arg)

proc setY*(self: QWindow, arg: cint): void =

  fcQWindow_setY(self.h, arg)

proc setWidth*(self: QWindow, arg: cint): void =

  fcQWindow_setWidth(self.h, arg)

proc setHeight*(self: QWindow, arg: cint): void =

  fcQWindow_setHeight(self.h, arg)

proc setGeometry*(self: QWindow, posx: cint, posy: cint, w: cint, h: cint): void =

  fcQWindow_setGeometry(self.h, posx, posy, w, h)

proc setGeometryWithRect*(self: QWindow, rect: gen_qrect.QRect): void =

  fcQWindow_setGeometryWithRect(self.h, rect.h)

proc setMinimumWidth*(self: QWindow, w: cint): void =

  fcQWindow_setMinimumWidth(self.h, w)

proc setMinimumHeight*(self: QWindow, h: cint): void =

  fcQWindow_setMinimumHeight(self.h, h)

proc setMaximumWidth*(self: QWindow, w: cint): void =

  fcQWindow_setMaximumWidth(self.h, w)

proc setMaximumHeight*(self: QWindow, h: cint): void =

  fcQWindow_setMaximumHeight(self.h, h)

proc alert*(self: QWindow, msec: cint): void =

  fcQWindow_alert(self.h, msec)

proc requestUpdate*(self: QWindow, ): void =

  fcQWindow_requestUpdate(self.h)

proc screenChanged*(self: QWindow, screen: gen_qscreen.QScreen): void =

  fcQWindow_screenChanged(self.h, screen.h)

proc miqt_exec_callback_QWindow_screenChanged(slot: int, screen: pointer) {.exportc.} =
  type Cb = proc(screen: gen_qscreen.QScreen)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qscreen.QScreen(h: screen)


  nimfunc[](slotval1)

proc onscreenChanged*(self: QWindow, slot: proc(screen: gen_qscreen.QScreen)) =
  type Cb = proc(screen: gen_qscreen.QScreen)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_screenChanged(self.h, cast[int](addr tmp[]))
proc modalityChanged*(self: QWindow, modality: gen_qnamespace.WindowModality): void =

  fcQWindow_modalityChanged(self.h, cint(modality))

proc miqt_exec_callback_QWindow_modalityChanged(slot: int, modality: cint) {.exportc.} =
  type Cb = proc(modality: gen_qnamespace.WindowModality)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.WindowModality(modality)


  nimfunc[](slotval1)

proc onmodalityChanged*(self: QWindow, slot: proc(modality: gen_qnamespace.WindowModality)) =
  type Cb = proc(modality: gen_qnamespace.WindowModality)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_modalityChanged(self.h, cast[int](addr tmp[]))
proc windowStateChanged*(self: QWindow, windowState: gen_qnamespace.WindowState): void =

  fcQWindow_windowStateChanged(self.h, cint(windowState))

proc miqt_exec_callback_QWindow_windowStateChanged(slot: int, windowState: cint) {.exportc.} =
  type Cb = proc(windowState: gen_qnamespace.WindowState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.WindowState(windowState)


  nimfunc[](slotval1)

proc onwindowStateChanged*(self: QWindow, slot: proc(windowState: gen_qnamespace.WindowState)) =
  type Cb = proc(windowState: gen_qnamespace.WindowState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_windowStateChanged(self.h, cast[int](addr tmp[]))
proc windowTitleChanged*(self: QWindow, title: string): void =

  fcQWindow_windowTitleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc miqt_exec_callback_QWindow_windowTitleChanged(slot: int, title: struct_miqt_string) {.exportc.} =
  type Cb = proc(title: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret


  nimfunc[](slotval1)

proc onwindowTitleChanged*(self: QWindow, slot: proc(title: string)) =
  type Cb = proc(title: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_windowTitleChanged(self.h, cast[int](addr tmp[]))
proc xChanged*(self: QWindow, arg: cint): void =

  fcQWindow_xChanged(self.h, arg)

proc miqt_exec_callback_QWindow_xChanged(slot: int, arg: cint) {.exportc.} =
  type Cb = proc(arg: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = arg


  nimfunc[](slotval1)

proc onxChanged*(self: QWindow, slot: proc(arg: cint)) =
  type Cb = proc(arg: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_xChanged(self.h, cast[int](addr tmp[]))
proc yChanged*(self: QWindow, arg: cint): void =

  fcQWindow_yChanged(self.h, arg)

proc miqt_exec_callback_QWindow_yChanged(slot: int, arg: cint) {.exportc.} =
  type Cb = proc(arg: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = arg


  nimfunc[](slotval1)

proc onyChanged*(self: QWindow, slot: proc(arg: cint)) =
  type Cb = proc(arg: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_yChanged(self.h, cast[int](addr tmp[]))
proc widthChanged*(self: QWindow, arg: cint): void =

  fcQWindow_widthChanged(self.h, arg)

proc miqt_exec_callback_QWindow_widthChanged(slot: int, arg: cint) {.exportc.} =
  type Cb = proc(arg: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = arg


  nimfunc[](slotval1)

proc onwidthChanged*(self: QWindow, slot: proc(arg: cint)) =
  type Cb = proc(arg: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_widthChanged(self.h, cast[int](addr tmp[]))
proc heightChanged*(self: QWindow, arg: cint): void =

  fcQWindow_heightChanged(self.h, arg)

proc miqt_exec_callback_QWindow_heightChanged(slot: int, arg: cint) {.exportc.} =
  type Cb = proc(arg: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = arg


  nimfunc[](slotval1)

proc onheightChanged*(self: QWindow, slot: proc(arg: cint)) =
  type Cb = proc(arg: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_heightChanged(self.h, cast[int](addr tmp[]))
proc minimumWidthChanged*(self: QWindow, arg: cint): void =

  fcQWindow_minimumWidthChanged(self.h, arg)

proc miqt_exec_callback_QWindow_minimumWidthChanged(slot: int, arg: cint) {.exportc.} =
  type Cb = proc(arg: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = arg


  nimfunc[](slotval1)

proc onminimumWidthChanged*(self: QWindow, slot: proc(arg: cint)) =
  type Cb = proc(arg: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_minimumWidthChanged(self.h, cast[int](addr tmp[]))
proc minimumHeightChanged*(self: QWindow, arg: cint): void =

  fcQWindow_minimumHeightChanged(self.h, arg)

proc miqt_exec_callback_QWindow_minimumHeightChanged(slot: int, arg: cint) {.exportc.} =
  type Cb = proc(arg: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = arg


  nimfunc[](slotval1)

proc onminimumHeightChanged*(self: QWindow, slot: proc(arg: cint)) =
  type Cb = proc(arg: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_minimumHeightChanged(self.h, cast[int](addr tmp[]))
proc maximumWidthChanged*(self: QWindow, arg: cint): void =

  fcQWindow_maximumWidthChanged(self.h, arg)

proc miqt_exec_callback_QWindow_maximumWidthChanged(slot: int, arg: cint) {.exportc.} =
  type Cb = proc(arg: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = arg


  nimfunc[](slotval1)

proc onmaximumWidthChanged*(self: QWindow, slot: proc(arg: cint)) =
  type Cb = proc(arg: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_maximumWidthChanged(self.h, cast[int](addr tmp[]))
proc maximumHeightChanged*(self: QWindow, arg: cint): void =

  fcQWindow_maximumHeightChanged(self.h, arg)

proc miqt_exec_callback_QWindow_maximumHeightChanged(slot: int, arg: cint) {.exportc.} =
  type Cb = proc(arg: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = arg


  nimfunc[](slotval1)

proc onmaximumHeightChanged*(self: QWindow, slot: proc(arg: cint)) =
  type Cb = proc(arg: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_maximumHeightChanged(self.h, cast[int](addr tmp[]))
proc visibleChanged*(self: QWindow, arg: bool): void =

  fcQWindow_visibleChanged(self.h, arg)

proc miqt_exec_callback_QWindow_visibleChanged(slot: int, arg: bool) {.exportc.} =
  type Cb = proc(arg: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = arg


  nimfunc[](slotval1)

proc onvisibleChanged*(self: QWindow, slot: proc(arg: bool)) =
  type Cb = proc(arg: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_visibleChanged(self.h, cast[int](addr tmp[]))
proc visibilityChanged*(self: QWindow, visibility: QWindowVisibility): void =

  fcQWindow_visibilityChanged(self.h, cint(visibility))

proc miqt_exec_callback_QWindow_visibilityChanged(slot: int, visibility: cint) {.exportc.} =
  type Cb = proc(visibility: QWindowVisibility)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QWindowVisibility(visibility)


  nimfunc[](slotval1)

proc onvisibilityChanged*(self: QWindow, slot: proc(visibility: QWindowVisibility)) =
  type Cb = proc(visibility: QWindowVisibility)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_visibilityChanged(self.h, cast[int](addr tmp[]))
proc activeChanged*(self: QWindow, ): void =

  fcQWindow_activeChanged(self.h)

proc miqt_exec_callback_QWindow_activeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onactiveChanged*(self: QWindow, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_activeChanged(self.h, cast[int](addr tmp[]))
proc contentOrientationChanged*(self: QWindow, orientation: gen_qnamespace.ScreenOrientation): void =

  fcQWindow_contentOrientationChanged(self.h, cint(orientation))

proc miqt_exec_callback_QWindow_contentOrientationChanged(slot: int, orientation: cint) {.exportc.} =
  type Cb = proc(orientation: gen_qnamespace.ScreenOrientation)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.ScreenOrientation(orientation)


  nimfunc[](slotval1)

proc oncontentOrientationChanged*(self: QWindow, slot: proc(orientation: gen_qnamespace.ScreenOrientation)) =
  type Cb = proc(orientation: gen_qnamespace.ScreenOrientation)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_contentOrientationChanged(self.h, cast[int](addr tmp[]))
proc focusObjectChanged*(self: QWindow, objectVal: gen_qobject.QObject): void =

  fcQWindow_focusObjectChanged(self.h, objectVal.h)

proc miqt_exec_callback_QWindow_focusObjectChanged(slot: int, objectVal: pointer) {.exportc.} =
  type Cb = proc(objectVal: gen_qobject.QObject)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: objectVal)


  nimfunc[](slotval1)

proc onfocusObjectChanged*(self: QWindow, slot: proc(objectVal: gen_qobject.QObject)) =
  type Cb = proc(objectVal: gen_qobject.QObject)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_focusObjectChanged(self.h, cast[int](addr tmp[]))
proc opacityChanged*(self: QWindow, opacity: float64): void =

  fcQWindow_opacityChanged(self.h, opacity)

proc miqt_exec_callback_QWindow_opacityChanged(slot: int, opacity: float64) {.exportc.} =
  type Cb = proc(opacity: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = opacity


  nimfunc[](slotval1)

proc onopacityChanged*(self: QWindow, slot: proc(opacity: float64)) =
  type Cb = proc(opacity: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_opacityChanged(self.h, cast[int](addr tmp[]))
proc transientParentChanged*(self: QWindow, transientParent: QWindow): void =

  fcQWindow_transientParentChanged(self.h, transientParent.h)

proc miqt_exec_callback_QWindow_transientParentChanged(slot: int, transientParent: pointer) {.exportc.} =
  type Cb = proc(transientParent: QWindow)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QWindow(h: transientParent)


  nimfunc[](slotval1)

proc ontransientParentChanged*(self: QWindow, slot: proc(transientParent: QWindow)) =
  type Cb = proc(transientParent: QWindow)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWindow_connect_transientParentChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QWindow, s: cstring, c: cstring): string =

  let v_ms = fcQWindow_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWindow, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QWindow, s: cstring, c: cstring): string =

  let v_ms = fcQWindow_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QWindow, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWindow_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFlag2*(self: QWindow, param1: gen_qnamespace.WindowType, on: bool): void =

  fcQWindow_setFlag2(self.h, cint(param1), on)

proc isAncestorOf2*(self: QWindow, child: QWindow, mode: QWindowAncestorMode): bool =

  fcQWindow_isAncestorOf2(self.h, child.h, cint(mode))

proc callVirtualBase_metaObject(self: QWindow, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQWindow_virtualbase_metaObject(self.h))

type QWindowmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QWindow, slot: proc(super: QWindowmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QWindowmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_metaObject(self: ptr cQWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QWindow_metaObject ".} =
  type Cb = proc(super: QWindowmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QWindow, param1: cstring): pointer =


  fQWindow_virtualbase_metacast(self.h, param1)

type QWindowmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QWindow, slot: proc(super: QWindowmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QWindowmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_metacast(self: ptr cQWindow, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QWindow_metacast ".} =
  type Cb = proc(super: QWindowmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QWindow(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QWindow, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWindow_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWindowmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWindow, slot: proc(super: QWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_metacall(self: ptr cQWindow, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWindow_metacall ".} =
  type Cb = proc(super: QWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWindow(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_surfaceType(self: QWindow, ): gen_qsurface.QSurfaceSurfaceType =


  gen_qsurface.QSurfaceSurfaceType(fQWindow_virtualbase_surfaceType(self.h))

type QWindowsurfaceTypeBase* = proc(): gen_qsurface.QSurfaceSurfaceType
proc onsurfaceType*(self: QWindow, slot: proc(super: QWindowsurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType) =
  # TODO check subclass
  type Cb = proc(super: QWindowsurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_surfaceType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_surfaceType(self: ptr cQWindow, slot: int): cint {.exportc: "miqt_exec_callback_QWindow_surfaceType ".} =
  type Cb = proc(super: QWindowsurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_surfaceType(QWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_format(self: QWindow, ): gen_qsurfaceformat.QSurfaceFormat =


  gen_qsurfaceformat.QSurfaceFormat(h: fQWindow_virtualbase_format(self.h))

type QWindowformatBase* = proc(): gen_qsurfaceformat.QSurfaceFormat
proc onformat*(self: QWindow, slot: proc(super: QWindowformatBase): gen_qsurfaceformat.QSurfaceFormat) =
  # TODO check subclass
  type Cb = proc(super: QWindowformatBase): gen_qsurfaceformat.QSurfaceFormat
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_format(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_format(self: ptr cQWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QWindow_format ".} =
  type Cb = proc(super: QWindowformatBase): gen_qsurfaceformat.QSurfaceFormat
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_format(QWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_size(self: QWindow, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWindow_virtualbase_size(self.h))

type QWindowsizeBase* = proc(): gen_qsize.QSize
proc onsize*(self: QWindow, slot: proc(super: QWindowsizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWindowsizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_size(self: ptr cQWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QWindow_size ".} =
  type Cb = proc(super: QWindowsizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_accessibleRoot(self: QWindow, ): gen_qaccessible.QAccessibleInterface =


  gen_qaccessible.QAccessibleInterface(h: fQWindow_virtualbase_accessibleRoot(self.h))

type QWindowaccessibleRootBase* = proc(): gen_qaccessible.QAccessibleInterface
proc onaccessibleRoot*(self: QWindow, slot: proc(super: QWindowaccessibleRootBase): gen_qaccessible.QAccessibleInterface) =
  # TODO check subclass
  type Cb = proc(super: QWindowaccessibleRootBase): gen_qaccessible.QAccessibleInterface
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_accessibleRoot(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_accessibleRoot(self: ptr cQWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QWindow_accessibleRoot ".} =
  type Cb = proc(super: QWindowaccessibleRootBase): gen_qaccessible.QAccessibleInterface
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accessibleRoot(QWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_focusObject(self: QWindow, ): gen_qobject.QObject =


  gen_qobject.QObject(h: fQWindow_virtualbase_focusObject(self.h))

type QWindowfocusObjectBase* = proc(): gen_qobject.QObject
proc onfocusObject*(self: QWindow, slot: proc(super: QWindowfocusObjectBase): gen_qobject.QObject) =
  # TODO check subclass
  type Cb = proc(super: QWindowfocusObjectBase): gen_qobject.QObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_focusObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_focusObject(self: ptr cQWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QWindow_focusObject ".} =
  type Cb = proc(super: QWindowfocusObjectBase): gen_qobject.QObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_focusObject(QWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_exposeEvent(self: QWindow, param1: gen_qevent.QExposeEvent): void =


  fQWindow_virtualbase_exposeEvent(self.h, param1.h)

type QWindowexposeEventBase* = proc(param1: gen_qevent.QExposeEvent): void
proc onexposeEvent*(self: QWindow, slot: proc(super: QWindowexposeEventBase, param1: gen_qevent.QExposeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowexposeEventBase, param1: gen_qevent.QExposeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_exposeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_exposeEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_exposeEvent ".} =
  type Cb = proc(super: QWindowexposeEventBase, param1: gen_qevent.QExposeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QExposeEvent): auto =
    callVirtualBase_exposeEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QExposeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QWindow, param1: gen_qevent.QResizeEvent): void =


  fQWindow_virtualbase_resizeEvent(self.h, param1.h)

type QWindowresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QWindow, slot: proc(super: QWindowresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_resizeEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_resizeEvent ".} =
  type Cb = proc(super: QWindowresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QWindow, param1: gen_qevent.QMoveEvent): void =


  fQWindow_virtualbase_moveEvent(self.h, param1.h)

type QWindowmoveEventBase* = proc(param1: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QWindow, slot: proc(super: QWindowmoveEventBase, param1: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowmoveEventBase, param1: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_moveEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_moveEvent ".} =
  type Cb = proc(super: QWindowmoveEventBase, param1: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QMoveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QWindow, param1: gen_qevent.QFocusEvent): void =


  fQWindow_virtualbase_focusInEvent(self.h, param1.h)

type QWindowfocusInEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QWindow, slot: proc(super: QWindowfocusInEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_focusInEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_focusInEvent ".} =
  type Cb = proc(super: QWindowfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QWindow, param1: gen_qevent.QFocusEvent): void =


  fQWindow_virtualbase_focusOutEvent(self.h, param1.h)

type QWindowfocusOutEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QWindow, slot: proc(super: QWindowfocusOutEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_focusOutEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_focusOutEvent ".} =
  type Cb = proc(super: QWindowfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QWindow, param1: gen_qevent.QShowEvent): void =


  fQWindow_virtualbase_showEvent(self.h, param1.h)

type QWindowshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QWindow, slot: proc(super: QWindowshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_showEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_showEvent ".} =
  type Cb = proc(super: QWindowshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QWindow, param1: gen_qevent.QHideEvent): void =


  fQWindow_virtualbase_hideEvent(self.h, param1.h)

type QWindowhideEventBase* = proc(param1: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QWindow, slot: proc(super: QWindowhideEventBase, param1: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowhideEventBase, param1: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_hideEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_hideEvent ".} =
  type Cb = proc(super: QWindowhideEventBase, param1: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QHideEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QWindow, param1: gen_qcoreevent.QEvent): bool =


  fQWindow_virtualbase_event(self.h, param1.h)

type QWindoweventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWindow, slot: proc(super: QWindoweventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWindoweventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_event(self: ptr cQWindow, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QWindow_event ".} =
  type Cb = proc(super: QWindoweventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWindow(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_keyPressEvent(self: QWindow, param1: gen_qevent.QKeyEvent): void =


  fQWindow_virtualbase_keyPressEvent(self.h, param1.h)

type QWindowkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QWindow, slot: proc(super: QWindowkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_keyPressEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_keyPressEvent ".} =
  type Cb = proc(super: QWindowkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QWindow, param1: gen_qevent.QKeyEvent): void =


  fQWindow_virtualbase_keyReleaseEvent(self.h, param1.h)

type QWindowkeyReleaseEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QWindow, slot: proc(super: QWindowkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_keyReleaseEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_keyReleaseEvent ".} =
  type Cb = proc(super: QWindowkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QWindow, param1: gen_qevent.QMouseEvent): void =


  fQWindow_virtualbase_mousePressEvent(self.h, param1.h)

type QWindowmousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QWindow, slot: proc(super: QWindowmousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_mousePressEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_mousePressEvent ".} =
  type Cb = proc(super: QWindowmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QWindow, param1: gen_qevent.QMouseEvent): void =


  fQWindow_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QWindowmouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QWindow, slot: proc(super: QWindowmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_mouseReleaseEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_mouseReleaseEvent ".} =
  type Cb = proc(super: QWindowmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QWindow, param1: gen_qevent.QMouseEvent): void =


  fQWindow_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QWindowmouseDoubleClickEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QWindow, slot: proc(super: QWindowmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_mouseDoubleClickEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QWindowmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QWindow, param1: gen_qevent.QMouseEvent): void =


  fQWindow_virtualbase_mouseMoveEvent(self.h, param1.h)

type QWindowmouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QWindow, slot: proc(super: QWindowmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_mouseMoveEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_mouseMoveEvent ".} =
  type Cb = proc(super: QWindowmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QWindow, param1: gen_qevent.QWheelEvent): void =


  fQWindow_virtualbase_wheelEvent(self.h, param1.h)

type QWindowwheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QWindow, slot: proc(super: QWindowwheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_wheelEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_wheelEvent ".} =
  type Cb = proc(super: QWindowwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_touchEvent(self: QWindow, param1: gen_qevent.QTouchEvent): void =


  fQWindow_virtualbase_touchEvent(self.h, param1.h)

type QWindowtouchEventBase* = proc(param1: gen_qevent.QTouchEvent): void
proc ontouchEvent*(self: QWindow, slot: proc(super: QWindowtouchEventBase, param1: gen_qevent.QTouchEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowtouchEventBase, param1: gen_qevent.QTouchEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_touchEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_touchEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_touchEvent ".} =
  type Cb = proc(super: QWindowtouchEventBase, param1: gen_qevent.QTouchEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QTouchEvent): auto =
    callVirtualBase_touchEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QTouchEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QWindow, param1: gen_qevent.QTabletEvent): void =


  fQWindow_virtualbase_tabletEvent(self.h, param1.h)

type QWindowtabletEventBase* = proc(param1: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QWindow, slot: proc(super: QWindowtabletEventBase, param1: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowtabletEventBase, param1: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_tabletEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_tabletEvent ".} =
  type Cb = proc(super: QWindowtabletEventBase, param1: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QWindow(h: self), param1)
  let slotval1 = gen_qevent.QTabletEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QWindow, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QWindownativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QWindow, slot: proc(super: QWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_nativeEvent(self: ptr cQWindow, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QWindow_nativeEvent ".} =
  type Cb = proc(super: QWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QWindow(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QWindow, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWindow_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWindoweventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWindow, slot: proc(super: QWindoweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWindoweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_eventFilter(self: ptr cQWindow, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWindow_eventFilter ".} =
  type Cb = proc(super: QWindoweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWindow(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWindow, event: gen_qcoreevent.QTimerEvent): void =


  fQWindow_virtualbase_timerEvent(self.h, event.h)

type QWindowtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWindow, slot: proc(super: QWindowtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_timerEvent(self: ptr cQWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWindow_timerEvent ".} =
  type Cb = proc(super: QWindowtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWindow, event: gen_qcoreevent.QChildEvent): void =


  fQWindow_virtualbase_childEvent(self.h, event.h)

type QWindowchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWindow, slot: proc(super: QWindowchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_childEvent(self: ptr cQWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWindow_childEvent ".} =
  type Cb = proc(super: QWindowchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWindow, event: gen_qcoreevent.QEvent): void =


  fQWindow_virtualbase_customEvent(self.h, event.h)

type QWindowcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWindow, slot: proc(super: QWindowcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_customEvent(self: ptr cQWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWindow_customEvent ".} =
  type Cb = proc(super: QWindowcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWindow, signal: gen_qmetaobject.QMetaMethod): void =


  fQWindow_virtualbase_connectNotify(self.h, signal.h)

type QWindowconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWindow, slot: proc(super: QWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_connectNotify(self: ptr cQWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWindow_connectNotify ".} =
  type Cb = proc(super: QWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWindow(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWindow, signal: gen_qmetaobject.QMetaMethod): void =


  fQWindow_virtualbase_disconnectNotify(self.h, signal.h)

type QWindowdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWindow, slot: proc(super: QWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_disconnectNotify(self: ptr cQWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWindow_disconnectNotify ".} =
  type Cb = proc(super: QWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWindow(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QWindow): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWindow_staticMetaObject())
proc delete*(self: QWindow) =
  fcQWindow_delete(self.h)
