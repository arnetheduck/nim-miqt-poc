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
{.compile("gen_qdockwidget.cpp", cflags).}


type QDockWidgetDockWidgetFeature* = cint
const
  QDockWidgetDockWidgetClosable* = 1
  QDockWidgetDockWidgetMovable* = 2
  QDockWidgetDockWidgetFloatable* = 4
  QDockWidgetDockWidgetVerticalTitleBar* = 8
  QDockWidgetDockWidgetFeatureMask* = 15
  QDockWidgetAllDockWidgetFeatures* = 7
  QDockWidgetNoDockWidgetFeatures* = 0
  QDockWidgetReserved* = 255



import gen_qdockwidget_types
export gen_qdockwidget_types

import
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQDockWidget*{.exportc: "QDockWidget", incompleteStruct.} = object

proc fcQDockWidget_new(parent: pointer): ptr cQDockWidget {.importc: "QDockWidget_new".}
proc fcQDockWidget_new2(title: struct_miqt_string): ptr cQDockWidget {.importc: "QDockWidget_new2".}
proc fcQDockWidget_new3(): ptr cQDockWidget {.importc: "QDockWidget_new3".}
proc fcQDockWidget_new4(title: struct_miqt_string, parent: pointer): ptr cQDockWidget {.importc: "QDockWidget_new4".}
proc fcQDockWidget_new5(title: struct_miqt_string, parent: pointer, flags: cint): ptr cQDockWidget {.importc: "QDockWidget_new5".}
proc fcQDockWidget_new6(parent: pointer, flags: cint): ptr cQDockWidget {.importc: "QDockWidget_new6".}
proc fcQDockWidget_metaObject(self: pointer, ): pointer {.importc: "QDockWidget_metaObject".}
proc fcQDockWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QDockWidget_metacast".}
proc fcQDockWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDockWidget_metacall".}
proc fcQDockWidget_tr(s: cstring): struct_miqt_string {.importc: "QDockWidget_tr".}
proc fcQDockWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QDockWidget_trUtf8".}
proc fcQDockWidget_widget(self: pointer, ): pointer {.importc: "QDockWidget_widget".}
proc fcQDockWidget_setWidget(self: pointer, widget: pointer): void {.importc: "QDockWidget_setWidget".}
proc fcQDockWidget_setFeatures(self: pointer, features: cint): void {.importc: "QDockWidget_setFeatures".}
proc fcQDockWidget_features(self: pointer, ): cint {.importc: "QDockWidget_features".}
proc fcQDockWidget_setFloating(self: pointer, floating: bool): void {.importc: "QDockWidget_setFloating".}
proc fcQDockWidget_isFloating(self: pointer, ): bool {.importc: "QDockWidget_isFloating".}
proc fcQDockWidget_setAllowedAreas(self: pointer, areas: cint): void {.importc: "QDockWidget_setAllowedAreas".}
proc fcQDockWidget_allowedAreas(self: pointer, ): cint {.importc: "QDockWidget_allowedAreas".}
proc fcQDockWidget_setTitleBarWidget(self: pointer, widget: pointer): void {.importc: "QDockWidget_setTitleBarWidget".}
proc fcQDockWidget_titleBarWidget(self: pointer, ): pointer {.importc: "QDockWidget_titleBarWidget".}
proc fcQDockWidget_isAreaAllowed(self: pointer, area: cint): bool {.importc: "QDockWidget_isAreaAllowed".}
proc fcQDockWidget_toggleViewAction(self: pointer, ): pointer {.importc: "QDockWidget_toggleViewAction".}
proc fcQDockWidget_featuresChanged(self: pointer, features: cint): void {.importc: "QDockWidget_featuresChanged".}
proc fQDockWidget_connect_featuresChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_featuresChanged".}
proc fcQDockWidget_topLevelChanged(self: pointer, topLevel: bool): void {.importc: "QDockWidget_topLevelChanged".}
proc fQDockWidget_connect_topLevelChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_topLevelChanged".}
proc fcQDockWidget_allowedAreasChanged(self: pointer, allowedAreas: cint): void {.importc: "QDockWidget_allowedAreasChanged".}
proc fQDockWidget_connect_allowedAreasChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_allowedAreasChanged".}
proc fcQDockWidget_visibilityChanged(self: pointer, visible: bool): void {.importc: "QDockWidget_visibilityChanged".}
proc fQDockWidget_connect_visibilityChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_visibilityChanged".}
proc fcQDockWidget_dockLocationChanged(self: pointer, area: cint): void {.importc: "QDockWidget_dockLocationChanged".}
proc fQDockWidget_connect_dockLocationChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_dockLocationChanged".}
proc fcQDockWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDockWidget_tr2".}
proc fcQDockWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDockWidget_tr3".}
proc fcQDockWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDockWidget_trUtf82".}
proc fcQDockWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDockWidget_trUtf83".}
proc fQDockWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QDockWidget_virtualbase_metaObject".}
proc fcQDockWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_metaObject".}
proc fQDockWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QDockWidget_virtualbase_metacast".}
proc fcQDockWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_metacast".}
proc fQDockWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDockWidget_virtualbase_metacall".}
proc fcQDockWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_metacall".}
proc fQDockWidget_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_changeEvent".}
proc fcQDockWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_changeEvent".}
proc fQDockWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_closeEvent".}
proc fcQDockWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_closeEvent".}
proc fQDockWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_paintEvent".}
proc fcQDockWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_paintEvent".}
proc fQDockWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDockWidget_virtualbase_event".}
proc fcQDockWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_event".}
proc fQDockWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QDockWidget_virtualbase_devType".}
proc fcQDockWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_devType".}
proc fQDockWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDockWidget_virtualbase_setVisible".}
proc fcQDockWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_setVisible".}
proc fQDockWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDockWidget_virtualbase_sizeHint".}
proc fcQDockWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_sizeHint".}
proc fQDockWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDockWidget_virtualbase_minimumSizeHint".}
proc fcQDockWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_minimumSizeHint".}
proc fQDockWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDockWidget_virtualbase_heightForWidth".}
proc fcQDockWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_heightForWidth".}
proc fQDockWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDockWidget_virtualbase_hasHeightForWidth".}
proc fcQDockWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_hasHeightForWidth".}
proc fQDockWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDockWidget_virtualbase_paintEngine".}
proc fcQDockWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_paintEngine".}
proc fQDockWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_mousePressEvent".}
proc fcQDockWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_mousePressEvent".}
proc fQDockWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_mouseReleaseEvent".}
proc fcQDockWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_mouseReleaseEvent".}
proc fQDockWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQDockWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_mouseDoubleClickEvent".}
proc fQDockWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_mouseMoveEvent".}
proc fcQDockWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_mouseMoveEvent".}
proc fQDockWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_wheelEvent".}
proc fcQDockWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_wheelEvent".}
proc fQDockWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_keyPressEvent".}
proc fcQDockWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_keyPressEvent".}
proc fQDockWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_keyReleaseEvent".}
proc fcQDockWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_keyReleaseEvent".}
proc fQDockWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_focusInEvent".}
proc fcQDockWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_focusInEvent".}
proc fQDockWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_focusOutEvent".}
proc fcQDockWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_focusOutEvent".}
proc fQDockWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_enterEvent".}
proc fcQDockWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_enterEvent".}
proc fQDockWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_leaveEvent".}
proc fcQDockWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_leaveEvent".}
proc fQDockWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_moveEvent".}
proc fcQDockWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_moveEvent".}
proc fQDockWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_resizeEvent".}
proc fcQDockWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_resizeEvent".}
proc fQDockWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_contextMenuEvent".}
proc fcQDockWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_contextMenuEvent".}
proc fQDockWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_tabletEvent".}
proc fcQDockWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_tabletEvent".}
proc fQDockWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_actionEvent".}
proc fcQDockWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_actionEvent".}
proc fQDockWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_dragEnterEvent".}
proc fcQDockWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_dragEnterEvent".}
proc fQDockWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_dragMoveEvent".}
proc fcQDockWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_dragMoveEvent".}
proc fQDockWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_dragLeaveEvent".}
proc fcQDockWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_dragLeaveEvent".}
proc fQDockWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_dropEvent".}
proc fcQDockWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_dropEvent".}
proc fQDockWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_showEvent".}
proc fcQDockWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_showEvent".}
proc fQDockWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_hideEvent".}
proc fcQDockWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_hideEvent".}
proc fQDockWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QDockWidget_virtualbase_nativeEvent".}
proc fcQDockWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_nativeEvent".}
proc fQDockWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDockWidget_virtualbase_metric".}
proc fcQDockWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_metric".}
proc fQDockWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDockWidget_virtualbase_initPainter".}
proc fcQDockWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_initPainter".}
proc fQDockWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDockWidget_virtualbase_redirected".}
proc fcQDockWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_redirected".}
proc fQDockWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDockWidget_virtualbase_sharedPainter".}
proc fcQDockWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_sharedPainter".}
proc fQDockWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDockWidget_virtualbase_inputMethodEvent".}
proc fcQDockWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_inputMethodEvent".}
proc fQDockWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDockWidget_virtualbase_inputMethodQuery".}
proc fcQDockWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_inputMethodQuery".}
proc fQDockWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDockWidget_virtualbase_focusNextPrevChild".}
proc fcQDockWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_focusNextPrevChild".}
proc fQDockWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDockWidget_virtualbase_eventFilter".}
proc fcQDockWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_eventFilter".}
proc fQDockWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_timerEvent".}
proc fcQDockWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_timerEvent".}
proc fQDockWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_childEvent".}
proc fcQDockWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_childEvent".}
proc fQDockWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_customEvent".}
proc fcQDockWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_customEvent".}
proc fQDockWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDockWidget_virtualbase_connectNotify".}
proc fcQDockWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_connectNotify".}
proc fQDockWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDockWidget_virtualbase_disconnectNotify".}
proc fcQDockWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_disconnectNotify".}
proc fcQDockWidget_staticMetaObject(): pointer {.importc: "QDockWidget_staticMetaObject".}
proc fcQDockWidget_delete(self: pointer) {.importc: "QDockWidget_delete".}


