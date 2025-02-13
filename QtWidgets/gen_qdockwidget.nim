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

const cflags = gorge("pkg-config --cflags Qt5Widgets")
{.compile("gen_qdockwidget.cpp", cflags).}


type QDockWidgetDockWidgetFeatureEnum* = distinct cint
template DockWidgetClosable*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 1
template DockWidgetMovable*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 2
template DockWidgetFloatable*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 4
template DockWidgetVerticalTitleBar*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 8
template DockWidgetFeatureMask*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 15
template AllDockWidgetFeatures*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 7
template NoDockWidgetFeatures*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 0
template Reserved*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 255


import gen_qdockwidget_types
export gen_qdockwidget_types

import
  gen_qcoreevent_types,
  gen_qevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qstyleoption_types,
  gen_qvariant_types,
  gen_qwidget
export
  gen_qcoreevent_types,
  gen_qevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qstyleoption_types,
  gen_qvariant_types,
  gen_qwidget

type cQDockWidget*{.exportc: "QDockWidget", incompleteStruct.} = object

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
proc fcQDockWidget_featuresChanged(self: pointer, features: cint): void {.importc: "QDockWidget_featuresChanged".}
proc fcQDockWidget_connect_featuresChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_featuresChanged".}
proc fcQDockWidget_topLevelChanged(self: pointer, topLevel: bool): void {.importc: "QDockWidget_topLevelChanged".}
proc fcQDockWidget_connect_topLevelChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_topLevelChanged".}
proc fcQDockWidget_allowedAreasChanged(self: pointer, allowedAreas: cint): void {.importc: "QDockWidget_allowedAreasChanged".}
proc fcQDockWidget_connect_allowedAreasChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_allowedAreasChanged".}
proc fcQDockWidget_visibilityChanged(self: pointer, visible: bool): void {.importc: "QDockWidget_visibilityChanged".}
proc fcQDockWidget_connect_visibilityChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_visibilityChanged".}
proc fcQDockWidget_dockLocationChanged(self: pointer, area: cint): void {.importc: "QDockWidget_dockLocationChanged".}
proc fcQDockWidget_connect_dockLocationChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_dockLocationChanged".}
proc fcQDockWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDockWidget_tr2".}
proc fcQDockWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDockWidget_tr3".}
proc fcQDockWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDockWidget_trUtf82".}
proc fcQDockWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDockWidget_trUtf83".}
type cQDockWidgetVTable = object
  destructor*: proc(vtbl: ptr cQDockWidgetVTable, self: ptr cQDockWidget) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDockWidget_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QDockWidget_virtualbase_metaObject".}
