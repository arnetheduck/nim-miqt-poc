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
{.compile("gen_qdesktopwidget.cpp", cflags).}


import gen_qdesktopwidget_types
export gen_qdesktopwidget_types

import
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
  gen_qrect,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
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
  gen_qrect,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQDesktopWidget*{.exportc: "QDesktopWidget", incompleteStruct.} = object

proc fcQDesktopWidget_new(): ptr cQDesktopWidget {.importc: "QDesktopWidget_new".}
proc fcQDesktopWidget_metaObject(self: pointer, ): pointer {.importc: "QDesktopWidget_metaObject".}
proc fcQDesktopWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesktopWidget_metacast".}
proc fcQDesktopWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesktopWidget_metacall".}
proc fcQDesktopWidget_tr(s: cstring): struct_miqt_string {.importc: "QDesktopWidget_tr".}
proc fcQDesktopWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QDesktopWidget_trUtf8".}
proc fcQDesktopWidget_screenNumber(self: pointer, ): cint {.importc: "QDesktopWidget_screenNumber".}
proc fcQDesktopWidget_screenGeometry(self: pointer, widget: pointer): pointer {.importc: "QDesktopWidget_screenGeometry".}
proc fcQDesktopWidget_availableGeometry(self: pointer, widget: pointer): pointer {.importc: "QDesktopWidget_availableGeometry".}
proc fcQDesktopWidget_isVirtualDesktop(self: pointer, ): bool {.importc: "QDesktopWidget_isVirtualDesktop".}
proc fcQDesktopWidget_numScreens(self: pointer, ): cint {.importc: "QDesktopWidget_numScreens".}
proc fcQDesktopWidget_screenCount(self: pointer, ): cint {.importc: "QDesktopWidget_screenCount".}
proc fcQDesktopWidget_primaryScreen(self: pointer, ): cint {.importc: "QDesktopWidget_primaryScreen".}
proc fcQDesktopWidget_screenNumberWithQPoint(self: pointer, param1: pointer): cint {.importc: "QDesktopWidget_screenNumberWithQPoint".}
proc fcQDesktopWidget_screen(self: pointer, ): pointer {.importc: "QDesktopWidget_screen".}
proc fcQDesktopWidget_screenGeometry2(self: pointer, ): pointer {.importc: "QDesktopWidget_screenGeometry2".}
proc fcQDesktopWidget_screenGeometryWithPoint(self: pointer, point: pointer): pointer {.importc: "QDesktopWidget_screenGeometryWithPoint".}
proc fcQDesktopWidget_availableGeometry2(self: pointer, ): pointer {.importc: "QDesktopWidget_availableGeometry2".}
proc fcQDesktopWidget_availableGeometryWithPoint(self: pointer, point: pointer): pointer {.importc: "QDesktopWidget_availableGeometryWithPoint".}
proc fcQDesktopWidget_resized(self: pointer, param1: cint): void {.importc: "QDesktopWidget_resized".}
proc fQDesktopWidget_connect_resized(self: pointer, slot: int) {.importc: "QDesktopWidget_connect_resized".}
proc fcQDesktopWidget_workAreaResized(self: pointer, param1: cint): void {.importc: "QDesktopWidget_workAreaResized".}
proc fQDesktopWidget_connect_workAreaResized(self: pointer, slot: int) {.importc: "QDesktopWidget_connect_workAreaResized".}
proc fcQDesktopWidget_screenCountChanged(self: pointer, param1: cint): void {.importc: "QDesktopWidget_screenCountChanged".}
proc fQDesktopWidget_connect_screenCountChanged(self: pointer, slot: int) {.importc: "QDesktopWidget_connect_screenCountChanged".}
proc fcQDesktopWidget_primaryScreenChanged(self: pointer, ): void {.importc: "QDesktopWidget_primaryScreenChanged".}
proc fQDesktopWidget_connect_primaryScreenChanged(self: pointer, slot: int) {.importc: "QDesktopWidget_connect_primaryScreenChanged".}
proc fcQDesktopWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDesktopWidget_tr2".}
proc fcQDesktopWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDesktopWidget_tr3".}
proc fcQDesktopWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDesktopWidget_trUtf82".}
proc fcQDesktopWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDesktopWidget_trUtf83".}
proc fcQDesktopWidget_screenNumber1(self: pointer, widget: pointer): cint {.importc: "QDesktopWidget_screenNumber1".}
proc fcQDesktopWidget_screen1(self: pointer, screen: cint): pointer {.importc: "QDesktopWidget_screen1".}
proc fcQDesktopWidget_screenGeometry1(self: pointer, screen: cint): pointer {.importc: "QDesktopWidget_screenGeometry1".}
proc fcQDesktopWidget_availableGeometry1(self: pointer, screen: cint): pointer {.importc: "QDesktopWidget_availableGeometry1".}
proc fQDesktopWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QDesktopWidget_virtualbase_metaObject".}
proc fcQDesktopWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_metaObject".}
proc fQDesktopWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QDesktopWidget_virtualbase_metacast".}
proc fcQDesktopWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_metacast".}
proc fQDesktopWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDesktopWidget_virtualbase_metacall".}
proc fcQDesktopWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_metacall".}
proc fQDesktopWidget_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QDesktopWidget_virtualbase_resizeEvent".}
proc fcQDesktopWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_resizeEvent".}
proc fQDesktopWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QDesktopWidget_virtualbase_devType".}
proc fcQDesktopWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_devType".}
proc fQDesktopWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDesktopWidget_virtualbase_setVisible".}
proc fcQDesktopWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_setVisible".}
proc fQDesktopWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDesktopWidget_virtualbase_sizeHint".}
proc fcQDesktopWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_sizeHint".}
proc fQDesktopWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDesktopWidget_virtualbase_minimumSizeHint".}
proc fcQDesktopWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_minimumSizeHint".}
proc fQDesktopWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDesktopWidget_virtualbase_heightForWidth".}
proc fcQDesktopWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_heightForWidth".}
proc fQDesktopWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDesktopWidget_virtualbase_hasHeightForWidth".}
proc fcQDesktopWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_hasHeightForWidth".}
proc fQDesktopWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDesktopWidget_virtualbase_paintEngine".}
proc fcQDesktopWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_paintEngine".}
proc fQDesktopWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDesktopWidget_virtualbase_event".}
proc fcQDesktopWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_event".}
proc fQDesktopWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_mousePressEvent".}
proc fcQDesktopWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_mousePressEvent".}
proc fQDesktopWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_mouseReleaseEvent".}
proc fcQDesktopWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_mouseReleaseEvent".}
proc fQDesktopWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQDesktopWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_mouseDoubleClickEvent".}
proc fQDesktopWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_mouseMoveEvent".}
proc fcQDesktopWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_mouseMoveEvent".}
proc fQDesktopWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_wheelEvent".}
proc fcQDesktopWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_wheelEvent".}
proc fQDesktopWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_keyPressEvent".}
proc fcQDesktopWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_keyPressEvent".}
proc fQDesktopWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_keyReleaseEvent".}
proc fcQDesktopWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_keyReleaseEvent".}
proc fQDesktopWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_focusInEvent".}
proc fcQDesktopWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_focusInEvent".}
proc fQDesktopWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_focusOutEvent".}
proc fcQDesktopWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_focusOutEvent".}
proc fQDesktopWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_enterEvent".}
proc fcQDesktopWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_enterEvent".}
proc fQDesktopWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_leaveEvent".}
proc fcQDesktopWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_leaveEvent".}
proc fQDesktopWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_paintEvent".}
proc fcQDesktopWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_paintEvent".}
proc fQDesktopWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_moveEvent".}
proc fcQDesktopWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_moveEvent".}
proc fQDesktopWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_closeEvent".}
proc fcQDesktopWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_closeEvent".}
proc fQDesktopWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_contextMenuEvent".}
proc fcQDesktopWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_contextMenuEvent".}
proc fQDesktopWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_tabletEvent".}
proc fcQDesktopWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_tabletEvent".}
proc fQDesktopWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_actionEvent".}
proc fcQDesktopWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_actionEvent".}
proc fQDesktopWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_dragEnterEvent".}
proc fcQDesktopWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_dragEnterEvent".}
proc fQDesktopWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_dragMoveEvent".}
proc fcQDesktopWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_dragMoveEvent".}
proc fQDesktopWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_dragLeaveEvent".}
proc fcQDesktopWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_dragLeaveEvent".}
proc fQDesktopWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_dropEvent".}
proc fcQDesktopWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_dropEvent".}
proc fQDesktopWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_showEvent".}
proc fcQDesktopWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_showEvent".}
proc fQDesktopWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_hideEvent".}
proc fcQDesktopWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_hideEvent".}
proc fQDesktopWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QDesktopWidget_virtualbase_nativeEvent".}
proc fcQDesktopWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_nativeEvent".}
proc fQDesktopWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QDesktopWidget_virtualbase_changeEvent".}
proc fcQDesktopWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_changeEvent".}
proc fQDesktopWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDesktopWidget_virtualbase_metric".}
proc fcQDesktopWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_metric".}
proc fQDesktopWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDesktopWidget_virtualbase_initPainter".}
proc fcQDesktopWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_initPainter".}
proc fQDesktopWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDesktopWidget_virtualbase_redirected".}
proc fcQDesktopWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_redirected".}
proc fQDesktopWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDesktopWidget_virtualbase_sharedPainter".}
proc fcQDesktopWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_sharedPainter".}
proc fQDesktopWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDesktopWidget_virtualbase_inputMethodEvent".}
proc fcQDesktopWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_inputMethodEvent".}
proc fQDesktopWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDesktopWidget_virtualbase_inputMethodQuery".}
proc fcQDesktopWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_inputMethodQuery".}
proc fQDesktopWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDesktopWidget_virtualbase_focusNextPrevChild".}
proc fcQDesktopWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_focusNextPrevChild".}
proc fQDesktopWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDesktopWidget_virtualbase_eventFilter".}
proc fcQDesktopWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_eventFilter".}
proc fQDesktopWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_timerEvent".}
proc fcQDesktopWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_timerEvent".}
proc fQDesktopWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_childEvent".}
proc fcQDesktopWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_childEvent".}
proc fQDesktopWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_customEvent".}
proc fcQDesktopWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_customEvent".}
proc fQDesktopWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDesktopWidget_virtualbase_connectNotify".}
proc fcQDesktopWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_connectNotify".}
proc fQDesktopWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDesktopWidget_virtualbase_disconnectNotify".}
proc fcQDesktopWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_disconnectNotify".}
proc fcQDesktopWidget_staticMetaObject(): pointer {.importc: "QDesktopWidget_staticMetaObject".}
proc fcQDesktopWidget_delete(self: pointer) {.importc: "QDesktopWidget_delete".}


