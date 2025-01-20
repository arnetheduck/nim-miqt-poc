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
{.compile("gen_qwidget.cpp", cflags).}


type QWidgetRenderFlag* = cint
const
  QWidgetDrawWindowBackground* = 1
  QWidgetDrawChildren* = 2
  QWidgetIgnoreMask* = 4



import gen_qwidget_types
export gen_qwidget_types

import
  gen_qaction,
  gen_qbackingstore,
  gen_qbitmap,
  gen_qcoreevent,
  gen_qcursor,
  gen_qevent,
  gen_qfont,
  gen_qfontinfo,
  gen_qfontmetrics,
  gen_qgraphicseffect,
  gen_qgraphicsproxywidget,
  gen_qicon,
  gen_qkeysequence,
  gen_qlayout,
  gen_qlocale,
  gen_qmargins,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpalette,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qscreen,
  gen_qsize,
  gen_qsizepolicy,
  gen_qstyle,
  gen_qvariant,
  gen_qwindow
export
  gen_qaction,
  gen_qbackingstore,
  gen_qbitmap,
  gen_qcoreevent,
  gen_qcursor,
  gen_qevent,
  gen_qfont,
  gen_qfontinfo,
  gen_qfontmetrics,
  gen_qgraphicseffect,
  gen_qgraphicsproxywidget,
  gen_qicon,
  gen_qkeysequence,
  gen_qlayout,
  gen_qlocale,
  gen_qmargins,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpalette,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qscreen,
  gen_qsize,
  gen_qsizepolicy,
  gen_qstyle,
  gen_qvariant,
  gen_qwindow

type cQWidgetData*{.exportc: "QWidgetData", incompleteStruct.} = object
type cQWidget*{.exportc: "QWidget", incompleteStruct.} = object

