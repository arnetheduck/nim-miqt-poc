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
{.compile("gen_qtoolbar.cpp", cflags).}


import gen_qtoolbar_types
export gen_qtoolbar_types

import
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQToolBar*{.exportc: "QToolBar", incompleteStruct.} = object

proc fcQToolBar_new(parent: pointer): ptr cQToolBar {.importc: "QToolBar_new".}
proc fcQToolBar_new2(title: struct_miqt_string): ptr cQToolBar {.importc: "QToolBar_new2".}
proc fcQToolBar_new3(): ptr cQToolBar {.importc: "QToolBar_new3".}
proc fcQToolBar_new4(title: struct_miqt_string, parent: pointer): ptr cQToolBar {.importc: "QToolBar_new4".}
proc fcQToolBar_metaObject(self: pointer, ): pointer {.importc: "QToolBar_metaObject".}
proc fcQToolBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolBar_metacast".}
proc fcQToolBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolBar_metacall".}
proc fcQToolBar_tr(s: cstring): struct_miqt_string {.importc: "QToolBar_tr".}
proc fcQToolBar_trUtf8(s: cstring): struct_miqt_string {.importc: "QToolBar_trUtf8".}
proc fcQToolBar_setMovable(self: pointer, movable: bool): void {.importc: "QToolBar_setMovable".}
proc fcQToolBar_isMovable(self: pointer, ): bool {.importc: "QToolBar_isMovable".}
proc fcQToolBar_setAllowedAreas(self: pointer, areas: cint): void {.importc: "QToolBar_setAllowedAreas".}
proc fcQToolBar_allowedAreas(self: pointer, ): cint {.importc: "QToolBar_allowedAreas".}
proc fcQToolBar_isAreaAllowed(self: pointer, area: cint): bool {.importc: "QToolBar_isAreaAllowed".}
proc fcQToolBar_setOrientation(self: pointer, orientation: cint): void {.importc: "QToolBar_setOrientation".}
proc fcQToolBar_orientation(self: pointer, ): cint {.importc: "QToolBar_orientation".}
proc fcQToolBar_clear(self: pointer, ): void {.importc: "QToolBar_clear".}
proc fcQToolBar_addAction(self: pointer, text: struct_miqt_string): pointer {.importc: "QToolBar_addAction".}
proc fcQToolBar_addAction2(self: pointer, icon: pointer, text: struct_miqt_string): pointer {.importc: "QToolBar_addAction2".}
proc fcQToolBar_addSeparator(self: pointer, ): pointer {.importc: "QToolBar_addSeparator".}
proc fcQToolBar_insertSeparator(self: pointer, before: pointer): pointer {.importc: "QToolBar_insertSeparator".}
proc fcQToolBar_addWidget(self: pointer, widget: pointer): pointer {.importc: "QToolBar_addWidget".}
proc fcQToolBar_insertWidget(self: pointer, before: pointer, widget: pointer): pointer {.importc: "QToolBar_insertWidget".}
proc fcQToolBar_actionGeometry(self: pointer, action: pointer): pointer {.importc: "QToolBar_actionGeometry".}
proc fcQToolBar_actionAt(self: pointer, p: pointer): pointer {.importc: "QToolBar_actionAt".}
proc fcQToolBar_actionAt2(self: pointer, x: cint, y: cint): pointer {.importc: "QToolBar_actionAt2".}
proc fcQToolBar_toggleViewAction(self: pointer, ): pointer {.importc: "QToolBar_toggleViewAction".}
proc fcQToolBar_iconSize(self: pointer, ): pointer {.importc: "QToolBar_iconSize".}
proc fcQToolBar_toolButtonStyle(self: pointer, ): cint {.importc: "QToolBar_toolButtonStyle".}
proc fcQToolBar_widgetForAction(self: pointer, action: pointer): pointer {.importc: "QToolBar_widgetForAction".}
proc fcQToolBar_isFloatable(self: pointer, ): bool {.importc: "QToolBar_isFloatable".}
proc fcQToolBar_setFloatable(self: pointer, floatable: bool): void {.importc: "QToolBar_setFloatable".}
proc fcQToolBar_isFloating(self: pointer, ): bool {.importc: "QToolBar_isFloating".}
proc fcQToolBar_setIconSize(self: pointer, iconSize: pointer): void {.importc: "QToolBar_setIconSize".}
proc fcQToolBar_setToolButtonStyle(self: pointer, toolButtonStyle: cint): void {.importc: "QToolBar_setToolButtonStyle".}
proc fcQToolBar_actionTriggered(self: pointer, action: pointer): void {.importc: "QToolBar_actionTriggered".}
proc fQToolBar_connect_actionTriggered(self: pointer, slot: int) {.importc: "QToolBar_connect_actionTriggered".}
proc fcQToolBar_movableChanged(self: pointer, movable: bool): void {.importc: "QToolBar_movableChanged".}
proc fQToolBar_connect_movableChanged(self: pointer, slot: int) {.importc: "QToolBar_connect_movableChanged".}
proc fcQToolBar_allowedAreasChanged(self: pointer, allowedAreas: cint): void {.importc: "QToolBar_allowedAreasChanged".}
proc fQToolBar_connect_allowedAreasChanged(self: pointer, slot: int) {.importc: "QToolBar_connect_allowedAreasChanged".}
proc fcQToolBar_orientationChanged(self: pointer, orientation: cint): void {.importc: "QToolBar_orientationChanged".}
proc fQToolBar_connect_orientationChanged(self: pointer, slot: int) {.importc: "QToolBar_connect_orientationChanged".}
proc fcQToolBar_iconSizeChanged(self: pointer, iconSize: pointer): void {.importc: "QToolBar_iconSizeChanged".}
proc fQToolBar_connect_iconSizeChanged(self: pointer, slot: int) {.importc: "QToolBar_connect_iconSizeChanged".}
proc fcQToolBar_toolButtonStyleChanged(self: pointer, toolButtonStyle: cint): void {.importc: "QToolBar_toolButtonStyleChanged".}
proc fQToolBar_connect_toolButtonStyleChanged(self: pointer, slot: int) {.importc: "QToolBar_connect_toolButtonStyleChanged".}
proc fcQToolBar_topLevelChanged(self: pointer, topLevel: bool): void {.importc: "QToolBar_topLevelChanged".}
proc fQToolBar_connect_topLevelChanged(self: pointer, slot: int) {.importc: "QToolBar_connect_topLevelChanged".}
proc fcQToolBar_visibilityChanged(self: pointer, visible: bool): void {.importc: "QToolBar_visibilityChanged".}
proc fQToolBar_connect_visibilityChanged(self: pointer, slot: int) {.importc: "QToolBar_connect_visibilityChanged".}
proc fcQToolBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolBar_tr2".}
proc fcQToolBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolBar_tr3".}
proc fcQToolBar_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolBar_trUtf82".}
proc fcQToolBar_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolBar_trUtf83".}
proc fQToolBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QToolBar_virtualbase_metacall".}
proc fcQToolBar_override_virtual_metacall(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_metacall".}
proc fQToolBar_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_actionEvent".}
proc fcQToolBar_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_actionEvent".}
proc fQToolBar_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_changeEvent".}
proc fcQToolBar_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_changeEvent".}
proc fQToolBar_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_paintEvent".}
proc fcQToolBar_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_paintEvent".}
proc fQToolBar_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QToolBar_virtualbase_event".}
proc fcQToolBar_override_virtual_event(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_event".}
proc fQToolBar_virtualbase_devType(self: pointer, ): cint{.importc: "QToolBar_virtualbase_devType".}
proc fcQToolBar_override_virtual_devType(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_devType".}
proc fQToolBar_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QToolBar_virtualbase_setVisible".}
proc fcQToolBar_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_setVisible".}
proc fQToolBar_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QToolBar_virtualbase_sizeHint".}
proc fcQToolBar_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_sizeHint".}
proc fQToolBar_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QToolBar_virtualbase_minimumSizeHint".}
proc fcQToolBar_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_minimumSizeHint".}
proc fQToolBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QToolBar_virtualbase_heightForWidth".}
proc fcQToolBar_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_heightForWidth".}
proc fQToolBar_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QToolBar_virtualbase_hasHeightForWidth".}
proc fcQToolBar_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_hasHeightForWidth".}
proc fQToolBar_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QToolBar_virtualbase_paintEngine".}
proc fcQToolBar_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_paintEngine".}
proc fQToolBar_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_mousePressEvent".}
proc fcQToolBar_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_mousePressEvent".}
proc fQToolBar_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_mouseReleaseEvent".}
proc fcQToolBar_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_mouseReleaseEvent".}
proc fQToolBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_mouseDoubleClickEvent".}
proc fcQToolBar_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_mouseDoubleClickEvent".}
proc fQToolBar_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_mouseMoveEvent".}
proc fcQToolBar_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_mouseMoveEvent".}
proc fQToolBar_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_wheelEvent".}
proc fcQToolBar_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_wheelEvent".}
proc fQToolBar_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_keyPressEvent".}
proc fcQToolBar_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_keyPressEvent".}
proc fQToolBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_keyReleaseEvent".}
proc fcQToolBar_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_keyReleaseEvent".}
proc fQToolBar_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_focusInEvent".}
proc fcQToolBar_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_focusInEvent".}
proc fQToolBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_focusOutEvent".}
proc fcQToolBar_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_focusOutEvent".}
proc fQToolBar_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_enterEvent".}
proc fcQToolBar_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_enterEvent".}
proc fQToolBar_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_leaveEvent".}
proc fcQToolBar_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_leaveEvent".}
proc fQToolBar_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_moveEvent".}
proc fcQToolBar_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_moveEvent".}
proc fQToolBar_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_resizeEvent".}
proc fcQToolBar_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_resizeEvent".}
proc fQToolBar_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_closeEvent".}
proc fcQToolBar_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_closeEvent".}
proc fQToolBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_contextMenuEvent".}
proc fcQToolBar_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_contextMenuEvent".}
proc fQToolBar_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_tabletEvent".}
proc fcQToolBar_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_tabletEvent".}
proc fQToolBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_dragEnterEvent".}
proc fcQToolBar_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_dragEnterEvent".}
proc fQToolBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_dragMoveEvent".}
proc fcQToolBar_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_dragMoveEvent".}
proc fQToolBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_dragLeaveEvent".}
proc fcQToolBar_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_dragLeaveEvent".}
proc fQToolBar_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_dropEvent".}
proc fcQToolBar_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_dropEvent".}
proc fQToolBar_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_showEvent".}
proc fcQToolBar_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_showEvent".}
proc fQToolBar_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_hideEvent".}
proc fcQToolBar_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_hideEvent".}
proc fQToolBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QToolBar_virtualbase_nativeEvent".}
proc fcQToolBar_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_nativeEvent".}
proc fQToolBar_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QToolBar_virtualbase_metric".}
proc fcQToolBar_override_virtual_metric(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_metric".}
proc fQToolBar_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QToolBar_virtualbase_initPainter".}
proc fcQToolBar_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_initPainter".}
proc fQToolBar_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QToolBar_virtualbase_redirected".}
proc fcQToolBar_override_virtual_redirected(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_redirected".}
proc fQToolBar_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QToolBar_virtualbase_sharedPainter".}
proc fcQToolBar_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_sharedPainter".}
proc fQToolBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QToolBar_virtualbase_inputMethodEvent".}
proc fcQToolBar_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_inputMethodEvent".}
proc fQToolBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QToolBar_virtualbase_inputMethodQuery".}
proc fcQToolBar_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_inputMethodQuery".}
proc fQToolBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QToolBar_virtualbase_focusNextPrevChild".}
proc fcQToolBar_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_focusNextPrevChild".}
proc fQToolBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QToolBar_virtualbase_eventFilter".}
proc fcQToolBar_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_eventFilter".}
proc fQToolBar_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_timerEvent".}
proc fcQToolBar_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_timerEvent".}
proc fQToolBar_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_childEvent".}
proc fcQToolBar_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_childEvent".}
proc fQToolBar_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_customEvent".}
proc fcQToolBar_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_customEvent".}
proc fQToolBar_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QToolBar_virtualbase_connectNotify".}
proc fcQToolBar_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_connectNotify".}
proc fQToolBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QToolBar_virtualbase_disconnectNotify".}
proc fcQToolBar_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_disconnectNotify".}
proc fcQToolBar_delete(self: pointer) {.importc: "QToolBar_delete".}


func init*(T: type QToolBar, h: ptr cQToolBar): QToolBar =
  T(h: h)
proc create*(T: type QToolBar, parent: gen_qwidget.QWidget): QToolBar =

  QToolBar.init(fcQToolBar_new(parent.h))
proc create*(T: type QToolBar, title: string): QToolBar =

  QToolBar.init(fcQToolBar_new2(struct_miqt_string(data: title, len: csize_t(len(title)))))
proc create*(T: type QToolBar, ): QToolBar =

  QToolBar.init(fcQToolBar_new3())
proc create*(T: type QToolBar, title: string, parent: gen_qwidget.QWidget): QToolBar =

  QToolBar.init(fcQToolBar_new4(struct_miqt_string(data: title, len: csize_t(len(title))), parent.h))
proc metaObject*(self: QToolBar, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQToolBar_metaObject(self.h))

proc metacast*(self: QToolBar, param1: cstring): pointer =

  fcQToolBar_metacast(self.h, param1)

proc metacall*(self: QToolBar, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQToolBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QToolBar, s: cstring): string =

  let v_ms = fcQToolBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QToolBar, s: cstring): string =

  let v_ms = fcQToolBar_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMovable*(self: QToolBar, movable: bool): void =

  fcQToolBar_setMovable(self.h, movable)

proc isMovable*(self: QToolBar, ): bool =

  fcQToolBar_isMovable(self.h)

proc setAllowedAreas*(self: QToolBar, areas: gen_qnamespace.ToolBarArea): void =

  fcQToolBar_setAllowedAreas(self.h, cint(areas))

proc allowedAreas*(self: QToolBar, ): gen_qnamespace.ToolBarArea =

  gen_qnamespace.ToolBarArea(fcQToolBar_allowedAreas(self.h))

proc isAreaAllowed*(self: QToolBar, area: gen_qnamespace.ToolBarArea): bool =

  fcQToolBar_isAreaAllowed(self.h, cint(area))

proc setOrientation*(self: QToolBar, orientation: gen_qnamespace.Orientation): void =

  fcQToolBar_setOrientation(self.h, cint(orientation))

proc orientation*(self: QToolBar, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQToolBar_orientation(self.h))

proc clear*(self: QToolBar, ): void =

  fcQToolBar_clear(self.h)

proc addAction*(self: QToolBar, text: string): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQToolBar_addAction(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addAction2*(self: QToolBar, icon: gen_qicon.QIcon, text: string): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQToolBar_addAction2(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addSeparator*(self: QToolBar, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQToolBar_addSeparator(self.h))

proc insertSeparator*(self: QToolBar, before: gen_qaction.QAction): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQToolBar_insertSeparator(self.h, before.h))

proc addWidget*(self: QToolBar, widget: gen_qwidget.QWidget): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQToolBar_addWidget(self.h, widget.h))

proc insertWidget*(self: QToolBar, before: gen_qaction.QAction, widget: gen_qwidget.QWidget): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQToolBar_insertWidget(self.h, before.h, widget.h))

proc actionGeometry*(self: QToolBar, action: gen_qaction.QAction): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQToolBar_actionGeometry(self.h, action.h))

proc actionAt*(self: QToolBar, p: gen_qpoint.QPoint): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQToolBar_actionAt(self.h, p.h))

proc actionAt2*(self: QToolBar, x: cint, y: cint): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQToolBar_actionAt2(self.h, x, y))