func init*(T: type QDesktopWidget, h: ptr cQDesktopWidget): QDesktopWidget =
  T(h: h)
proc create*(T: type QDesktopWidget, ): QDesktopWidget =

  QDesktopWidget.init(fcQDesktopWidget_new())
proc metaObject*(self: QDesktopWidget, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDesktopWidget_metaObject(self.h))

proc metacast*(self: QDesktopWidget, param1: cstring): pointer =

  fcQDesktopWidget_metacast(self.h, param1)

proc metacall*(self: QDesktopWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDesktopWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDesktopWidget, s: cstring): string =

  let v_ms = fcQDesktopWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QDesktopWidget, s: cstring): string =

  let v_ms = fcQDesktopWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc screenNumber*(self: QDesktopWidget, ): cint =

  fcQDesktopWidget_screenNumber(self.h)

proc screenGeometry*(self: QDesktopWidget, widget: gen_qwidget.QWidget): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQDesktopWidget_screenGeometry(self.h, widget.h))

proc availableGeometry*(self: QDesktopWidget, widget: gen_qwidget.QWidget): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQDesktopWidget_availableGeometry(self.h, widget.h))

proc isVirtualDesktop*(self: QDesktopWidget, ): bool =

  fcQDesktopWidget_isVirtualDesktop(self.h)