proc fcQWidgetData_new(param1: pointer): ptr cQWidgetData {.importc: "QWidgetData_new".}
proc fcQWidgetData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWidgetData_operatorAssign".}
proc fcQWidgetData_delete(self: pointer) {.importc: "QWidgetData_delete".}
proc fcQWidget_new(parent: pointer): ptr cQWidget {.importc: "QWidget_new".}
proc fcQWidget_new2(): ptr cQWidget {.importc: "QWidget_new2".}
proc fcQWidget_new3(parent: pointer, f: cint): ptr cQWidget {.importc: "QWidget_new3".}
proc fcQWidget_metaObject(self: pointer, ): pointer {.importc: "QWidget_metaObject".}
proc fcQWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QWidget_metacast".}
proc fcQWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWidget_metacall".}
proc fcQWidget_tr(s: cstring): struct_miqt_string {.importc: "QWidget_tr".}
proc fcQWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QWidget_trUtf8".}
proc fcQWidget_devType(self: pointer, ): cint {.importc: "QWidget_devType".}
proc fcQWidget_winId(self: pointer, ): uint {.importc: "QWidget_winId".}
proc fcQWidget_createWinId(self: pointer, ): void {.importc: "QWidget_createWinId".}
proc fcQWidget_internalWinId(self: pointer, ): uint {.importc: "QWidget_internalWinId".}
proc fcQWidget_effectiveWinId(self: pointer, ): uint {.importc: "QWidget_effectiveWinId".}
proc fcQWidget_style(self: pointer, ): pointer {.importc: "QWidget_style".}
proc fcQWidget_setStyle(self: pointer, style: pointer): void {.importc: "QWidget_setStyle".}
proc fcQWidget_isTopLevel(self: pointer, ): bool {.importc: "QWidget_isTopLevel".}
proc fcQWidget_isWindow(self: pointer, ): bool {.importc: "QWidget_isWindow".}
proc fcQWidget_isModal(self: pointer, ): bool {.importc: "QWidget_isModal".}
proc fcQWidget_windowModality(self: pointer, ): cint {.importc: "QWidget_windowModality".}
proc fcQWidget_setWindowModality(self: pointer, windowModality: cint): void {.importc: "QWidget_setWindowModality".}
proc fcQWidget_isEnabled(self: pointer, ): bool {.importc: "QWidget_isEnabled".}
proc fcQWidget_isEnabledTo(self: pointer, param1: pointer): bool {.importc: "QWidget_isEnabledTo".}
proc fcQWidget_isEnabledToTLW(self: pointer, ): bool {.importc: "QWidget_isEnabledToTLW".}
proc fcQWidget_setEnabled(self: pointer, enabled: bool): void {.importc: "QWidget_setEnabled".}
proc fcQWidget_setDisabled(self: pointer, disabled: bool): void {.importc: "QWidget_setDisabled".}
proc fcQWidget_setWindowModified(self: pointer, windowModified: bool): void {.importc: "QWidget_setWindowModified".}
proc fcQWidget_frameGeometry(self: pointer, ): pointer {.importc: "QWidget_frameGeometry".}
proc fcQWidget_geometry(self: pointer, ): pointer {.importc: "QWidget_geometry".}
proc fcQWidget_normalGeometry(self: pointer, ): pointer {.importc: "QWidget_normalGeometry".}
proc fcQWidget_x(self: pointer, ): cint {.importc: "QWidget_x".}
proc fcQWidget_y(self: pointer, ): cint {.importc: "QWidget_y".}
proc fcQWidget_pos(self: pointer, ): pointer {.importc: "QWidget_pos".}
proc fcQWidget_frameSize(self: pointer, ): pointer {.importc: "QWidget_frameSize".}
proc fcQWidget_size(self: pointer, ): pointer {.importc: "QWidget_size".}
proc fcQWidget_width(self: pointer, ): cint {.importc: "QWidget_width".}
proc fcQWidget_height(self: pointer, ): cint {.importc: "QWidget_height".}
proc fcQWidget_rect(self: pointer, ): pointer {.importc: "QWidget_rect".}
proc fcQWidget_childrenRect(self: pointer, ): pointer {.importc: "QWidget_childrenRect".}
proc fcQWidget_childrenRegion(self: pointer, ): pointer {.importc: "QWidget_childrenRegion".}
proc fcQWidget_minimumSize(self: pointer, ): pointer {.importc: "QWidget_minimumSize".}
proc fcQWidget_maximumSize(self: pointer, ): pointer {.importc: "QWidget_maximumSize".}
proc fcQWidget_minimumWidth(self: pointer, ): cint {.importc: "QWidget_minimumWidth".}
proc fcQWidget_minimumHeight(self: pointer, ): cint {.importc: "QWidget_minimumHeight".}
proc fcQWidget_maximumWidth(self: pointer, ): cint {.importc: "QWidget_maximumWidth".}
proc fcQWidget_maximumHeight(self: pointer, ): cint {.importc: "QWidget_maximumHeight".}
proc fcQWidget_setMinimumSize(self: pointer, minimumSize: pointer): void {.importc: "QWidget_setMinimumSize".}
proc fcQWidget_setMinimumSize2(self: pointer, minw: cint, minh: cint): void {.importc: "QWidget_setMinimumSize2".}
proc fcQWidget_setMaximumSize(self: pointer, maximumSize: pointer): void {.importc: "QWidget_setMaximumSize".}
proc fcQWidget_setMaximumSize2(self: pointer, maxw: cint, maxh: cint): void {.importc: "QWidget_setMaximumSize2".}
proc fcQWidget_setMinimumWidth(self: pointer, minw: cint): void {.importc: "QWidget_setMinimumWidth".}
proc fcQWidget_setMinimumHeight(self: pointer, minh: cint): void {.importc: "QWidget_setMinimumHeight".}
proc fcQWidget_setMaximumWidth(self: pointer, maxw: cint): void {.importc: "QWidget_setMaximumWidth".}
proc fcQWidget_setMaximumHeight(self: pointer, maxh: cint): void {.importc: "QWidget_setMaximumHeight".}
proc fcQWidget_sizeIncrement(self: pointer, ): pointer {.importc: "QWidget_sizeIncrement".}
proc fcQWidget_setSizeIncrement(self: pointer, sizeIncrement: pointer): void {.importc: "QWidget_setSizeIncrement".}
proc fcQWidget_setSizeIncrement2(self: pointer, w: cint, h: cint): void {.importc: "QWidget_setSizeIncrement2".}
proc fcQWidget_baseSize(self: pointer, ): pointer {.importc: "QWidget_baseSize".}
proc fcQWidget_setBaseSize(self: pointer, baseSize: pointer): void {.importc: "QWidget_setBaseSize".}
proc fcQWidget_setBaseSize2(self: pointer, basew: cint, baseh: cint): void {.importc: "QWidget_setBaseSize2".}
proc fcQWidget_setFixedSize(self: pointer, fixedSize: pointer): void {.importc: "QWidget_setFixedSize".}
proc fcQWidget_setFixedSize2(self: pointer, w: cint, h: cint): void {.importc: "QWidget_setFixedSize2".}
proc fcQWidget_setFixedWidth(self: pointer, w: cint): void {.importc: "QWidget_setFixedWidth".}
proc fcQWidget_setFixedHeight(self: pointer, h: cint): void {.importc: "QWidget_setFixedHeight".}
proc fcQWidget_mapToGlobal(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapToGlobal".}
proc fcQWidget_mapFromGlobal(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapFromGlobal".}
proc fcQWidget_mapToParent(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapToParent".}
proc fcQWidget_mapFromParent(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapFromParent".}
proc fcQWidget_mapTo(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QWidget_mapTo".}
proc fcQWidget_mapFrom(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QWidget_mapFrom".}
proc fcQWidget_window(self: pointer, ): pointer {.importc: "QWidget_window".}
proc fcQWidget_nativeParentWidget(self: pointer, ): pointer {.importc: "QWidget_nativeParentWidget".}
proc fcQWidget_topLevelWidget(self: pointer, ): pointer {.importc: "QWidget_topLevelWidget".}
proc fcQWidget_palette(self: pointer, ): pointer {.importc: "QWidget_palette".}
proc fcQWidget_setPalette(self: pointer, palette: pointer): void {.importc: "QWidget_setPalette".}
proc fcQWidget_setBackgroundRole(self: pointer, backgroundRole: cint): void {.importc: "QWidget_setBackgroundRole".}
proc fcQWidget_backgroundRole(self: pointer, ): cint {.importc: "QWidget_backgroundRole".}
proc fcQWidget_setForegroundRole(self: pointer, foregroundRole: cint): void {.importc: "QWidget_setForegroundRole".}
proc fcQWidget_foregroundRole(self: pointer, ): cint {.importc: "QWidget_foregroundRole".}
proc fcQWidget_font(self: pointer, ): pointer {.importc: "QWidget_font".}
proc fcQWidget_setFont(self: pointer, font: pointer): void {.importc: "QWidget_setFont".}
proc fcQWidget_fontMetrics(self: pointer, ): pointer {.importc: "QWidget_fontMetrics".}
proc fcQWidget_fontInfo(self: pointer, ): pointer {.importc: "QWidget_fontInfo".}
proc fcQWidget_cursor(self: pointer, ): pointer {.importc: "QWidget_cursor".}
proc fcQWidget_setCursor(self: pointer, cursor: pointer): void {.importc: "QWidget_setCursor".}
proc fcQWidget_unsetCursor(self: pointer, ): void {.importc: "QWidget_unsetCursor".}
proc fcQWidget_setMouseTracking(self: pointer, enable: bool): void {.importc: "QWidget_setMouseTracking".}
proc fcQWidget_hasMouseTracking(self: pointer, ): bool {.importc: "QWidget_hasMouseTracking".}
proc fcQWidget_underMouse(self: pointer, ): bool {.importc: "QWidget_underMouse".}
proc fcQWidget_setTabletTracking(self: pointer, enable: bool): void {.importc: "QWidget_setTabletTracking".}
proc fcQWidget_hasTabletTracking(self: pointer, ): bool {.importc: "QWidget_hasTabletTracking".}
proc fcQWidget_setMask(self: pointer, mask: pointer): void {.importc: "QWidget_setMask".}
proc fcQWidget_setMaskWithMask(self: pointer, mask: pointer): void {.importc: "QWidget_setMaskWithMask".}
proc fcQWidget_mask(self: pointer, ): pointer {.importc: "QWidget_mask".}
proc fcQWidget_clearMask(self: pointer, ): void {.importc: "QWidget_clearMask".}
proc fcQWidget_render(self: pointer, target: pointer): void {.importc: "QWidget_render".}
proc fcQWidget_renderWithPainter(self: pointer, painter: pointer): void {.importc: "QWidget_renderWithPainter".}
proc fcQWidget_grab(self: pointer, ): pointer {.importc: "QWidget_grab".}
proc fcQWidget_graphicsEffect(self: pointer, ): pointer {.importc: "QWidget_graphicsEffect".}
proc fcQWidget_setGraphicsEffect(self: pointer, effect: pointer): void {.importc: "QWidget_setGraphicsEffect".}
proc fcQWidget_grabGesture(self: pointer, typeVal: cint): void {.importc: "QWidget_grabGesture".}
proc fcQWidget_ungrabGesture(self: pointer, typeVal: cint): void {.importc: "QWidget_ungrabGesture".}
proc fcQWidget_setWindowTitle(self: pointer, windowTitle: struct_miqt_string): void {.importc: "QWidget_setWindowTitle".}
proc fcQWidget_setStyleSheet(self: pointer, styleSheet: struct_miqt_string): void {.importc: "QWidget_setStyleSheet".}
proc fcQWidget_styleSheet(self: pointer, ): struct_miqt_string {.importc: "QWidget_styleSheet".}
proc fcQWidget_windowTitle(self: pointer, ): struct_miqt_string {.importc: "QWidget_windowTitle".}
proc fcQWidget_setWindowIcon(self: pointer, icon: pointer): void {.importc: "QWidget_setWindowIcon".}
proc fcQWidget_windowIcon(self: pointer, ): pointer {.importc: "QWidget_windowIcon".}
proc fcQWidget_setWindowIconText(self: pointer, windowIconText: struct_miqt_string): void {.importc: "QWidget_setWindowIconText".}
proc fcQWidget_windowIconText(self: pointer, ): struct_miqt_string {.importc: "QWidget_windowIconText".}
proc fcQWidget_setWindowRole(self: pointer, windowRole: struct_miqt_string): void {.importc: "QWidget_setWindowRole".}
proc fcQWidget_windowRole(self: pointer, ): struct_miqt_string {.importc: "QWidget_windowRole".}
proc fcQWidget_setWindowFilePath(self: pointer, filePath: struct_miqt_string): void {.importc: "QWidget_setWindowFilePath".}
proc fcQWidget_windowFilePath(self: pointer, ): struct_miqt_string {.importc: "QWidget_windowFilePath".}
proc fcQWidget_setWindowOpacity(self: pointer, level: float64): void {.importc: "QWidget_setWindowOpacity".}
proc fcQWidget_windowOpacity(self: pointer, ): float64 {.importc: "QWidget_windowOpacity".}
proc fcQWidget_isWindowModified(self: pointer, ): bool {.importc: "QWidget_isWindowModified".}
proc fcQWidget_setToolTip(self: pointer, toolTip: struct_miqt_string): void {.importc: "QWidget_setToolTip".}
proc fcQWidget_toolTip(self: pointer, ): struct_miqt_string {.importc: "QWidget_toolTip".}
proc fcQWidget_setToolTipDuration(self: pointer, msec: cint): void {.importc: "QWidget_setToolTipDuration".}
proc fcQWidget_toolTipDuration(self: pointer, ): cint {.importc: "QWidget_toolTipDuration".}
proc fcQWidget_setStatusTip(self: pointer, statusTip: struct_miqt_string): void {.importc: "QWidget_setStatusTip".}
proc fcQWidget_statusTip(self: pointer, ): struct_miqt_string {.importc: "QWidget_statusTip".}
proc fcQWidget_setWhatsThis(self: pointer, whatsThis: struct_miqt_string): void {.importc: "QWidget_setWhatsThis".}
proc fcQWidget_whatsThis(self: pointer, ): struct_miqt_string {.importc: "QWidget_whatsThis".}
proc fcQWidget_accessibleName(self: pointer, ): struct_miqt_string {.importc: "QWidget_accessibleName".}
proc fcQWidget_setAccessibleName(self: pointer, name: struct_miqt_string): void {.importc: "QWidget_setAccessibleName".}
proc fcQWidget_accessibleDescription(self: pointer, ): struct_miqt_string {.importc: "QWidget_accessibleDescription".}
proc fcQWidget_setAccessibleDescription(self: pointer, description: struct_miqt_string): void {.importc: "QWidget_setAccessibleDescription".}
proc fcQWidget_setLayoutDirection(self: pointer, direction: cint): void {.importc: "QWidget_setLayoutDirection".}
proc fcQWidget_layoutDirection(self: pointer, ): cint {.importc: "QWidget_layoutDirection".}
proc fcQWidget_unsetLayoutDirection(self: pointer, ): void {.importc: "QWidget_unsetLayoutDirection".}
proc fcQWidget_setLocale(self: pointer, locale: pointer): void {.importc: "QWidget_setLocale".}
proc fcQWidget_locale(self: pointer, ): pointer {.importc: "QWidget_locale".}
proc fcQWidget_unsetLocale(self: pointer, ): void {.importc: "QWidget_unsetLocale".}
proc fcQWidget_isRightToLeft(self: pointer, ): bool {.importc: "QWidget_isRightToLeft".}
proc fcQWidget_isLeftToRight(self: pointer, ): bool {.importc: "QWidget_isLeftToRight".}
proc fcQWidget_setFocus(self: pointer, ): void {.importc: "QWidget_setFocus".}
proc fcQWidget_isActiveWindow(self: pointer, ): bool {.importc: "QWidget_isActiveWindow".}
proc fcQWidget_activateWindow(self: pointer, ): void {.importc: "QWidget_activateWindow".}
proc fcQWidget_clearFocus(self: pointer, ): void {.importc: "QWidget_clearFocus".}
proc fcQWidget_setFocusWithReason(self: pointer, reason: cint): void {.importc: "QWidget_setFocusWithReason".}
proc fcQWidget_focusPolicy(self: pointer, ): cint {.importc: "QWidget_focusPolicy".}
proc fcQWidget_setFocusPolicy(self: pointer, policy: cint): void {.importc: "QWidget_setFocusPolicy".}
proc fcQWidget_hasFocus(self: pointer, ): bool {.importc: "QWidget_hasFocus".}
proc fcQWidget_setTabOrder(param1: pointer, param2: pointer): void {.importc: "QWidget_setTabOrder".}
proc fcQWidget_setFocusProxy(self: pointer, focusProxy: pointer): void {.importc: "QWidget_setFocusProxy".}
proc fcQWidget_focusProxy(self: pointer, ): pointer {.importc: "QWidget_focusProxy".}
proc fcQWidget_contextMenuPolicy(self: pointer, ): cint {.importc: "QWidget_contextMenuPolicy".}
proc fcQWidget_setContextMenuPolicy(self: pointer, policy: cint): void {.importc: "QWidget_setContextMenuPolicy".}
proc fcQWidget_grabMouse(self: pointer, ): void {.importc: "QWidget_grabMouse".}
proc fcQWidget_grabMouseWithQCursor(self: pointer, param1: pointer): void {.importc: "QWidget_grabMouseWithQCursor".}
proc fcQWidget_releaseMouse(self: pointer, ): void {.importc: "QWidget_releaseMouse".}
proc fcQWidget_grabKeyboard(self: pointer, ): void {.importc: "QWidget_grabKeyboard".}
proc fcQWidget_releaseKeyboard(self: pointer, ): void {.importc: "QWidget_releaseKeyboard".}
proc fcQWidget_grabShortcut(self: pointer, key: pointer): cint {.importc: "QWidget_grabShortcut".}
proc fcQWidget_releaseShortcut(self: pointer, id: cint): void {.importc: "QWidget_releaseShortcut".}
proc fcQWidget_setShortcutEnabled(self: pointer, id: cint): void {.importc: "QWidget_setShortcutEnabled".}
proc fcQWidget_setShortcutAutoRepeat(self: pointer, id: cint): void {.importc: "QWidget_setShortcutAutoRepeat".}
proc fcQWidget_mouseGrabber(): pointer {.importc: "QWidget_mouseGrabber".}
proc fcQWidget_keyboardGrabber(): pointer {.importc: "QWidget_keyboardGrabber".}
proc fcQWidget_updatesEnabled(self: pointer, ): bool {.importc: "QWidget_updatesEnabled".}
proc fcQWidget_setUpdatesEnabled(self: pointer, enable: bool): void {.importc: "QWidget_setUpdatesEnabled".}
proc fcQWidget_graphicsProxyWidget(self: pointer, ): pointer {.importc: "QWidget_graphicsProxyWidget".}
proc fcQWidget_update(self: pointer, ): void {.importc: "QWidget_update".}
proc fcQWidget_repaint(self: pointer, ): void {.importc: "QWidget_repaint".}
proc fcQWidget_update2(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QWidget_update2".}
proc fcQWidget_updateWithQRect(self: pointer, param1: pointer): void {.importc: "QWidget_updateWithQRect".}
proc fcQWidget_updateWithQRegion(self: pointer, param1: pointer): void {.importc: "QWidget_updateWithQRegion".}
proc fcQWidget_repaint2(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QWidget_repaint2".}
proc fcQWidget_repaintWithQRect(self: pointer, param1: pointer): void {.importc: "QWidget_repaintWithQRect".}
proc fcQWidget_repaintWithQRegion(self: pointer, param1: pointer): void {.importc: "QWidget_repaintWithQRegion".}
proc fcQWidget_setVisible(self: pointer, visible: bool): void {.importc: "QWidget_setVisible".}
proc fcQWidget_setHidden(self: pointer, hidden: bool): void {.importc: "QWidget_setHidden".}
proc fcQWidget_show(self: pointer, ): void {.importc: "QWidget_show".}
proc fcQWidget_hide(self: pointer, ): void {.importc: "QWidget_hide".}
proc fcQWidget_showMinimized(self: pointer, ): void {.importc: "QWidget_showMinimized".}
proc fcQWidget_showMaximized(self: pointer, ): void {.importc: "QWidget_showMaximized".}
proc fcQWidget_showFullScreen(self: pointer, ): void {.importc: "QWidget_showFullScreen".}
proc fcQWidget_showNormal(self: pointer, ): void {.importc: "QWidget_showNormal".}
proc fcQWidget_close(self: pointer, ): bool {.importc: "QWidget_close".}
proc fcQWidget_raiseX(self: pointer, ): void {.importc: "QWidget_raise".}
proc fcQWidget_lower(self: pointer, ): void {.importc: "QWidget_lower".}
proc fcQWidget_stackUnder(self: pointer, param1: pointer): void {.importc: "QWidget_stackUnder".}
proc fcQWidget_move(self: pointer, x: cint, y: cint): void {.importc: "QWidget_move".}
proc fcQWidget_moveWithQPoint(self: pointer, param1: pointer): void {.importc: "QWidget_moveWithQPoint".}
proc fcQWidget_resize(self: pointer, w: cint, h: cint): void {.importc: "QWidget_resize".}
proc fcQWidget_resizeWithQSize(self: pointer, param1: pointer): void {.importc: "QWidget_resizeWithQSize".}
proc fcQWidget_setGeometry(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QWidget_setGeometry".}
proc fcQWidget_setGeometryWithGeometry(self: pointer, geometry: pointer): void {.importc: "QWidget_setGeometryWithGeometry".}
proc fcQWidget_saveGeometry(self: pointer, ): struct_miqt_string {.importc: "QWidget_saveGeometry".}
proc fcQWidget_restoreGeometry(self: pointer, geometry: struct_miqt_string): bool {.importc: "QWidget_restoreGeometry".}
proc fcQWidget_adjustSize(self: pointer, ): void {.importc: "QWidget_adjustSize".}
proc fcQWidget_isVisible(self: pointer, ): bool {.importc: "QWidget_isVisible".}
proc fcQWidget_isVisibleTo(self: pointer, param1: pointer): bool {.importc: "QWidget_isVisibleTo".}
proc fcQWidget_isHidden(self: pointer, ): bool {.importc: "QWidget_isHidden".}
proc fcQWidget_isMinimized(self: pointer, ): bool {.importc: "QWidget_isMinimized".}
proc fcQWidget_isMaximized(self: pointer, ): bool {.importc: "QWidget_isMaximized".}
proc fcQWidget_isFullScreen(self: pointer, ): bool {.importc: "QWidget_isFullScreen".}
proc fcQWidget_windowState(self: pointer, ): cint {.importc: "QWidget_windowState".}
proc fcQWidget_setWindowState(self: pointer, state: cint): void {.importc: "QWidget_setWindowState".}
proc fcQWidget_overrideWindowState(self: pointer, state: cint): void {.importc: "QWidget_overrideWindowState".}
proc fcQWidget_sizeHint(self: pointer, ): pointer {.importc: "QWidget_sizeHint".}
proc fcQWidget_minimumSizeHint(self: pointer, ): pointer {.importc: "QWidget_minimumSizeHint".}
proc fcQWidget_sizePolicy(self: pointer, ): pointer {.importc: "QWidget_sizePolicy".}
proc fcQWidget_setSizePolicy(self: pointer, sizePolicy: pointer): void {.importc: "QWidget_setSizePolicy".}
proc fcQWidget_setSizePolicy2(self: pointer, horizontal: cint, vertical: cint): void {.importc: "QWidget_setSizePolicy2".}
proc fcQWidget_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWidget_heightForWidth".}
proc fcQWidget_hasHeightForWidth(self: pointer, ): bool {.importc: "QWidget_hasHeightForWidth".}
proc fcQWidget_visibleRegion(self: pointer, ): pointer {.importc: "QWidget_visibleRegion".}
proc fcQWidget_setContentsMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QWidget_setContentsMargins".}
proc fcQWidget_setContentsMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QWidget_setContentsMarginsWithMargins".}
proc fcQWidget_getContentsMargins(self: pointer, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint): void {.importc: "QWidget_getContentsMargins".}
proc fcQWidget_contentsMargins(self: pointer, ): pointer {.importc: "QWidget_contentsMargins".}
proc fcQWidget_contentsRect(self: pointer, ): pointer {.importc: "QWidget_contentsRect".}
proc fcQWidget_layout(self: pointer, ): pointer {.importc: "QWidget_layout".}
proc fcQWidget_setLayout(self: pointer, layout: pointer): void {.importc: "QWidget_setLayout".}
proc fcQWidget_updateGeometry(self: pointer, ): void {.importc: "QWidget_updateGeometry".}
proc fcQWidget_setParent(self: pointer, parent: pointer): void {.importc: "QWidget_setParent".}
proc fcQWidget_setParent2(self: pointer, parent: pointer, f: cint): void {.importc: "QWidget_setParent2".}
proc fcQWidget_scroll(self: pointer, dx: cint, dy: cint): void {.importc: "QWidget_scroll".}
proc fcQWidget_scroll2(self: pointer, dx: cint, dy: cint, param3: pointer): void {.importc: "QWidget_scroll2".}
proc fcQWidget_focusWidget(self: pointer, ): pointer {.importc: "QWidget_focusWidget".}
proc fcQWidget_nextInFocusChain(self: pointer, ): pointer {.importc: "QWidget_nextInFocusChain".}
proc fcQWidget_previousInFocusChain(self: pointer, ): pointer {.importc: "QWidget_previousInFocusChain".}
proc fcQWidget_acceptDrops(self: pointer, ): bool {.importc: "QWidget_acceptDrops".}
proc fcQWidget_setAcceptDrops(self: pointer, on: bool): void {.importc: "QWidget_setAcceptDrops".}
proc fcQWidget_addAction(self: pointer, action: pointer): void {.importc: "QWidget_addAction".}
proc fcQWidget_addActions(self: pointer, actions: struct_miqt_array): void {.importc: "QWidget_addActions".}
proc fcQWidget_insertActions(self: pointer, before: pointer, actions: struct_miqt_array): void {.importc: "QWidget_insertActions".}
proc fcQWidget_insertAction(self: pointer, before: pointer, action: pointer): void {.importc: "QWidget_insertAction".}
proc fcQWidget_removeAction(self: pointer, action: pointer): void {.importc: "QWidget_removeAction".}
proc fcQWidget_actions(self: pointer, ): struct_miqt_array {.importc: "QWidget_actions".}
proc fcQWidget_parentWidget(self: pointer, ): pointer {.importc: "QWidget_parentWidget".}
proc fcQWidget_setWindowFlags(self: pointer, typeVal: cint): void {.importc: "QWidget_setWindowFlags".}
proc fcQWidget_windowFlags(self: pointer, ): cint {.importc: "QWidget_windowFlags".}
proc fcQWidget_setWindowFlag(self: pointer, param1: cint): void {.importc: "QWidget_setWindowFlag".}
proc fcQWidget_overrideWindowFlags(self: pointer, typeVal: cint): void {.importc: "QWidget_overrideWindowFlags".}
proc fcQWidget_windowType(self: pointer, ): cint {.importc: "QWidget_windowType".}
proc fcQWidget_find(param1: uint): pointer {.importc: "QWidget_find".}
proc fcQWidget_childAt(self: pointer, x: cint, y: cint): pointer {.importc: "QWidget_childAt".}
proc fcQWidget_childAtWithQPoint(self: pointer, p: pointer): pointer {.importc: "QWidget_childAtWithQPoint".}
proc fcQWidget_setAttribute(self: pointer, param1: cint): void {.importc: "QWidget_setAttribute".}
proc fcQWidget_testAttribute(self: pointer, param1: cint): bool {.importc: "QWidget_testAttribute".}
proc fcQWidget_paintEngine(self: pointer, ): pointer {.importc: "QWidget_paintEngine".}
proc fcQWidget_ensurePolished(self: pointer, ): void {.importc: "QWidget_ensurePolished".}
proc fcQWidget_isAncestorOf(self: pointer, child: pointer): bool {.importc: "QWidget_isAncestorOf".}
proc fcQWidget_autoFillBackground(self: pointer, ): bool {.importc: "QWidget_autoFillBackground".}
proc fcQWidget_setAutoFillBackground(self: pointer, enabled: bool): void {.importc: "QWidget_setAutoFillBackground".}
proc fcQWidget_backingStore(self: pointer, ): pointer {.importc: "QWidget_backingStore".}
proc fcQWidget_windowHandle(self: pointer, ): pointer {.importc: "QWidget_windowHandle".}
proc fcQWidget_screen(self: pointer, ): pointer {.importc: "QWidget_screen".}
proc fcQWidget_createWindowContainer(window: pointer): pointer {.importc: "QWidget_createWindowContainer".}
proc fcQWidget_windowTitleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWidget_windowTitleChanged".}
proc fQWidget_connect_windowTitleChanged(self: pointer, slot: int) {.importc: "QWidget_connect_windowTitleChanged".}
proc fcQWidget_windowIconChanged(self: pointer, icon: pointer): void {.importc: "QWidget_windowIconChanged".}
proc fQWidget_connect_windowIconChanged(self: pointer, slot: int) {.importc: "QWidget_connect_windowIconChanged".}
proc fcQWidget_windowIconTextChanged(self: pointer, iconText: struct_miqt_string): void {.importc: "QWidget_windowIconTextChanged".}
proc fQWidget_connect_windowIconTextChanged(self: pointer, slot: int) {.importc: "QWidget_connect_windowIconTextChanged".}
proc fcQWidget_customContextMenuRequested(self: pointer, pos: pointer): void {.importc: "QWidget_customContextMenuRequested".}
proc fQWidget_connect_customContextMenuRequested(self: pointer, slot: int) {.importc: "QWidget_connect_customContextMenuRequested".}
proc fcQWidget_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QWidget_inputMethodQuery".}
proc fcQWidget_inputMethodHints(self: pointer, ): cint {.importc: "QWidget_inputMethodHints".}
proc fcQWidget_setInputMethodHints(self: pointer, hints: cint): void {.importc: "QWidget_setInputMethodHints".}
proc fcQWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWidget_tr2".}
proc fcQWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWidget_tr3".}
proc fcQWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWidget_trUtf82".}
proc fcQWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWidget_trUtf83".}
proc fcQWidget_render2(self: pointer, target: pointer, targetOffset: pointer): void {.importc: "QWidget_render2".}
proc fcQWidget_render3(self: pointer, target: pointer, targetOffset: pointer, sourceRegion: pointer): void {.importc: "QWidget_render3".}
proc fcQWidget_render4(self: pointer, target: pointer, targetOffset: pointer, sourceRegion: pointer, renderFlags: cint): void {.importc: "QWidget_render4".}
proc fcQWidget_render22(self: pointer, painter: pointer, targetOffset: pointer): void {.importc: "QWidget_render22".}
proc fcQWidget_render32(self: pointer, painter: pointer, targetOffset: pointer, sourceRegion: pointer): void {.importc: "QWidget_render32".}
proc fcQWidget_render42(self: pointer, painter: pointer, targetOffset: pointer, sourceRegion: pointer, renderFlags: cint): void {.importc: "QWidget_render42".}
proc fcQWidget_grab1(self: pointer, rectangle: pointer): pointer {.importc: "QWidget_grab1".}
proc fcQWidget_grabGesture2(self: pointer, typeVal: cint, flags: cint): void {.importc: "QWidget_grabGesture2".}
proc fcQWidget_grabShortcut2(self: pointer, key: pointer, context: cint): cint {.importc: "QWidget_grabShortcut2".}
proc fcQWidget_setShortcutEnabled2(self: pointer, id: cint, enable: bool): void {.importc: "QWidget_setShortcutEnabled2".}
proc fcQWidget_setShortcutAutoRepeat2(self: pointer, id: cint, enable: bool): void {.importc: "QWidget_setShortcutAutoRepeat2".}
proc fcQWidget_setWindowFlag2(self: pointer, param1: cint, on: bool): void {.importc: "QWidget_setWindowFlag2".}
proc fcQWidget_setAttribute2(self: pointer, param1: cint, on: bool): void {.importc: "QWidget_setAttribute2".}
proc fcQWidget_createWindowContainer2(window: pointer, parent: pointer): pointer {.importc: "QWidget_createWindowContainer2".}
proc fcQWidget_createWindowContainer3(window: pointer, parent: pointer, flags: cint): pointer {.importc: "QWidget_createWindowContainer3".}
proc fQWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QWidget_virtualbase_metaObject".}
proc fcQWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QWidget_override_virtual_metaObject".}
proc fQWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QWidget_virtualbase_metacast".}
proc fcQWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QWidget_override_virtual_metacast".}
proc fQWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWidget_virtualbase_metacall".}
proc fcQWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWidget_override_virtual_metacall".}
proc fQWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QWidget_virtualbase_devType".}
proc fcQWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QWidget_override_virtual_devType".}
proc fQWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QWidget_virtualbase_setVisible".}
proc fcQWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QWidget_override_virtual_setVisible".}
proc fQWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWidget_virtualbase_sizeHint".}
proc fcQWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWidget_override_virtual_sizeHint".}
proc fQWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QWidget_virtualbase_minimumSizeHint".}
proc fcQWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QWidget_override_virtual_minimumSizeHint".}
proc fQWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QWidget_virtualbase_heightForWidth".}
proc fcQWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWidget_override_virtual_heightForWidth".}
proc fQWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWidget_virtualbase_hasHeightForWidth".}
proc fcQWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWidget_override_virtual_hasHeightForWidth".}
proc fQWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QWidget_virtualbase_paintEngine".}
proc fcQWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QWidget_override_virtual_paintEngine".}
proc fQWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWidget_virtualbase_event".}
proc fcQWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QWidget_override_virtual_event".}
proc fQWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_mousePressEvent".}
proc fcQWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_mousePressEvent".}
proc fQWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_mouseReleaseEvent".}
proc fcQWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_mouseReleaseEvent".}
proc fQWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_mouseDoubleClickEvent".}
proc fQWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_mouseMoveEvent".}
proc fcQWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_mouseMoveEvent".}
proc fQWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_wheelEvent".}
proc fcQWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_wheelEvent".}
proc fQWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_keyPressEvent".}
proc fcQWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_keyPressEvent".}
proc fQWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_keyReleaseEvent".}
proc fcQWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_keyReleaseEvent".}
proc fQWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_focusInEvent".}
proc fcQWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_focusInEvent".}
proc fQWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_focusOutEvent".}
proc fcQWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_focusOutEvent".}
proc fQWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_enterEvent".}
proc fcQWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_enterEvent".}
proc fQWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_leaveEvent".}
proc fcQWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_leaveEvent".}
proc fQWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_paintEvent".}
proc fcQWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_paintEvent".}
proc fQWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_moveEvent".}
proc fcQWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_moveEvent".}
proc fQWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_resizeEvent".}
proc fcQWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_resizeEvent".}
proc fQWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_closeEvent".}
proc fcQWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_closeEvent".}
proc fQWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_contextMenuEvent".}
proc fcQWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_contextMenuEvent".}
proc fQWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_tabletEvent".}
proc fcQWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_tabletEvent".}
proc fQWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_actionEvent".}
proc fcQWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_actionEvent".}
proc fQWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_dragEnterEvent".}
proc fcQWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_dragEnterEvent".}
proc fQWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_dragMoveEvent".}
proc fcQWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_dragMoveEvent".}
proc fQWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_dragLeaveEvent".}
proc fcQWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_dragLeaveEvent".}
proc fQWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_dropEvent".}
proc fcQWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_dropEvent".}
proc fQWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_showEvent".}
proc fcQWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_showEvent".}
proc fQWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_hideEvent".}
proc fcQWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_hideEvent".}
proc fQWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QWidget_virtualbase_nativeEvent".}
proc fcQWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_nativeEvent".}
proc fQWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QWidget_virtualbase_changeEvent".}
proc fcQWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_changeEvent".}
proc fQWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QWidget_virtualbase_metric".}
proc fcQWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QWidget_override_virtual_metric".}
proc fQWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QWidget_virtualbase_initPainter".}
proc fcQWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QWidget_override_virtual_initPainter".}
proc fQWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QWidget_virtualbase_redirected".}
proc fcQWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QWidget_override_virtual_redirected".}
proc fQWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QWidget_virtualbase_sharedPainter".}
proc fcQWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QWidget_override_virtual_sharedPainter".}
proc fQWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QWidget_virtualbase_inputMethodEvent".}
proc fcQWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_inputMethodEvent".}
proc fQWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QWidget_virtualbase_inputMethodQuery".}
proc fcQWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QWidget_override_virtual_inputMethodQuery".}
proc fQWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QWidget_virtualbase_focusNextPrevChild".}
proc fcQWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QWidget_override_virtual_focusNextPrevChild".}
proc fQWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWidget_virtualbase_eventFilter".}
proc fcQWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWidget_override_virtual_eventFilter".}
proc fQWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_timerEvent".}
proc fcQWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_timerEvent".}
proc fQWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_childEvent".}
proc fcQWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_childEvent".}
proc fQWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_customEvent".}
proc fcQWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_customEvent".}
proc fQWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWidget_virtualbase_connectNotify".}
proc fcQWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWidget_override_virtual_connectNotify".}
proc fQWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWidget_virtualbase_disconnectNotify".}
proc fcQWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWidget_override_virtual_disconnectNotify".}
proc fcQWidget_staticMetaObject(): pointer {.importc: "QWidget_staticMetaObject".}
proc fcQWidget_delete(self: pointer) {.importc: "QWidget_delete".}


func init*(T: type QWidgetData, h: ptr cQWidgetData): QWidgetData =
  T(h: h)
proc create*(T: type QWidgetData, param1: QWidgetData): QWidgetData =

  QWidgetData.init(fcQWidgetData_new(param1.h))
proc operatorAssign*(self: QWidgetData, param1: QWidgetData): void =

  fcQWidgetData_operatorAssign(self.h, param1.h)

proc delete*(self: QWidgetData) =
  fcQWidgetData_delete(self.h)

func init*(T: type QWidget, h: ptr cQWidget): QWidget =
  T(h: h)
proc create*(T: type QWidget, parent: QWidget): QWidget =

  QWidget.init(fcQWidget_new(parent.h))
proc create*(T: type QWidget, ): QWidget =

  QWidget.init(fcQWidget_new2())
proc create*(T: type QWidget, parent: QWidget, f: gen_qnamespace.WindowType): QWidget =

  QWidget.init(fcQWidget_new3(parent.h, cint(f)))
proc metaObject*(self: QWidget, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWidget_metaObject(self.h))

proc metacast*(self: QWidget, param1: cstring): pointer =

  fcQWidget_metacast(self.h, param1)

proc metacall*(self: QWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWidget, s: cstring): string =

  let v_ms = fcQWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QWidget, s: cstring): string =

  let v_ms = fcQWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc devType*(self: QWidget, ): cint =

  fcQWidget_devType(self.h)

proc winId*(self: QWidget, ): uint =

  fcQWidget_winId(self.h)

proc createWinId*(self: QWidget, ): void =

  fcQWidget_createWinId(self.h)

proc internalWinId*(self: QWidget, ): uint =

  fcQWidget_internalWinId(self.h)

proc effectiveWinId*(self: QWidget, ): uint =

  fcQWidget_effectiveWinId(self.h)

proc style*(self: QWidget, ): gen_qstyle.QStyle =

  gen_qstyle.QStyle(h: fcQWidget_style(self.h))

proc setStyle*(self: QWidget, style: gen_qstyle.QStyle): void =

  fcQWidget_setStyle(self.h, style.h)

proc isTopLevel*(self: QWidget, ): bool =

  fcQWidget_isTopLevel(self.h)

proc isWindow*(self: QWidget, ): bool =

  fcQWidget_isWindow(self.h)

proc isModal*(self: QWidget, ): bool =

  fcQWidget_isModal(self.h)

proc windowModality*(self: QWidget, ): gen_qnamespace.WindowModality =

  gen_qnamespace.WindowModality(fcQWidget_windowModality(self.h))

proc setWindowModality*(self: QWidget, windowModality: gen_qnamespace.WindowModality): void =

  fcQWidget_setWindowModality(self.h, cint(windowModality))

proc isEnabled*(self: QWidget, ): bool =

  fcQWidget_isEnabled(self.h)

proc isEnabledTo*(self: QWidget, param1: QWidget): bool =

  fcQWidget_isEnabledTo(self.h, param1.h)

proc isEnabledToTLW*(self: QWidget, ): bool =

  fcQWidget_isEnabledToTLW(self.h)

proc setEnabled*(self: QWidget, enabled: bool): void =

  fcQWidget_setEnabled(self.h, enabled)

proc setDisabled*(self: QWidget, disabled: bool): void =

  fcQWidget_setDisabled(self.h, disabled)

proc setWindowModified*(self: QWidget, windowModified: bool): void =

  fcQWidget_setWindowModified(self.h, windowModified)

proc frameGeometry*(self: QWidget, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQWidget_frameGeometry(self.h))

proc geometry*(self: QWidget, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQWidget_geometry(self.h))

proc normalGeometry*(self: QWidget, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQWidget_normalGeometry(self.h))

proc x*(self: QWidget, ): cint =

  fcQWidget_x(self.h)

proc y*(self: QWidget, ): cint =

  fcQWidget_y(self.h)

proc pos*(self: QWidget, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWidget_pos(self.h))

proc frameSize*(self: QWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWidget_frameSize(self.h))

proc size*(self: QWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWidget_size(self.h))

proc width*(self: QWidget, ): cint =

  fcQWidget_width(self.h)

proc height*(self: QWidget, ): cint =

  fcQWidget_height(self.h)

proc rect*(self: QWidget, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQWidget_rect(self.h))

proc childrenRect*(self: QWidget, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQWidget_childrenRect(self.h))

proc childrenRegion*(self: QWidget, ): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQWidget_childrenRegion(self.h))

proc minimumSize*(self: QWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWidget_minimumSize(self.h))

proc maximumSize*(self: QWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWidget_maximumSize(self.h))

proc minimumWidth*(self: QWidget, ): cint =

  fcQWidget_minimumWidth(self.h)

proc minimumHeight*(self: QWidget, ): cint =

  fcQWidget_minimumHeight(self.h)

proc maximumWidth*(self: QWidget, ): cint =

  fcQWidget_maximumWidth(self.h)

proc maximumHeight*(self: QWidget, ): cint =

  fcQWidget_maximumHeight(self.h)

proc setMinimumSize*(self: QWidget, minimumSize: gen_qsize.QSize): void =

  fcQWidget_setMinimumSize(self.h, minimumSize.h)

proc setMinimumSize2*(self: QWidget, minw: cint, minh: cint): void =

  fcQWidget_setMinimumSize2(self.h, minw, minh)

proc setMaximumSize*(self: QWidget, maximumSize: gen_qsize.QSize): void =

  fcQWidget_setMaximumSize(self.h, maximumSize.h)

proc setMaximumSize2*(self: QWidget, maxw: cint, maxh: cint): void =

  fcQWidget_setMaximumSize2(self.h, maxw, maxh)

proc setMinimumWidth*(self: QWidget, minw: cint): void =

  fcQWidget_setMinimumWidth(self.h, minw)

proc setMinimumHeight*(self: QWidget, minh: cint): void =

  fcQWidget_setMinimumHeight(self.h, minh)

proc setMaximumWidth*(self: QWidget, maxw: cint): void =

  fcQWidget_setMaximumWidth(self.h, maxw)

proc setMaximumHeight*(self: QWidget, maxh: cint): void =

  fcQWidget_setMaximumHeight(self.h, maxh)

proc sizeIncrement*(self: QWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWidget_sizeIncrement(self.h))

proc setSizeIncrement*(self: QWidget, sizeIncrement: gen_qsize.QSize): void =

  fcQWidget_setSizeIncrement(self.h, sizeIncrement.h)

proc setSizeIncrement2*(self: QWidget, w: cint, h: cint): void =

  fcQWidget_setSizeIncrement2(self.h, w, h)

proc baseSize*(self: QWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWidget_baseSize(self.h))

proc setBaseSize*(self: QWidget, baseSize: gen_qsize.QSize): void =

  fcQWidget_setBaseSize(self.h, baseSize.h)

proc setBaseSize2*(self: QWidget, basew: cint, baseh: cint): void =

  fcQWidget_setBaseSize2(self.h, basew, baseh)

proc setFixedSize*(self: QWidget, fixedSize: gen_qsize.QSize): void =

  fcQWidget_setFixedSize(self.h, fixedSize.h)

proc setFixedSize2*(self: QWidget, w: cint, h: cint): void =

  fcQWidget_setFixedSize2(self.h, w, h)

proc setFixedWidth*(self: QWidget, w: cint): void =

  fcQWidget_setFixedWidth(self.h, w)

proc setFixedHeight*(self: QWidget, h: cint): void =

  fcQWidget_setFixedHeight(self.h, h)

proc mapToGlobal*(self: QWidget, param1: gen_qpoint.QPoint): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWidget_mapToGlobal(self.h, param1.h))

proc mapFromGlobal*(self: QWidget, param1: gen_qpoint.QPoint): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWidget_mapFromGlobal(self.h, param1.h))

proc mapToParent*(self: QWidget, param1: gen_qpoint.QPoint): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWidget_mapToParent(self.h, param1.h))

proc mapFromParent*(self: QWidget, param1: gen_qpoint.QPoint): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWidget_mapFromParent(self.h, param1.h))

proc mapTo*(self: QWidget, param1: QWidget, param2: gen_qpoint.QPoint): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWidget_mapTo(self.h, param1.h, param2.h))

proc mapFrom*(self: QWidget, param1: QWidget, param2: gen_qpoint.QPoint): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWidget_mapFrom(self.h, param1.h, param2.h))

proc window*(self: QWidget, ): QWidget =

  QWidget(h: fcQWidget_window(self.h))

proc nativeParentWidget*(self: QWidget, ): QWidget =

  QWidget(h: fcQWidget_nativeParentWidget(self.h))

proc topLevelWidget*(self: QWidget, ): QWidget =

  QWidget(h: fcQWidget_topLevelWidget(self.h))

proc palette*(self: QWidget, ): gen_qpalette.QPalette =

  gen_qpalette.QPalette(h: fcQWidget_palette(self.h))

proc setPalette*(self: QWidget, palette: gen_qpalette.QPalette): void =

  fcQWidget_setPalette(self.h, palette.h)

proc setBackgroundRole*(self: QWidget, backgroundRole: gen_qpalette.QPaletteColorRole): void =

  fcQWidget_setBackgroundRole(self.h, cint(backgroundRole))

proc backgroundRole*(self: QWidget, ): gen_qpalette.QPaletteColorRole =

  gen_qpalette.QPaletteColorRole(fcQWidget_backgroundRole(self.h))

proc setForegroundRole*(self: QWidget, foregroundRole: gen_qpalette.QPaletteColorRole): void =

  fcQWidget_setForegroundRole(self.h, cint(foregroundRole))

proc foregroundRole*(self: QWidget, ): gen_qpalette.QPaletteColorRole =

  gen_qpalette.QPaletteColorRole(fcQWidget_foregroundRole(self.h))

proc font*(self: QWidget, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQWidget_font(self.h))

proc setFont*(self: QWidget, font: gen_qfont.QFont): void =

  fcQWidget_setFont(self.h, font.h)

proc fontMetrics*(self: QWidget, ): gen_qfontmetrics.QFontMetrics =

  gen_qfontmetrics.QFontMetrics(h: fcQWidget_fontMetrics(self.h))

proc fontInfo*(self: QWidget, ): gen_qfontinfo.QFontInfo =

  gen_qfontinfo.QFontInfo(h: fcQWidget_fontInfo(self.h))

proc cursor*(self: QWidget, ): gen_qcursor.QCursor =

  gen_qcursor.QCursor(h: fcQWidget_cursor(self.h))

proc setCursor*(self: QWidget, cursor: gen_qcursor.QCursor): void =

  fcQWidget_setCursor(self.h, cursor.h)

proc unsetCursor*(self: QWidget, ): void =

  fcQWidget_unsetCursor(self.h)

proc setMouseTracking*(self: QWidget, enable: bool): void =

  fcQWidget_setMouseTracking(self.h, enable)

proc hasMouseTracking*(self: QWidget, ): bool =

  fcQWidget_hasMouseTracking(self.h)

proc underMouse*(self: QWidget, ): bool =

  fcQWidget_underMouse(self.h)

proc setTabletTracking*(self: QWidget, enable: bool): void =

  fcQWidget_setTabletTracking(self.h, enable)

proc hasTabletTracking*(self: QWidget, ): bool =

  fcQWidget_hasTabletTracking(self.h)

proc setMask*(self: QWidget, mask: gen_qbitmap.QBitmap): void =

  fcQWidget_setMask(self.h, mask.h)

proc setMaskWithMask*(self: QWidget, mask: gen_qregion.QRegion): void =

  fcQWidget_setMaskWithMask(self.h, mask.h)

proc mask*(self: QWidget, ): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQWidget_mask(self.h))