proc fcQDockWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDockWidget_virtualbase_metacast".}
proc fcQDockWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDockWidget_virtualbase_metacall".}
proc fcQDockWidget_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_changeEvent".}
proc fcQDockWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_closeEvent".}
proc fcQDockWidget_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_paintEvent".}
proc fcQDockWidget_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDockWidget_virtualbase_event".}
proc fcQDockWidget_virtualbase_devType(self: pointer, ): cint {.importc: "QDockWidget_virtualbase_devType".}
proc fcQDockWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDockWidget_virtualbase_setVisible".}
proc fcQDockWidget_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QDockWidget_virtualbase_sizeHint".}
proc fcQDockWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QDockWidget_virtualbase_minimumSizeHint".}
proc fcQDockWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDockWidget_virtualbase_heightForWidth".}
proc fcQDockWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QDockWidget_virtualbase_hasHeightForWidth".}
proc fcQDockWidget_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QDockWidget_virtualbase_paintEngine".}
proc fcQDockWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_mousePressEvent".}
proc fcQDockWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_mouseReleaseEvent".}
proc fcQDockWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQDockWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_mouseMoveEvent".}
proc fcQDockWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_wheelEvent".}
proc fcQDockWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_keyPressEvent".}
proc fcQDockWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_keyReleaseEvent".}
proc fcQDockWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_focusInEvent".}
proc fcQDockWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_focusOutEvent".}
proc fcQDockWidget_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_enterEvent".}
proc fcQDockWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_leaveEvent".}
proc fcQDockWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_moveEvent".}
proc fcQDockWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_resizeEvent".}
proc fcQDockWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_contextMenuEvent".}
proc fcQDockWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_tabletEvent".}
proc fcQDockWidget_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_actionEvent".}
proc fcQDockWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_dragEnterEvent".}
proc fcQDockWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_dragMoveEvent".}
proc fcQDockWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_dragLeaveEvent".}
proc fcQDockWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_dropEvent".}
proc fcQDockWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_showEvent".}
proc fcQDockWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_hideEvent".}
proc fcQDockWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QDockWidget_virtualbase_nativeEvent".}
proc fcQDockWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QDockWidget_virtualbase_metric".}
proc fcQDockWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QDockWidget_virtualbase_initPainter".}
proc fcQDockWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QDockWidget_virtualbase_redirected".}
proc fcQDockWidget_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QDockWidget_virtualbase_sharedPainter".}
proc fcQDockWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDockWidget_virtualbase_inputMethodEvent".}
proc fcQDockWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDockWidget_virtualbase_inputMethodQuery".}
proc fcQDockWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDockWidget_virtualbase_focusNextPrevChild".}
proc fcQDockWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDockWidget_virtualbase_eventFilter".}
proc fcQDockWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_timerEvent".}
proc fcQDockWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_childEvent".}
proc fcQDockWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDockWidget_virtualbase_customEvent".}
proc fcQDockWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDockWidget_virtualbase_connectNotify".}
proc fcQDockWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDockWidget_virtualbase_disconnectNotify".}
proc fcQDockWidget_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QDockWidget_protectedbase_initStyleOption".}
proc fcQDockWidget_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QDockWidget_protectedbase_updateMicroFocus".}
proc fcQDockWidget_protectedbase_create(self: pointer, ): void {.importc: "QDockWidget_protectedbase_create".}
proc fcQDockWidget_protectedbase_destroy(self: pointer, ): void {.importc: "QDockWidget_protectedbase_destroy".}
proc fcQDockWidget_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QDockWidget_protectedbase_focusNextChild".}
proc fcQDockWidget_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QDockWidget_protectedbase_focusPreviousChild".}
proc fcQDockWidget_protectedbase_sender(self: pointer, ): pointer {.importc: "QDockWidget_protectedbase_sender".}
proc fcQDockWidget_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QDockWidget_protectedbase_senderSignalIndex".}
proc fcQDockWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDockWidget_protectedbase_receivers".}
proc fcQDockWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDockWidget_protectedbase_isSignalConnected".}
proc fcQDockWidget_new(vtbl: pointer, parent: pointer): ptr cQDockWidget {.importc: "QDockWidget_new".}
proc fcQDockWidget_new2(vtbl: pointer, title: struct_miqt_string): ptr cQDockWidget {.importc: "QDockWidget_new2".}
proc fcQDockWidget_new3(vtbl: pointer, ): ptr cQDockWidget {.importc: "QDockWidget_new3".}
proc fcQDockWidget_new4(vtbl: pointer, title: struct_miqt_string, parent: pointer): ptr cQDockWidget {.importc: "QDockWidget_new4".}
proc fcQDockWidget_new5(vtbl: pointer, title: struct_miqt_string, parent: pointer, flags: cint): ptr cQDockWidget {.importc: "QDockWidget_new5".}
proc fcQDockWidget_new6(vtbl: pointer, parent: pointer, flags: cint): ptr cQDockWidget {.importc: "QDockWidget_new6".}
proc fcQDockWidget_staticMetaObject(): pointer {.importc: "QDockWidget_staticMetaObject".}
proc fcQDockWidget_delete(self: pointer) {.importc: "QDockWidget_delete".}

proc metaObject*(self: gen_qdockwidget_types.QDockWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDockWidget_metaObject(self.h))

proc metacast*(self: gen_qdockwidget_types.QDockWidget, param1: cstring): pointer =
  fcQDockWidget_metacast(self.h, param1)

proc metacall*(self: gen_qdockwidget_types.QDockWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQDockWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdockwidget_types.QDockWidget, s: cstring): string =
  let v_ms = fcQDockWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdockwidget_types.QDockWidget, s: cstring): string =
  let v_ms = fcQDockWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc widget*(self: gen_qdockwidget_types.QDockWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDockWidget_widget(self.h))