proc numScreens*(self: QDesktopWidget, ): cint =

  fcQDesktopWidget_numScreens(self.h)

proc screenCount*(self: QDesktopWidget, ): cint =

  fcQDesktopWidget_screenCount(self.h)

proc primaryScreen*(self: QDesktopWidget, ): cint =

  fcQDesktopWidget_primaryScreen(self.h)

proc screenNumberWithQPoint*(self: QDesktopWidget, param1: gen_qpoint.QPoint): cint =

  fcQDesktopWidget_screenNumberWithQPoint(self.h, param1.h)

proc screen*(self: QDesktopWidget, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQDesktopWidget_screen(self.h))

proc screenGeometry2*(self: QDesktopWidget, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQDesktopWidget_screenGeometry2(self.h))

proc screenGeometryWithPoint*(self: QDesktopWidget, point: gen_qpoint.QPoint): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQDesktopWidget_screenGeometryWithPoint(self.h, point.h))

proc availableGeometry2*(self: QDesktopWidget, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQDesktopWidget_availableGeometry2(self.h))

proc availableGeometryWithPoint*(self: QDesktopWidget, point: gen_qpoint.QPoint): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQDesktopWidget_availableGeometryWithPoint(self.h, point.h))

proc resized*(self: QDesktopWidget, param1: cint): void =

  fcQDesktopWidget_resized(self.h, param1)