proc toggleViewAction*(self: QToolBar, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQToolBar_toggleViewAction(self.h))

proc iconSize*(self: QToolBar, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQToolBar_iconSize(self.h))

proc toolButtonStyle*(self: QToolBar, ): gen_qnamespace.ToolButtonStyle =

  gen_qnamespace.ToolButtonStyle(fcQToolBar_toolButtonStyle(self.h))

proc widgetForAction*(self: QToolBar, action: gen_qaction.QAction): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQToolBar_widgetForAction(self.h, action.h))

proc isFloatable*(self: QToolBar, ): bool =

  fcQToolBar_isFloatable(self.h)

proc setFloatable*(self: QToolBar, floatable: bool): void =

  fcQToolBar_setFloatable(self.h, floatable)

proc isFloating*(self: QToolBar, ): bool =

  fcQToolBar_isFloating(self.h)

proc setIconSize*(self: QToolBar, iconSize: gen_qsize.QSize): void =

  fcQToolBar_setIconSize(self.h, iconSize.h)

proc setToolButtonStyle*(self: QToolBar, toolButtonStyle: gen_qnamespace.ToolButtonStyle): void =

  fcQToolBar_setToolButtonStyle(self.h, cint(toolButtonStyle))

proc actionTriggered*(self: QToolBar, action: gen_qaction.QAction): void =

  fcQToolBar_actionTriggered(self.h, action.h)