proc setWidget*(self: gen_qdockwidget_types.QDockWidget, widget: gen_qwidget_types.QWidget): void =
  fcQDockWidget_setWidget(self.h, widget.h)

proc setFeatures*(self: gen_qdockwidget_types.QDockWidget, features: cint): void =
  fcQDockWidget_setFeatures(self.h, cint(features))

proc features*(self: gen_qdockwidget_types.QDockWidget, ): cint =
  cint(fcQDockWidget_features(self.h))

proc setFloating*(self: gen_qdockwidget_types.QDockWidget, floating: bool): void =
  fcQDockWidget_setFloating(self.h, floating)

proc isFloating*(self: gen_qdockwidget_types.QDockWidget, ): bool =
  fcQDockWidget_isFloating(self.h)

proc setAllowedAreas*(self: gen_qdockwidget_types.QDockWidget, areas: cint): void =
  fcQDockWidget_setAllowedAreas(self.h, cint(areas))

proc allowedAreas*(self: gen_qdockwidget_types.QDockWidget, ): cint =
  cint(fcQDockWidget_allowedAreas(self.h))

proc setTitleBarWidget*(self: gen_qdockwidget_types.QDockWidget, widget: gen_qwidget_types.QWidget): void =
  fcQDockWidget_setTitleBarWidget(self.h, widget.h)

proc titleBarWidget*(self: gen_qdockwidget_types.QDockWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDockWidget_titleBarWidget(self.h))

proc isAreaAllowed*(self: gen_qdockwidget_types.QDockWidget, area: cint): bool =
  fcQDockWidget_isAreaAllowed(self.h, cint(area))

proc featuresChanged*(self: gen_qdockwidget_types.QDockWidget, features: cint): void =
  fcQDockWidget_featuresChanged(self.h, cint(features))

type QDockWidgetfeaturesChangedSlot* = proc(features: cint)
proc miqt_exec_callback_cQDockWidget_featuresChanged(slot: int, features: cint) {.exportc: "miqt_exec_callback_QDockWidget_featuresChanged".} =
  let nimfunc = cast[ptr QDockWidgetfeaturesChangedSlot](cast[pointer](slot))
  let slotval1 = cint(features)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQDockWidget_featuresChanged_release(slot: int) {.exportc: "miqt_exec_callback_QDockWidget_featuresChanged_release".} =
  let nimfunc = cast[ref QDockWidgetfeaturesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfeaturesChanged*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetfeaturesChangedSlot) =
  var tmp = new QDockWidgetfeaturesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_connect_featuresChanged(self.h, cast[int](addr tmp[]))

proc topLevelChanged*(self: gen_qdockwidget_types.QDockWidget, topLevel: bool): void =
  fcQDockWidget_topLevelChanged(self.h, topLevel)

type QDockWidgettopLevelChangedSlot* = proc(topLevel: bool)
proc miqt_exec_callback_cQDockWidget_topLevelChanged(slot: int, topLevel: bool) {.exportc: "miqt_exec_callback_QDockWidget_topLevelChanged".} =
  let nimfunc = cast[ptr QDockWidgettopLevelChangedSlot](cast[pointer](slot))
  let slotval1 = topLevel

  nimfunc[](slotval1)

proc miqt_exec_callback_cQDockWidget_topLevelChanged_release(slot: int) {.exportc: "miqt_exec_callback_QDockWidget_topLevelChanged_release".} =
  let nimfunc = cast[ref QDockWidgettopLevelChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontopLevelChanged*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgettopLevelChangedSlot) =
  var tmp = new QDockWidgettopLevelChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_connect_topLevelChanged(self.h, cast[int](addr tmp[]))

proc allowedAreasChanged*(self: gen_qdockwidget_types.QDockWidget, allowedAreas: cint): void =
  fcQDockWidget_allowedAreasChanged(self.h, cint(allowedAreas))

type QDockWidgetallowedAreasChangedSlot* = proc(allowedAreas: cint)
proc miqt_exec_callback_cQDockWidget_allowedAreasChanged(slot: int, allowedAreas: cint) {.exportc: "miqt_exec_callback_QDockWidget_allowedAreasChanged".} =
  let nimfunc = cast[ptr QDockWidgetallowedAreasChangedSlot](cast[pointer](slot))
  let slotval1 = cint(allowedAreas)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQDockWidget_allowedAreasChanged_release(slot: int) {.exportc: "miqt_exec_callback_QDockWidget_allowedAreasChanged_release".} =
  let nimfunc = cast[ref QDockWidgetallowedAreasChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onallowedAreasChanged*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetallowedAreasChangedSlot) =
  var tmp = new QDockWidgetallowedAreasChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_connect_allowedAreasChanged(self.h, cast[int](addr tmp[]))

