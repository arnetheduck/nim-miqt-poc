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
{.compile("gen_qmdiarea.cpp", cflags).}


type QMdiAreaAreaOption* = cint
const
  QMdiAreaDontMaximizeSubWindowOnActivation* = 1



type QMdiAreaWindowOrder* = cint
const
  QMdiAreaCreationOrder* = 0
  QMdiAreaStackingOrder* = 1
  QMdiAreaActivationHistoryOrder* = 2



type QMdiAreaViewMode* = cint
const
  QMdiAreaSubWindowView* = 0
  QMdiAreaTabbedView* = 1



import gen_qmdiarea_types
export gen_qmdiarea_types

import
  gen_qabstractscrollarea,
  gen_qbrush,
  gen_qcoreevent,
  gen_qevent,
  gen_qmdisubwindow,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qtabwidget,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractscrollarea,
  gen_qbrush,
  gen_qcoreevent,
  gen_qevent,
  gen_qmdisubwindow,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qtabwidget,
  gen_qvariant,
  gen_qwidget

type cQMdiArea*{.exportc: "QMdiArea", incompleteStruct.} = object

proc fcQMdiArea_new(parent: pointer): ptr cQMdiArea {.importc: "QMdiArea_new".}
proc fcQMdiArea_new2(): ptr cQMdiArea {.importc: "QMdiArea_new2".}
proc fcQMdiArea_metaObject(self: pointer, ): pointer {.importc: "QMdiArea_metaObject".}
proc fcQMdiArea_metacast(self: pointer, param1: cstring): pointer {.importc: "QMdiArea_metacast".}
proc fcQMdiArea_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMdiArea_metacall".}
proc fcQMdiArea_tr(s: cstring): struct_miqt_string {.importc: "QMdiArea_tr".}
proc fcQMdiArea_trUtf8(s: cstring): struct_miqt_string {.importc: "QMdiArea_trUtf8".}
proc fcQMdiArea_sizeHint(self: pointer, ): pointer {.importc: "QMdiArea_sizeHint".}
proc fcQMdiArea_minimumSizeHint(self: pointer, ): pointer {.importc: "QMdiArea_minimumSizeHint".}
proc fcQMdiArea_currentSubWindow(self: pointer, ): pointer {.importc: "QMdiArea_currentSubWindow".}
proc fcQMdiArea_activeSubWindow(self: pointer, ): pointer {.importc: "QMdiArea_activeSubWindow".}
proc fcQMdiArea_subWindowList(self: pointer, ): struct_miqt_array {.importc: "QMdiArea_subWindowList".}
proc fcQMdiArea_addSubWindow(self: pointer, widget: pointer): pointer {.importc: "QMdiArea_addSubWindow".}
proc fcQMdiArea_removeSubWindow(self: pointer, widget: pointer): void {.importc: "QMdiArea_removeSubWindow".}
proc fcQMdiArea_background(self: pointer, ): pointer {.importc: "QMdiArea_background".}
proc fcQMdiArea_setBackground(self: pointer, background: pointer): void {.importc: "QMdiArea_setBackground".}
proc fcQMdiArea_activationOrder(self: pointer, ): cint {.importc: "QMdiArea_activationOrder".}
proc fcQMdiArea_setActivationOrder(self: pointer, order: cint): void {.importc: "QMdiArea_setActivationOrder".}
proc fcQMdiArea_setOption(self: pointer, option: cint): void {.importc: "QMdiArea_setOption".}
proc fcQMdiArea_testOption(self: pointer, opton: cint): bool {.importc: "QMdiArea_testOption".}
proc fcQMdiArea_setViewMode(self: pointer, mode: cint): void {.importc: "QMdiArea_setViewMode".}
proc fcQMdiArea_viewMode(self: pointer, ): cint {.importc: "QMdiArea_viewMode".}
proc fcQMdiArea_documentMode(self: pointer, ): bool {.importc: "QMdiArea_documentMode".}
proc fcQMdiArea_setDocumentMode(self: pointer, enabled: bool): void {.importc: "QMdiArea_setDocumentMode".}
proc fcQMdiArea_setTabsClosable(self: pointer, closable: bool): void {.importc: "QMdiArea_setTabsClosable".}
proc fcQMdiArea_tabsClosable(self: pointer, ): bool {.importc: "QMdiArea_tabsClosable".}
proc fcQMdiArea_setTabsMovable(self: pointer, movable: bool): void {.importc: "QMdiArea_setTabsMovable".}
proc fcQMdiArea_tabsMovable(self: pointer, ): bool {.importc: "QMdiArea_tabsMovable".}
proc fcQMdiArea_setTabShape(self: pointer, shape: cint): void {.importc: "QMdiArea_setTabShape".}
proc fcQMdiArea_tabShape(self: pointer, ): cint {.importc: "QMdiArea_tabShape".}
proc fcQMdiArea_setTabPosition(self: pointer, position: cint): void {.importc: "QMdiArea_setTabPosition".}
proc fcQMdiArea_tabPosition(self: pointer, ): cint {.importc: "QMdiArea_tabPosition".}
proc fcQMdiArea_subWindowActivated(self: pointer, param1: pointer): void {.importc: "QMdiArea_subWindowActivated".}
proc fQMdiArea_connect_subWindowActivated(self: pointer, slot: int) {.importc: "QMdiArea_connect_subWindowActivated".}
proc fcQMdiArea_setActiveSubWindow(self: pointer, window: pointer): void {.importc: "QMdiArea_setActiveSubWindow".}
proc fcQMdiArea_tileSubWindows(self: pointer, ): void {.importc: "QMdiArea_tileSubWindows".}
proc fcQMdiArea_cascadeSubWindows(self: pointer, ): void {.importc: "QMdiArea_cascadeSubWindows".}
proc fcQMdiArea_closeActiveSubWindow(self: pointer, ): void {.importc: "QMdiArea_closeActiveSubWindow".}
proc fcQMdiArea_closeAllSubWindows(self: pointer, ): void {.importc: "QMdiArea_closeAllSubWindows".}
proc fcQMdiArea_activateNextSubWindow(self: pointer, ): void {.importc: "QMdiArea_activateNextSubWindow".}
proc fcQMdiArea_activatePreviousSubWindow(self: pointer, ): void {.importc: "QMdiArea_activatePreviousSubWindow".}
proc fcQMdiArea_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMdiArea_tr2".}
proc fcQMdiArea_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMdiArea_tr3".}
proc fcQMdiArea_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMdiArea_trUtf82".}
proc fcQMdiArea_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMdiArea_trUtf83".}
proc fcQMdiArea_subWindowList1(self: pointer, order: cint): struct_miqt_array {.importc: "QMdiArea_subWindowList1".}
proc fcQMdiArea_addSubWindow2(self: pointer, widget: pointer, flags: cint): pointer {.importc: "QMdiArea_addSubWindow2".}
proc fcQMdiArea_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QMdiArea_setOption2".}
proc fQMdiArea_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMdiArea_virtualbase_metacall".}
proc fcQMdiArea_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_metacall".}
proc fQMdiArea_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QMdiArea_virtualbase_sizeHint".}
proc fcQMdiArea_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_sizeHint".}
proc fQMdiArea_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QMdiArea_virtualbase_minimumSizeHint".}
proc fcQMdiArea_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_minimumSizeHint".}
proc fQMdiArea_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QMdiArea_virtualbase_setupViewport".}
proc fcQMdiArea_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_setupViewport".}
proc fQMdiArea_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMdiArea_virtualbase_event".}
proc fcQMdiArea_override_virtual_event(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_event".}
proc fQMdiArea_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QMdiArea_virtualbase_eventFilter".}
proc fcQMdiArea_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_eventFilter".}
proc fQMdiArea_virtualbase_paintEvent(self: pointer, paintEvent: pointer): void{.importc: "QMdiArea_virtualbase_paintEvent".}
proc fcQMdiArea_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_paintEvent".}
proc fQMdiArea_virtualbase_childEvent(self: pointer, childEvent: pointer): void{.importc: "QMdiArea_virtualbase_childEvent".}
proc fcQMdiArea_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_childEvent".}
proc fQMdiArea_virtualbase_resizeEvent(self: pointer, resizeEvent: pointer): void{.importc: "QMdiArea_virtualbase_resizeEvent".}
proc fcQMdiArea_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_resizeEvent".}
proc fQMdiArea_virtualbase_timerEvent(self: pointer, timerEvent: pointer): void{.importc: "QMdiArea_virtualbase_timerEvent".}
proc fcQMdiArea_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_timerEvent".}
proc fQMdiArea_virtualbase_showEvent(self: pointer, showEvent: pointer): void{.importc: "QMdiArea_virtualbase_showEvent".}
proc fcQMdiArea_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_showEvent".}
proc fQMdiArea_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QMdiArea_virtualbase_viewportEvent".}
proc fcQMdiArea_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_viewportEvent".}
proc fQMdiArea_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QMdiArea_virtualbase_scrollContentsBy".}
proc fcQMdiArea_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_scrollContentsBy".}
proc fQMdiArea_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_mousePressEvent".}
proc fcQMdiArea_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_mousePressEvent".}
proc fQMdiArea_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_mouseReleaseEvent".}
proc fcQMdiArea_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_mouseReleaseEvent".}
proc fQMdiArea_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_mouseDoubleClickEvent".}
proc fcQMdiArea_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_mouseDoubleClickEvent".}
proc fQMdiArea_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_mouseMoveEvent".}
proc fcQMdiArea_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_mouseMoveEvent".}
proc fQMdiArea_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_wheelEvent".}
proc fcQMdiArea_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_wheelEvent".}
proc fQMdiArea_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_contextMenuEvent".}
proc fcQMdiArea_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_contextMenuEvent".}
proc fQMdiArea_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_dragEnterEvent".}
proc fcQMdiArea_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_dragEnterEvent".}
proc fQMdiArea_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_dragMoveEvent".}
proc fcQMdiArea_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_dragMoveEvent".}
proc fQMdiArea_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_dragLeaveEvent".}
proc fcQMdiArea_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_dragLeaveEvent".}
proc fQMdiArea_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_dropEvent".}
proc fcQMdiArea_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_dropEvent".}
proc fQMdiArea_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_keyPressEvent".}
proc fcQMdiArea_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_keyPressEvent".}
proc fQMdiArea_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QMdiArea_virtualbase_viewportSizeHint".}
proc fcQMdiArea_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_viewportSizeHint".}
proc fQMdiArea_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_changeEvent".}
proc fcQMdiArea_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_changeEvent".}
proc fQMdiArea_virtualbase_devType(self: pointer, ): cint{.importc: "QMdiArea_virtualbase_devType".}
proc fcQMdiArea_override_virtual_devType(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_devType".}
proc fQMdiArea_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QMdiArea_virtualbase_setVisible".}
proc fcQMdiArea_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_setVisible".}
proc fQMdiArea_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QMdiArea_virtualbase_heightForWidth".}
proc fcQMdiArea_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_heightForWidth".}
proc fQMdiArea_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QMdiArea_virtualbase_hasHeightForWidth".}
proc fcQMdiArea_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_hasHeightForWidth".}
proc fQMdiArea_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QMdiArea_virtualbase_paintEngine".}
proc fcQMdiArea_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_paintEngine".}
proc fQMdiArea_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_keyReleaseEvent".}
proc fcQMdiArea_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_keyReleaseEvent".}
proc fQMdiArea_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_focusInEvent".}
proc fcQMdiArea_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_focusInEvent".}
proc fQMdiArea_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_focusOutEvent".}
proc fcQMdiArea_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_focusOutEvent".}
proc fQMdiArea_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_enterEvent".}
proc fcQMdiArea_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_enterEvent".}
proc fQMdiArea_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_leaveEvent".}
proc fcQMdiArea_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_leaveEvent".}
proc fQMdiArea_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_moveEvent".}
proc fcQMdiArea_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_moveEvent".}
proc fQMdiArea_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_closeEvent".}
proc fcQMdiArea_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_closeEvent".}
proc fQMdiArea_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_tabletEvent".}
proc fcQMdiArea_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_tabletEvent".}
proc fQMdiArea_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_actionEvent".}
proc fcQMdiArea_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_actionEvent".}
proc fQMdiArea_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_hideEvent".}
proc fcQMdiArea_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_hideEvent".}
proc fQMdiArea_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QMdiArea_virtualbase_nativeEvent".}
proc fcQMdiArea_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_nativeEvent".}
proc fQMdiArea_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QMdiArea_virtualbase_metric".}
proc fcQMdiArea_override_virtual_metric(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_metric".}
proc fQMdiArea_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QMdiArea_virtualbase_initPainter".}
proc fcQMdiArea_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_initPainter".}
proc fQMdiArea_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QMdiArea_virtualbase_redirected".}
proc fcQMdiArea_override_virtual_redirected(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_redirected".}
proc fQMdiArea_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QMdiArea_virtualbase_sharedPainter".}
proc fcQMdiArea_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_sharedPainter".}
proc fQMdiArea_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_inputMethodEvent".}
proc fcQMdiArea_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_inputMethodEvent".}
proc fQMdiArea_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QMdiArea_virtualbase_inputMethodQuery".}
proc fcQMdiArea_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_inputMethodQuery".}
proc fQMdiArea_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QMdiArea_virtualbase_focusNextPrevChild".}
proc fcQMdiArea_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_focusNextPrevChild".}
proc fQMdiArea_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_customEvent".}
proc fcQMdiArea_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_customEvent".}
proc fQMdiArea_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMdiArea_virtualbase_connectNotify".}
proc fcQMdiArea_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_connectNotify".}
proc fQMdiArea_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMdiArea_virtualbase_disconnectNotify".}
proc fcQMdiArea_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_disconnectNotify".}
proc fcQMdiArea_staticMetaObject(): pointer {.importc: "QMdiArea_staticMetaObject".}
proc fcQMdiArea_delete(self: pointer) {.importc: "QMdiArea_delete".}


func init*(T: type QMdiArea, h: ptr cQMdiArea): QMdiArea =
  T(h: h)
proc create*(T: type QMdiArea, parent: gen_qwidget.QWidget): QMdiArea =

  QMdiArea.init(fcQMdiArea_new(parent.h))
proc create*(T: type QMdiArea, ): QMdiArea =

  QMdiArea.init(fcQMdiArea_new2())
proc metaObject*(self: QMdiArea, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMdiArea_metaObject(self.h))

proc metacast*(self: QMdiArea, param1: cstring): pointer =

  fcQMdiArea_metacast(self.h, param1)

proc metacall*(self: QMdiArea, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMdiArea_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMdiArea, s: cstring): string =

  let v_ms = fcQMdiArea_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMdiArea, s: cstring): string =

  let v_ms = fcQMdiArea_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: QMdiArea, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQMdiArea_sizeHint(self.h))

proc minimumSizeHint*(self: QMdiArea, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQMdiArea_minimumSizeHint(self.h))

proc currentSubWindow*(self: QMdiArea, ): gen_qmdisubwindow.QMdiSubWindow =

  gen_qmdisubwindow.QMdiSubWindow(h: fcQMdiArea_currentSubWindow(self.h))

proc activeSubWindow*(self: QMdiArea, ): gen_qmdisubwindow.QMdiSubWindow =

  gen_qmdisubwindow.QMdiSubWindow(h: fcQMdiArea_activeSubWindow(self.h))

proc subWindowList*(self: QMdiArea, ): seq[gen_qmdisubwindow.QMdiSubWindow] =

  var v_ma = fcQMdiArea_subWindowList(self.h)
  var vx_ret = newSeq[gen_qmdisubwindow.QMdiSubWindow](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmdisubwindow.QMdiSubWindow(h: v_outCast[i])
  vx_ret

proc addSubWindow*(self: QMdiArea, widget: gen_qwidget.QWidget): gen_qmdisubwindow.QMdiSubWindow =

  gen_qmdisubwindow.QMdiSubWindow(h: fcQMdiArea_addSubWindow(self.h, widget.h))

proc removeSubWindow*(self: QMdiArea, widget: gen_qwidget.QWidget): void =

  fcQMdiArea_removeSubWindow(self.h, widget.h)

proc background*(self: QMdiArea, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQMdiArea_background(self.h))

proc setBackground*(self: QMdiArea, background: gen_qbrush.QBrush): void =

  fcQMdiArea_setBackground(self.h, background.h)

proc activationOrder*(self: QMdiArea, ): QMdiAreaWindowOrder =

  QMdiAreaWindowOrder(fcQMdiArea_activationOrder(self.h))

proc setActivationOrder*(self: QMdiArea, order: QMdiAreaWindowOrder): void =

  fcQMdiArea_setActivationOrder(self.h, cint(order))

proc setOption*(self: QMdiArea, option: QMdiAreaAreaOption): void =

  fcQMdiArea_setOption(self.h, cint(option))

proc testOption*(self: QMdiArea, opton: QMdiAreaAreaOption): bool =

  fcQMdiArea_testOption(self.h, cint(opton))

proc setViewMode*(self: QMdiArea, mode: QMdiAreaViewMode): void =

  fcQMdiArea_setViewMode(self.h, cint(mode))

proc viewMode*(self: QMdiArea, ): QMdiAreaViewMode =

  QMdiAreaViewMode(fcQMdiArea_viewMode(self.h))

proc documentMode*(self: QMdiArea, ): bool =

  fcQMdiArea_documentMode(self.h)

proc setDocumentMode*(self: QMdiArea, enabled: bool): void =

  fcQMdiArea_setDocumentMode(self.h, enabled)

proc setTabsClosable*(self: QMdiArea, closable: bool): void =

  fcQMdiArea_setTabsClosable(self.h, closable)

proc tabsClosable*(self: QMdiArea, ): bool =

  fcQMdiArea_tabsClosable(self.h)

proc setTabsMovable*(self: QMdiArea, movable: bool): void =

  fcQMdiArea_setTabsMovable(self.h, movable)

proc tabsMovable*(self: QMdiArea, ): bool =

  fcQMdiArea_tabsMovable(self.h)

proc setTabShape*(self: QMdiArea, shape: gen_qtabwidget.QTabWidgetTabShape): void =

  fcQMdiArea_setTabShape(self.h, cint(shape))

proc tabShape*(self: QMdiArea, ): gen_qtabwidget.QTabWidgetTabShape =

  gen_qtabwidget.QTabWidgetTabShape(fcQMdiArea_tabShape(self.h))

proc setTabPosition*(self: QMdiArea, position: gen_qtabwidget.QTabWidgetTabPosition): void =

  fcQMdiArea_setTabPosition(self.h, cint(position))

proc tabPosition*(self: QMdiArea, ): gen_qtabwidget.QTabWidgetTabPosition =

  gen_qtabwidget.QTabWidgetTabPosition(fcQMdiArea_tabPosition(self.h))

proc subWindowActivated*(self: QMdiArea, param1: gen_qmdisubwindow.QMdiSubWindow): void =

  fcQMdiArea_subWindowActivated(self.h, param1.h)

proc miqt_exec_callback_QMdiArea_subWindowActivated(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qmdisubwindow.QMdiSubWindow)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmdisubwindow.QMdiSubWindow(h: param1)


  nimfunc[](slotval1)

proc onsubWindowActivated*(self: QMdiArea, slot: proc(param1: gen_qmdisubwindow.QMdiSubWindow)) =
  type Cb = proc(param1: gen_qmdisubwindow.QMdiSubWindow)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMdiArea_connect_subWindowActivated(self.h, cast[int](addr tmp[]))
proc setActiveSubWindow*(self: QMdiArea, window: gen_qmdisubwindow.QMdiSubWindow): void =

  fcQMdiArea_setActiveSubWindow(self.h, window.h)

proc tileSubWindows*(self: QMdiArea, ): void =

  fcQMdiArea_tileSubWindows(self.h)

proc cascadeSubWindows*(self: QMdiArea, ): void =

  fcQMdiArea_cascadeSubWindows(self.h)

proc closeActiveSubWindow*(self: QMdiArea, ): void =

  fcQMdiArea_closeActiveSubWindow(self.h)

proc closeAllSubWindows*(self: QMdiArea, ): void =

  fcQMdiArea_closeAllSubWindows(self.h)

proc activateNextSubWindow*(self: QMdiArea, ): void =

  fcQMdiArea_activateNextSubWindow(self.h)

proc activatePreviousSubWindow*(self: QMdiArea, ): void =

  fcQMdiArea_activatePreviousSubWindow(self.h)

proc tr2*(_: type QMdiArea, s: cstring, c: cstring): string =

  let v_ms = fcQMdiArea_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMdiArea, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMdiArea_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMdiArea, s: cstring, c: cstring): string =

  let v_ms = fcQMdiArea_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMdiArea, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMdiArea_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc subWindowList1*(self: QMdiArea, order: QMdiAreaWindowOrder): seq[gen_qmdisubwindow.QMdiSubWindow] =

  var v_ma = fcQMdiArea_subWindowList1(self.h, cint(order))
  var vx_ret = newSeq[gen_qmdisubwindow.QMdiSubWindow](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmdisubwindow.QMdiSubWindow(h: v_outCast[i])
  vx_ret

proc addSubWindow2*(self: QMdiArea, widget: gen_qwidget.QWidget, flags: gen_qnamespace.WindowType): gen_qmdisubwindow.QMdiSubWindow =

  gen_qmdisubwindow.QMdiSubWindow(h: fcQMdiArea_addSubWindow2(self.h, widget.h, cint(flags)))

proc setOption2*(self: QMdiArea, option: QMdiAreaAreaOption, on: bool): void =

  fcQMdiArea_setOption2(self.h, cint(option), on)

proc callVirtualBase_metacall(self: QMdiArea, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQMdiArea_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMdiAreametacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QMdiArea, slot: proc(super: QMdiAreametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_metacall(self: ptr cQMdiArea, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMdiArea_metacall ".} =
  type Cb = proc(super: QMdiAreametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QMdiArea(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QMdiArea, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQMdiArea_virtualbase_sizeHint(self.h))

type QMdiAreasizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QMdiArea, slot: proc(super: QMdiAreasizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreasizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_sizeHint(self: ptr cQMdiArea, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiArea_sizeHint ".} =
  type Cb = proc(super: QMdiAreasizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QMdiArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QMdiArea, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQMdiArea_virtualbase_minimumSizeHint(self.h))

type QMdiAreaminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QMdiArea, slot: proc(super: QMdiAreaminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreaminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_minimumSizeHint(self: ptr cQMdiArea, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiArea_minimumSizeHint ".} =
  type Cb = proc(super: QMdiAreaminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QMdiArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QMdiArea, viewport: gen_qwidget.QWidget): void =


  fQMdiArea_virtualbase_setupViewport(self.h, viewport.h)

type QMdiAreasetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QMdiArea, slot: proc(super: QMdiAreasetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreasetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_setupViewport(self: ptr cQMdiArea, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_setupViewport ".} =
  type Cb = proc(super: QMdiAreasetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QMdiArea(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QMdiArea, event: gen_qcoreevent.QEvent): bool =


  fQMdiArea_virtualbase_event(self.h, event.h)

type QMdiAreaeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QMdiArea, slot: proc(super: QMdiAreaeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreaeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_event(self: ptr cQMdiArea, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMdiArea_event ".} =
  type Cb = proc(super: QMdiAreaeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QMdiArea(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QMdiArea, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQMdiArea_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QMdiAreaeventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QMdiArea, slot: proc(super: QMdiAreaeventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreaeventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_eventFilter(self: ptr cQMdiArea, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMdiArea_eventFilter ".} =
  type Cb = proc(super: QMdiAreaeventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QMdiArea(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_paintEvent(self: QMdiArea, paintEvent: gen_qevent.QPaintEvent): void =


  fQMdiArea_virtualbase_paintEvent(self.h, paintEvent.h)

type QMdiAreapaintEventBase* = proc(paintEvent: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QMdiArea, slot: proc(super: QMdiAreapaintEventBase, paintEvent: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreapaintEventBase, paintEvent: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_paintEvent(self: ptr cQMdiArea, slot: int, paintEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_paintEvent ".} =
  type Cb = proc(super: QMdiAreapaintEventBase, paintEvent: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(paintEvent: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QMdiArea(h: self), paintEvent)
  let slotval1 = gen_qevent.QPaintEvent(h: paintEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QMdiArea, childEvent: gen_qcoreevent.QChildEvent): void =


  fQMdiArea_virtualbase_childEvent(self.h, childEvent.h)

type QMdiAreachildEventBase* = proc(childEvent: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QMdiArea, slot: proc(super: QMdiAreachildEventBase, childEvent: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreachildEventBase, childEvent: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_childEvent(self: ptr cQMdiArea, slot: int, childEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_childEvent ".} =
  type Cb = proc(super: QMdiAreachildEventBase, childEvent: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(childEvent: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QMdiArea(h: self), childEvent)
  let slotval1 = gen_qcoreevent.QChildEvent(h: childEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QMdiArea, resizeEvent: gen_qevent.QResizeEvent): void =


  fQMdiArea_virtualbase_resizeEvent(self.h, resizeEvent.h)

type QMdiArearesizeEventBase* = proc(resizeEvent: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QMdiArea, slot: proc(super: QMdiArearesizeEventBase, resizeEvent: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiArearesizeEventBase, resizeEvent: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_resizeEvent(self: ptr cQMdiArea, slot: int, resizeEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_resizeEvent ".} =
  type Cb = proc(super: QMdiArearesizeEventBase, resizeEvent: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(resizeEvent: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QMdiArea(h: self), resizeEvent)
  let slotval1 = gen_qevent.QResizeEvent(h: resizeEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QMdiArea, timerEvent: gen_qcoreevent.QTimerEvent): void =


  fQMdiArea_virtualbase_timerEvent(self.h, timerEvent.h)

type QMdiAreatimerEventBase* = proc(timerEvent: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QMdiArea, slot: proc(super: QMdiAreatimerEventBase, timerEvent: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreatimerEventBase, timerEvent: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_timerEvent(self: ptr cQMdiArea, slot: int, timerEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_timerEvent ".} =
  type Cb = proc(super: QMdiAreatimerEventBase, timerEvent: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(timerEvent: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QMdiArea(h: self), timerEvent)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: timerEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QMdiArea, showEvent: gen_qevent.QShowEvent): void =


  fQMdiArea_virtualbase_showEvent(self.h, showEvent.h)

type QMdiAreashowEventBase* = proc(showEvent: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QMdiArea, slot: proc(super: QMdiAreashowEventBase, showEvent: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreashowEventBase, showEvent: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_showEvent(self: ptr cQMdiArea, slot: int, showEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_showEvent ".} =
  type Cb = proc(super: QMdiAreashowEventBase, showEvent: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(showEvent: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QMdiArea(h: self), showEvent)
  let slotval1 = gen_qevent.QShowEvent(h: showEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_viewportEvent(self: QMdiArea, event: gen_qcoreevent.QEvent): bool =


  fQMdiArea_virtualbase_viewportEvent(self.h, event.h)

type QMdiAreaviewportEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QMdiArea, slot: proc(super: QMdiAreaviewportEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreaviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_viewportEvent(self: ptr cQMdiArea, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMdiArea_viewportEvent ".} =
  type Cb = proc(super: QMdiAreaviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QMdiArea(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_scrollContentsBy(self: QMdiArea, dx: cint, dy: cint): void =


  fQMdiArea_virtualbase_scrollContentsBy(self.h, dx, dy)

type QMdiAreascrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QMdiArea, slot: proc(super: QMdiAreascrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreascrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_scrollContentsBy(self: ptr cQMdiArea, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QMdiArea_scrollContentsBy ".} =
  type Cb = proc(super: QMdiAreascrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QMdiArea(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_mousePressEvent(self: QMdiArea, param1: gen_qevent.QMouseEvent): void =


  fQMdiArea_virtualbase_mousePressEvent(self.h, param1.h)

type QMdiAreamousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QMdiArea, slot: proc(super: QMdiAreamousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreamousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_mousePressEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_mousePressEvent ".} =
  type Cb = proc(super: QMdiAreamousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QMdiArea(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QMdiArea, param1: gen_qevent.QMouseEvent): void =


  fQMdiArea_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QMdiAreamouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QMdiArea, slot: proc(super: QMdiAreamouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreamouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_mouseReleaseEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_mouseReleaseEvent ".} =
  type Cb = proc(super: QMdiAreamouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QMdiArea(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QMdiArea, param1: gen_qevent.QMouseEvent): void =


  fQMdiArea_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QMdiAreamouseDoubleClickEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QMdiArea, slot: proc(super: QMdiAreamouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreamouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_mouseDoubleClickEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QMdiAreamouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QMdiArea(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QMdiArea, param1: gen_qevent.QMouseEvent): void =


  fQMdiArea_virtualbase_mouseMoveEvent(self.h, param1.h)

type QMdiAreamouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QMdiArea, slot: proc(super: QMdiAreamouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreamouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_mouseMoveEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_mouseMoveEvent ".} =
  type Cb = proc(super: QMdiAreamouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QMdiArea(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QMdiArea, param1: gen_qevent.QWheelEvent): void =


  fQMdiArea_virtualbase_wheelEvent(self.h, param1.h)

type QMdiAreawheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QMdiArea, slot: proc(super: QMdiAreawheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreawheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_wheelEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_wheelEvent ".} =
  type Cb = proc(super: QMdiAreawheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QMdiArea(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QMdiArea, param1: gen_qevent.QContextMenuEvent): void =


  fQMdiArea_virtualbase_contextMenuEvent(self.h, param1.h)

type QMdiAreacontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QMdiArea, slot: proc(super: QMdiAreacontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreacontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_contextMenuEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_contextMenuEvent ".} =
  type Cb = proc(super: QMdiAreacontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QMdiArea(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QMdiArea, param1: gen_qevent.QDragEnterEvent): void =


  fQMdiArea_virtualbase_dragEnterEvent(self.h, param1.h)

type QMdiAreadragEnterEventBase* = proc(param1: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QMdiArea, slot: proc(super: QMdiAreadragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreadragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_dragEnterEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_dragEnterEvent ".} =
  type Cb = proc(super: QMdiAreadragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QMdiArea(h: self), param1)
  let slotval1 = gen_qevent.QDragEnterEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QMdiArea, param1: gen_qevent.QDragMoveEvent): void =


  fQMdiArea_virtualbase_dragMoveEvent(self.h, param1.h)

type QMdiAreadragMoveEventBase* = proc(param1: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QMdiArea, slot: proc(super: QMdiAreadragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreadragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_dragMoveEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_dragMoveEvent ".} =
  type Cb = proc(super: QMdiAreadragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QMdiArea(h: self), param1)
  let slotval1 = gen_qevent.QDragMoveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QMdiArea, param1: gen_qevent.QDragLeaveEvent): void =


  fQMdiArea_virtualbase_dragLeaveEvent(self.h, param1.h)

type QMdiAreadragLeaveEventBase* = proc(param1: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QMdiArea, slot: proc(super: QMdiAreadragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreadragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_dragLeaveEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_dragLeaveEvent ".} =
  type Cb = proc(super: QMdiAreadragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QMdiArea(h: self), param1)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QMdiArea, param1: gen_qevent.QDropEvent): void =


  fQMdiArea_virtualbase_dropEvent(self.h, param1.h)

type QMdiAreadropEventBase* = proc(param1: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QMdiArea, slot: proc(super: QMdiAreadropEventBase, param1: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreadropEventBase, param1: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_dropEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_dropEvent ".} =
  type Cb = proc(super: QMdiAreadropEventBase, param1: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QMdiArea(h: self), param1)
  let slotval1 = gen_qevent.QDropEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QMdiArea, param1: gen_qevent.QKeyEvent): void =


  fQMdiArea_virtualbase_keyPressEvent(self.h, param1.h)

type QMdiAreakeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QMdiArea, slot: proc(super: QMdiAreakeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreakeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_keyPressEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_keyPressEvent ".} =
  type Cb = proc(super: QMdiAreakeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QMdiArea(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_viewportSizeHint(self: QMdiArea, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQMdiArea_virtualbase_viewportSizeHint(self.h))

type QMdiAreaviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QMdiArea, slot: proc(super: QMdiAreaviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreaviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_viewportSizeHint(self: ptr cQMdiArea, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiArea_viewportSizeHint ".} =
  type Cb = proc(super: QMdiAreaviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QMdiArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_changeEvent(self: QMdiArea, param1: gen_qcoreevent.QEvent): void =


  fQMdiArea_virtualbase_changeEvent(self.h, param1.h)

type QMdiAreachangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QMdiArea, slot: proc(super: QMdiAreachangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreachangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_changeEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_changeEvent ".} =
  type Cb = proc(super: QMdiAreachangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QMdiArea(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QMdiArea, ): cint =


  fQMdiArea_virtualbase_devType(self.h)

type QMdiAreadevTypeBase* = proc(): cint
proc ondevType*(self: QMdiArea, slot: proc(super: QMdiAreadevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreadevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_devType(self: ptr cQMdiArea, slot: int): cint {.exportc: "miqt_exec_callback_QMdiArea_devType ".} =
  type Cb = proc(super: QMdiAreadevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QMdiArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QMdiArea, visible: bool): void =


  fQMdiArea_virtualbase_setVisible(self.h, visible)

type QMdiAreasetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QMdiArea, slot: proc(super: QMdiAreasetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreasetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_setVisible(self: ptr cQMdiArea, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QMdiArea_setVisible ".} =
  type Cb = proc(super: QMdiAreasetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QMdiArea(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QMdiArea, param1: cint): cint =


  fQMdiArea_virtualbase_heightForWidth(self.h, param1)

type QMdiAreaheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QMdiArea, slot: proc(super: QMdiAreaheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreaheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_heightForWidth(self: ptr cQMdiArea, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMdiArea_heightForWidth ".} =
  type Cb = proc(super: QMdiAreaheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QMdiArea(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QMdiArea, ): bool =


  fQMdiArea_virtualbase_hasHeightForWidth(self.h)

type QMdiAreahasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QMdiArea, slot: proc(super: QMdiAreahasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreahasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_hasHeightForWidth(self: ptr cQMdiArea, slot: int): bool {.exportc: "miqt_exec_callback_QMdiArea_hasHeightForWidth ".} =
  type Cb = proc(super: QMdiAreahasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QMdiArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QMdiArea, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQMdiArea_virtualbase_paintEngine(self.h))

type QMdiAreapaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QMdiArea, slot: proc(super: QMdiAreapaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreapaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_paintEngine(self: ptr cQMdiArea, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiArea_paintEngine ".} =
  type Cb = proc(super: QMdiAreapaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QMdiArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: QMdiArea, event: gen_qevent.QKeyEvent): void =


  fQMdiArea_virtualbase_keyReleaseEvent(self.h, event.h)

type QMdiAreakeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QMdiArea, slot: proc(super: QMdiAreakeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreakeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_keyReleaseEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_keyReleaseEvent ".} =
  type Cb = proc(super: QMdiAreakeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QMdiArea(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QMdiArea, event: gen_qevent.QFocusEvent): void =


  fQMdiArea_virtualbase_focusInEvent(self.h, event.h)

type QMdiAreafocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QMdiArea, slot: proc(super: QMdiAreafocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreafocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_focusInEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_focusInEvent ".} =
  type Cb = proc(super: QMdiAreafocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QMdiArea(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QMdiArea, event: gen_qevent.QFocusEvent): void =


  fQMdiArea_virtualbase_focusOutEvent(self.h, event.h)

type QMdiAreafocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QMdiArea, slot: proc(super: QMdiAreafocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreafocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_focusOutEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_focusOutEvent ".} =
  type Cb = proc(super: QMdiAreafocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QMdiArea(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QMdiArea, event: gen_qcoreevent.QEvent): void =


  fQMdiArea_virtualbase_enterEvent(self.h, event.h)

type QMdiAreaenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QMdiArea, slot: proc(super: QMdiAreaenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreaenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_enterEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_enterEvent ".} =
  type Cb = proc(super: QMdiAreaenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QMdiArea(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QMdiArea, event: gen_qcoreevent.QEvent): void =


  fQMdiArea_virtualbase_leaveEvent(self.h, event.h)

type QMdiArealeaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QMdiArea, slot: proc(super: QMdiArealeaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiArealeaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_leaveEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_leaveEvent ".} =
  type Cb = proc(super: QMdiArealeaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QMdiArea(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QMdiArea, event: gen_qevent.QMoveEvent): void =


  fQMdiArea_virtualbase_moveEvent(self.h, event.h)

type QMdiAreamoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QMdiArea, slot: proc(super: QMdiAreamoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreamoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_moveEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_moveEvent ".} =
  type Cb = proc(super: QMdiAreamoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QMdiArea(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QMdiArea, event: gen_qevent.QCloseEvent): void =


  fQMdiArea_virtualbase_closeEvent(self.h, event.h)

type QMdiAreacloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QMdiArea, slot: proc(super: QMdiAreacloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreacloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_closeEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_closeEvent ".} =
  type Cb = proc(super: QMdiAreacloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QMdiArea(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QMdiArea, event: gen_qevent.QTabletEvent): void =


  fQMdiArea_virtualbase_tabletEvent(self.h, event.h)

type QMdiAreatabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QMdiArea, slot: proc(super: QMdiAreatabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreatabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_tabletEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_tabletEvent ".} =
  type Cb = proc(super: QMdiAreatabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QMdiArea(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QMdiArea, event: gen_qevent.QActionEvent): void =


  fQMdiArea_virtualbase_actionEvent(self.h, event.h)

type QMdiAreaactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QMdiArea, slot: proc(super: QMdiAreaactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreaactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_actionEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_actionEvent ".} =
  type Cb = proc(super: QMdiAreaactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QMdiArea(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QMdiArea, event: gen_qevent.QHideEvent): void =


  fQMdiArea_virtualbase_hideEvent(self.h, event.h)

type QMdiAreahideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QMdiArea, slot: proc(super: QMdiAreahideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreahideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_hideEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_hideEvent ".} =
  type Cb = proc(super: QMdiAreahideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QMdiArea(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QMdiArea, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQMdiArea_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QMdiAreanativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QMdiArea, slot: proc(super: QMdiAreanativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreanativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_nativeEvent(self: ptr cQMdiArea, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QMdiArea_nativeEvent ".} =
  type Cb = proc(super: QMdiAreanativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QMdiArea(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QMdiArea, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQMdiArea_virtualbase_metric(self.h, cint(param1))

type QMdiAreametricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QMdiArea, slot: proc(super: QMdiAreametricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreametricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_metric(self: ptr cQMdiArea, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMdiArea_metric ".} =
  type Cb = proc(super: QMdiAreametricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QMdiArea(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QMdiArea, painter: gen_qpainter.QPainter): void =


  fQMdiArea_virtualbase_initPainter(self.h, painter.h)

type QMdiAreainitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QMdiArea, slot: proc(super: QMdiAreainitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreainitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_initPainter(self: ptr cQMdiArea, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_initPainter ".} =
  type Cb = proc(super: QMdiAreainitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QMdiArea(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QMdiArea, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQMdiArea_virtualbase_redirected(self.h, offset.h))

type QMdiArearedirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QMdiArea, slot: proc(super: QMdiArearedirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QMdiArearedirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_redirected(self: ptr cQMdiArea, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QMdiArea_redirected ".} =
  type Cb = proc(super: QMdiArearedirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QMdiArea(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QMdiArea, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQMdiArea_virtualbase_sharedPainter(self.h))

type QMdiAreasharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QMdiArea, slot: proc(super: QMdiAreasharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreasharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_sharedPainter(self: ptr cQMdiArea, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiArea_sharedPainter ".} =
  type Cb = proc(super: QMdiAreasharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QMdiArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QMdiArea, param1: gen_qevent.QInputMethodEvent): void =


  fQMdiArea_virtualbase_inputMethodEvent(self.h, param1.h)

type QMdiAreainputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QMdiArea, slot: proc(super: QMdiAreainputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreainputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_inputMethodEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_inputMethodEvent ".} =
  type Cb = proc(super: QMdiAreainputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QMdiArea(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QMdiArea, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQMdiArea_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QMdiAreainputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QMdiArea, slot: proc(super: QMdiAreainputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreainputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_inputMethodQuery(self: ptr cQMdiArea, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QMdiArea_inputMethodQuery ".} =
  type Cb = proc(super: QMdiAreainputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QMdiArea(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QMdiArea, next: bool): bool =


  fQMdiArea_virtualbase_focusNextPrevChild(self.h, next)

type QMdiAreafocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QMdiArea, slot: proc(super: QMdiAreafocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreafocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_focusNextPrevChild(self: ptr cQMdiArea, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QMdiArea_focusNextPrevChild ".} =
  type Cb = proc(super: QMdiAreafocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QMdiArea(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_customEvent(self: QMdiArea, event: gen_qcoreevent.QEvent): void =


  fQMdiArea_virtualbase_customEvent(self.h, event.h)

type QMdiAreacustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QMdiArea, slot: proc(super: QMdiAreacustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreacustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_customEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_customEvent ".} =
  type Cb = proc(super: QMdiAreacustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QMdiArea(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QMdiArea, signal: gen_qmetaobject.QMetaMethod): void =


  fQMdiArea_virtualbase_connectNotify(self.h, signal.h)

type QMdiAreaconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QMdiArea, slot: proc(super: QMdiAreaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_connectNotify(self: ptr cQMdiArea, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_connectNotify ".} =
  type Cb = proc(super: QMdiAreaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QMdiArea(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QMdiArea, signal: gen_qmetaobject.QMetaMethod): void =


  fQMdiArea_virtualbase_disconnectNotify(self.h, signal.h)

type QMdiAreadisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QMdiArea, slot: proc(super: QMdiAreadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiAreadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_disconnectNotify(self: ptr cQMdiArea, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_disconnectNotify ".} =
  type Cb = proc(super: QMdiAreadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QMdiArea(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QMdiArea): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMdiArea_staticMetaObject())
proc delete*(self: QMdiArea) =
  fcQMdiArea_delete(self.h)