proc clearMask*(self: QWidget, ): void =

  fcQWidget_clearMask(self.h)

proc render*(self: QWidget, target: gen_qpaintdevice.QPaintDevice): void =

  fcQWidget_render(self.h, target.h)

proc renderWithPainter*(self: QWidget, painter: gen_qpainter.QPainter): void =

  fcQWidget_renderWithPainter(self.h, painter.h)

proc grab*(self: QWidget, ): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQWidget_grab(self.h))

proc graphicsEffect*(self: QWidget, ): gen_qgraphicseffect.QGraphicsEffect =

  gen_qgraphicseffect.QGraphicsEffect(h: fcQWidget_graphicsEffect(self.h))

proc setGraphicsEffect*(self: QWidget, effect: gen_qgraphicseffect.QGraphicsEffect): void =

  fcQWidget_setGraphicsEffect(self.h, effect.h)

proc grabGesture*(self: QWidget, typeVal: gen_qnamespace.GestureType): void =

  fcQWidget_grabGesture(self.h, cint(typeVal))

proc ungrabGesture*(self: QWidget, typeVal: gen_qnamespace.GestureType): void =

  fcQWidget_ungrabGesture(self.h, cint(typeVal))

proc setWindowTitle*(self: QWidget, windowTitle: string): void =

  fcQWidget_setWindowTitle(self.h, struct_miqt_string(data: windowTitle, len: csize_t(len(windowTitle))))