func init*(T: type QDockWidget, h: ptr cQDockWidget): QDockWidget =
  T(h: h)
proc create*(T: type QDockWidget, parent: gen_qwidget.QWidget): QDockWidget =

  QDockWidget.init(fcQDockWidget_new(parent.h))
proc create*(T: type QDockWidget, title: string): QDockWidget =

  QDockWidget.init(fcQDockWidget_new2(struct_miqt_string(data: title, len: csize_t(len(title)))))
proc create*(T: type QDockWidget, ): QDockWidget =

  QDockWidget.init(fcQDockWidget_new3())
proc create*(T: type QDockWidget, title: string, parent: gen_qwidget.QWidget): QDockWidget =

  QDockWidget.init(fcQDockWidget_new4(struct_miqt_string(data: title, len: csize_t(len(title))), parent.h))
proc create*(T: type QDockWidget, title: string, parent: gen_qwidget.QWidget, flags: gen_qnamespace.WindowType): QDockWidget =

  QDockWidget.init(fcQDockWidget_new5(struct_miqt_string(data: title, len: csize_t(len(title))), parent.h, cint(flags)))
proc create*(T: type QDockWidget, parent: gen_qwidget.QWidget, flags: gen_qnamespace.WindowType): QDockWidget =

  QDockWidget.init(fcQDockWidget_new6(parent.h, cint(flags)))
