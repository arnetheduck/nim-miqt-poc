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
{.compile("gen_qmainwindow.cpp", cflags).}


type QMainWindowDockOption* = cint
const
  QMainWindowAnimatedDocks* = 1
  QMainWindowAllowNestedDocks* = 2
  QMainWindowAllowTabbedDocks* = 4
  QMainWindowForceTabbedDocks* = 8
  QMainWindowVerticalTabs* = 16
  QMainWindowGroupedDragging* = 32



import gen_qmainwindow_types
export gen_qmainwindow_types

import
  gen_qcoreevent,
  gen_qdockwidget,
  gen_qevent,
  gen_qmenu,
  gen_qmenubar,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qstatusbar,
  gen_qtabwidget,
  gen_qtoolbar,
  gen_qvariant,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qdockwidget,
  gen_qevent,
  gen_qmenu,
  gen_qmenubar,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qstatusbar,
  gen_qtabwidget,
  gen_qtoolbar,
  gen_qvariant,
  gen_qwidget

type cQMainWindow*{.exportc: "QMainWindow", incompleteStruct.} = object

proc fcQMainWindow_new(parent: pointer): ptr cQMainWindow {.importc: "QMainWindow_new".}
proc fcQMainWindow_new2(): ptr cQMainWindow {.importc: "QMainWindow_new2".}
proc fcQMainWindow_new3(parent: pointer, flags: cint): ptr cQMainWindow {.importc: "QMainWindow_new3".}
proc fcQMainWindow_metaObject(self: pointer, ): pointer {.importc: "QMainWindow_metaObject".}
proc fcQMainWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QMainWindow_metacast".}
proc fcQMainWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMainWindow_metacall".}
proc fcQMainWindow_tr(s: cstring): struct_miqt_string {.importc: "QMainWindow_tr".}
proc fcQMainWindow_trUtf8(s: cstring): struct_miqt_string {.importc: "QMainWindow_trUtf8".}
proc fcQMainWindow_iconSize(self: pointer, ): pointer {.importc: "QMainWindow_iconSize".}
proc fcQMainWindow_setIconSize(self: pointer, iconSize: pointer): void {.importc: "QMainWindow_setIconSize".}
proc fcQMainWindow_toolButtonStyle(self: pointer, ): cint {.importc: "QMainWindow_toolButtonStyle".}
proc fcQMainWindow_setToolButtonStyle(self: pointer, toolButtonStyle: cint): void {.importc: "QMainWindow_setToolButtonStyle".}
proc fcQMainWindow_isAnimated(self: pointer, ): bool {.importc: "QMainWindow_isAnimated".}
proc fcQMainWindow_isDockNestingEnabled(self: pointer, ): bool {.importc: "QMainWindow_isDockNestingEnabled".}
proc fcQMainWindow_documentMode(self: pointer, ): bool {.importc: "QMainWindow_documentMode".}
proc fcQMainWindow_setDocumentMode(self: pointer, enabled: bool): void {.importc: "QMainWindow_setDocumentMode".}
proc fcQMainWindow_tabShape(self: pointer, ): cint {.importc: "QMainWindow_tabShape".}
proc fcQMainWindow_setTabShape(self: pointer, tabShape: cint): void {.importc: "QMainWindow_setTabShape".}
proc fcQMainWindow_tabPosition(self: pointer, area: cint): cint {.importc: "QMainWindow_tabPosition".}
proc fcQMainWindow_setTabPosition(self: pointer, areas: cint, tabPosition: cint): void {.importc: "QMainWindow_setTabPosition".}
proc fcQMainWindow_setDockOptions(self: pointer, options: cint): void {.importc: "QMainWindow_setDockOptions".}
proc fcQMainWindow_dockOptions(self: pointer, ): cint {.importc: "QMainWindow_dockOptions".}
proc fcQMainWindow_isSeparator(self: pointer, pos: pointer): bool {.importc: "QMainWindow_isSeparator".}
proc fcQMainWindow_menuBar(self: pointer, ): pointer {.importc: "QMainWindow_menuBar".}
proc fcQMainWindow_setMenuBar(self: pointer, menubar: pointer): void {.importc: "QMainWindow_setMenuBar".}
proc fcQMainWindow_menuWidget(self: pointer, ): pointer {.importc: "QMainWindow_menuWidget".}
proc fcQMainWindow_setMenuWidget(self: pointer, menubar: pointer): void {.importc: "QMainWindow_setMenuWidget".}
proc fcQMainWindow_statusBar(self: pointer, ): pointer {.importc: "QMainWindow_statusBar".}
proc fcQMainWindow_setStatusBar(self: pointer, statusbar: pointer): void {.importc: "QMainWindow_setStatusBar".}
proc fcQMainWindow_centralWidget(self: pointer, ): pointer {.importc: "QMainWindow_centralWidget".}
proc fcQMainWindow_setCentralWidget(self: pointer, widget: pointer): void {.importc: "QMainWindow_setCentralWidget".}
proc fcQMainWindow_takeCentralWidget(self: pointer, ): pointer {.importc: "QMainWindow_takeCentralWidget".}
proc fcQMainWindow_setCorner(self: pointer, corner: cint, area: cint): void {.importc: "QMainWindow_setCorner".}
proc fcQMainWindow_corner(self: pointer, corner: cint): cint {.importc: "QMainWindow_corner".}
proc fcQMainWindow_addToolBarBreak(self: pointer, ): void {.importc: "QMainWindow_addToolBarBreak".}
proc fcQMainWindow_insertToolBarBreak(self: pointer, before: pointer): void {.importc: "QMainWindow_insertToolBarBreak".}
proc fcQMainWindow_addToolBar(self: pointer, area: cint, toolbar: pointer): void {.importc: "QMainWindow_addToolBar".}
proc fcQMainWindow_addToolBarWithToolbar(self: pointer, toolbar: pointer): void {.importc: "QMainWindow_addToolBarWithToolbar".}
proc fcQMainWindow_addToolBarWithTitle(self: pointer, title: struct_miqt_string): pointer {.importc: "QMainWindow_addToolBarWithTitle".}
proc fcQMainWindow_insertToolBar(self: pointer, before: pointer, toolbar: pointer): void {.importc: "QMainWindow_insertToolBar".}
proc fcQMainWindow_removeToolBar(self: pointer, toolbar: pointer): void {.importc: "QMainWindow_removeToolBar".}
proc fcQMainWindow_removeToolBarBreak(self: pointer, before: pointer): void {.importc: "QMainWindow_removeToolBarBreak".}
proc fcQMainWindow_unifiedTitleAndToolBarOnMac(self: pointer, ): bool {.importc: "QMainWindow_unifiedTitleAndToolBarOnMac".}
proc fcQMainWindow_toolBarArea(self: pointer, toolbar: pointer): cint {.importc: "QMainWindow_toolBarArea".}
proc fcQMainWindow_toolBarBreak(self: pointer, toolbar: pointer): bool {.importc: "QMainWindow_toolBarBreak".}
proc fcQMainWindow_addDockWidget(self: pointer, area: cint, dockwidget: pointer): void {.importc: "QMainWindow_addDockWidget".}
proc fcQMainWindow_addDockWidget2(self: pointer, area: cint, dockwidget: pointer, orientation: cint): void {.importc: "QMainWindow_addDockWidget2".}
proc fcQMainWindow_splitDockWidget(self: pointer, after: pointer, dockwidget: pointer, orientation: cint): void {.importc: "QMainWindow_splitDockWidget".}
proc fcQMainWindow_tabifyDockWidget(self: pointer, first: pointer, second: pointer): void {.importc: "QMainWindow_tabifyDockWidget".}
proc fcQMainWindow_tabifiedDockWidgets(self: pointer, dockwidget: pointer): struct_miqt_array {.importc: "QMainWindow_tabifiedDockWidgets".}
proc fcQMainWindow_removeDockWidget(self: pointer, dockwidget: pointer): void {.importc: "QMainWindow_removeDockWidget".}
proc fcQMainWindow_restoreDockWidget(self: pointer, dockwidget: pointer): bool {.importc: "QMainWindow_restoreDockWidget".}
proc fcQMainWindow_dockWidgetArea(self: pointer, dockwidget: pointer): cint {.importc: "QMainWindow_dockWidgetArea".}
proc fcQMainWindow_resizeDocks(self: pointer, docks: struct_miqt_array, sizes: struct_miqt_array, orientation: cint): void {.importc: "QMainWindow_resizeDocks".}
proc fcQMainWindow_saveState(self: pointer, ): struct_miqt_string {.importc: "QMainWindow_saveState".}
proc fcQMainWindow_restoreState(self: pointer, state: struct_miqt_string): bool {.importc: "QMainWindow_restoreState".}
proc fcQMainWindow_createPopupMenu(self: pointer, ): pointer {.importc: "QMainWindow_createPopupMenu".}
proc fcQMainWindow_setAnimated(self: pointer, enabled: bool): void {.importc: "QMainWindow_setAnimated".}
proc fcQMainWindow_setDockNestingEnabled(self: pointer, enabled: bool): void {.importc: "QMainWindow_setDockNestingEnabled".}
proc fcQMainWindow_setUnifiedTitleAndToolBarOnMac(self: pointer, set: bool): void {.importc: "QMainWindow_setUnifiedTitleAndToolBarOnMac".}
proc fcQMainWindow_iconSizeChanged(self: pointer, iconSize: pointer): void {.importc: "QMainWindow_iconSizeChanged".}
proc fQMainWindow_connect_iconSizeChanged(self: pointer, slot: int) {.importc: "QMainWindow_connect_iconSizeChanged".}
proc fcQMainWindow_toolButtonStyleChanged(self: pointer, toolButtonStyle: cint): void {.importc: "QMainWindow_toolButtonStyleChanged".}
proc fQMainWindow_connect_toolButtonStyleChanged(self: pointer, slot: int) {.importc: "QMainWindow_connect_toolButtonStyleChanged".}
proc fcQMainWindow_tabifiedDockWidgetActivated(self: pointer, dockWidget: pointer): void {.importc: "QMainWindow_tabifiedDockWidgetActivated".}
proc fQMainWindow_connect_tabifiedDockWidgetActivated(self: pointer, slot: int) {.importc: "QMainWindow_connect_tabifiedDockWidgetActivated".}
proc fcQMainWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMainWindow_tr2".}
proc fcQMainWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMainWindow_tr3".}
proc fcQMainWindow_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMainWindow_trUtf82".}
proc fcQMainWindow_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMainWindow_trUtf83".}
proc fcQMainWindow_addToolBarBreak1(self: pointer, area: cint): void {.importc: "QMainWindow_addToolBarBreak1".}
proc fcQMainWindow_saveState1(self: pointer, version: cint): struct_miqt_string {.importc: "QMainWindow_saveState1".}
proc fcQMainWindow_restoreState2(self: pointer, state: struct_miqt_string, version: cint): bool {.importc: "QMainWindow_restoreState2".}
proc fQMainWindow_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMainWindow_virtualbase_metacall".}
proc fcQMainWindow_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_metacall".}
proc fQMainWindow_virtualbase_createPopupMenu(self: pointer, ): pointer{.importc: "QMainWindow_virtualbase_createPopupMenu".}
proc fcQMainWindow_override_virtual_createPopupMenu(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_createPopupMenu".}
proc fQMainWindow_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_contextMenuEvent".}
proc fcQMainWindow_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_contextMenuEvent".}
proc fQMainWindow_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMainWindow_virtualbase_event".}
proc fcQMainWindow_override_virtual_event(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_event".}
proc fQMainWindow_virtualbase_devType(self: pointer, ): cint{.importc: "QMainWindow_virtualbase_devType".}
proc fcQMainWindow_override_virtual_devType(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_devType".}
proc fQMainWindow_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QMainWindow_virtualbase_setVisible".}
proc fcQMainWindow_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_setVisible".}
proc fQMainWindow_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QMainWindow_virtualbase_sizeHint".}
proc fcQMainWindow_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_sizeHint".}
proc fQMainWindow_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QMainWindow_virtualbase_minimumSizeHint".}
proc fcQMainWindow_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_minimumSizeHint".}
proc fQMainWindow_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QMainWindow_virtualbase_heightForWidth".}
proc fcQMainWindow_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_heightForWidth".}
proc fQMainWindow_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QMainWindow_virtualbase_hasHeightForWidth".}
proc fcQMainWindow_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_hasHeightForWidth".}
proc fQMainWindow_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QMainWindow_virtualbase_paintEngine".}
proc fcQMainWindow_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_paintEngine".}
proc fQMainWindow_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_mousePressEvent".}
proc fcQMainWindow_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_mousePressEvent".}
proc fQMainWindow_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_mouseReleaseEvent".}
proc fcQMainWindow_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_mouseReleaseEvent".}
proc fQMainWindow_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQMainWindow_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_mouseDoubleClickEvent".}
proc fQMainWindow_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_mouseMoveEvent".}
proc fcQMainWindow_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_mouseMoveEvent".}
proc fQMainWindow_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_wheelEvent".}
proc fcQMainWindow_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_wheelEvent".}
proc fQMainWindow_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_keyPressEvent".}
proc fcQMainWindow_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_keyPressEvent".}
proc fQMainWindow_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_keyReleaseEvent".}
proc fcQMainWindow_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_keyReleaseEvent".}
proc fQMainWindow_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_focusInEvent".}
proc fcQMainWindow_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_focusInEvent".}
proc fQMainWindow_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_focusOutEvent".}
proc fcQMainWindow_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_focusOutEvent".}
proc fQMainWindow_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_enterEvent".}
proc fcQMainWindow_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_enterEvent".}
proc fQMainWindow_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_leaveEvent".}
proc fcQMainWindow_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_leaveEvent".}
proc fQMainWindow_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_paintEvent".}
proc fcQMainWindow_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_paintEvent".}
proc fQMainWindow_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_moveEvent".}
proc fcQMainWindow_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_moveEvent".}
proc fQMainWindow_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_resizeEvent".}
proc fcQMainWindow_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_resizeEvent".}
proc fQMainWindow_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_closeEvent".}
proc fcQMainWindow_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_closeEvent".}
proc fQMainWindow_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_tabletEvent".}
proc fcQMainWindow_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_tabletEvent".}
proc fQMainWindow_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_actionEvent".}
proc fcQMainWindow_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_actionEvent".}
proc fQMainWindow_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_dragEnterEvent".}
proc fcQMainWindow_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_dragEnterEvent".}
proc fQMainWindow_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_dragMoveEvent".}
proc fcQMainWindow_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_dragMoveEvent".}
proc fQMainWindow_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_dragLeaveEvent".}
proc fcQMainWindow_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_dragLeaveEvent".}
proc fQMainWindow_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_dropEvent".}
proc fcQMainWindow_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_dropEvent".}
proc fQMainWindow_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_showEvent".}
proc fcQMainWindow_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_showEvent".}
proc fQMainWindow_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_hideEvent".}
proc fcQMainWindow_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_hideEvent".}
proc fQMainWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QMainWindow_virtualbase_nativeEvent".}
proc fcQMainWindow_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_nativeEvent".}
proc fQMainWindow_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QMainWindow_virtualbase_changeEvent".}
proc fcQMainWindow_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_changeEvent".}
proc fQMainWindow_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QMainWindow_virtualbase_metric".}
proc fcQMainWindow_override_virtual_metric(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_metric".}
proc fQMainWindow_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QMainWindow_virtualbase_initPainter".}
proc fcQMainWindow_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_initPainter".}
proc fQMainWindow_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QMainWindow_virtualbase_redirected".}
proc fcQMainWindow_override_virtual_redirected(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_redirected".}
proc fQMainWindow_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QMainWindow_virtualbase_sharedPainter".}
proc fcQMainWindow_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_sharedPainter".}
proc fQMainWindow_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QMainWindow_virtualbase_inputMethodEvent".}
proc fcQMainWindow_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_inputMethodEvent".}
proc fQMainWindow_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QMainWindow_virtualbase_inputMethodQuery".}
proc fcQMainWindow_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_inputMethodQuery".}
proc fQMainWindow_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QMainWindow_virtualbase_focusNextPrevChild".}
proc fcQMainWindow_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_focusNextPrevChild".}
proc fQMainWindow_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMainWindow_virtualbase_eventFilter".}
proc fcQMainWindow_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_eventFilter".}
proc fQMainWindow_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_timerEvent".}
proc fcQMainWindow_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_timerEvent".}
proc fQMainWindow_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_childEvent".}
proc fcQMainWindow_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_childEvent".}
proc fQMainWindow_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_customEvent".}
proc fcQMainWindow_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_customEvent".}
proc fQMainWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMainWindow_virtualbase_connectNotify".}
proc fcQMainWindow_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_connectNotify".}
proc fQMainWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMainWindow_virtualbase_disconnectNotify".}
proc fcQMainWindow_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_disconnectNotify".}
proc fcQMainWindow_delete(self: pointer) {.importc: "QMainWindow_delete".}


func init*(T: type QMainWindow, h: ptr cQMainWindow): QMainWindow =
  T(h: h)
proc create*(T: type QMainWindow, parent: gen_qwidget.QWidget): QMainWindow =

  QMainWindow.init(fcQMainWindow_new(parent.h))
proc create*(T: type QMainWindow, ): QMainWindow =

  QMainWindow.init(fcQMainWindow_new2())
proc create*(T: type QMainWindow, parent: gen_qwidget.QWidget, flags: gen_qnamespace.WindowType): QMainWindow =

  QMainWindow.init(fcQMainWindow_new3(parent.h, cint(flags)))
proc metaObject*(self: QMainWindow, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMainWindow_metaObject(self.h))

proc metacast*(self: QMainWindow, param1: cstring): pointer =

  fcQMainWindow_metacast(self.h, param1)

proc metacall*(self: QMainWindow, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMainWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMainWindow, s: cstring): string =

  let v_ms = fcQMainWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMainWindow, s: cstring): string =

  let v_ms = fcQMainWindow_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc iconSize*(self: QMainWindow, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQMainWindow_iconSize(self.h))

proc setIconSize*(self: QMainWindow, iconSize: gen_qsize.QSize): void =

  fcQMainWindow_setIconSize(self.h, iconSize.h)

proc toolButtonStyle*(self: QMainWindow, ): gen_qnamespace.ToolButtonStyle =

  gen_qnamespace.ToolButtonStyle(fcQMainWindow_toolButtonStyle(self.h))

proc setToolButtonStyle*(self: QMainWindow, toolButtonStyle: gen_qnamespace.ToolButtonStyle): void =

  fcQMainWindow_setToolButtonStyle(self.h, cint(toolButtonStyle))

proc isAnimated*(self: QMainWindow, ): bool =

  fcQMainWindow_isAnimated(self.h)

proc isDockNestingEnabled*(self: QMainWindow, ): bool =

  fcQMainWindow_isDockNestingEnabled(self.h)

proc documentMode*(self: QMainWindow, ): bool =

  fcQMainWindow_documentMode(self.h)

proc setDocumentMode*(self: QMainWindow, enabled: bool): void =

  fcQMainWindow_setDocumentMode(self.h, enabled)

proc tabShape*(self: QMainWindow, ): gen_qtabwidget.QTabWidgetTabShape =

  gen_qtabwidget.QTabWidgetTabShape(fcQMainWindow_tabShape(self.h))

proc setTabShape*(self: QMainWindow, tabShape: gen_qtabwidget.QTabWidgetTabShape): void =

  fcQMainWindow_setTabShape(self.h, cint(tabShape))

proc tabPosition*(self: QMainWindow, area: gen_qnamespace.DockWidgetArea): gen_qtabwidget.QTabWidgetTabPosition =

  gen_qtabwidget.QTabWidgetTabPosition(fcQMainWindow_tabPosition(self.h, cint(area)))

proc setTabPosition*(self: QMainWindow, areas: gen_qnamespace.DockWidgetArea, tabPosition: gen_qtabwidget.QTabWidgetTabPosition): void =

  fcQMainWindow_setTabPosition(self.h, cint(areas), cint(tabPosition))

proc setDockOptions*(self: QMainWindow, options: QMainWindowDockOption): void =

  fcQMainWindow_setDockOptions(self.h, cint(options))

proc dockOptions*(self: QMainWindow, ): QMainWindowDockOption =

  QMainWindowDockOption(fcQMainWindow_dockOptions(self.h))

proc isSeparator*(self: QMainWindow, pos: gen_qpoint.QPoint): bool =

  fcQMainWindow_isSeparator(self.h, pos.h)

proc menuBar*(self: QMainWindow, ): gen_qmenubar.QMenuBar =

  gen_qmenubar.QMenuBar(h: fcQMainWindow_menuBar(self.h))

proc setMenuBar*(self: QMainWindow, menubar: gen_qmenubar.QMenuBar): void =

  fcQMainWindow_setMenuBar(self.h, menubar.h)

proc menuWidget*(self: QMainWindow, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQMainWindow_menuWidget(self.h))

proc setMenuWidget*(self: QMainWindow, menubar: gen_qwidget.QWidget): void =

  fcQMainWindow_setMenuWidget(self.h, menubar.h)

proc statusBar*(self: QMainWindow, ): gen_qstatusbar.QStatusBar =

  gen_qstatusbar.QStatusBar(h: fcQMainWindow_statusBar(self.h))

proc setStatusBar*(self: QMainWindow, statusbar: gen_qstatusbar.QStatusBar): void =

  fcQMainWindow_setStatusBar(self.h, statusbar.h)

proc centralWidget*(self: QMainWindow, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQMainWindow_centralWidget(self.h))

proc setCentralWidget*(self: QMainWindow, widget: gen_qwidget.QWidget): void =

  fcQMainWindow_setCentralWidget(self.h, widget.h)

proc takeCentralWidget*(self: QMainWindow, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQMainWindow_takeCentralWidget(self.h))

proc setCorner*(self: QMainWindow, corner: gen_qnamespace.Corner, area: gen_qnamespace.DockWidgetArea): void =

  fcQMainWindow_setCorner(self.h, cint(corner), cint(area))

proc corner*(self: QMainWindow, corner: gen_qnamespace.Corner): gen_qnamespace.DockWidgetArea =

  gen_qnamespace.DockWidgetArea(fcQMainWindow_corner(self.h, cint(corner)))

proc addToolBarBreak*(self: QMainWindow, ): void =

  fcQMainWindow_addToolBarBreak(self.h)

proc insertToolBarBreak*(self: QMainWindow, before: gen_qtoolbar.QToolBar): void =

  fcQMainWindow_insertToolBarBreak(self.h, before.h)

proc addToolBar*(self: QMainWindow, area: gen_qnamespace.ToolBarArea, toolbar: gen_qtoolbar.QToolBar): void =

  fcQMainWindow_addToolBar(self.h, cint(area), toolbar.h)

proc addToolBarWithToolbar*(self: QMainWindow, toolbar: gen_qtoolbar.QToolBar): void =

  fcQMainWindow_addToolBarWithToolbar(self.h, toolbar.h)

proc addToolBarWithTitle*(self: QMainWindow, title: string): gen_qtoolbar.QToolBar =

  gen_qtoolbar.QToolBar(h: fcQMainWindow_addToolBarWithTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc insertToolBar*(self: QMainWindow, before: gen_qtoolbar.QToolBar, toolbar: gen_qtoolbar.QToolBar): void =

  fcQMainWindow_insertToolBar(self.h, before.h, toolbar.h)

proc removeToolBar*(self: QMainWindow, toolbar: gen_qtoolbar.QToolBar): void =

  fcQMainWindow_removeToolBar(self.h, toolbar.h)

proc removeToolBarBreak*(self: QMainWindow, before: gen_qtoolbar.QToolBar): void =

  fcQMainWindow_removeToolBarBreak(self.h, before.h)

proc unifiedTitleAndToolBarOnMac*(self: QMainWindow, ): bool =

  fcQMainWindow_unifiedTitleAndToolBarOnMac(self.h)

proc toolBarArea*(self: QMainWindow, toolbar: gen_qtoolbar.QToolBar): gen_qnamespace.ToolBarArea =

  gen_qnamespace.ToolBarArea(fcQMainWindow_toolBarArea(self.h, toolbar.h))

proc toolBarBreak*(self: QMainWindow, toolbar: gen_qtoolbar.QToolBar): bool =

  fcQMainWindow_toolBarBreak(self.h, toolbar.h)

proc addDockWidget*(self: QMainWindow, area: gen_qnamespace.DockWidgetArea, dockwidget: gen_qdockwidget.QDockWidget): void =

  fcQMainWindow_addDockWidget(self.h, cint(area), dockwidget.h)

proc addDockWidget2*(self: QMainWindow, area: gen_qnamespace.DockWidgetArea, dockwidget: gen_qdockwidget.QDockWidget, orientation: gen_qnamespace.Orientation): void =

  fcQMainWindow_addDockWidget2(self.h, cint(area), dockwidget.h, cint(orientation))

proc splitDockWidget*(self: QMainWindow, after: gen_qdockwidget.QDockWidget, dockwidget: gen_qdockwidget.QDockWidget, orientation: gen_qnamespace.Orientation): void =

  fcQMainWindow_splitDockWidget(self.h, after.h, dockwidget.h, cint(orientation))

proc tabifyDockWidget*(self: QMainWindow, first: gen_qdockwidget.QDockWidget, second: gen_qdockwidget.QDockWidget): void =

  fcQMainWindow_tabifyDockWidget(self.h, first.h, second.h)

proc tabifiedDockWidgets*(self: QMainWindow, dockwidget: gen_qdockwidget.QDockWidget): seq[gen_qdockwidget.QDockWidget] =

  var v_ma = fcQMainWindow_tabifiedDockWidgets(self.h, dockwidget.h)
  var vx_ret = newSeq[gen_qdockwidget.QDockWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qdockwidget.QDockWidget(h: v_outCast[i])
  vx_ret

proc removeDockWidget*(self: QMainWindow, dockwidget: gen_qdockwidget.QDockWidget): void =

  fcQMainWindow_removeDockWidget(self.h, dockwidget.h)

proc restoreDockWidget*(self: QMainWindow, dockwidget: gen_qdockwidget.QDockWidget): bool =

  fcQMainWindow_restoreDockWidget(self.h, dockwidget.h)

proc dockWidgetArea*(self: QMainWindow, dockwidget: gen_qdockwidget.QDockWidget): gen_qnamespace.DockWidgetArea =

  gen_qnamespace.DockWidgetArea(fcQMainWindow_dockWidgetArea(self.h, dockwidget.h))

proc resizeDocks*(self: QMainWindow, docks: seq[gen_qdockwidget.QDockWidget], sizes: seq[cint], orientation: gen_qnamespace.Orientation): void =

  var docks_CArray = newSeq[pointer](len(docks))
  for i in 0..<len(docks):
    docks_CArray[i] = docks[i].h

  var sizes_CArray = newSeq[cint](len(sizes))
  for i in 0..<len(sizes):
    sizes_CArray[i] = sizes[i]

  fcQMainWindow_resizeDocks(self.h, struct_miqt_array(len: csize_t(len(docks)), data: if len(docks) == 0: nil else: addr(docks_CArray[0])), struct_miqt_array(len: csize_t(len(sizes)), data: if len(sizes) == 0: nil else: addr(sizes_CArray[0])), cint(orientation))

proc saveState*(self: QMainWindow, ): seq[byte] =

  var v_bytearray = fcQMainWindow_saveState(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreState*(self: QMainWindow, state: seq[byte]): bool =

  fcQMainWindow_restoreState(self.h, struct_miqt_string(data: cast[cstring](if len(state) == 0: nil else: unsafeAddr state[0]), len: csize_t(len(state))))

proc createPopupMenu*(self: QMainWindow, ): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQMainWindow_createPopupMenu(self.h))

proc setAnimated*(self: QMainWindow, enabled: bool): void =

  fcQMainWindow_setAnimated(self.h, enabled)

proc setDockNestingEnabled*(self: QMainWindow, enabled: bool): void =

  fcQMainWindow_setDockNestingEnabled(self.h, enabled)

proc setUnifiedTitleAndToolBarOnMac*(self: QMainWindow, set: bool): void =

  fcQMainWindow_setUnifiedTitleAndToolBarOnMac(self.h, set)

proc iconSizeChanged*(self: QMainWindow, iconSize: gen_qsize.QSize): void =

  fcQMainWindow_iconSizeChanged(self.h, iconSize.h)

proc miqt_exec_callback_QMainWindow_iconSizeChanged(slot: int, iconSize: pointer) {.exportc.} =
  type Cb = proc(iconSize: gen_qsize.QSize)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsize.QSize(h: iconSize)


  nimfunc[](slotval1)

proc oniconSizeChanged*(self: QMainWindow, slot: proc(iconSize: gen_qsize.QSize)) =
  type Cb = proc(iconSize: gen_qsize.QSize)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMainWindow_connect_iconSizeChanged(self.h, cast[int](addr tmp[]))
proc toolButtonStyleChanged*(self: QMainWindow, toolButtonStyle: gen_qnamespace.ToolButtonStyle): void =

  fcQMainWindow_toolButtonStyleChanged(self.h, cint(toolButtonStyle))

proc miqt_exec_callback_QMainWindow_toolButtonStyleChanged(slot: int, toolButtonStyle: cint) {.exportc.} =
  type Cb = proc(toolButtonStyle: gen_qnamespace.ToolButtonStyle)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.ToolButtonStyle(toolButtonStyle)


  nimfunc[](slotval1)

proc ontoolButtonStyleChanged*(self: QMainWindow, slot: proc(toolButtonStyle: gen_qnamespace.ToolButtonStyle)) =
  type Cb = proc(toolButtonStyle: gen_qnamespace.ToolButtonStyle)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMainWindow_connect_toolButtonStyleChanged(self.h, cast[int](addr tmp[]))
proc tabifiedDockWidgetActivated*(self: QMainWindow, dockWidget: gen_qdockwidget.QDockWidget): void =

  fcQMainWindow_tabifiedDockWidgetActivated(self.h, dockWidget.h)

proc miqt_exec_callback_QMainWindow_tabifiedDockWidgetActivated(slot: int, dockWidget: pointer) {.exportc.} =
  type Cb = proc(dockWidget: gen_qdockwidget.QDockWidget)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qdockwidget.QDockWidget(h: dockWidget)


  nimfunc[](slotval1)

proc ontabifiedDockWidgetActivated*(self: QMainWindow, slot: proc(dockWidget: gen_qdockwidget.QDockWidget)) =
  type Cb = proc(dockWidget: gen_qdockwidget.QDockWidget)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMainWindow_connect_tabifiedDockWidgetActivated(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMainWindow, s: cstring, c: cstring): string =

  let v_ms = fcQMainWindow_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMainWindow, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMainWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMainWindow, s: cstring, c: cstring): string =

  let v_ms = fcQMainWindow_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMainWindow, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMainWindow_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addToolBarBreak1*(self: QMainWindow, area: gen_qnamespace.ToolBarArea): void =

  fcQMainWindow_addToolBarBreak1(self.h, cint(area))

proc saveState1*(self: QMainWindow, version: cint): seq[byte] =

  var v_bytearray = fcQMainWindow_saveState1(self.h, version)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreState2*(self: QMainWindow, state: seq[byte], version: cint): bool =

  fcQMainWindow_restoreState2(self.h, struct_miqt_string(data: cast[cstring](if len(state) == 0: nil else: unsafeAddr state[0]), len: csize_t(len(state))), version)

proc callVirtualBase_metacall(self: QMainWindow, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQMainWindow_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMainWindowmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QMainWindow, slot: proc(super: QMainWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_metacall(self: ptr cQMainWindow, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMainWindow_metacall ".} =
  type Cb = proc(super: QMainWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QMainWindow(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_createPopupMenu(self: QMainWindow, ): gen_qmenu.QMenu =


  gen_qmenu.QMenu(h: fQMainWindow_virtualbase_createPopupMenu(self.h))

type QMainWindowcreatePopupMenuBase* = proc(): gen_qmenu.QMenu
proc oncreatePopupMenu*(self: QMainWindow, slot: proc(super: QMainWindowcreatePopupMenuBase): gen_qmenu.QMenu) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowcreatePopupMenuBase): gen_qmenu.QMenu
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_createPopupMenu(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_createPopupMenu(self: ptr cQMainWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMainWindow_createPopupMenu ".} =
  type Cb = proc(super: QMainWindowcreatePopupMenuBase): gen_qmenu.QMenu
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_createPopupMenu(QMainWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contextMenuEvent(self: QMainWindow, event: gen_qevent.QContextMenuEvent): void =


  fQMainWindow_virtualbase_contextMenuEvent(self.h, event.h)

type QMainWindowcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QMainWindow, slot: proc(super: QMainWindowcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_contextMenuEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_contextMenuEvent ".} =
  type Cb = proc(super: QMainWindowcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QMainWindow, event: gen_qcoreevent.QEvent): bool =


  fQMainWindow_virtualbase_event(self.h, event.h)

type QMainWindoweventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QMainWindow, slot: proc(super: QMainWindoweventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMainWindoweventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_event(self: ptr cQMainWindow, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMainWindow_event ".} =
  type Cb = proc(super: QMainWindoweventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QMainWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_devType(self: QMainWindow, ): cint =


  fQMainWindow_virtualbase_devType(self.h)

type QMainWindowdevTypeBase* = proc(): cint
proc ondevType*(self: QMainWindow, slot: proc(super: QMainWindowdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_devType(self: ptr cQMainWindow, slot: int): cint {.exportc: "miqt_exec_callback_QMainWindow_devType ".} =
  type Cb = proc(super: QMainWindowdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QMainWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QMainWindow, visible: bool): void =


  fQMainWindow_virtualbase_setVisible(self.h, visible)

type QMainWindowsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QMainWindow, slot: proc(super: QMainWindowsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_setVisible(self: ptr cQMainWindow, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QMainWindow_setVisible ".} =
  type Cb = proc(super: QMainWindowsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QMainWindow(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QMainWindow, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQMainWindow_virtualbase_sizeHint(self.h))

type QMainWindowsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QMainWindow, slot: proc(super: QMainWindowsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_sizeHint(self: ptr cQMainWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMainWindow_sizeHint ".} =
  type Cb = proc(super: QMainWindowsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QMainWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QMainWindow, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQMainWindow_virtualbase_minimumSizeHint(self.h))

type QMainWindowminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QMainWindow, slot: proc(super: QMainWindowminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_minimumSizeHint(self: ptr cQMainWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMainWindow_minimumSizeHint ".} =
  type Cb = proc(super: QMainWindowminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QMainWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QMainWindow, param1: cint): cint =


  fQMainWindow_virtualbase_heightForWidth(self.h, param1)

type QMainWindowheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QMainWindow, slot: proc(super: QMainWindowheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_heightForWidth(self: ptr cQMainWindow, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMainWindow_heightForWidth ".} =
  type Cb = proc(super: QMainWindowheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QMainWindow(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QMainWindow, ): bool =


  fQMainWindow_virtualbase_hasHeightForWidth(self.h)

type QMainWindowhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QMainWindow, slot: proc(super: QMainWindowhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_hasHeightForWidth(self: ptr cQMainWindow, slot: int): bool {.exportc: "miqt_exec_callback_QMainWindow_hasHeightForWidth ".} =
  type Cb = proc(super: QMainWindowhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QMainWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QMainWindow, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQMainWindow_virtualbase_paintEngine(self.h))

type QMainWindowpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QMainWindow, slot: proc(super: QMainWindowpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_paintEngine(self: ptr cQMainWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMainWindow_paintEngine ".} =
  type Cb = proc(super: QMainWindowpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QMainWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QMainWindow, event: gen_qevent.QMouseEvent): void =


  fQMainWindow_virtualbase_mousePressEvent(self.h, event.h)

type QMainWindowmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QMainWindow, slot: proc(super: QMainWindowmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_mousePressEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_mousePressEvent ".} =
  type Cb = proc(super: QMainWindowmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QMainWindow, event: gen_qevent.QMouseEvent): void =


  fQMainWindow_virtualbase_mouseReleaseEvent(self.h, event.h)

type QMainWindowmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QMainWindow, slot: proc(super: QMainWindowmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_mouseReleaseEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_mouseReleaseEvent ".} =
  type Cb = proc(super: QMainWindowmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QMainWindow, event: gen_qevent.QMouseEvent): void =


  fQMainWindow_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QMainWindowmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QMainWindow, slot: proc(super: QMainWindowmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_mouseDoubleClickEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QMainWindowmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QMainWindow, event: gen_qevent.QMouseEvent): void =


  fQMainWindow_virtualbase_mouseMoveEvent(self.h, event.h)

type QMainWindowmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QMainWindow, slot: proc(super: QMainWindowmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_mouseMoveEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_mouseMoveEvent ".} =
  type Cb = proc(super: QMainWindowmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QMainWindow, event: gen_qevent.QWheelEvent): void =


  fQMainWindow_virtualbase_wheelEvent(self.h, event.h)

type QMainWindowwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QMainWindow, slot: proc(super: QMainWindowwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_wheelEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_wheelEvent ".} =
  type Cb = proc(super: QMainWindowwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QMainWindow, event: gen_qevent.QKeyEvent): void =


  fQMainWindow_virtualbase_keyPressEvent(self.h, event.h)

type QMainWindowkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QMainWindow, slot: proc(super: QMainWindowkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_keyPressEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_keyPressEvent ".} =
  type Cb = proc(super: QMainWindowkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QMainWindow, event: gen_qevent.QKeyEvent): void =


  fQMainWindow_virtualbase_keyReleaseEvent(self.h, event.h)

type QMainWindowkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QMainWindow, slot: proc(super: QMainWindowkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_keyReleaseEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_keyReleaseEvent ".} =
  type Cb = proc(super: QMainWindowkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QMainWindow, event: gen_qevent.QFocusEvent): void =


  fQMainWindow_virtualbase_focusInEvent(self.h, event.h)

type QMainWindowfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QMainWindow, slot: proc(super: QMainWindowfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_focusInEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_focusInEvent ".} =
  type Cb = proc(super: QMainWindowfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QMainWindow, event: gen_qevent.QFocusEvent): void =


  fQMainWindow_virtualbase_focusOutEvent(self.h, event.h)

type QMainWindowfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QMainWindow, slot: proc(super: QMainWindowfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_focusOutEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_focusOutEvent ".} =
  type Cb = proc(super: QMainWindowfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QMainWindow, event: gen_qcoreevent.QEvent): void =


  fQMainWindow_virtualbase_enterEvent(self.h, event.h)

type QMainWindowenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QMainWindow, slot: proc(super: QMainWindowenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_enterEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_enterEvent ".} =
  type Cb = proc(super: QMainWindowenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QMainWindow, event: gen_qcoreevent.QEvent): void =


  fQMainWindow_virtualbase_leaveEvent(self.h, event.h)

type QMainWindowleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QMainWindow, slot: proc(super: QMainWindowleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_leaveEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_leaveEvent ".} =
  type Cb = proc(super: QMainWindowleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QMainWindow, event: gen_qevent.QPaintEvent): void =


  fQMainWindow_virtualbase_paintEvent(self.h, event.h)

type QMainWindowpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QMainWindow, slot: proc(super: QMainWindowpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_paintEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_paintEvent ".} =
  type Cb = proc(super: QMainWindowpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QMainWindow, event: gen_qevent.QMoveEvent): void =


  fQMainWindow_virtualbase_moveEvent(self.h, event.h)

type QMainWindowmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QMainWindow, slot: proc(super: QMainWindowmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_moveEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_moveEvent ".} =
  type Cb = proc(super: QMainWindowmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QMainWindow, event: gen_qevent.QResizeEvent): void =


  fQMainWindow_virtualbase_resizeEvent(self.h, event.h)

type QMainWindowresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QMainWindow, slot: proc(super: QMainWindowresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_resizeEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_resizeEvent ".} =
  type Cb = proc(super: QMainWindowresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QMainWindow, event: gen_qevent.QCloseEvent): void =


  fQMainWindow_virtualbase_closeEvent(self.h, event.h)

type QMainWindowcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QMainWindow, slot: proc(super: QMainWindowcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_closeEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_closeEvent ".} =
  type Cb = proc(super: QMainWindowcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QMainWindow, event: gen_qevent.QTabletEvent): void =


  fQMainWindow_virtualbase_tabletEvent(self.h, event.h)

type QMainWindowtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QMainWindow, slot: proc(super: QMainWindowtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_tabletEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_tabletEvent ".} =
  type Cb = proc(super: QMainWindowtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QMainWindow, event: gen_qevent.QActionEvent): void =


  fQMainWindow_virtualbase_actionEvent(self.h, event.h)

type QMainWindowactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QMainWindow, slot: proc(super: QMainWindowactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_actionEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_actionEvent ".} =
  type Cb = proc(super: QMainWindowactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QMainWindow, event: gen_qevent.QDragEnterEvent): void =


  fQMainWindow_virtualbase_dragEnterEvent(self.h, event.h)

type QMainWindowdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QMainWindow, slot: proc(super: QMainWindowdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_dragEnterEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_dragEnterEvent ".} =
  type Cb = proc(super: QMainWindowdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QMainWindow, event: gen_qevent.QDragMoveEvent): void =


  fQMainWindow_virtualbase_dragMoveEvent(self.h, event.h)

type QMainWindowdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QMainWindow, slot: proc(super: QMainWindowdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_dragMoveEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_dragMoveEvent ".} =
  type Cb = proc(super: QMainWindowdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QMainWindow, event: gen_qevent.QDragLeaveEvent): void =


  fQMainWindow_virtualbase_dragLeaveEvent(self.h, event.h)

type QMainWindowdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QMainWindow, slot: proc(super: QMainWindowdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_dragLeaveEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_dragLeaveEvent ".} =
  type Cb = proc(super: QMainWindowdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QMainWindow, event: gen_qevent.QDropEvent): void =


  fQMainWindow_virtualbase_dropEvent(self.h, event.h)

type QMainWindowdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QMainWindow, slot: proc(super: QMainWindowdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_dropEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_dropEvent ".} =
  type Cb = proc(super: QMainWindowdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QMainWindow, event: gen_qevent.QShowEvent): void =


  fQMainWindow_virtualbase_showEvent(self.h, event.h)

type QMainWindowshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QMainWindow, slot: proc(super: QMainWindowshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_showEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_showEvent ".} =
  type Cb = proc(super: QMainWindowshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QMainWindow, event: gen_qevent.QHideEvent): void =


  fQMainWindow_virtualbase_hideEvent(self.h, event.h)

type QMainWindowhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QMainWindow, slot: proc(super: QMainWindowhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_hideEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_hideEvent ".} =
  type Cb = proc(super: QMainWindowhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QMainWindow, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQMainWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QMainWindownativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QMainWindow, slot: proc(super: QMainWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QMainWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_nativeEvent(self: ptr cQMainWindow, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QMainWindow_nativeEvent ".} =
  type Cb = proc(super: QMainWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QMainWindow(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QMainWindow, param1: gen_qcoreevent.QEvent): void =


  fQMainWindow_virtualbase_changeEvent(self.h, param1.h)

type QMainWindowchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QMainWindow, slot: proc(super: QMainWindowchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_changeEvent(self: ptr cQMainWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_changeEvent ".} =
  type Cb = proc(super: QMainWindowchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QMainWindow(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QMainWindow, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQMainWindow_virtualbase_metric(self.h, cint(param1))

type QMainWindowmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QMainWindow, slot: proc(super: QMainWindowmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_metric(self: ptr cQMainWindow, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMainWindow_metric ".} =
  type Cb = proc(super: QMainWindowmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QMainWindow(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QMainWindow, painter: gen_qpainter.QPainter): void =


  fQMainWindow_virtualbase_initPainter(self.h, painter.h)

type QMainWindowinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QMainWindow, slot: proc(super: QMainWindowinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_initPainter(self: ptr cQMainWindow, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_initPainter ".} =
  type Cb = proc(super: QMainWindowinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QMainWindow(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QMainWindow, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQMainWindow_virtualbase_redirected(self.h, offset.h))

type QMainWindowredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QMainWindow, slot: proc(super: QMainWindowredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_redirected(self: ptr cQMainWindow, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QMainWindow_redirected ".} =
  type Cb = proc(super: QMainWindowredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QMainWindow(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QMainWindow, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQMainWindow_virtualbase_sharedPainter(self.h))

type QMainWindowsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QMainWindow, slot: proc(super: QMainWindowsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_sharedPainter(self: ptr cQMainWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMainWindow_sharedPainter ".} =
  type Cb = proc(super: QMainWindowsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QMainWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QMainWindow, param1: gen_qevent.QInputMethodEvent): void =


  fQMainWindow_virtualbase_inputMethodEvent(self.h, param1.h)

type QMainWindowinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QMainWindow, slot: proc(super: QMainWindowinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_inputMethodEvent(self: ptr cQMainWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_inputMethodEvent ".} =
  type Cb = proc(super: QMainWindowinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QMainWindow(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QMainWindow, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQMainWindow_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QMainWindowinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QMainWindow, slot: proc(super: QMainWindowinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_inputMethodQuery(self: ptr cQMainWindow, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QMainWindow_inputMethodQuery ".} =
  type Cb = proc(super: QMainWindowinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QMainWindow(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QMainWindow, next: bool): bool =


  fQMainWindow_virtualbase_focusNextPrevChild(self.h, next)

type QMainWindowfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QMainWindow, slot: proc(super: QMainWindowfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_focusNextPrevChild(self: ptr cQMainWindow, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QMainWindow_focusNextPrevChild ".} =
  type Cb = proc(super: QMainWindowfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QMainWindow(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QMainWindow, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQMainWindow_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMainWindoweventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QMainWindow, slot: proc(super: QMainWindoweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMainWindoweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_eventFilter(self: ptr cQMainWindow, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMainWindow_eventFilter ".} =
  type Cb = proc(super: QMainWindoweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QMainWindow(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QMainWindow, event: gen_qcoreevent.QTimerEvent): void =


  fQMainWindow_virtualbase_timerEvent(self.h, event.h)

type QMainWindowtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QMainWindow, slot: proc(super: QMainWindowtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_timerEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_timerEvent ".} =
  type Cb = proc(super: QMainWindowtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QMainWindow, event: gen_qcoreevent.QChildEvent): void =


  fQMainWindow_virtualbase_childEvent(self.h, event.h)

type QMainWindowchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QMainWindow, slot: proc(super: QMainWindowchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_childEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_childEvent ".} =
  type Cb = proc(super: QMainWindowchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QMainWindow, event: gen_qcoreevent.QEvent): void =


  fQMainWindow_virtualbase_customEvent(self.h, event.h)

type QMainWindowcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QMainWindow, slot: proc(super: QMainWindowcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_customEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_customEvent ".} =
  type Cb = proc(super: QMainWindowcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QMainWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QMainWindow, signal: gen_qmetaobject.QMetaMethod): void =


  fQMainWindow_virtualbase_connectNotify(self.h, signal.h)

type QMainWindowconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QMainWindow, slot: proc(super: QMainWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_connectNotify(self: ptr cQMainWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_connectNotify ".} =
  type Cb = proc(super: QMainWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QMainWindow(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QMainWindow, signal: gen_qmetaobject.QMetaMethod): void =


  fQMainWindow_virtualbase_disconnectNotify(self.h, signal.h)

type QMainWindowdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QMainWindow, slot: proc(super: QMainWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMainWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_disconnectNotify(self: ptr cQMainWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_disconnectNotify ".} =
  type Cb = proc(super: QMainWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QMainWindow(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QMainWindow) =
  fcQMainWindow_delete(self.h)