proc miqt_exec_callback_QDesktopWidget_resized(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onresized*(self: QDesktopWidget, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDesktopWidget_connect_resized(self.h, cast[int](addr tmp[]))
proc workAreaResized*(self: QDesktopWidget, param1: cint): void =

  fcQDesktopWidget_workAreaResized(self.h, param1)

proc miqt_exec_callback_QDesktopWidget_workAreaResized(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onworkAreaResized*(self: QDesktopWidget, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDesktopWidget_connect_workAreaResized(self.h, cast[int](addr tmp[]))
proc screenCountChanged*(self: QDesktopWidget, param1: cint): void =

  fcQDesktopWidget_screenCountChanged(self.h, param1)

proc miqt_exec_callback_QDesktopWidget_screenCountChanged(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onscreenCountChanged*(self: QDesktopWidget, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDesktopWidget_connect_screenCountChanged(self.h, cast[int](addr tmp[]))
proc primaryScreenChanged*(self: QDesktopWidget, ): void =

  fcQDesktopWidget_primaryScreenChanged(self.h)

proc miqt_exec_callback_QDesktopWidget_primaryScreenChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onprimaryScreenChanged*(self: QDesktopWidget, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDesktopWidget_connect_primaryScreenChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QDesktopWidget, s: cstring, c: cstring): string =

  let v_ms = fcQDesktopWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDesktopWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDesktopWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QDesktopWidget, s: cstring, c: cstring): string =

  let v_ms = fcQDesktopWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QDesktopWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDesktopWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc screenNumber1*(self: QDesktopWidget, widget: gen_qwidget.QWidget): cint =

  fcQDesktopWidget_screenNumber1(self.h, widget.h)

proc screen1*(self: QDesktopWidget, screen: cint): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQDesktopWidget_screen1(self.h, screen))

proc screenGeometry1*(self: QDesktopWidget, screen: cint): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQDesktopWidget_screenGeometry1(self.h, screen))

proc availableGeometry1*(self: QDesktopWidget, screen: cint): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQDesktopWidget_availableGeometry1(self.h, screen))

proc callVirtualBase_metaObject(self: QDesktopWidget, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQDesktopWidget_virtualbase_metaObject(self.h))

type QDesktopWidgetmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_metaObject(self: ptr cQDesktopWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_metaObject ".} =
  type Cb = proc(super: QDesktopWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QDesktopWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QDesktopWidget, param1: cstring): pointer =


  fQDesktopWidget_virtualbase_metacast(self.h, param1)

type QDesktopWidgetmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_metacast(self: ptr cQDesktopWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_metacast ".} =
  type Cb = proc(super: QDesktopWidgetmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QDesktopWidget(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QDesktopWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDesktopWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDesktopWidgetmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_metacall(self: ptr cQDesktopWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDesktopWidget_metacall ".} =
  type Cb = proc(super: QDesktopWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDesktopWidget(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_resizeEvent(self: QDesktopWidget, e: gen_qevent.QResizeEvent): void =


  fQDesktopWidget_virtualbase_resizeEvent(self.h, e.h)

type QDesktopWidgetresizeEventBase* = proc(e: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetresizeEventBase, e: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetresizeEventBase, e: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_resizeEvent(self: ptr cQDesktopWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_resizeEvent ".} =
  type Cb = proc(super: QDesktopWidgetresizeEventBase, e: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QDesktopWidget(h: self), e)
  let slotval1 = gen_qevent.QResizeEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QDesktopWidget, ): cint =


  fQDesktopWidget_virtualbase_devType(self.h)

type QDesktopWidgetdevTypeBase* = proc(): cint
proc ondevType*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_devType(self: ptr cQDesktopWidget, slot: int): cint {.exportc: "miqt_exec_callback_QDesktopWidget_devType ".} =
  type Cb = proc(super: QDesktopWidgetdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QDesktopWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QDesktopWidget, visible: bool): void =


  fQDesktopWidget_virtualbase_setVisible(self.h, visible)

type QDesktopWidgetsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_setVisible(self: ptr cQDesktopWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDesktopWidget_setVisible ".} =
  type Cb = proc(super: QDesktopWidgetsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QDesktopWidget(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QDesktopWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDesktopWidget_virtualbase_sizeHint(self.h))

type QDesktopWidgetsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_sizeHint(self: ptr cQDesktopWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_sizeHint ".} =
  type Cb = proc(super: QDesktopWidgetsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QDesktopWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QDesktopWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDesktopWidget_virtualbase_minimumSizeHint(self.h))

type QDesktopWidgetminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_minimumSizeHint(self: ptr cQDesktopWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_minimumSizeHint ".} =
  type Cb = proc(super: QDesktopWidgetminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QDesktopWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QDesktopWidget, param1: cint): cint =


  fQDesktopWidget_virtualbase_heightForWidth(self.h, param1)

type QDesktopWidgetheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_heightForWidth(self: ptr cQDesktopWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDesktopWidget_heightForWidth ".} =
  type Cb = proc(super: QDesktopWidgetheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QDesktopWidget(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QDesktopWidget, ): bool =


  fQDesktopWidget_virtualbase_hasHeightForWidth(self.h)

type QDesktopWidgethasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QDesktopWidget, slot: proc(super: QDesktopWidgethasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgethasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_hasHeightForWidth(self: ptr cQDesktopWidget, slot: int): bool {.exportc: "miqt_exec_callback_QDesktopWidget_hasHeightForWidth ".} =
  type Cb = proc(super: QDesktopWidgethasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QDesktopWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QDesktopWidget, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQDesktopWidget_virtualbase_paintEngine(self.h))

type QDesktopWidgetpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_paintEngine(self: ptr cQDesktopWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_paintEngine ".} =
  type Cb = proc(super: QDesktopWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QDesktopWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QDesktopWidget, event: gen_qcoreevent.QEvent): bool =


  fQDesktopWidget_virtualbase_event(self.h, event.h)

type QDesktopWidgeteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgeteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_event(self: ptr cQDesktopWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDesktopWidget_event ".} =
  type Cb = proc(super: QDesktopWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDesktopWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QDesktopWidget, event: gen_qevent.QMouseEvent): void =


  fQDesktopWidget_virtualbase_mousePressEvent(self.h, event.h)

type QDesktopWidgetmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_mousePressEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_mousePressEvent ".} =
  type Cb = proc(super: QDesktopWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QDesktopWidget, event: gen_qevent.QMouseEvent): void =


  fQDesktopWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QDesktopWidgetmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_mouseReleaseEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_mouseReleaseEvent ".} =
  type Cb = proc(super: QDesktopWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QDesktopWidget, event: gen_qevent.QMouseEvent): void =


  fQDesktopWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDesktopWidgetmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_mouseDoubleClickEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QDesktopWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QDesktopWidget, event: gen_qevent.QMouseEvent): void =


  fQDesktopWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QDesktopWidgetmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_mouseMoveEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_mouseMoveEvent ".} =
  type Cb = proc(super: QDesktopWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QDesktopWidget, event: gen_qevent.QWheelEvent): void =


  fQDesktopWidget_virtualbase_wheelEvent(self.h, event.h)

type QDesktopWidgetwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_wheelEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_wheelEvent ".} =
  type Cb = proc(super: QDesktopWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QDesktopWidget, event: gen_qevent.QKeyEvent): void =


  fQDesktopWidget_virtualbase_keyPressEvent(self.h, event.h)

type QDesktopWidgetkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_keyPressEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_keyPressEvent ".} =
  type Cb = proc(super: QDesktopWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QDesktopWidget, event: gen_qevent.QKeyEvent): void =


  fQDesktopWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QDesktopWidgetkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_keyReleaseEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_keyReleaseEvent ".} =
  type Cb = proc(super: QDesktopWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QDesktopWidget, event: gen_qevent.QFocusEvent): void =


  fQDesktopWidget_virtualbase_focusInEvent(self.h, event.h)

type QDesktopWidgetfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_focusInEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_focusInEvent ".} =
  type Cb = proc(super: QDesktopWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QDesktopWidget, event: gen_qevent.QFocusEvent): void =


  fQDesktopWidget_virtualbase_focusOutEvent(self.h, event.h)

type QDesktopWidgetfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_focusOutEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_focusOutEvent ".} =
  type Cb = proc(super: QDesktopWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QDesktopWidget, event: gen_qcoreevent.QEvent): void =


  fQDesktopWidget_virtualbase_enterEvent(self.h, event.h)

type QDesktopWidgetenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_enterEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_enterEvent ".} =
  type Cb = proc(super: QDesktopWidgetenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QDesktopWidget, event: gen_qcoreevent.QEvent): void =


  fQDesktopWidget_virtualbase_leaveEvent(self.h, event.h)

type QDesktopWidgetleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_leaveEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_leaveEvent ".} =
  type Cb = proc(super: QDesktopWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QDesktopWidget, event: gen_qevent.QPaintEvent): void =


  fQDesktopWidget_virtualbase_paintEvent(self.h, event.h)

type QDesktopWidgetpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_paintEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_paintEvent ".} =
  type Cb = proc(super: QDesktopWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QDesktopWidget, event: gen_qevent.QMoveEvent): void =


  fQDesktopWidget_virtualbase_moveEvent(self.h, event.h)

type QDesktopWidgetmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_moveEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_moveEvent ".} =
  type Cb = proc(super: QDesktopWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QDesktopWidget, event: gen_qevent.QCloseEvent): void =


  fQDesktopWidget_virtualbase_closeEvent(self.h, event.h)

type QDesktopWidgetcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_closeEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_closeEvent ".} =
  type Cb = proc(super: QDesktopWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QDesktopWidget, event: gen_qevent.QContextMenuEvent): void =


  fQDesktopWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QDesktopWidgetcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_contextMenuEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_contextMenuEvent ".} =
  type Cb = proc(super: QDesktopWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QDesktopWidget, event: gen_qevent.QTabletEvent): void =


  fQDesktopWidget_virtualbase_tabletEvent(self.h, event.h)

type QDesktopWidgettabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgettabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_tabletEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_tabletEvent ".} =
  type Cb = proc(super: QDesktopWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QDesktopWidget, event: gen_qevent.QActionEvent): void =


  fQDesktopWidget_virtualbase_actionEvent(self.h, event.h)

type QDesktopWidgetactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_actionEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_actionEvent ".} =
  type Cb = proc(super: QDesktopWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QDesktopWidget, event: gen_qevent.QDragEnterEvent): void =


  fQDesktopWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QDesktopWidgetdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_dragEnterEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_dragEnterEvent ".} =
  type Cb = proc(super: QDesktopWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QDesktopWidget, event: gen_qevent.QDragMoveEvent): void =


  fQDesktopWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QDesktopWidgetdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_dragMoveEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_dragMoveEvent ".} =
  type Cb = proc(super: QDesktopWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QDesktopWidget, event: gen_qevent.QDragLeaveEvent): void =


  fQDesktopWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QDesktopWidgetdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_dragLeaveEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_dragLeaveEvent ".} =
  type Cb = proc(super: QDesktopWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QDesktopWidget, event: gen_qevent.QDropEvent): void =


  fQDesktopWidget_virtualbase_dropEvent(self.h, event.h)

type QDesktopWidgetdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_dropEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_dropEvent ".} =
  type Cb = proc(super: QDesktopWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QDesktopWidget, event: gen_qevent.QShowEvent): void =


  fQDesktopWidget_virtualbase_showEvent(self.h, event.h)

type QDesktopWidgetshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_showEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_showEvent ".} =
  type Cb = proc(super: QDesktopWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QDesktopWidget, event: gen_qevent.QHideEvent): void =


  fQDesktopWidget_virtualbase_hideEvent(self.h, event.h)

type QDesktopWidgethideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgethideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_hideEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_hideEvent ".} =
  type Cb = proc(super: QDesktopWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QDesktopWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQDesktopWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDesktopWidgetnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_nativeEvent(self: ptr cQDesktopWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QDesktopWidget_nativeEvent ".} =
  type Cb = proc(super: QDesktopWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QDesktopWidget(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QDesktopWidget, param1: gen_qcoreevent.QEvent): void =


  fQDesktopWidget_virtualbase_changeEvent(self.h, param1.h)

type QDesktopWidgetchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_changeEvent(self: ptr cQDesktopWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_changeEvent ".} =
  type Cb = proc(super: QDesktopWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QDesktopWidget(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QDesktopWidget, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQDesktopWidget_virtualbase_metric(self.h, cint(param1))

type QDesktopWidgetmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_metric(self: ptr cQDesktopWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDesktopWidget_metric ".} =
  type Cb = proc(super: QDesktopWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QDesktopWidget(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QDesktopWidget, painter: gen_qpainter.QPainter): void =


  fQDesktopWidget_virtualbase_initPainter(self.h, painter.h)

type QDesktopWidgetinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_initPainter(self: ptr cQDesktopWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_initPainter ".} =
  type Cb = proc(super: QDesktopWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QDesktopWidget(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QDesktopWidget, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQDesktopWidget_virtualbase_redirected(self.h, offset.h))

type QDesktopWidgetredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_redirected(self: ptr cQDesktopWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_redirected ".} =
  type Cb = proc(super: QDesktopWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QDesktopWidget(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QDesktopWidget, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQDesktopWidget_virtualbase_sharedPainter(self.h))

type QDesktopWidgetsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_sharedPainter(self: ptr cQDesktopWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_sharedPainter ".} =
  type Cb = proc(super: QDesktopWidgetsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QDesktopWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QDesktopWidget, param1: gen_qevent.QInputMethodEvent): void =


  fQDesktopWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QDesktopWidgetinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_inputMethodEvent(self: ptr cQDesktopWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_inputMethodEvent ".} =
  type Cb = proc(super: QDesktopWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QDesktopWidget(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QDesktopWidget, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQDesktopWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDesktopWidgetinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_inputMethodQuery(self: ptr cQDesktopWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_inputMethodQuery ".} =
  type Cb = proc(super: QDesktopWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QDesktopWidget(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QDesktopWidget, next: bool): bool =


  fQDesktopWidget_virtualbase_focusNextPrevChild(self.h, next)

type QDesktopWidgetfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_focusNextPrevChild(self: ptr cQDesktopWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDesktopWidget_focusNextPrevChild ".} =
  type Cb = proc(super: QDesktopWidgetfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QDesktopWidget(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QDesktopWidget, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQDesktopWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDesktopWidgeteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDesktopWidget, slot: proc(super: QDesktopWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_eventFilter(self: ptr cQDesktopWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDesktopWidget_eventFilter ".} =
  type Cb = proc(super: QDesktopWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDesktopWidget(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QDesktopWidget, event: gen_qcoreevent.QTimerEvent): void =


  fQDesktopWidget_virtualbase_timerEvent(self.h, event.h)

type QDesktopWidgettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_timerEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_timerEvent ".} =
  type Cb = proc(super: QDesktopWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QDesktopWidget, event: gen_qcoreevent.QChildEvent): void =


  fQDesktopWidget_virtualbase_childEvent(self.h, event.h)

type QDesktopWidgetchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_childEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_childEvent ".} =
  type Cb = proc(super: QDesktopWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDesktopWidget, event: gen_qcoreevent.QEvent): void =


  fQDesktopWidget_virtualbase_customEvent(self.h, event.h)

type QDesktopWidgetcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_customEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_customEvent ".} =
  type Cb = proc(super: QDesktopWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDesktopWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDesktopWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQDesktopWidget_virtualbase_connectNotify(self.h, signal.h)

type QDesktopWidgetconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_connectNotify(self: ptr cQDesktopWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_connectNotify ".} =
  type Cb = proc(super: QDesktopWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDesktopWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDesktopWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQDesktopWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QDesktopWidgetdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDesktopWidget, slot: proc(super: QDesktopWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDesktopWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_disconnectNotify(self: ptr cQDesktopWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_disconnectNotify ".} =
  type Cb = proc(super: QDesktopWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDesktopWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QDesktopWidget): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQDesktopWidget_staticMetaObject())
proc delete*(self: QDesktopWidget) =
  fcQDesktopWidget_delete(self.h)