proc metaObject*(self: QDockWidget, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDockWidget_metaObject(self.h))

proc metacast*(self: QDockWidget, param1: cstring): pointer =

  fcQDockWidget_metacast(self.h, param1)

proc metacall*(self: QDockWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDockWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDockWidget, s: cstring): string =

  let v_ms = fcQDockWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QDockWidget, s: cstring): string =

  let v_ms = fcQDockWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc widget*(self: QDockWidget, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQDockWidget_widget(self.h))

proc setWidget*(self: QDockWidget, widget: gen_qwidget.QWidget): void =

  fcQDockWidget_setWidget(self.h, widget.h)

proc setFeatures*(self: QDockWidget, features: QDockWidgetDockWidgetFeature): void =

  fcQDockWidget_setFeatures(self.h, cint(features))

proc features*(self: QDockWidget, ): QDockWidgetDockWidgetFeature =

  QDockWidgetDockWidgetFeature(fcQDockWidget_features(self.h))

proc setFloating*(self: QDockWidget, floating: bool): void =

  fcQDockWidget_setFloating(self.h, floating)

proc isFloating*(self: QDockWidget, ): bool =

  fcQDockWidget_isFloating(self.h)

proc setAllowedAreas*(self: QDockWidget, areas: gen_qnamespace.DockWidgetArea): void =

  fcQDockWidget_setAllowedAreas(self.h, cint(areas))