proc setStyleSheet*(self: QWidget, styleSheet: string): void =

  fcQWidget_setStyleSheet(self.h, struct_miqt_string(data: styleSheet, len: csize_t(len(styleSheet))))

proc styleSheet*(self: QWidget, ): string =

  let v_ms = fcQWidget_styleSheet(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc windowTitle*(self: QWidget, ): string =

  let v_ms = fcQWidget_windowTitle(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWindowIcon*(self: QWidget, icon: gen_qicon.QIcon): void =

  fcQWidget_setWindowIcon(self.h, icon.h)

proc windowIcon*(self: QWidget, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQWidget_windowIcon(self.h))

proc setWindowIconText*(self: QWidget, windowIconText: string): void =

  fcQWidget_setWindowIconText(self.h, struct_miqt_string(data: windowIconText, len: csize_t(len(windowIconText))))

proc windowIconText*(self: QWidget, ): string =

  let v_ms = fcQWidget_windowIconText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWindowRole*(self: QWidget, windowRole: string): void =

  fcQWidget_setWindowRole(self.h, struct_miqt_string(data: windowRole, len: csize_t(len(windowRole))))

proc windowRole*(self: QWidget, ): string =

  let v_ms = fcQWidget_windowRole(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWindowFilePath*(self: QWidget, filePath: string): void =

  fcQWidget_setWindowFilePath(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))

proc windowFilePath*(self: QWidget, ): string =

  let v_ms = fcQWidget_windowFilePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWindowOpacity*(self: QWidget, level: float64): void =

  fcQWidget_setWindowOpacity(self.h, level)

proc windowOpacity*(self: QWidget, ): float64 =

  fcQWidget_windowOpacity(self.h)

proc isWindowModified*(self: QWidget, ): bool =

  fcQWidget_isWindowModified(self.h)

proc setToolTip*(self: QWidget, toolTip: string): void =

  fcQWidget_setToolTip(self.h, struct_miqt_string(data: toolTip, len: csize_t(len(toolTip))))

proc toolTip*(self: QWidget, ): string =

  let v_ms = fcQWidget_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTipDuration*(self: QWidget, msec: cint): void =

  fcQWidget_setToolTipDuration(self.h, msec)

proc toolTipDuration*(self: QWidget, ): cint =

  fcQWidget_toolTipDuration(self.h)

proc setStatusTip*(self: QWidget, statusTip: string): void =

  fcQWidget_setStatusTip(self.h, struct_miqt_string(data: statusTip, len: csize_t(len(statusTip))))

proc statusTip*(self: QWidget, ): string =

  let v_ms = fcQWidget_statusTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: QWidget, whatsThis: string): void =

  fcQWidget_setWhatsThis(self.h, struct_miqt_string(data: whatsThis, len: csize_t(len(whatsThis))))

proc whatsThis*(self: QWidget, ): string =

  let v_ms = fcQWidget_whatsThis(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc accessibleName*(self: QWidget, ): string =

  let v_ms = fcQWidget_accessibleName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAccessibleName*(self: QWidget, name: string): void =

  fcQWidget_setAccessibleName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc accessibleDescription*(self: QWidget, ): string =

  let v_ms = fcQWidget_accessibleDescription(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAccessibleDescription*(self: QWidget, description: string): void =

  fcQWidget_setAccessibleDescription(self.h, struct_miqt_string(data: description, len: csize_t(len(description))))

proc setLayoutDirection*(self: QWidget, direction: gen_qnamespace.LayoutDirection): void =

  fcQWidget_setLayoutDirection(self.h, cint(direction))

proc layoutDirection*(self: QWidget, ): gen_qnamespace.LayoutDirection =

  gen_qnamespace.LayoutDirection(fcQWidget_layoutDirection(self.h))

proc unsetLayoutDirection*(self: QWidget, ): void =

  fcQWidget_unsetLayoutDirection(self.h)

proc setLocale*(self: QWidget, locale: gen_qlocale.QLocale): void =

  fcQWidget_setLocale(self.h, locale.h)

proc locale*(self: QWidget, ): gen_qlocale.QLocale =

  gen_qlocale.QLocale(h: fcQWidget_locale(self.h))

proc unsetLocale*(self: QWidget, ): void =

  fcQWidget_unsetLocale(self.h)

proc isRightToLeft*(self: QWidget, ): bool =

  fcQWidget_isRightToLeft(self.h)

proc isLeftToRight*(self: QWidget, ): bool =

  fcQWidget_isLeftToRight(self.h)

proc setFocus*(self: QWidget, ): void =

  fcQWidget_setFocus(self.h)

proc isActiveWindow*(self: QWidget, ): bool =

  fcQWidget_isActiveWindow(self.h)

proc activateWindow*(self: QWidget, ): void =

  fcQWidget_activateWindow(self.h)

proc clearFocus*(self: QWidget, ): void =

  fcQWidget_clearFocus(self.h)

proc setFocusWithReason*(self: QWidget, reason: gen_qnamespace.FocusReason): void =

  fcQWidget_setFocusWithReason(self.h, cint(reason))

proc focusPolicy*(self: QWidget, ): gen_qnamespace.FocusPolicy =

  gen_qnamespace.FocusPolicy(fcQWidget_focusPolicy(self.h))

proc setFocusPolicy*(self: QWidget, policy: gen_qnamespace.FocusPolicy): void =

  fcQWidget_setFocusPolicy(self.h, cint(policy))

proc hasFocus*(self: QWidget, ): bool =

  fcQWidget_hasFocus(self.h)

proc setTabOrder*(_: type QWidget, param1: QWidget, param2: QWidget): void =

  fcQWidget_setTabOrder(param1.h, param2.h)

proc setFocusProxy*(self: QWidget, focusProxy: QWidget): void =

  fcQWidget_setFocusProxy(self.h, focusProxy.h)

proc focusProxy*(self: QWidget, ): QWidget =

  QWidget(h: fcQWidget_focusProxy(self.h))

proc contextMenuPolicy*(self: QWidget, ): gen_qnamespace.ContextMenuPolicy =

  gen_qnamespace.ContextMenuPolicy(fcQWidget_contextMenuPolicy(self.h))

proc setContextMenuPolicy*(self: QWidget, policy: gen_qnamespace.ContextMenuPolicy): void =

  fcQWidget_setContextMenuPolicy(self.h, cint(policy))

proc grabMouse*(self: QWidget, ): void =

  fcQWidget_grabMouse(self.h)

proc grabMouseWithQCursor*(self: QWidget, param1: gen_qcursor.QCursor): void =

  fcQWidget_grabMouseWithQCursor(self.h, param1.h)

proc releaseMouse*(self: QWidget, ): void =

  fcQWidget_releaseMouse(self.h)

proc grabKeyboard*(self: QWidget, ): void =

  fcQWidget_grabKeyboard(self.h)

proc releaseKeyboard*(self: QWidget, ): void =

  fcQWidget_releaseKeyboard(self.h)

proc grabShortcut*(self: QWidget, key: gen_qkeysequence.QKeySequence): cint =

  fcQWidget_grabShortcut(self.h, key.h)

proc releaseShortcut*(self: QWidget, id: cint): void =

  fcQWidget_releaseShortcut(self.h, id)

proc setShortcutEnabled*(self: QWidget, id: cint): void =

  fcQWidget_setShortcutEnabled(self.h, id)

proc setShortcutAutoRepeat*(self: QWidget, id: cint): void =

  fcQWidget_setShortcutAutoRepeat(self.h, id)

proc mouseGrabber*(_: type QWidget, ): QWidget =

  QWidget(h: fcQWidget_mouseGrabber())

proc keyboardGrabber*(_: type QWidget, ): QWidget =

  QWidget(h: fcQWidget_keyboardGrabber())

proc updatesEnabled*(self: QWidget, ): bool =

  fcQWidget_updatesEnabled(self.h)

proc setUpdatesEnabled*(self: QWidget, enable: bool): void =

  fcQWidget_setUpdatesEnabled(self.h, enable)

proc graphicsProxyWidget*(self: QWidget, ): gen_qgraphicsproxywidget.QGraphicsProxyWidget =

  gen_qgraphicsproxywidget.QGraphicsProxyWidget(h: fcQWidget_graphicsProxyWidget(self.h))

proc update*(self: QWidget, ): void =

  fcQWidget_update(self.h)

proc repaint*(self: QWidget, ): void =

  fcQWidget_repaint(self.h)

proc update2*(self: QWidget, x: cint, y: cint, w: cint, h: cint): void =

  fcQWidget_update2(self.h, x, y, w, h)

proc updateWithQRect*(self: QWidget, param1: gen_qrect.QRect): void =

  fcQWidget_updateWithQRect(self.h, param1.h)

proc updateWithQRegion*(self: QWidget, param1: gen_qregion.QRegion): void =

  fcQWidget_updateWithQRegion(self.h, param1.h)

proc repaint2*(self: QWidget, x: cint, y: cint, w: cint, h: cint): void =

  fcQWidget_repaint2(self.h, x, y, w, h)

proc repaintWithQRect*(self: QWidget, param1: gen_qrect.QRect): void =

  fcQWidget_repaintWithQRect(self.h, param1.h)

proc repaintWithQRegion*(self: QWidget, param1: gen_qregion.QRegion): void =

  fcQWidget_repaintWithQRegion(self.h, param1.h)

proc setVisible*(self: QWidget, visible: bool): void =

  fcQWidget_setVisible(self.h, visible)

proc setHidden*(self: QWidget, hidden: bool): void =

  fcQWidget_setHidden(self.h, hidden)

proc show*(self: QWidget, ): void =

  fcQWidget_show(self.h)

proc hide*(self: QWidget, ): void =

  fcQWidget_hide(self.h)

proc showMinimized*(self: QWidget, ): void =

  fcQWidget_showMinimized(self.h)

proc showMaximized*(self: QWidget, ): void =

  fcQWidget_showMaximized(self.h)

proc showFullScreen*(self: QWidget, ): void =

  fcQWidget_showFullScreen(self.h)

proc showNormal*(self: QWidget, ): void =

  fcQWidget_showNormal(self.h)

proc close*(self: QWidget, ): bool =

  fcQWidget_close(self.h)

proc raiseX*(self: QWidget, ): void =

  fcQWidget_raiseX(self.h)

proc lower*(self: QWidget, ): void =

  fcQWidget_lower(self.h)

proc stackUnder*(self: QWidget, param1: QWidget): void =

  fcQWidget_stackUnder(self.h, param1.h)

proc move*(self: QWidget, x: cint, y: cint): void =

  fcQWidget_move(self.h, x, y)

proc moveWithQPoint*(self: QWidget, param1: gen_qpoint.QPoint): void =

  fcQWidget_moveWithQPoint(self.h, param1.h)

proc resize*(self: QWidget, w: cint, h: cint): void =

  fcQWidget_resize(self.h, w, h)

proc resizeWithQSize*(self: QWidget, param1: gen_qsize.QSize): void =

  fcQWidget_resizeWithQSize(self.h, param1.h)

proc setGeometry*(self: QWidget, x: cint, y: cint, w: cint, h: cint): void =

  fcQWidget_setGeometry(self.h, x, y, w, h)

proc setGeometryWithGeometry*(self: QWidget, geometry: gen_qrect.QRect): void =

  fcQWidget_setGeometryWithGeometry(self.h, geometry.h)

proc saveGeometry*(self: QWidget, ): seq[byte] =

  var v_bytearray = fcQWidget_saveGeometry(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreGeometry*(self: QWidget, geometry: seq[byte]): bool =

  fcQWidget_restoreGeometry(self.h, struct_miqt_string(data: cast[cstring](if len(geometry) == 0: nil else: unsafeAddr geometry[0]), len: csize_t(len(geometry))))

proc adjustSize*(self: QWidget, ): void =

  fcQWidget_adjustSize(self.h)

proc isVisible*(self: QWidget, ): bool =

  fcQWidget_isVisible(self.h)

proc isVisibleTo*(self: QWidget, param1: QWidget): bool =

  fcQWidget_isVisibleTo(self.h, param1.h)

proc isHidden*(self: QWidget, ): bool =

  fcQWidget_isHidden(self.h)

proc isMinimized*(self: QWidget, ): bool =

  fcQWidget_isMinimized(self.h)

proc isMaximized*(self: QWidget, ): bool =

  fcQWidget_isMaximized(self.h)

proc isFullScreen*(self: QWidget, ): bool =

  fcQWidget_isFullScreen(self.h)

proc windowState*(self: QWidget, ): gen_qnamespace.WindowState =

  gen_qnamespace.WindowState(fcQWidget_windowState(self.h))

proc setWindowState*(self: QWidget, state: gen_qnamespace.WindowState): void =

  fcQWidget_setWindowState(self.h, cint(state))

proc overrideWindowState*(self: QWidget, state: gen_qnamespace.WindowState): void =

  fcQWidget_overrideWindowState(self.h, cint(state))

proc sizeHint*(self: QWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWidget_sizeHint(self.h))

proc minimumSizeHint*(self: QWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWidget_minimumSizeHint(self.h))

proc sizePolicy*(self: QWidget, ): gen_qsizepolicy.QSizePolicy =

  gen_qsizepolicy.QSizePolicy(h: fcQWidget_sizePolicy(self.h))

proc setSizePolicy*(self: QWidget, sizePolicy: gen_qsizepolicy.QSizePolicy): void =

  fcQWidget_setSizePolicy(self.h, sizePolicy.h)

proc setSizePolicy2*(self: QWidget, horizontal: gen_qsizepolicy.QSizePolicyPolicy, vertical: gen_qsizepolicy.QSizePolicyPolicy): void =

  fcQWidget_setSizePolicy2(self.h, cint(horizontal), cint(vertical))

proc heightForWidth*(self: QWidget, param1: cint): cint =

  fcQWidget_heightForWidth(self.h, param1)

proc hasHeightForWidth*(self: QWidget, ): bool =

  fcQWidget_hasHeightForWidth(self.h)

proc visibleRegion*(self: QWidget, ): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQWidget_visibleRegion(self.h))

proc setContentsMargins*(self: QWidget, left: cint, top: cint, right: cint, bottom: cint): void =

  fcQWidget_setContentsMargins(self.h, left, top, right, bottom)

proc setContentsMarginsWithMargins*(self: QWidget, margins: gen_qmargins.QMargins): void =

  fcQWidget_setContentsMarginsWithMargins(self.h, margins.h)

proc getContentsMargins*(self: QWidget, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint): void =

  fcQWidget_getContentsMargins(self.h, left, top, right, bottom)

proc contentsMargins*(self: QWidget, ): gen_qmargins.QMargins =

  gen_qmargins.QMargins(h: fcQWidget_contentsMargins(self.h))

proc contentsRect*(self: QWidget, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQWidget_contentsRect(self.h))

proc layout*(self: QWidget, ): gen_qlayout.QLayout =

  gen_qlayout.QLayout(h: fcQWidget_layout(self.h))

proc setLayout*(self: QWidget, layout: gen_qlayout.QLayout): void =

  fcQWidget_setLayout(self.h, layout.h)

proc updateGeometry*(self: QWidget, ): void =

  fcQWidget_updateGeometry(self.h)

proc setParent*(self: QWidget, parent: QWidget): void =

  fcQWidget_setParent(self.h, parent.h)

proc setParent2*(self: QWidget, parent: QWidget, f: gen_qnamespace.WindowType): void =

  fcQWidget_setParent2(self.h, parent.h, cint(f))

proc scroll*(self: QWidget, dx: cint, dy: cint): void =

  fcQWidget_scroll(self.h, dx, dy)

proc scroll2*(self: QWidget, dx: cint, dy: cint, param3: gen_qrect.QRect): void =

  fcQWidget_scroll2(self.h, dx, dy, param3.h)

proc focusWidget*(self: QWidget, ): QWidget =

  QWidget(h: fcQWidget_focusWidget(self.h))

proc nextInFocusChain*(self: QWidget, ): QWidget =

  QWidget(h: fcQWidget_nextInFocusChain(self.h))

proc previousInFocusChain*(self: QWidget, ): QWidget =

  QWidget(h: fcQWidget_previousInFocusChain(self.h))

proc acceptDrops*(self: QWidget, ): bool =

  fcQWidget_acceptDrops(self.h)

proc setAcceptDrops*(self: QWidget, on: bool): void =

  fcQWidget_setAcceptDrops(self.h, on)

proc addAction*(self: QWidget, action: gen_qaction.QAction): void =

  fcQWidget_addAction(self.h, action.h)

proc addActions*(self: QWidget, actions: seq[gen_qaction.QAction]): void =

  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  fcQWidget_addActions(self.h, struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])))