proc visibilityChanged*(self: gen_qdockwidget_types.QDockWidget, visible: bool): void =
  fcQDockWidget_visibilityChanged(self.h, visible)

type QDockWidgetvisibilityChangedSlot* = proc(visible: bool)
proc miqt_exec_callback_cQDockWidget_visibilityChanged(slot: int, visible: bool) {.exportc: "miqt_exec_callback_QDockWidget_visibilityChanged".} =
  let nimfunc = cast[ptr QDockWidgetvisibilityChangedSlot](cast[pointer](slot))
  let slotval1 = visible

  nimfunc[](slotval1)

proc miqt_exec_callback_cQDockWidget_visibilityChanged_release(slot: int) {.exportc: "miqt_exec_callback_QDockWidget_visibilityChanged_release".} =
  let nimfunc = cast[ref QDockWidgetvisibilityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvisibilityChanged*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetvisibilityChangedSlot) =
  var tmp = new QDockWidgetvisibilityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_connect_visibilityChanged(self.h, cast[int](addr tmp[]))

proc dockLocationChanged*(self: gen_qdockwidget_types.QDockWidget, area: cint): void =
  fcQDockWidget_dockLocationChanged(self.h, cint(area))

type QDockWidgetdockLocationChangedSlot* = proc(area: cint)
proc miqt_exec_callback_cQDockWidget_dockLocationChanged(slot: int, area: cint) {.exportc: "miqt_exec_callback_QDockWidget_dockLocationChanged".} =
  let nimfunc = cast[ptr QDockWidgetdockLocationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(area)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQDockWidget_dockLocationChanged_release(slot: int) {.exportc: "miqt_exec_callback_QDockWidget_dockLocationChanged_release".} =
  let nimfunc = cast[ref QDockWidgetdockLocationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondockLocationChanged*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetdockLocationChangedSlot) =
  var tmp = new QDockWidgetdockLocationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_connect_dockLocationChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qdockwidget_types.QDockWidget, s: cstring, c: cstring): string =
  let v_ms = fcQDockWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdockwidget_types.QDockWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDockWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdockwidget_types.QDockWidget, s: cstring, c: cstring): string =
  let v_ms = fcQDockWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdockwidget_types.QDockWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDockWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QDockWidgetmetaObjectProc* = proc(self: QDockWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDockWidgetmetacastProc* = proc(self: QDockWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QDockWidgetmetacallProc* = proc(self: QDockWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDockWidgetchangeEventProc* = proc(self: QDockWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDockWidgetcloseEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QDockWidgetpaintEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QDockWidgeteventProc* = proc(self: QDockWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDockWidgetdevTypeProc* = proc(self: QDockWidget): cint {.raises: [], gcsafe.}
type QDockWidgetsetVisibleProc* = proc(self: QDockWidget, visible: bool): void {.raises: [], gcsafe.}
type QDockWidgetsizeHintProc* = proc(self: QDockWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDockWidgetminimumSizeHintProc* = proc(self: QDockWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDockWidgetheightForWidthProc* = proc(self: QDockWidget, param1: cint): cint {.raises: [], gcsafe.}
type QDockWidgethasHeightForWidthProc* = proc(self: QDockWidget): bool {.raises: [], gcsafe.}
type QDockWidgetpaintEngineProc* = proc(self: QDockWidget): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QDockWidgetmousePressEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDockWidgetmouseReleaseEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDockWidgetmouseDoubleClickEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDockWidgetmouseMoveEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDockWidgetwheelEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QDockWidgetkeyPressEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDockWidgetkeyReleaseEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDockWidgetfocusInEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDockWidgetfocusOutEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDockWidgetenterEventProc* = proc(self: QDockWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDockWidgetleaveEventProc* = proc(self: QDockWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDockWidgetmoveEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QDockWidgetresizeEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QDockWidgetcontextMenuEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QDockWidgettabletEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QDockWidgetactionEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QDockWidgetdragEnterEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QDockWidgetdragMoveEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QDockWidgetdragLeaveEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QDockWidgetdropEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QDockWidgetshowEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QDockWidgethideEventProc* = proc(self: QDockWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QDockWidgetnativeEventProc* = proc(self: QDockWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QDockWidgetmetricProc* = proc(self: QDockWidget, param1: cint): cint {.raises: [], gcsafe.}
type QDockWidgetinitPainterProc* = proc(self: QDockWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QDockWidgetredirectedProc* = proc(self: QDockWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QDockWidgetsharedPainterProc* = proc(self: QDockWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QDockWidgetinputMethodEventProc* = proc(self: QDockWidget, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QDockWidgetinputMethodQueryProc* = proc(self: QDockWidget, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDockWidgetfocusNextPrevChildProc* = proc(self: QDockWidget, next: bool): bool {.raises: [], gcsafe.}
type QDockWidgeteventFilterProc* = proc(self: QDockWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDockWidgettimerEventProc* = proc(self: QDockWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDockWidgetchildEventProc* = proc(self: QDockWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDockWidgetcustomEventProc* = proc(self: QDockWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDockWidgetconnectNotifyProc* = proc(self: QDockWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDockWidgetdisconnectNotifyProc* = proc(self: QDockWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDockWidgetVTable* = object
  vtbl: cQDockWidgetVTable
  metaObject*: QDockWidgetmetaObjectProc
  metacast*: QDockWidgetmetacastProc
  metacall*: QDockWidgetmetacallProc
  changeEvent*: QDockWidgetchangeEventProc
  closeEvent*: QDockWidgetcloseEventProc
  paintEvent*: QDockWidgetpaintEventProc
  event*: QDockWidgeteventProc
  devType*: QDockWidgetdevTypeProc
  setVisible*: QDockWidgetsetVisibleProc
  sizeHint*: QDockWidgetsizeHintProc
  minimumSizeHint*: QDockWidgetminimumSizeHintProc
  heightForWidth*: QDockWidgetheightForWidthProc
  hasHeightForWidth*: QDockWidgethasHeightForWidthProc
  paintEngine*: QDockWidgetpaintEngineProc
  mousePressEvent*: QDockWidgetmousePressEventProc
  mouseReleaseEvent*: QDockWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QDockWidgetmouseDoubleClickEventProc
  mouseMoveEvent*: QDockWidgetmouseMoveEventProc
  wheelEvent*: QDockWidgetwheelEventProc
  keyPressEvent*: QDockWidgetkeyPressEventProc
  keyReleaseEvent*: QDockWidgetkeyReleaseEventProc
  focusInEvent*: QDockWidgetfocusInEventProc
  focusOutEvent*: QDockWidgetfocusOutEventProc
  enterEvent*: QDockWidgetenterEventProc
  leaveEvent*: QDockWidgetleaveEventProc
  moveEvent*: QDockWidgetmoveEventProc
  resizeEvent*: QDockWidgetresizeEventProc
  contextMenuEvent*: QDockWidgetcontextMenuEventProc
  tabletEvent*: QDockWidgettabletEventProc
  actionEvent*: QDockWidgetactionEventProc
  dragEnterEvent*: QDockWidgetdragEnterEventProc
  dragMoveEvent*: QDockWidgetdragMoveEventProc
  dragLeaveEvent*: QDockWidgetdragLeaveEventProc
  dropEvent*: QDockWidgetdropEventProc
  showEvent*: QDockWidgetshowEventProc
  hideEvent*: QDockWidgethideEventProc
  nativeEvent*: QDockWidgetnativeEventProc
  metric*: QDockWidgetmetricProc
  initPainter*: QDockWidgetinitPainterProc
  redirected*: QDockWidgetredirectedProc
  sharedPainter*: QDockWidgetsharedPainterProc
  inputMethodEvent*: QDockWidgetinputMethodEventProc
  inputMethodQuery*: QDockWidgetinputMethodQueryProc
  focusNextPrevChild*: QDockWidgetfocusNextPrevChildProc
  eventFilter*: QDockWidgeteventFilterProc
  timerEvent*: QDockWidgettimerEventProc
  childEvent*: QDockWidgetchildEventProc
  customEvent*: QDockWidgetcustomEventProc
  connectNotify*: QDockWidgetconnectNotifyProc
  disconnectNotify*: QDockWidgetdisconnectNotifyProc
proc QDockWidgetmetaObject*(self: gen_qdockwidget_types.QDockWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDockWidget_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQDockWidget_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QDockWidgetmetacast*(self: gen_qdockwidget_types.QDockWidget, param1: cstring): pointer =
  fcQDockWidget_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQDockWidget_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDockWidgetmetacall*(self: gen_qdockwidget_types.QDockWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQDockWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQDockWidget_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDockWidgetchangeEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQDockWidget_virtualbase_changeEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_changeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].changeEvent(self, slotval1)

proc QDockWidgetcloseEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQDockWidget_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QDockWidgetpaintEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QPaintEvent): void =
  fcQDockWidget_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QDockWidgetevent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQDockWidget_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDockWidgetdevType*(self: gen_qdockwidget_types.QDockWidget, ): cint =
  fcQDockWidget_virtualbase_devType(self.h)

proc miqt_exec_callback_cQDockWidget_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QDockWidgetsetVisible*(self: gen_qdockwidget_types.QDockWidget, visible: bool): void =
  fcQDockWidget_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQDockWidget_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QDockWidgetsizeHint*(self: gen_qdockwidget_types.QDockWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDockWidget_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQDockWidget_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QDockWidgetminimumSizeHint*(self: gen_qdockwidget_types.QDockWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDockWidget_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQDockWidget_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QDockWidgetheightForWidth*(self: gen_qdockwidget_types.QDockWidget, param1: cint): cint =
  fcQDockWidget_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQDockWidget_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = param1
  let virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QDockWidgethasHeightForWidth*(self: gen_qdockwidget_types.QDockWidget, ): bool =
  fcQDockWidget_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQDockWidget_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QDockWidgetpaintEngine*(self: gen_qdockwidget_types.QDockWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDockWidget_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQDockWidget_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QDockWidgetmousePressEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQDockWidget_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QDockWidgetmouseReleaseEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQDockWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QDockWidgetmouseDoubleClickEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQDockWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QDockWidgetmouseMoveEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQDockWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QDockWidgetwheelEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQDockWidget_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QDockWidgetkeyPressEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQDockWidget_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QDockWidgetkeyReleaseEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQDockWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QDockWidgetfocusInEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQDockWidget_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QDockWidgetfocusOutEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQDockWidget_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QDockWidgetenterEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQDockWidget_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QDockWidgetleaveEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQDockWidget_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QDockWidgetmoveEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQDockWidget_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QDockWidgetresizeEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQDockWidget_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QDockWidgetcontextMenuEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDockWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QDockWidgettabletEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQDockWidget_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QDockWidgetactionEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QActionEvent): void =
  fcQDockWidget_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QDockWidgetdragEnterEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDockWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QDockWidgetdragMoveEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDockWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QDockWidgetdragLeaveEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDockWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QDockWidgetdropEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QDropEvent): void =
  fcQDockWidget_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QDockWidgetshowEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QShowEvent): void =
  fcQDockWidget_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QDockWidgethideEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QHideEvent): void =
  fcQDockWidget_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QDockWidgetnativeEvent*(self: gen_qdockwidget_types.QDockWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQDockWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQDockWidget_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  let virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDockWidgetmetric*(self: gen_qdockwidget_types.QDockWidget, param1: cint): cint =
  fcQDockWidget_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQDockWidget_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = cint(param1)
  let virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QDockWidgetinitPainter*(self: gen_qdockwidget_types.QDockWidget, painter: gen_qpainter_types.QPainter): void =
  fcQDockWidget_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQDockWidget_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QDockWidgetredirected*(self: gen_qdockwidget_types.QDockWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDockWidget_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQDockWidget_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  let virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QDockWidgetsharedPainter*(self: gen_qdockwidget_types.QDockWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDockWidget_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQDockWidget_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QDockWidgetinputMethodEvent*(self: gen_qdockwidget_types.QDockWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDockWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQDockWidget_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QDockWidgetinputMethodQuery*(self: gen_qdockwidget_types.QDockWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDockWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQDockWidget_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = cint(param1)
  let virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QDockWidgetfocusNextPrevChild*(self: gen_qdockwidget_types.QDockWidget, next: bool): bool =
  fcQDockWidget_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQDockWidget_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = next
  let virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QDockWidgeteventFilter*(self: gen_qdockwidget_types.QDockWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDockWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQDockWidget_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDockWidgettimerEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDockWidget_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QDockWidgetchildEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDockWidget_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QDockWidgetcustomEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQDockWidget_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQDockWidget_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QDockWidgetconnectNotify*(self: gen_qdockwidget_types.QDockWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDockWidget_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDockWidget_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QDockWidgetdisconnectNotify*(self: gen_qdockwidget_types.QDockWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDockWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDockWidget_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDockWidgetVTable](vtbl)
  let self = QDockWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc initStyleOption*(self: gen_qdockwidget_types.QDockWidget, option: gen_qstyleoption_types.QStyleOptionDockWidget): void =
  fcQDockWidget_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qdockwidget_types.QDockWidget, ): void =
  fcQDockWidget_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qdockwidget_types.QDockWidget, ): void =
  fcQDockWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qdockwidget_types.QDockWidget, ): void =
  fcQDockWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qdockwidget_types.QDockWidget, ): bool =
  fcQDockWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qdockwidget_types.QDockWidget, ): bool =
  fcQDockWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qdockwidget_types.QDockWidget, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDockWidget_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qdockwidget_types.QDockWidget, ): cint =
  fcQDockWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdockwidget_types.QDockWidget, signal: cstring): cint =
  fcQDockWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdockwidget_types.QDockWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDockWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdockwidget_types.QDockWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QDockWidgetVTable = nil): gen_qdockwidget_types.QDockWidget =
  let vtbl = if vtbl == nil: new QDockWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDockWidgetVTable, _: ptr cQDockWidget) {.cdecl.} =
    let vtbl = cast[ref QDockWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDockWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDockWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDockWidget_metacall
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDockWidget_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDockWidget_closeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDockWidget_paintEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDockWidget_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDockWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDockWidget_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDockWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDockWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDockWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDockWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDockWidget_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDockWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDockWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDockWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDockWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDockWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDockWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDockWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDockWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDockWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDockWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDockWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDockWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDockWidget_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDockWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDockWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDockWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDockWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDockWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDockWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDockWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDockWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDockWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDockWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDockWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDockWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDockWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDockWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDockWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDockWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDockWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDockWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDockWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDockWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDockWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDockWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDockWidget_disconnectNotify
  gen_qdockwidget_types.QDockWidget(h: fcQDockWidget_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qdockwidget_types.QDockWidget,
    title: string,
    vtbl: ref QDockWidgetVTable = nil): gen_qdockwidget_types.QDockWidget =
  let vtbl = if vtbl == nil: new QDockWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDockWidgetVTable, _: ptr cQDockWidget) {.cdecl.} =
    let vtbl = cast[ref QDockWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDockWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDockWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDockWidget_metacall
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDockWidget_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDockWidget_closeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDockWidget_paintEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDockWidget_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDockWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDockWidget_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDockWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDockWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDockWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDockWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDockWidget_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDockWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDockWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDockWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDockWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDockWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDockWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDockWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDockWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDockWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDockWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDockWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDockWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDockWidget_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDockWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDockWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDockWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDockWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDockWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDockWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDockWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDockWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDockWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDockWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDockWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDockWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDockWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDockWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDockWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDockWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDockWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDockWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDockWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDockWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDockWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDockWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDockWidget_disconnectNotify
  gen_qdockwidget_types.QDockWidget(h: fcQDockWidget_new2(addr(vtbl[]), struct_miqt_string(data: title, len: csize_t(len(title)))))

proc create*(T: type gen_qdockwidget_types.QDockWidget,
    vtbl: ref QDockWidgetVTable = nil): gen_qdockwidget_types.QDockWidget =
  let vtbl = if vtbl == nil: new QDockWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDockWidgetVTable, _: ptr cQDockWidget) {.cdecl.} =
    let vtbl = cast[ref QDockWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDockWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDockWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDockWidget_metacall
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDockWidget_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDockWidget_closeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDockWidget_paintEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDockWidget_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDockWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDockWidget_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDockWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDockWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDockWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDockWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDockWidget_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDockWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDockWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDockWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDockWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDockWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDockWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDockWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDockWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDockWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDockWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDockWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDockWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDockWidget_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDockWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDockWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDockWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDockWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDockWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDockWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDockWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDockWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDockWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDockWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDockWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDockWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDockWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDockWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDockWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDockWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDockWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDockWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDockWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDockWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDockWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDockWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDockWidget_disconnectNotify
  gen_qdockwidget_types.QDockWidget(h: fcQDockWidget_new3(addr(vtbl[]), ))

proc create*(T: type gen_qdockwidget_types.QDockWidget,
    title: string, parent: gen_qwidget_types.QWidget,
    vtbl: ref QDockWidgetVTable = nil): gen_qdockwidget_types.QDockWidget =
  let vtbl = if vtbl == nil: new QDockWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDockWidgetVTable, _: ptr cQDockWidget) {.cdecl.} =
    let vtbl = cast[ref QDockWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDockWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDockWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDockWidget_metacall
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDockWidget_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDockWidget_closeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDockWidget_paintEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDockWidget_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDockWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDockWidget_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDockWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDockWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDockWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDockWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDockWidget_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDockWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDockWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDockWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDockWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDockWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDockWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDockWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDockWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDockWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDockWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDockWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDockWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDockWidget_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDockWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDockWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDockWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDockWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDockWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDockWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDockWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDockWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDockWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDockWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDockWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDockWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDockWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDockWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDockWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDockWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDockWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDockWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDockWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDockWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDockWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDockWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDockWidget_disconnectNotify
  gen_qdockwidget_types.QDockWidget(h: fcQDockWidget_new4(addr(vtbl[]), struct_miqt_string(data: title, len: csize_t(len(title))), parent.h))

proc create*(T: type gen_qdockwidget_types.QDockWidget,
    title: string, parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QDockWidgetVTable = nil): gen_qdockwidget_types.QDockWidget =
  let vtbl = if vtbl == nil: new QDockWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDockWidgetVTable, _: ptr cQDockWidget) {.cdecl.} =
    let vtbl = cast[ref QDockWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDockWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDockWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDockWidget_metacall
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDockWidget_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDockWidget_closeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDockWidget_paintEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDockWidget_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDockWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDockWidget_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDockWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDockWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDockWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDockWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDockWidget_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDockWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDockWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDockWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDockWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDockWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDockWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDockWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDockWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDockWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDockWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDockWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDockWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDockWidget_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDockWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDockWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDockWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDockWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDockWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDockWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDockWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDockWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDockWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDockWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDockWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDockWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDockWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDockWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDockWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDockWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDockWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDockWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDockWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDockWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDockWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDockWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDockWidget_disconnectNotify
  gen_qdockwidget_types.QDockWidget(h: fcQDockWidget_new5(addr(vtbl[]), struct_miqt_string(data: title, len: csize_t(len(title))), parent.h, cint(flags)))

proc create*(T: type gen_qdockwidget_types.QDockWidget,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QDockWidgetVTable = nil): gen_qdockwidget_types.QDockWidget =
  let vtbl = if vtbl == nil: new QDockWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDockWidgetVTable, _: ptr cQDockWidget) {.cdecl.} =
    let vtbl = cast[ref QDockWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDockWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDockWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDockWidget_metacall
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDockWidget_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDockWidget_closeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDockWidget_paintEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDockWidget_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDockWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDockWidget_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDockWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDockWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDockWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDockWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDockWidget_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDockWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDockWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDockWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDockWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDockWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDockWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDockWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDockWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDockWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDockWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDockWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDockWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDockWidget_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDockWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDockWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDockWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDockWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDockWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDockWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDockWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDockWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDockWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDockWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDockWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDockWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDockWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDockWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDockWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDockWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDockWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDockWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDockWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDockWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDockWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDockWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDockWidget_disconnectNotify
  gen_qdockwidget_types.QDockWidget(h: fcQDockWidget_new6(addr(vtbl[]), parent.h, cint(flags)))

proc staticMetaObject*(_: type gen_qdockwidget_types.QDockWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDockWidget_staticMetaObject())
proc delete*(self: gen_qdockwidget_types.QDockWidget) =
  fcQDockWidget_delete(self.h)