proc allowedAreas*(self: QDockWidget, ): gen_qnamespace.DockWidgetArea =

  gen_qnamespace.DockWidgetArea(fcQDockWidget_allowedAreas(self.h))

proc setTitleBarWidget*(self: QDockWidget, widget: gen_qwidget.QWidget): void =

  fcQDockWidget_setTitleBarWidget(self.h, widget.h)

proc titleBarWidget*(self: QDockWidget, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQDockWidget_titleBarWidget(self.h))

proc isAreaAllowed*(self: QDockWidget, area: gen_qnamespace.DockWidgetArea): bool =

  fcQDockWidget_isAreaAllowed(self.h, cint(area))

proc toggleViewAction*(self: QDockWidget, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQDockWidget_toggleViewAction(self.h))

proc featuresChanged*(self: QDockWidget, features: QDockWidgetDockWidgetFeature): void =

  fcQDockWidget_featuresChanged(self.h, cint(features))

proc miqt_exec_callback_QDockWidget_featuresChanged(slot: int, features: cint) {.exportc.} =
  type Cb = proc(features: QDockWidgetDockWidgetFeature)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QDockWidgetDockWidgetFeature(features)


  nimfunc[](slotval1)

proc onfeaturesChanged*(self: QDockWidget, slot: proc(features: QDockWidgetDockWidgetFeature)) =
  type Cb = proc(features: QDockWidgetDockWidgetFeature)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDockWidget_connect_featuresChanged(self.h, cast[int](addr tmp[]))
proc topLevelChanged*(self: QDockWidget, topLevel: bool): void =

  fcQDockWidget_topLevelChanged(self.h, topLevel)

proc miqt_exec_callback_QDockWidget_topLevelChanged(slot: int, topLevel: bool) {.exportc.} =
  type Cb = proc(topLevel: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = topLevel


  nimfunc[](slotval1)

proc ontopLevelChanged*(self: QDockWidget, slot: proc(topLevel: bool)) =
  type Cb = proc(topLevel: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDockWidget_connect_topLevelChanged(self.h, cast[int](addr tmp[]))
proc allowedAreasChanged*(self: QDockWidget, allowedAreas: gen_qnamespace.DockWidgetArea): void =

  fcQDockWidget_allowedAreasChanged(self.h, cint(allowedAreas))

proc miqt_exec_callback_QDockWidget_allowedAreasChanged(slot: int, allowedAreas: cint) {.exportc.} =
  type Cb = proc(allowedAreas: gen_qnamespace.DockWidgetArea)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.DockWidgetArea(allowedAreas)


  nimfunc[](slotval1)

proc onallowedAreasChanged*(self: QDockWidget, slot: proc(allowedAreas: gen_qnamespace.DockWidgetArea)) =
  type Cb = proc(allowedAreas: gen_qnamespace.DockWidgetArea)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDockWidget_connect_allowedAreasChanged(self.h, cast[int](addr tmp[]))
proc visibilityChanged*(self: QDockWidget, visible: bool): void =

  fcQDockWidget_visibilityChanged(self.h, visible)

proc miqt_exec_callback_QDockWidget_visibilityChanged(slot: int, visible: bool) {.exportc.} =
  type Cb = proc(visible: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)

proc onvisibilityChanged*(self: QDockWidget, slot: proc(visible: bool)) =
  type Cb = proc(visible: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDockWidget_connect_visibilityChanged(self.h, cast[int](addr tmp[]))
proc dockLocationChanged*(self: QDockWidget, area: gen_qnamespace.DockWidgetArea): void =

  fcQDockWidget_dockLocationChanged(self.h, cint(area))

proc miqt_exec_callback_QDockWidget_dockLocationChanged(slot: int, area: cint) {.exportc.} =
  type Cb = proc(area: gen_qnamespace.DockWidgetArea)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.DockWidgetArea(area)


  nimfunc[](slotval1)

proc ondockLocationChanged*(self: QDockWidget, slot: proc(area: gen_qnamespace.DockWidgetArea)) =
  type Cb = proc(area: gen_qnamespace.DockWidgetArea)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDockWidget_connect_dockLocationChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QDockWidget, s: cstring, c: cstring): string =

  let v_ms = fcQDockWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDockWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDockWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QDockWidget, s: cstring, c: cstring): string =

  let v_ms = fcQDockWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QDockWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDockWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QDockWidget, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQDockWidget_virtualbase_metaObject(self.h))

type QDockWidgetmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QDockWidget, slot: proc(super: QDockWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_metaObject(self: ptr cQDockWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDockWidget_metaObject ".} =
  type Cb = proc(super: QDockWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QDockWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QDockWidget, param1: cstring): pointer =


  fQDockWidget_virtualbase_metacast(self.h, param1)

type QDockWidgetmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QDockWidget, slot: proc(super: QDockWidgetmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_metacast(self: ptr cQDockWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QDockWidget_metacast ".} =
  type Cb = proc(super: QDockWidgetmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QDockWidget(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QDockWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDockWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDockWidgetmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDockWidget, slot: proc(super: QDockWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_metacall(self: ptr cQDockWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDockWidget_metacall ".} =
  type Cb = proc(super: QDockWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDockWidget(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QDockWidget, event: gen_qcoreevent.QEvent): void =


  fQDockWidget_virtualbase_changeEvent(self.h, event.h)

type QDockWidgetchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QDockWidget, slot: proc(super: QDockWidgetchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_changeEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_changeEvent ".} =
  type Cb = proc(super: QDockWidgetchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QDockWidget, event: gen_qevent.QCloseEvent): void =


  fQDockWidget_virtualbase_closeEvent(self.h, event.h)

type QDockWidgetcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QDockWidget, slot: proc(super: QDockWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_closeEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_closeEvent ".} =
  type Cb = proc(super: QDockWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QDockWidget, event: gen_qevent.QPaintEvent): void =


  fQDockWidget_virtualbase_paintEvent(self.h, event.h)

type QDockWidgetpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QDockWidget, slot: proc(super: QDockWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_paintEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_paintEvent ".} =
  type Cb = proc(super: QDockWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QDockWidget, event: gen_qcoreevent.QEvent): bool =


  fQDockWidget_virtualbase_event(self.h, event.h)

type QDockWidgeteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDockWidget, slot: proc(super: QDockWidgeteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_event(self: ptr cQDockWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDockWidget_event ".} =
  type Cb = proc(super: QDockWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDockWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_devType(self: QDockWidget, ): cint =


  fQDockWidget_virtualbase_devType(self.h)

type QDockWidgetdevTypeBase* = proc(): cint
proc ondevType*(self: QDockWidget, slot: proc(super: QDockWidgetdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_devType(self: ptr cQDockWidget, slot: int): cint {.exportc: "miqt_exec_callback_QDockWidget_devType ".} =
  type Cb = proc(super: QDockWidgetdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QDockWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QDockWidget, visible: bool): void =


  fQDockWidget_virtualbase_setVisible(self.h, visible)

type QDockWidgetsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QDockWidget, slot: proc(super: QDockWidgetsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_setVisible(self: ptr cQDockWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDockWidget_setVisible ".} =
  type Cb = proc(super: QDockWidgetsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QDockWidget(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QDockWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDockWidget_virtualbase_sizeHint(self.h))

type QDockWidgetsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QDockWidget, slot: proc(super: QDockWidgetsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_sizeHint(self: ptr cQDockWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDockWidget_sizeHint ".} =
  type Cb = proc(super: QDockWidgetsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QDockWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QDockWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDockWidget_virtualbase_minimumSizeHint(self.h))

type QDockWidgetminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QDockWidget, slot: proc(super: QDockWidgetminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_minimumSizeHint(self: ptr cQDockWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDockWidget_minimumSizeHint ".} =
  type Cb = proc(super: QDockWidgetminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QDockWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QDockWidget, param1: cint): cint =


  fQDockWidget_virtualbase_heightForWidth(self.h, param1)

type QDockWidgetheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QDockWidget, slot: proc(super: QDockWidgetheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_heightForWidth(self: ptr cQDockWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDockWidget_heightForWidth ".} =
  type Cb = proc(super: QDockWidgetheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QDockWidget(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QDockWidget, ): bool =


  fQDockWidget_virtualbase_hasHeightForWidth(self.h)

type QDockWidgethasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QDockWidget, slot: proc(super: QDockWidgethasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgethasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_hasHeightForWidth(self: ptr cQDockWidget, slot: int): bool {.exportc: "miqt_exec_callback_QDockWidget_hasHeightForWidth ".} =
  type Cb = proc(super: QDockWidgethasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QDockWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QDockWidget, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQDockWidget_virtualbase_paintEngine(self.h))

type QDockWidgetpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QDockWidget, slot: proc(super: QDockWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_paintEngine(self: ptr cQDockWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDockWidget_paintEngine ".} =
  type Cb = proc(super: QDockWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QDockWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QDockWidget, event: gen_qevent.QMouseEvent): void =


  fQDockWidget_virtualbase_mousePressEvent(self.h, event.h)

type QDockWidgetmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QDockWidget, slot: proc(super: QDockWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_mousePressEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_mousePressEvent ".} =
  type Cb = proc(super: QDockWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QDockWidget, event: gen_qevent.QMouseEvent): void =


  fQDockWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QDockWidgetmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QDockWidget, slot: proc(super: QDockWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_mouseReleaseEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_mouseReleaseEvent ".} =
  type Cb = proc(super: QDockWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QDockWidget, event: gen_qevent.QMouseEvent): void =


  fQDockWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDockWidgetmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QDockWidget, slot: proc(super: QDockWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_mouseDoubleClickEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QDockWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QDockWidget, event: gen_qevent.QMouseEvent): void =


  fQDockWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QDockWidgetmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QDockWidget, slot: proc(super: QDockWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_mouseMoveEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_mouseMoveEvent ".} =
  type Cb = proc(super: QDockWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QDockWidget, event: gen_qevent.QWheelEvent): void =


  fQDockWidget_virtualbase_wheelEvent(self.h, event.h)

type QDockWidgetwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QDockWidget, slot: proc(super: QDockWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_wheelEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_wheelEvent ".} =
  type Cb = proc(super: QDockWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QDockWidget, event: gen_qevent.QKeyEvent): void =


  fQDockWidget_virtualbase_keyPressEvent(self.h, event.h)

type QDockWidgetkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QDockWidget, slot: proc(super: QDockWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_keyPressEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_keyPressEvent ".} =
  type Cb = proc(super: QDockWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QDockWidget, event: gen_qevent.QKeyEvent): void =


  fQDockWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QDockWidgetkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QDockWidget, slot: proc(super: QDockWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_keyReleaseEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_keyReleaseEvent ".} =
  type Cb = proc(super: QDockWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QDockWidget, event: gen_qevent.QFocusEvent): void =


  fQDockWidget_virtualbase_focusInEvent(self.h, event.h)

type QDockWidgetfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QDockWidget, slot: proc(super: QDockWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_focusInEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_focusInEvent ".} =
  type Cb = proc(super: QDockWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QDockWidget, event: gen_qevent.QFocusEvent): void =


  fQDockWidget_virtualbase_focusOutEvent(self.h, event.h)

type QDockWidgetfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QDockWidget, slot: proc(super: QDockWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_focusOutEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_focusOutEvent ".} =
  type Cb = proc(super: QDockWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QDockWidget, event: gen_qcoreevent.QEvent): void =


  fQDockWidget_virtualbase_enterEvent(self.h, event.h)

type QDockWidgetenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QDockWidget, slot: proc(super: QDockWidgetenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_enterEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_enterEvent ".} =
  type Cb = proc(super: QDockWidgetenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QDockWidget, event: gen_qcoreevent.QEvent): void =


  fQDockWidget_virtualbase_leaveEvent(self.h, event.h)

type QDockWidgetleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QDockWidget, slot: proc(super: QDockWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_leaveEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_leaveEvent ".} =
  type Cb = proc(super: QDockWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QDockWidget, event: gen_qevent.QMoveEvent): void =


  fQDockWidget_virtualbase_moveEvent(self.h, event.h)

type QDockWidgetmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QDockWidget, slot: proc(super: QDockWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_moveEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_moveEvent ".} =
  type Cb = proc(super: QDockWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QDockWidget, event: gen_qevent.QResizeEvent): void =


  fQDockWidget_virtualbase_resizeEvent(self.h, event.h)

type QDockWidgetresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QDockWidget, slot: proc(super: QDockWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_resizeEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_resizeEvent ".} =
  type Cb = proc(super: QDockWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QDockWidget, event: gen_qevent.QContextMenuEvent): void =


  fQDockWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QDockWidgetcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QDockWidget, slot: proc(super: QDockWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_contextMenuEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_contextMenuEvent ".} =
  type Cb = proc(super: QDockWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QDockWidget, event: gen_qevent.QTabletEvent): void =


  fQDockWidget_virtualbase_tabletEvent(self.h, event.h)

type QDockWidgettabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QDockWidget, slot: proc(super: QDockWidgettabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_tabletEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_tabletEvent ".} =
  type Cb = proc(super: QDockWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QDockWidget, event: gen_qevent.QActionEvent): void =


  fQDockWidget_virtualbase_actionEvent(self.h, event.h)

type QDockWidgetactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QDockWidget, slot: proc(super: QDockWidgetactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_actionEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_actionEvent ".} =
  type Cb = proc(super: QDockWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QDockWidget, event: gen_qevent.QDragEnterEvent): void =


  fQDockWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QDockWidgetdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QDockWidget, slot: proc(super: QDockWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_dragEnterEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_dragEnterEvent ".} =
  type Cb = proc(super: QDockWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QDockWidget, event: gen_qevent.QDragMoveEvent): void =


  fQDockWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QDockWidgetdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QDockWidget, slot: proc(super: QDockWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_dragMoveEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_dragMoveEvent ".} =
  type Cb = proc(super: QDockWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QDockWidget, event: gen_qevent.QDragLeaveEvent): void =


  fQDockWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QDockWidgetdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QDockWidget, slot: proc(super: QDockWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_dragLeaveEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_dragLeaveEvent ".} =
  type Cb = proc(super: QDockWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QDockWidget, event: gen_qevent.QDropEvent): void =


  fQDockWidget_virtualbase_dropEvent(self.h, event.h)

type QDockWidgetdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QDockWidget, slot: proc(super: QDockWidgetdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_dropEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_dropEvent ".} =
  type Cb = proc(super: QDockWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QDockWidget, event: gen_qevent.QShowEvent): void =


  fQDockWidget_virtualbase_showEvent(self.h, event.h)

type QDockWidgetshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QDockWidget, slot: proc(super: QDockWidgetshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_showEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_showEvent ".} =
  type Cb = proc(super: QDockWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QDockWidget, event: gen_qevent.QHideEvent): void =


  fQDockWidget_virtualbase_hideEvent(self.h, event.h)

type QDockWidgethideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QDockWidget, slot: proc(super: QDockWidgethideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_hideEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_hideEvent ".} =
  type Cb = proc(super: QDockWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QDockWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQDockWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDockWidgetnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QDockWidget, slot: proc(super: QDockWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_nativeEvent(self: ptr cQDockWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QDockWidget_nativeEvent ".} =
  type Cb = proc(super: QDockWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QDockWidget(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QDockWidget, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQDockWidget_virtualbase_metric(self.h, cint(param1))

type QDockWidgetmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QDockWidget, slot: proc(super: QDockWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_metric(self: ptr cQDockWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDockWidget_metric ".} =
  type Cb = proc(super: QDockWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QDockWidget(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QDockWidget, painter: gen_qpainter.QPainter): void =


  fQDockWidget_virtualbase_initPainter(self.h, painter.h)

type QDockWidgetinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QDockWidget, slot: proc(super: QDockWidgetinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_initPainter(self: ptr cQDockWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_initPainter ".} =
  type Cb = proc(super: QDockWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QDockWidget(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QDockWidget, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQDockWidget_virtualbase_redirected(self.h, offset.h))

type QDockWidgetredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QDockWidget, slot: proc(super: QDockWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_redirected(self: ptr cQDockWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDockWidget_redirected ".} =
  type Cb = proc(super: QDockWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QDockWidget(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QDockWidget, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQDockWidget_virtualbase_sharedPainter(self.h))

type QDockWidgetsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QDockWidget, slot: proc(super: QDockWidgetsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_sharedPainter(self: ptr cQDockWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDockWidget_sharedPainter ".} =
  type Cb = proc(super: QDockWidgetsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QDockWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QDockWidget, param1: gen_qevent.QInputMethodEvent): void =


  fQDockWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QDockWidgetinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QDockWidget, slot: proc(super: QDockWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_inputMethodEvent(self: ptr cQDockWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_inputMethodEvent ".} =
  type Cb = proc(super: QDockWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QDockWidget(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QDockWidget, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQDockWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDockWidgetinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QDockWidget, slot: proc(super: QDockWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_inputMethodQuery(self: ptr cQDockWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDockWidget_inputMethodQuery ".} =
  type Cb = proc(super: QDockWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QDockWidget(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QDockWidget, next: bool): bool =


  fQDockWidget_virtualbase_focusNextPrevChild(self.h, next)

type QDockWidgetfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QDockWidget, slot: proc(super: QDockWidgetfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_focusNextPrevChild(self: ptr cQDockWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDockWidget_focusNextPrevChild ".} =
  type Cb = proc(super: QDockWidgetfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QDockWidget(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QDockWidget, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQDockWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDockWidgeteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDockWidget, slot: proc(super: QDockWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_eventFilter(self: ptr cQDockWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDockWidget_eventFilter ".} =
  type Cb = proc(super: QDockWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDockWidget(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QDockWidget, event: gen_qcoreevent.QTimerEvent): void =


  fQDockWidget_virtualbase_timerEvent(self.h, event.h)

type QDockWidgettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDockWidget, slot: proc(super: QDockWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_timerEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_timerEvent ".} =
  type Cb = proc(super: QDockWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QDockWidget, event: gen_qcoreevent.QChildEvent): void =


  fQDockWidget_virtualbase_childEvent(self.h, event.h)

type QDockWidgetchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDockWidget, slot: proc(super: QDockWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_childEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_childEvent ".} =
  type Cb = proc(super: QDockWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDockWidget, event: gen_qcoreevent.QEvent): void =


  fQDockWidget_virtualbase_customEvent(self.h, event.h)

type QDockWidgetcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDockWidget, slot: proc(super: QDockWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_customEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_customEvent ".} =
  type Cb = proc(super: QDockWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDockWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDockWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQDockWidget_virtualbase_connectNotify(self.h, signal.h)

type QDockWidgetconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDockWidget, slot: proc(super: QDockWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_connectNotify(self: ptr cQDockWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_connectNotify ".} =
  type Cb = proc(super: QDockWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDockWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDockWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQDockWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QDockWidgetdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDockWidget, slot: proc(super: QDockWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDockWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_disconnectNotify(self: ptr cQDockWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_disconnectNotify ".} =
  type Cb = proc(super: QDockWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDockWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QDockWidget): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQDockWidget_staticMetaObject())
proc delete*(self: QDockWidget) =
  fcQDockWidget_delete(self.h)