proc miqt_exec_callback_QToolBar_actionTriggered(slot: int, action: pointer) {.exportc.} =
  type Cb = proc(action: gen_qaction.QAction)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaction.QAction(h: action)


  nimfunc[](slotval1)

proc onactionTriggered*(self: QToolBar, slot: proc(action: gen_qaction.QAction)) =
  type Cb = proc(action: gen_qaction.QAction)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQToolBar_connect_actionTriggered(self.h, cast[int](addr tmp[]))
proc movableChanged*(self: QToolBar, movable: bool): void =

  fcQToolBar_movableChanged(self.h, movable)

proc miqt_exec_callback_QToolBar_movableChanged(slot: int, movable: bool) {.exportc.} =
  type Cb = proc(movable: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = movable


  nimfunc[](slotval1)

proc onmovableChanged*(self: QToolBar, slot: proc(movable: bool)) =
  type Cb = proc(movable: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQToolBar_connect_movableChanged(self.h, cast[int](addr tmp[]))
proc allowedAreasChanged*(self: QToolBar, allowedAreas: gen_qnamespace.ToolBarArea): void =

  fcQToolBar_allowedAreasChanged(self.h, cint(allowedAreas))

proc miqt_exec_callback_QToolBar_allowedAreasChanged(slot: int, allowedAreas: cint) {.exportc.} =
  type Cb = proc(allowedAreas: gen_qnamespace.ToolBarArea)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.ToolBarArea(allowedAreas)


  nimfunc[](slotval1)

proc onallowedAreasChanged*(self: QToolBar, slot: proc(allowedAreas: gen_qnamespace.ToolBarArea)) =
  type Cb = proc(allowedAreas: gen_qnamespace.ToolBarArea)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQToolBar_connect_allowedAreasChanged(self.h, cast[int](addr tmp[]))
proc orientationChanged*(self: QToolBar, orientation: gen_qnamespace.Orientation): void =

  fcQToolBar_orientationChanged(self.h, cint(orientation))

proc miqt_exec_callback_QToolBar_orientationChanged(slot: int, orientation: cint) {.exportc.} =
  type Cb = proc(orientation: gen_qnamespace.Orientation)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.Orientation(orientation)


  nimfunc[](slotval1)

proc onorientationChanged*(self: QToolBar, slot: proc(orientation: gen_qnamespace.Orientation)) =
  type Cb = proc(orientation: gen_qnamespace.Orientation)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQToolBar_connect_orientationChanged(self.h, cast[int](addr tmp[]))
proc iconSizeChanged*(self: QToolBar, iconSize: gen_qsize.QSize): void =

  fcQToolBar_iconSizeChanged(self.h, iconSize.h)

proc miqt_exec_callback_QToolBar_iconSizeChanged(slot: int, iconSize: pointer) {.exportc.} =
  type Cb = proc(iconSize: gen_qsize.QSize)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsize.QSize(h: iconSize)


  nimfunc[](slotval1)

proc oniconSizeChanged*(self: QToolBar, slot: proc(iconSize: gen_qsize.QSize)) =
  type Cb = proc(iconSize: gen_qsize.QSize)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQToolBar_connect_iconSizeChanged(self.h, cast[int](addr tmp[]))
proc toolButtonStyleChanged*(self: QToolBar, toolButtonStyle: gen_qnamespace.ToolButtonStyle): void =

  fcQToolBar_toolButtonStyleChanged(self.h, cint(toolButtonStyle))

proc miqt_exec_callback_QToolBar_toolButtonStyleChanged(slot: int, toolButtonStyle: cint) {.exportc.} =
  type Cb = proc(toolButtonStyle: gen_qnamespace.ToolButtonStyle)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.ToolButtonStyle(toolButtonStyle)


  nimfunc[](slotval1)

proc ontoolButtonStyleChanged*(self: QToolBar, slot: proc(toolButtonStyle: gen_qnamespace.ToolButtonStyle)) =
  type Cb = proc(toolButtonStyle: gen_qnamespace.ToolButtonStyle)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQToolBar_connect_toolButtonStyleChanged(self.h, cast[int](addr tmp[]))
proc topLevelChanged*(self: QToolBar, topLevel: bool): void =

  fcQToolBar_topLevelChanged(self.h, topLevel)

proc miqt_exec_callback_QToolBar_topLevelChanged(slot: int, topLevel: bool) {.exportc.} =
  type Cb = proc(topLevel: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = topLevel


  nimfunc[](slotval1)

proc ontopLevelChanged*(self: QToolBar, slot: proc(topLevel: bool)) =
  type Cb = proc(topLevel: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQToolBar_connect_topLevelChanged(self.h, cast[int](addr tmp[]))
proc visibilityChanged*(self: QToolBar, visible: bool): void =

  fcQToolBar_visibilityChanged(self.h, visible)

proc miqt_exec_callback_QToolBar_visibilityChanged(slot: int, visible: bool) {.exportc.} =
  type Cb = proc(visible: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)

proc onvisibilityChanged*(self: QToolBar, slot: proc(visible: bool)) =
  type Cb = proc(visible: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQToolBar_connect_visibilityChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QToolBar, s: cstring, c: cstring): string =

  let v_ms = fcQToolBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QToolBar, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQToolBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QToolBar, s: cstring, c: cstring): string =

  let v_ms = fcQToolBar_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QToolBar, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQToolBar_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QToolBar, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQToolBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QToolBarmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QToolBar, slot: proc(super: QToolBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QToolBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_metacall(self: ptr cQToolBar, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QToolBar_metacall ".} =
  type Cb = proc(super: QToolBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QToolBar(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_actionEvent(self: QToolBar, event: gen_qevent.QActionEvent): void =


  fQToolBar_virtualbase_actionEvent(self.h, event.h)

type QToolBaractionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QToolBar, slot: proc(super: QToolBaractionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBaractionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_actionEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_actionEvent ".} =
  type Cb = proc(super: QToolBaractionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QToolBar, event: gen_qcoreevent.QEvent): void =


  fQToolBar_virtualbase_changeEvent(self.h, event.h)

type QToolBarchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QToolBar, slot: proc(super: QToolBarchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_changeEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_changeEvent ".} =
  type Cb = proc(super: QToolBarchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QToolBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QToolBar, event: gen_qevent.QPaintEvent): void =


  fQToolBar_virtualbase_paintEvent(self.h, event.h)

type QToolBarpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QToolBar, slot: proc(super: QToolBarpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_paintEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_paintEvent ".} =
  type Cb = proc(super: QToolBarpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QToolBar, event: gen_qcoreevent.QEvent): bool =


  fQToolBar_virtualbase_event(self.h, event.h)

type QToolBareventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QToolBar, slot: proc(super: QToolBareventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolBareventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_event(self: ptr cQToolBar, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QToolBar_event ".} =
  type Cb = proc(super: QToolBareventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QToolBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_devType(self: QToolBar, ): cint =


  fQToolBar_virtualbase_devType(self.h)

type QToolBardevTypeBase* = proc(): cint
proc ondevType*(self: QToolBar, slot: proc(super: QToolBardevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QToolBardevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_devType(self: ptr cQToolBar, slot: int): cint {.exportc: "miqt_exec_callback_QToolBar_devType ".} =
  type Cb = proc(super: QToolBardevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QToolBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QToolBar, visible: bool): void =


  fQToolBar_virtualbase_setVisible(self.h, visible)

type QToolBarsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QToolBar, slot: proc(super: QToolBarsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_setVisible(self: ptr cQToolBar, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QToolBar_setVisible ".} =
  type Cb = proc(super: QToolBarsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QToolBar(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QToolBar, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQToolBar_virtualbase_sizeHint(self.h))

type QToolBarsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QToolBar, slot: proc(super: QToolBarsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QToolBarsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_sizeHint(self: ptr cQToolBar, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBar_sizeHint ".} =
  type Cb = proc(super: QToolBarsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QToolBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QToolBar, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQToolBar_virtualbase_minimumSizeHint(self.h))

type QToolBarminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QToolBar, slot: proc(super: QToolBarminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QToolBarminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_minimumSizeHint(self: ptr cQToolBar, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBar_minimumSizeHint ".} =
  type Cb = proc(super: QToolBarminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QToolBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QToolBar, param1: cint): cint =


  fQToolBar_virtualbase_heightForWidth(self.h, param1)

type QToolBarheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QToolBar, slot: proc(super: QToolBarheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QToolBarheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_heightForWidth(self: ptr cQToolBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QToolBar_heightForWidth ".} =
  type Cb = proc(super: QToolBarheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QToolBar(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QToolBar, ): bool =


  fQToolBar_virtualbase_hasHeightForWidth(self.h)

type QToolBarhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QToolBar, slot: proc(super: QToolBarhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolBarhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_hasHeightForWidth(self: ptr cQToolBar, slot: int): bool {.exportc: "miqt_exec_callback_QToolBar_hasHeightForWidth ".} =
  type Cb = proc(super: QToolBarhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QToolBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QToolBar, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQToolBar_virtualbase_paintEngine(self.h))

type QToolBarpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QToolBar, slot: proc(super: QToolBarpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QToolBarpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_paintEngine(self: ptr cQToolBar, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBar_paintEngine ".} =
  type Cb = proc(super: QToolBarpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QToolBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QToolBar, event: gen_qevent.QMouseEvent): void =


  fQToolBar_virtualbase_mousePressEvent(self.h, event.h)

type QToolBarmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QToolBar, slot: proc(super: QToolBarmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_mousePressEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_mousePressEvent ".} =
  type Cb = proc(super: QToolBarmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QToolBar, event: gen_qevent.QMouseEvent): void =


  fQToolBar_virtualbase_mouseReleaseEvent(self.h, event.h)

type QToolBarmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QToolBar, slot: proc(super: QToolBarmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_mouseReleaseEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_mouseReleaseEvent ".} =
  type Cb = proc(super: QToolBarmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QToolBar, event: gen_qevent.QMouseEvent): void =


  fQToolBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QToolBarmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QToolBar, slot: proc(super: QToolBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_mouseDoubleClickEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QToolBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QToolBar, event: gen_qevent.QMouseEvent): void =


  fQToolBar_virtualbase_mouseMoveEvent(self.h, event.h)

type QToolBarmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QToolBar, slot: proc(super: QToolBarmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_mouseMoveEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_mouseMoveEvent ".} =
  type Cb = proc(super: QToolBarmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QToolBar, event: gen_qevent.QWheelEvent): void =


  fQToolBar_virtualbase_wheelEvent(self.h, event.h)

type QToolBarwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QToolBar, slot: proc(super: QToolBarwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_wheelEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_wheelEvent ".} =
  type Cb = proc(super: QToolBarwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QToolBar, event: gen_qevent.QKeyEvent): void =


  fQToolBar_virtualbase_keyPressEvent(self.h, event.h)

type QToolBarkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QToolBar, slot: proc(super: QToolBarkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_keyPressEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_keyPressEvent ".} =
  type Cb = proc(super: QToolBarkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QToolBar, event: gen_qevent.QKeyEvent): void =


  fQToolBar_virtualbase_keyReleaseEvent(self.h, event.h)

type QToolBarkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QToolBar, slot: proc(super: QToolBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_keyReleaseEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_keyReleaseEvent ".} =
  type Cb = proc(super: QToolBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QToolBar, event: gen_qevent.QFocusEvent): void =


  fQToolBar_virtualbase_focusInEvent(self.h, event.h)

type QToolBarfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QToolBar, slot: proc(super: QToolBarfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_focusInEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_focusInEvent ".} =
  type Cb = proc(super: QToolBarfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QToolBar, event: gen_qevent.QFocusEvent): void =


  fQToolBar_virtualbase_focusOutEvent(self.h, event.h)

type QToolBarfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QToolBar, slot: proc(super: QToolBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_focusOutEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_focusOutEvent ".} =
  type Cb = proc(super: QToolBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QToolBar, event: gen_qcoreevent.QEvent): void =


  fQToolBar_virtualbase_enterEvent(self.h, event.h)

type QToolBarenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QToolBar, slot: proc(super: QToolBarenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_enterEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_enterEvent ".} =
  type Cb = proc(super: QToolBarenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QToolBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QToolBar, event: gen_qcoreevent.QEvent): void =


  fQToolBar_virtualbase_leaveEvent(self.h, event.h)

type QToolBarleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QToolBar, slot: proc(super: QToolBarleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_leaveEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_leaveEvent ".} =
  type Cb = proc(super: QToolBarleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QToolBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QToolBar, event: gen_qevent.QMoveEvent): void =


  fQToolBar_virtualbase_moveEvent(self.h, event.h)

type QToolBarmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QToolBar, slot: proc(super: QToolBarmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_moveEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_moveEvent ".} =
  type Cb = proc(super: QToolBarmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QToolBar, event: gen_qevent.QResizeEvent): void =


  fQToolBar_virtualbase_resizeEvent(self.h, event.h)

type QToolBarresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QToolBar, slot: proc(super: QToolBarresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_resizeEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_resizeEvent ".} =
  type Cb = proc(super: QToolBarresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QToolBar, event: gen_qevent.QCloseEvent): void =


  fQToolBar_virtualbase_closeEvent(self.h, event.h)

type QToolBarcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QToolBar, slot: proc(super: QToolBarcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_closeEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_closeEvent ".} =
  type Cb = proc(super: QToolBarcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QToolBar, event: gen_qevent.QContextMenuEvent): void =


  fQToolBar_virtualbase_contextMenuEvent(self.h, event.h)

type QToolBarcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QToolBar, slot: proc(super: QToolBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_contextMenuEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_contextMenuEvent ".} =
  type Cb = proc(super: QToolBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QToolBar, event: gen_qevent.QTabletEvent): void =


  fQToolBar_virtualbase_tabletEvent(self.h, event.h)

type QToolBartabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QToolBar, slot: proc(super: QToolBartabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBartabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_tabletEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_tabletEvent ".} =
  type Cb = proc(super: QToolBartabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QToolBar, event: gen_qevent.QDragEnterEvent): void =


  fQToolBar_virtualbase_dragEnterEvent(self.h, event.h)

type QToolBardragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QToolBar, slot: proc(super: QToolBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_dragEnterEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_dragEnterEvent ".} =
  type Cb = proc(super: QToolBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QToolBar, event: gen_qevent.QDragMoveEvent): void =


  fQToolBar_virtualbase_dragMoveEvent(self.h, event.h)

type QToolBardragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QToolBar, slot: proc(super: QToolBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_dragMoveEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_dragMoveEvent ".} =
  type Cb = proc(super: QToolBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QToolBar, event: gen_qevent.QDragLeaveEvent): void =


  fQToolBar_virtualbase_dragLeaveEvent(self.h, event.h)

type QToolBardragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QToolBar, slot: proc(super: QToolBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_dragLeaveEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_dragLeaveEvent ".} =
  type Cb = proc(super: QToolBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QToolBar, event: gen_qevent.QDropEvent): void =


  fQToolBar_virtualbase_dropEvent(self.h, event.h)

type QToolBardropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QToolBar, slot: proc(super: QToolBardropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBardropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_dropEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_dropEvent ".} =
  type Cb = proc(super: QToolBardropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QToolBar, event: gen_qevent.QShowEvent): void =


  fQToolBar_virtualbase_showEvent(self.h, event.h)

type QToolBarshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QToolBar, slot: proc(super: QToolBarshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_showEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_showEvent ".} =
  type Cb = proc(super: QToolBarshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QToolBar, event: gen_qevent.QHideEvent): void =


  fQToolBar_virtualbase_hideEvent(self.h, event.h)

type QToolBarhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QToolBar, slot: proc(super: QToolBarhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_hideEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_hideEvent ".} =
  type Cb = proc(super: QToolBarhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QToolBar(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QToolBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQToolBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QToolBarnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QToolBar, slot: proc(super: QToolBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_nativeEvent(self: ptr cQToolBar, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QToolBar_nativeEvent ".} =
  type Cb = proc(super: QToolBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QToolBar(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QToolBar, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQToolBar_virtualbase_metric(self.h, cint(param1))

type QToolBarmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QToolBar, slot: proc(super: QToolBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QToolBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_metric(self: ptr cQToolBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QToolBar_metric ".} =
  type Cb = proc(super: QToolBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QToolBar(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QToolBar, painter: gen_qpainter.QPainter): void =


  fQToolBar_virtualbase_initPainter(self.h, painter.h)

type QToolBarinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QToolBar, slot: proc(super: QToolBarinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_initPainter(self: ptr cQToolBar, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QToolBar_initPainter ".} =
  type Cb = proc(super: QToolBarinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QToolBar(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QToolBar, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQToolBar_virtualbase_redirected(self.h, offset.h))

type QToolBarredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QToolBar, slot: proc(super: QToolBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QToolBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_redirected(self: ptr cQToolBar, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QToolBar_redirected ".} =
  type Cb = proc(super: QToolBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QToolBar(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QToolBar, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQToolBar_virtualbase_sharedPainter(self.h))

type QToolBarsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QToolBar, slot: proc(super: QToolBarsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QToolBarsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_sharedPainter(self: ptr cQToolBar, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBar_sharedPainter ".} =
  type Cb = proc(super: QToolBarsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QToolBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QToolBar, param1: gen_qevent.QInputMethodEvent): void =


  fQToolBar_virtualbase_inputMethodEvent(self.h, param1.h)

type QToolBarinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QToolBar, slot: proc(super: QToolBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_inputMethodEvent(self: ptr cQToolBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolBar_inputMethodEvent ".} =
  type Cb = proc(super: QToolBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QToolBar(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QToolBar, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQToolBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QToolBarinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QToolBar, slot: proc(super: QToolBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QToolBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_inputMethodQuery(self: ptr cQToolBar, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QToolBar_inputMethodQuery ".} =
  type Cb = proc(super: QToolBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QToolBar(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QToolBar, next: bool): bool =


  fQToolBar_virtualbase_focusNextPrevChild(self.h, next)

type QToolBarfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QToolBar, slot: proc(super: QToolBarfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolBarfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_focusNextPrevChild(self: ptr cQToolBar, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QToolBar_focusNextPrevChild ".} =
  type Cb = proc(super: QToolBarfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QToolBar(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QToolBar, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQToolBar_virtualbase_eventFilter(self.h, watched.h, event.h)

type QToolBareventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QToolBar, slot: proc(super: QToolBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_eventFilter(self: ptr cQToolBar, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QToolBar_eventFilter ".} =
  type Cb = proc(super: QToolBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QToolBar(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QToolBar, event: gen_qcoreevent.QTimerEvent): void =


  fQToolBar_virtualbase_timerEvent(self.h, event.h)

type QToolBartimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QToolBar, slot: proc(super: QToolBartimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBartimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_timerEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_timerEvent ".} =
  type Cb = proc(super: QToolBartimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QToolBar(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QToolBar, event: gen_qcoreevent.QChildEvent): void =


  fQToolBar_virtualbase_childEvent(self.h, event.h)

type QToolBarchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QToolBar, slot: proc(super: QToolBarchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_childEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_childEvent ".} =
  type Cb = proc(super: QToolBarchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QToolBar(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QToolBar, event: gen_qcoreevent.QEvent): void =


  fQToolBar_virtualbase_customEvent(self.h, event.h)

type QToolBarcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QToolBar, slot: proc(super: QToolBarcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_customEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_customEvent ".} =
  type Cb = proc(super: QToolBarcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QToolBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QToolBar, signal: gen_qmetaobject.QMetaMethod): void =


  fQToolBar_virtualbase_connectNotify(self.h, signal.h)

type QToolBarconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QToolBar, slot: proc(super: QToolBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_connectNotify(self: ptr cQToolBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QToolBar_connectNotify ".} =
  type Cb = proc(super: QToolBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QToolBar(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QToolBar, signal: gen_qmetaobject.QMetaMethod): void =


  fQToolBar_virtualbase_disconnectNotify(self.h, signal.h)

type QToolBardisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QToolBar, slot: proc(super: QToolBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_disconnectNotify(self: ptr cQToolBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QToolBar_disconnectNotify ".} =
  type Cb = proc(super: QToolBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QToolBar(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QToolBar) =
  fcQToolBar_delete(self.h)