proc insertActions*(self: QWidget, before: gen_qaction.QAction, actions: seq[gen_qaction.QAction]): void =

  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  fcQWidget_insertActions(self.h, before.h, struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])))

proc insertAction*(self: QWidget, before: gen_qaction.QAction, action: gen_qaction.QAction): void =

  fcQWidget_insertAction(self.h, before.h, action.h)

proc removeAction*(self: QWidget, action: gen_qaction.QAction): void =

  fcQWidget_removeAction(self.h, action.h)

proc actions*(self: QWidget, ): seq[gen_qaction.QAction] =

  var v_ma = fcQWidget_actions(self.h)
  var vx_ret = newSeq[gen_qaction.QAction](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaction.QAction(h: v_outCast[i])
  vx_ret

proc parentWidget*(self: QWidget, ): QWidget =

  QWidget(h: fcQWidget_parentWidget(self.h))

proc setWindowFlags*(self: QWidget, typeVal: gen_qnamespace.WindowType): void =

  fcQWidget_setWindowFlags(self.h, cint(typeVal))

proc windowFlags*(self: QWidget, ): gen_qnamespace.WindowType =

  gen_qnamespace.WindowType(fcQWidget_windowFlags(self.h))

proc setWindowFlag*(self: QWidget, param1: gen_qnamespace.WindowType): void =

  fcQWidget_setWindowFlag(self.h, cint(param1))

proc overrideWindowFlags*(self: QWidget, typeVal: gen_qnamespace.WindowType): void =

  fcQWidget_overrideWindowFlags(self.h, cint(typeVal))

proc windowType*(self: QWidget, ): gen_qnamespace.WindowType =

  gen_qnamespace.WindowType(fcQWidget_windowType(self.h))

proc find*(_: type QWidget, param1: uint): QWidget =

  QWidget(h: fcQWidget_find(param1))

proc childAt*(self: QWidget, x: cint, y: cint): QWidget =

  QWidget(h: fcQWidget_childAt(self.h, x, y))

proc childAtWithQPoint*(self: QWidget, p: gen_qpoint.QPoint): QWidget =

  QWidget(h: fcQWidget_childAtWithQPoint(self.h, p.h))

proc setAttribute*(self: QWidget, param1: gen_qnamespace.WidgetAttribute): void =

  fcQWidget_setAttribute(self.h, cint(param1))

proc testAttribute*(self: QWidget, param1: gen_qnamespace.WidgetAttribute): bool =

  fcQWidget_testAttribute(self.h, cint(param1))

proc paintEngine*(self: QWidget, ): gen_qpaintengine.QPaintEngine =

  gen_qpaintengine.QPaintEngine(h: fcQWidget_paintEngine(self.h))

proc ensurePolished*(self: QWidget, ): void =

  fcQWidget_ensurePolished(self.h)

proc isAncestorOf*(self: QWidget, child: QWidget): bool =

  fcQWidget_isAncestorOf(self.h, child.h)

proc autoFillBackground*(self: QWidget, ): bool =

  fcQWidget_autoFillBackground(self.h)

proc setAutoFillBackground*(self: QWidget, enabled: bool): void =

  fcQWidget_setAutoFillBackground(self.h, enabled)

proc backingStore*(self: QWidget, ): gen_qbackingstore.QBackingStore =

  gen_qbackingstore.QBackingStore(h: fcQWidget_backingStore(self.h))

proc windowHandle*(self: QWidget, ): gen_qwindow.QWindow =

  gen_qwindow.QWindow(h: fcQWidget_windowHandle(self.h))

proc screen*(self: QWidget, ): gen_qscreen.QScreen =

  gen_qscreen.QScreen(h: fcQWidget_screen(self.h))

proc createWindowContainer*(_: type QWidget, window: gen_qwindow.QWindow): QWidget =

  QWidget(h: fcQWidget_createWindowContainer(window.h))

proc windowTitleChanged*(self: QWidget, title: string): void =

  fcQWidget_windowTitleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc miqt_exec_callback_QWidget_windowTitleChanged(slot: int, title: struct_miqt_string) {.exportc.} =
  type Cb = proc(title: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret


  nimfunc[](slotval1)

proc onwindowTitleChanged*(self: QWidget, slot: proc(title: string)) =
  type Cb = proc(title: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWidget_connect_windowTitleChanged(self.h, cast[int](addr tmp[]))
proc windowIconChanged*(self: QWidget, icon: gen_qicon.QIcon): void =

  fcQWidget_windowIconChanged(self.h, icon.h)

proc miqt_exec_callback_QWidget_windowIconChanged(slot: int, icon: pointer) {.exportc.} =
  type Cb = proc(icon: gen_qicon.QIcon)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qicon.QIcon(h: icon)


  nimfunc[](slotval1)

proc onwindowIconChanged*(self: QWidget, slot: proc(icon: gen_qicon.QIcon)) =
  type Cb = proc(icon: gen_qicon.QIcon)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWidget_connect_windowIconChanged(self.h, cast[int](addr tmp[]))
proc windowIconTextChanged*(self: QWidget, iconText: string): void =

  fcQWidget_windowIconTextChanged(self.h, struct_miqt_string(data: iconText, len: csize_t(len(iconText))))

proc miqt_exec_callback_QWidget_windowIconTextChanged(slot: int, iconText: struct_miqt_string) {.exportc.} =
  type Cb = proc(iconText: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let viconText_ms = iconText
  let viconTextx_ret = string.fromBytes(toOpenArrayByte(viconText_ms.data, 0, int(viconText_ms.len)-1))
  c_free(viconText_ms.data)
  let slotval1 = viconTextx_ret


  nimfunc[](slotval1)

proc onwindowIconTextChanged*(self: QWidget, slot: proc(iconText: string)) =
  type Cb = proc(iconText: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWidget_connect_windowIconTextChanged(self.h, cast[int](addr tmp[]))
proc customContextMenuRequested*(self: QWidget, pos: gen_qpoint.QPoint): void =

  fcQWidget_customContextMenuRequested(self.h, pos.h)

proc miqt_exec_callback_QWidget_customContextMenuRequested(slot: int, pos: pointer) {.exportc.} =
  type Cb = proc(pos: gen_qpoint.QPoint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpoint.QPoint(h: pos)


  nimfunc[](slotval1)

proc oncustomContextMenuRequested*(self: QWidget, slot: proc(pos: gen_qpoint.QPoint)) =
  type Cb = proc(pos: gen_qpoint.QPoint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWidget_connect_customContextMenuRequested(self.h, cast[int](addr tmp[]))
proc inputMethodQuery*(self: QWidget, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQWidget_inputMethodQuery(self.h, cint(param1)))

proc inputMethodHints*(self: QWidget, ): gen_qnamespace.InputMethodHint =

  gen_qnamespace.InputMethodHint(fcQWidget_inputMethodHints(self.h))

proc setInputMethodHints*(self: QWidget, hints: gen_qnamespace.InputMethodHint): void =

  fcQWidget_setInputMethodHints(self.h, cint(hints))

proc tr2*(_: type QWidget, s: cstring, c: cstring): string =

  let v_ms = fcQWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QWidget, s: cstring, c: cstring): string =

  let v_ms = fcQWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc render2*(self: QWidget, target: gen_qpaintdevice.QPaintDevice, targetOffset: gen_qpoint.QPoint): void =

  fcQWidget_render2(self.h, target.h, targetOffset.h)

proc render3*(self: QWidget, target: gen_qpaintdevice.QPaintDevice, targetOffset: gen_qpoint.QPoint, sourceRegion: gen_qregion.QRegion): void =

  fcQWidget_render3(self.h, target.h, targetOffset.h, sourceRegion.h)

proc render4*(self: QWidget, target: gen_qpaintdevice.QPaintDevice, targetOffset: gen_qpoint.QPoint, sourceRegion: gen_qregion.QRegion, renderFlags: QWidgetRenderFlag): void =

  fcQWidget_render4(self.h, target.h, targetOffset.h, sourceRegion.h, cint(renderFlags))

proc render22*(self: QWidget, painter: gen_qpainter.QPainter, targetOffset: gen_qpoint.QPoint): void =

  fcQWidget_render22(self.h, painter.h, targetOffset.h)

proc render32*(self: QWidget, painter: gen_qpainter.QPainter, targetOffset: gen_qpoint.QPoint, sourceRegion: gen_qregion.QRegion): void =

  fcQWidget_render32(self.h, painter.h, targetOffset.h, sourceRegion.h)

proc render42*(self: QWidget, painter: gen_qpainter.QPainter, targetOffset: gen_qpoint.QPoint, sourceRegion: gen_qregion.QRegion, renderFlags: QWidgetRenderFlag): void =

  fcQWidget_render42(self.h, painter.h, targetOffset.h, sourceRegion.h, cint(renderFlags))

proc grab1*(self: QWidget, rectangle: gen_qrect.QRect): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQWidget_grab1(self.h, rectangle.h))

proc grabGesture2*(self: QWidget, typeVal: gen_qnamespace.GestureType, flags: gen_qnamespace.GestureFlag): void =

  fcQWidget_grabGesture2(self.h, cint(typeVal), cint(flags))

proc grabShortcut2*(self: QWidget, key: gen_qkeysequence.QKeySequence, context: gen_qnamespace.ShortcutContext): cint =

  fcQWidget_grabShortcut2(self.h, key.h, cint(context))

proc setShortcutEnabled2*(self: QWidget, id: cint, enable: bool): void =

  fcQWidget_setShortcutEnabled2(self.h, id, enable)

proc setShortcutAutoRepeat2*(self: QWidget, id: cint, enable: bool): void =

  fcQWidget_setShortcutAutoRepeat2(self.h, id, enable)

proc setWindowFlag2*(self: QWidget, param1: gen_qnamespace.WindowType, on: bool): void =

  fcQWidget_setWindowFlag2(self.h, cint(param1), on)

proc setAttribute2*(self: QWidget, param1: gen_qnamespace.WidgetAttribute, on: bool): void =

  fcQWidget_setAttribute2(self.h, cint(param1), on)

proc createWindowContainer2*(_: type QWidget, window: gen_qwindow.QWindow, parent: QWidget): QWidget =

  QWidget(h: fcQWidget_createWindowContainer2(window.h, parent.h))

proc createWindowContainer3*(_: type QWidget, window: gen_qwindow.QWindow, parent: QWidget, flags: gen_qnamespace.WindowType): QWidget =

  QWidget(h: fcQWidget_createWindowContainer3(window.h, parent.h, cint(flags)))

proc callVirtualBase_metaObject(self: QWidget, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQWidget_virtualbase_metaObject(self.h))

type QWidgetmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QWidget, slot: proc(super: QWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_metaObject(self: ptr cQWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QWidget_metaObject ".} =
  type Cb = proc(super: QWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QWidget, param1: cstring): pointer =


  fQWidget_virtualbase_metacast(self.h, param1)

type QWidgetmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QWidget, slot: proc(super: QWidgetmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QWidgetmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_metacast(self: ptr cQWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QWidget_metacast ".} =
  type Cb = proc(super: QWidgetmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QWidget(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWidgetmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWidget, slot: proc(super: QWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_metacall(self: ptr cQWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWidget_metacall ".} =
  type Cb = proc(super: QWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWidget(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_devType(self: QWidget, ): cint =


  fQWidget_virtualbase_devType(self.h)

type QWidgetdevTypeBase* = proc(): cint
proc ondevType*(self: QWidget, slot: proc(super: QWidgetdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QWidgetdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_devType(self: ptr cQWidget, slot: int): cint {.exportc: "miqt_exec_callback_QWidget_devType ".} =
  type Cb = proc(super: QWidgetdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QWidget, visible: bool): void =


  fQWidget_virtualbase_setVisible(self.h, visible)

type QWidgetsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QWidget, slot: proc(super: QWidgetsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_setVisible(self: ptr cQWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QWidget_setVisible ".} =
  type Cb = proc(super: QWidgetsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QWidget(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWidget_virtualbase_sizeHint(self.h))

type QWidgetsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QWidget, slot: proc(super: QWidgetsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWidgetsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_sizeHint(self: ptr cQWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QWidget_sizeHint ".} =
  type Cb = proc(super: QWidgetsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWidget_virtualbase_minimumSizeHint(self.h))

type QWidgetminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QWidget, slot: proc(super: QWidgetminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWidgetminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_minimumSizeHint(self: ptr cQWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QWidget_minimumSizeHint ".} =
  type Cb = proc(super: QWidgetminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QWidget, param1: cint): cint =


  fQWidget_virtualbase_heightForWidth(self.h, param1)

type QWidgetheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QWidget, slot: proc(super: QWidgetheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QWidgetheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_heightForWidth(self: ptr cQWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWidget_heightForWidth ".} =
  type Cb = proc(super: QWidgetheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QWidget(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QWidget, ): bool =


  fQWidget_virtualbase_hasHeightForWidth(self.h)

type QWidgethasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QWidget, slot: proc(super: QWidgethasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWidgethasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_hasHeightForWidth(self: ptr cQWidget, slot: int): bool {.exportc: "miqt_exec_callback_QWidget_hasHeightForWidth ".} =
  type Cb = proc(super: QWidgethasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QWidget, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQWidget_virtualbase_paintEngine(self.h))

type QWidgetpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QWidget, slot: proc(super: QWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_paintEngine(self: ptr cQWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QWidget_paintEngine ".} =
  type Cb = proc(super: QWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QWidget, event: gen_qcoreevent.QEvent): bool =


  fQWidget_virtualbase_event(self.h, event.h)

type QWidgeteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWidget, slot: proc(super: QWidgeteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_event(self: ptr cQWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWidget_event ".} =
  type Cb = proc(super: QWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QWidget, event: gen_qevent.QMouseEvent): void =


  fQWidget_virtualbase_mousePressEvent(self.h, event.h)

type QWidgetmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QWidget, slot: proc(super: QWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_mousePressEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_mousePressEvent ".} =
  type Cb = proc(super: QWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QWidget, event: gen_qevent.QMouseEvent): void =


  fQWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QWidgetmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QWidget, slot: proc(super: QWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_mouseReleaseEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_mouseReleaseEvent ".} =
  type Cb = proc(super: QWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QWidget, event: gen_qevent.QMouseEvent): void =


  fQWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QWidgetmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QWidget, slot: proc(super: QWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_mouseDoubleClickEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QWidget, event: gen_qevent.QMouseEvent): void =


  fQWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QWidgetmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QWidget, slot: proc(super: QWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_mouseMoveEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_mouseMoveEvent ".} =
  type Cb = proc(super: QWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QWidget, event: gen_qevent.QWheelEvent): void =


  fQWidget_virtualbase_wheelEvent(self.h, event.h)

type QWidgetwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QWidget, slot: proc(super: QWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_wheelEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_wheelEvent ".} =
  type Cb = proc(super: QWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QWidget, event: gen_qevent.QKeyEvent): void =


  fQWidget_virtualbase_keyPressEvent(self.h, event.h)

type QWidgetkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QWidget, slot: proc(super: QWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_keyPressEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_keyPressEvent ".} =
  type Cb = proc(super: QWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QWidget, event: gen_qevent.QKeyEvent): void =


  fQWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QWidgetkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QWidget, slot: proc(super: QWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_keyReleaseEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_keyReleaseEvent ".} =
  type Cb = proc(super: QWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QWidget, event: gen_qevent.QFocusEvent): void =


  fQWidget_virtualbase_focusInEvent(self.h, event.h)

type QWidgetfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QWidget, slot: proc(super: QWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_focusInEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_focusInEvent ".} =
  type Cb = proc(super: QWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QWidget, event: gen_qevent.QFocusEvent): void =


  fQWidget_virtualbase_focusOutEvent(self.h, event.h)

type QWidgetfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QWidget, slot: proc(super: QWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_focusOutEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_focusOutEvent ".} =
  type Cb = proc(super: QWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QWidget, event: gen_qcoreevent.QEvent): void =


  fQWidget_virtualbase_enterEvent(self.h, event.h)

type QWidgetenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QWidget, slot: proc(super: QWidgetenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_enterEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_enterEvent ".} =
  type Cb = proc(super: QWidgetenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QWidget, event: gen_qcoreevent.QEvent): void =


  fQWidget_virtualbase_leaveEvent(self.h, event.h)

type QWidgetleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QWidget, slot: proc(super: QWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_leaveEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_leaveEvent ".} =
  type Cb = proc(super: QWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QWidget, event: gen_qevent.QPaintEvent): void =


  fQWidget_virtualbase_paintEvent(self.h, event.h)

type QWidgetpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QWidget, slot: proc(super: QWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_paintEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_paintEvent ".} =
  type Cb = proc(super: QWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QWidget, event: gen_qevent.QMoveEvent): void =


  fQWidget_virtualbase_moveEvent(self.h, event.h)

type QWidgetmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QWidget, slot: proc(super: QWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_moveEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_moveEvent ".} =
  type Cb = proc(super: QWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QWidget, event: gen_qevent.QResizeEvent): void =


  fQWidget_virtualbase_resizeEvent(self.h, event.h)

type QWidgetresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QWidget, slot: proc(super: QWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_resizeEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_resizeEvent ".} =
  type Cb = proc(super: QWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QWidget, event: gen_qevent.QCloseEvent): void =


  fQWidget_virtualbase_closeEvent(self.h, event.h)

type QWidgetcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QWidget, slot: proc(super: QWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_closeEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_closeEvent ".} =
  type Cb = proc(super: QWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QWidget, event: gen_qevent.QContextMenuEvent): void =


  fQWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QWidgetcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QWidget, slot: proc(super: QWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_contextMenuEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_contextMenuEvent ".} =
  type Cb = proc(super: QWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QWidget, event: gen_qevent.QTabletEvent): void =


  fQWidget_virtualbase_tabletEvent(self.h, event.h)

type QWidgettabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QWidget, slot: proc(super: QWidgettabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_tabletEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_tabletEvent ".} =
  type Cb = proc(super: QWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QWidget, event: gen_qevent.QActionEvent): void =


  fQWidget_virtualbase_actionEvent(self.h, event.h)

type QWidgetactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QWidget, slot: proc(super: QWidgetactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_actionEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_actionEvent ".} =
  type Cb = proc(super: QWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QWidget, event: gen_qevent.QDragEnterEvent): void =


  fQWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QWidgetdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QWidget, slot: proc(super: QWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_dragEnterEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_dragEnterEvent ".} =
  type Cb = proc(super: QWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QWidget, event: gen_qevent.QDragMoveEvent): void =


  fQWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QWidgetdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QWidget, slot: proc(super: QWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_dragMoveEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_dragMoveEvent ".} =
  type Cb = proc(super: QWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QWidget, event: gen_qevent.QDragLeaveEvent): void =


  fQWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QWidgetdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QWidget, slot: proc(super: QWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_dragLeaveEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_dragLeaveEvent ".} =
  type Cb = proc(super: QWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QWidget, event: gen_qevent.QDropEvent): void =


  fQWidget_virtualbase_dropEvent(self.h, event.h)

type QWidgetdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QWidget, slot: proc(super: QWidgetdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_dropEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_dropEvent ".} =
  type Cb = proc(super: QWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QWidget, event: gen_qevent.QShowEvent): void =


  fQWidget_virtualbase_showEvent(self.h, event.h)

type QWidgetshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QWidget, slot: proc(super: QWidgetshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_showEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_showEvent ".} =
  type Cb = proc(super: QWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QWidget, event: gen_qevent.QHideEvent): void =


  fQWidget_virtualbase_hideEvent(self.h, event.h)

type QWidgethideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QWidget, slot: proc(super: QWidgethideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_hideEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_hideEvent ".} =
  type Cb = proc(super: QWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QWidget(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QWidgetnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QWidget, slot: proc(super: QWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_nativeEvent(self: ptr cQWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QWidget_nativeEvent ".} =
  type Cb = proc(super: QWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QWidget(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QWidget, param1: gen_qcoreevent.QEvent): void =


  fQWidget_virtualbase_changeEvent(self.h, param1.h)

type QWidgetchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QWidget, slot: proc(super: QWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_changeEvent(self: ptr cQWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWidget_changeEvent ".} =
  type Cb = proc(super: QWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QWidget(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QWidget, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQWidget_virtualbase_metric(self.h, cint(param1))

type QWidgetmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QWidget, slot: proc(super: QWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_metric(self: ptr cQWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWidget_metric ".} =
  type Cb = proc(super: QWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QWidget(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QWidget, painter: gen_qpainter.QPainter): void =


  fQWidget_virtualbase_initPainter(self.h, painter.h)

type QWidgetinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QWidget, slot: proc(super: QWidgetinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_initPainter(self: ptr cQWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QWidget_initPainter ".} =
  type Cb = proc(super: QWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QWidget(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QWidget, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQWidget_virtualbase_redirected(self.h, offset.h))

type QWidgetredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QWidget, slot: proc(super: QWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_redirected(self: ptr cQWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QWidget_redirected ".} =
  type Cb = proc(super: QWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QWidget(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QWidget, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQWidget_virtualbase_sharedPainter(self.h))

type QWidgetsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QWidget, slot: proc(super: QWidgetsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QWidgetsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_sharedPainter(self: ptr cQWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QWidget_sharedPainter ".} =
  type Cb = proc(super: QWidgetsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QWidget, param1: gen_qevent.QInputMethodEvent): void =


  fQWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QWidgetinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QWidget, slot: proc(super: QWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_inputMethodEvent(self: ptr cQWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWidget_inputMethodEvent ".} =
  type Cb = proc(super: QWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QWidget(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QWidget, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QWidgetinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QWidget, slot: proc(super: QWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_inputMethodQuery(self: ptr cQWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QWidget_inputMethodQuery ".} =
  type Cb = proc(super: QWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QWidget(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QWidget, next: bool): bool =


  fQWidget_virtualbase_focusNextPrevChild(self.h, next)

type QWidgetfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QWidget, slot: proc(super: QWidgetfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QWidgetfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_focusNextPrevChild(self: ptr cQWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QWidget_focusNextPrevChild ".} =
  type Cb = proc(super: QWidgetfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QWidget(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QWidget, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWidgeteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWidget, slot: proc(super: QWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_eventFilter(self: ptr cQWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWidget_eventFilter ".} =
  type Cb = proc(super: QWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWidget(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWidget, event: gen_qcoreevent.QTimerEvent): void =


  fQWidget_virtualbase_timerEvent(self.h, event.h)

type QWidgettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWidget, slot: proc(super: QWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_timerEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_timerEvent ".} =
  type Cb = proc(super: QWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWidget, event: gen_qcoreevent.QChildEvent): void =


  fQWidget_virtualbase_childEvent(self.h, event.h)

type QWidgetchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWidget, slot: proc(super: QWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_childEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_childEvent ".} =
  type Cb = proc(super: QWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWidget, event: gen_qcoreevent.QEvent): void =


  fQWidget_virtualbase_customEvent(self.h, event.h)

type QWidgetcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWidget, slot: proc(super: QWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_customEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_customEvent ".} =
  type Cb = proc(super: QWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQWidget_virtualbase_connectNotify(self.h, signal.h)

type QWidgetconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWidget, slot: proc(super: QWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_connectNotify(self: ptr cQWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWidget_connectNotify ".} =
  type Cb = proc(super: QWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QWidgetdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWidget, slot: proc(super: QWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_disconnectNotify(self: ptr cQWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWidget_disconnectNotify ".} =
  type Cb = proc(super: QWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QWidget): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWidget_staticMetaObject())
proc delete*(self: QWidget) =
  fcQWidget_delete(self.h)
