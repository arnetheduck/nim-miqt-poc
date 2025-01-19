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
{.compile("gen_qmdisubwindow.cpp", cflags).}


type QMdiSubWindowSubWindowOption* = cint
const
  QMdiSubWindowAllowOutsideAreaHorizontally* = 1
  QMdiSubWindowAllowOutsideAreaVertically* = 2
  QMdiSubWindowRubberBandResize* = 4
  QMdiSubWindowRubberBandMove* = 8



import gen_qmdisubwindow_types
export gen_qmdisubwindow_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qmdiarea,
  gen_qmenu,
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
  gen_qcoreevent,
  gen_qevent,
  gen_qmdiarea,
  gen_qmenu,
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

type cQMdiSubWindow*{.exportc: "QMdiSubWindow", incompleteStruct.} = object

proc fcQMdiSubWindow_new(parent: pointer): ptr cQMdiSubWindow {.importc: "QMdiSubWindow_new".}
proc fcQMdiSubWindow_new2(): ptr cQMdiSubWindow {.importc: "QMdiSubWindow_new2".}
proc fcQMdiSubWindow_new3(parent: pointer, flags: cint): ptr cQMdiSubWindow {.importc: "QMdiSubWindow_new3".}
proc fcQMdiSubWindow_metaObject(self: pointer, ): pointer {.importc: "QMdiSubWindow_metaObject".}
proc fcQMdiSubWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QMdiSubWindow_metacast".}
proc fcQMdiSubWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMdiSubWindow_metacall".}
proc fcQMdiSubWindow_tr(s: cstring): struct_miqt_string {.importc: "QMdiSubWindow_tr".}
proc fcQMdiSubWindow_trUtf8(s: cstring): struct_miqt_string {.importc: "QMdiSubWindow_trUtf8".}
proc fcQMdiSubWindow_sizeHint(self: pointer, ): pointer {.importc: "QMdiSubWindow_sizeHint".}
proc fcQMdiSubWindow_minimumSizeHint(self: pointer, ): pointer {.importc: "QMdiSubWindow_minimumSizeHint".}
proc fcQMdiSubWindow_setWidget(self: pointer, widget: pointer): void {.importc: "QMdiSubWindow_setWidget".}
proc fcQMdiSubWindow_widget(self: pointer, ): pointer {.importc: "QMdiSubWindow_widget".}
proc fcQMdiSubWindow_maximizedButtonsWidget(self: pointer, ): pointer {.importc: "QMdiSubWindow_maximizedButtonsWidget".}
proc fcQMdiSubWindow_maximizedSystemMenuIconWidget(self: pointer, ): pointer {.importc: "QMdiSubWindow_maximizedSystemMenuIconWidget".}
proc fcQMdiSubWindow_isShaded(self: pointer, ): bool {.importc: "QMdiSubWindow_isShaded".}
proc fcQMdiSubWindow_setOption(self: pointer, option: cint): void {.importc: "QMdiSubWindow_setOption".}
proc fcQMdiSubWindow_testOption(self: pointer, param1: cint): bool {.importc: "QMdiSubWindow_testOption".}
proc fcQMdiSubWindow_setKeyboardSingleStep(self: pointer, step: cint): void {.importc: "QMdiSubWindow_setKeyboardSingleStep".}
proc fcQMdiSubWindow_keyboardSingleStep(self: pointer, ): cint {.importc: "QMdiSubWindow_keyboardSingleStep".}
proc fcQMdiSubWindow_setKeyboardPageStep(self: pointer, step: cint): void {.importc: "QMdiSubWindow_setKeyboardPageStep".}
proc fcQMdiSubWindow_keyboardPageStep(self: pointer, ): cint {.importc: "QMdiSubWindow_keyboardPageStep".}
proc fcQMdiSubWindow_setSystemMenu(self: pointer, systemMenu: pointer): void {.importc: "QMdiSubWindow_setSystemMenu".}
proc fcQMdiSubWindow_systemMenu(self: pointer, ): pointer {.importc: "QMdiSubWindow_systemMenu".}
proc fcQMdiSubWindow_mdiArea(self: pointer, ): pointer {.importc: "QMdiSubWindow_mdiArea".}
proc fcQMdiSubWindow_windowStateChanged(self: pointer, oldState: cint, newState: cint): void {.importc: "QMdiSubWindow_windowStateChanged".}
proc fQMdiSubWindow_connect_windowStateChanged(self: pointer, slot: int) {.importc: "QMdiSubWindow_connect_windowStateChanged".}
proc fcQMdiSubWindow_aboutToActivate(self: pointer, ): void {.importc: "QMdiSubWindow_aboutToActivate".}
proc fQMdiSubWindow_connect_aboutToActivate(self: pointer, slot: int) {.importc: "QMdiSubWindow_connect_aboutToActivate".}
proc fcQMdiSubWindow_showSystemMenu(self: pointer, ): void {.importc: "QMdiSubWindow_showSystemMenu".}
proc fcQMdiSubWindow_showShaded(self: pointer, ): void {.importc: "QMdiSubWindow_showShaded".}
proc fcQMdiSubWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMdiSubWindow_tr2".}
proc fcQMdiSubWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMdiSubWindow_tr3".}
proc fcQMdiSubWindow_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMdiSubWindow_trUtf82".}
proc fcQMdiSubWindow_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMdiSubWindow_trUtf83".}
proc fcQMdiSubWindow_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QMdiSubWindow_setOption2".}
proc fQMdiSubWindow_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMdiSubWindow_virtualbase_metacall".}
proc fcQMdiSubWindow_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_metacall".}
proc fQMdiSubWindow_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QMdiSubWindow_virtualbase_sizeHint".}
proc fcQMdiSubWindow_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_sizeHint".}
proc fQMdiSubWindow_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QMdiSubWindow_virtualbase_minimumSizeHint".}
proc fcQMdiSubWindow_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_minimumSizeHint".}
proc fQMdiSubWindow_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QMdiSubWindow_virtualbase_eventFilter".}
proc fcQMdiSubWindow_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_eventFilter".}
proc fQMdiSubWindow_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMdiSubWindow_virtualbase_event".}
proc fcQMdiSubWindow_override_virtual_event(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_event".}
proc fQMdiSubWindow_virtualbase_showEvent(self: pointer, showEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_showEvent".}
proc fcQMdiSubWindow_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_showEvent".}
proc fQMdiSubWindow_virtualbase_hideEvent(self: pointer, hideEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_hideEvent".}
proc fcQMdiSubWindow_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_hideEvent".}
proc fQMdiSubWindow_virtualbase_changeEvent(self: pointer, changeEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_changeEvent".}
proc fcQMdiSubWindow_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_changeEvent".}
proc fQMdiSubWindow_virtualbase_closeEvent(self: pointer, closeEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_closeEvent".}
proc fcQMdiSubWindow_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_closeEvent".}
proc fQMdiSubWindow_virtualbase_leaveEvent(self: pointer, leaveEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_leaveEvent".}
proc fcQMdiSubWindow_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_leaveEvent".}
proc fQMdiSubWindow_virtualbase_resizeEvent(self: pointer, resizeEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_resizeEvent".}
proc fcQMdiSubWindow_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_resizeEvent".}
proc fQMdiSubWindow_virtualbase_timerEvent(self: pointer, timerEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_timerEvent".}
proc fcQMdiSubWindow_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_timerEvent".}
proc fQMdiSubWindow_virtualbase_moveEvent(self: pointer, moveEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_moveEvent".}
proc fcQMdiSubWindow_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_moveEvent".}
proc fQMdiSubWindow_virtualbase_paintEvent(self: pointer, paintEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_paintEvent".}
proc fcQMdiSubWindow_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_paintEvent".}
proc fQMdiSubWindow_virtualbase_mousePressEvent(self: pointer, mouseEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_mousePressEvent".}
proc fcQMdiSubWindow_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_mousePressEvent".}
proc fQMdiSubWindow_virtualbase_mouseDoubleClickEvent(self: pointer, mouseEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQMdiSubWindow_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_mouseDoubleClickEvent".}
proc fQMdiSubWindow_virtualbase_mouseReleaseEvent(self: pointer, mouseEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_mouseReleaseEvent".}
proc fcQMdiSubWindow_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_mouseReleaseEvent".}
proc fQMdiSubWindow_virtualbase_mouseMoveEvent(self: pointer, mouseEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_mouseMoveEvent".}
proc fcQMdiSubWindow_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_mouseMoveEvent".}
proc fQMdiSubWindow_virtualbase_keyPressEvent(self: pointer, keyEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_keyPressEvent".}
proc fcQMdiSubWindow_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_keyPressEvent".}
proc fQMdiSubWindow_virtualbase_contextMenuEvent(self: pointer, contextMenuEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_contextMenuEvent".}
proc fcQMdiSubWindow_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_contextMenuEvent".}
proc fQMdiSubWindow_virtualbase_focusInEvent(self: pointer, focusInEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_focusInEvent".}
proc fcQMdiSubWindow_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_focusInEvent".}
proc fQMdiSubWindow_virtualbase_focusOutEvent(self: pointer, focusOutEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_focusOutEvent".}
proc fcQMdiSubWindow_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_focusOutEvent".}
proc fQMdiSubWindow_virtualbase_childEvent(self: pointer, childEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_childEvent".}
proc fcQMdiSubWindow_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_childEvent".}
proc fQMdiSubWindow_virtualbase_devType(self: pointer, ): cint{.importc: "QMdiSubWindow_virtualbase_devType".}
proc fcQMdiSubWindow_override_virtual_devType(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_devType".}
proc fQMdiSubWindow_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QMdiSubWindow_virtualbase_setVisible".}
proc fcQMdiSubWindow_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_setVisible".}
proc fQMdiSubWindow_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QMdiSubWindow_virtualbase_heightForWidth".}
proc fcQMdiSubWindow_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_heightForWidth".}
proc fQMdiSubWindow_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QMdiSubWindow_virtualbase_hasHeightForWidth".}
proc fcQMdiSubWindow_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_hasHeightForWidth".}
proc fQMdiSubWindow_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QMdiSubWindow_virtualbase_paintEngine".}
proc fcQMdiSubWindow_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_paintEngine".}
proc fQMdiSubWindow_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_wheelEvent".}
proc fcQMdiSubWindow_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_wheelEvent".}
proc fQMdiSubWindow_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_keyReleaseEvent".}
proc fcQMdiSubWindow_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_keyReleaseEvent".}
proc fQMdiSubWindow_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_enterEvent".}
proc fcQMdiSubWindow_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_enterEvent".}
proc fQMdiSubWindow_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_tabletEvent".}
proc fcQMdiSubWindow_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_tabletEvent".}
proc fQMdiSubWindow_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_actionEvent".}
proc fcQMdiSubWindow_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_actionEvent".}
proc fQMdiSubWindow_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_dragEnterEvent".}
proc fcQMdiSubWindow_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_dragEnterEvent".}
proc fQMdiSubWindow_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_dragMoveEvent".}
proc fcQMdiSubWindow_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_dragMoveEvent".}
proc fQMdiSubWindow_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_dragLeaveEvent".}
proc fcQMdiSubWindow_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_dragLeaveEvent".}
proc fQMdiSubWindow_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_dropEvent".}
proc fcQMdiSubWindow_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_dropEvent".}
proc fQMdiSubWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QMdiSubWindow_virtualbase_nativeEvent".}
proc fcQMdiSubWindow_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_nativeEvent".}
proc fQMdiSubWindow_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QMdiSubWindow_virtualbase_metric".}
proc fcQMdiSubWindow_override_virtual_metric(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_metric".}
proc fQMdiSubWindow_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QMdiSubWindow_virtualbase_initPainter".}
proc fcQMdiSubWindow_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_initPainter".}
proc fQMdiSubWindow_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QMdiSubWindow_virtualbase_redirected".}
proc fcQMdiSubWindow_override_virtual_redirected(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_redirected".}
proc fQMdiSubWindow_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QMdiSubWindow_virtualbase_sharedPainter".}
proc fcQMdiSubWindow_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_sharedPainter".}
proc fQMdiSubWindow_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QMdiSubWindow_virtualbase_inputMethodEvent".}
proc fcQMdiSubWindow_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_inputMethodEvent".}
proc fQMdiSubWindow_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QMdiSubWindow_virtualbase_inputMethodQuery".}
proc fcQMdiSubWindow_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_inputMethodQuery".}
proc fQMdiSubWindow_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QMdiSubWindow_virtualbase_focusNextPrevChild".}
proc fcQMdiSubWindow_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_focusNextPrevChild".}
proc fQMdiSubWindow_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_customEvent".}
proc fcQMdiSubWindow_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_customEvent".}
proc fQMdiSubWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMdiSubWindow_virtualbase_connectNotify".}
proc fcQMdiSubWindow_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_connectNotify".}
proc fQMdiSubWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMdiSubWindow_virtualbase_disconnectNotify".}
proc fcQMdiSubWindow_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_disconnectNotify".}
proc fcQMdiSubWindow_staticMetaObject(): pointer {.importc: "QMdiSubWindow_staticMetaObject".}
proc fcQMdiSubWindow_delete(self: pointer) {.importc: "QMdiSubWindow_delete".}


func init*(T: type QMdiSubWindow, h: ptr cQMdiSubWindow): QMdiSubWindow =
  T(h: h)
proc create*(T: type QMdiSubWindow, parent: gen_qwidget.QWidget): QMdiSubWindow =

  QMdiSubWindow.init(fcQMdiSubWindow_new(parent.h))
proc create*(T: type QMdiSubWindow, ): QMdiSubWindow =

  QMdiSubWindow.init(fcQMdiSubWindow_new2())
proc create*(T: type QMdiSubWindow, parent: gen_qwidget.QWidget, flags: gen_qnamespace.WindowType): QMdiSubWindow =

  QMdiSubWindow.init(fcQMdiSubWindow_new3(parent.h, cint(flags)))
proc metaObject*(self: QMdiSubWindow, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMdiSubWindow_metaObject(self.h))

proc metacast*(self: QMdiSubWindow, param1: cstring): pointer =

  fcQMdiSubWindow_metacast(self.h, param1)

proc metacall*(self: QMdiSubWindow, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMdiSubWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMdiSubWindow, s: cstring): string =

  let v_ms = fcQMdiSubWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMdiSubWindow, s: cstring): string =

  let v_ms = fcQMdiSubWindow_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: QMdiSubWindow, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQMdiSubWindow_sizeHint(self.h))

proc minimumSizeHint*(self: QMdiSubWindow, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQMdiSubWindow_minimumSizeHint(self.h))

proc setWidget*(self: QMdiSubWindow, widget: gen_qwidget.QWidget): void =

  fcQMdiSubWindow_setWidget(self.h, widget.h)

proc widget*(self: QMdiSubWindow, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQMdiSubWindow_widget(self.h))

proc maximizedButtonsWidget*(self: QMdiSubWindow, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQMdiSubWindow_maximizedButtonsWidget(self.h))

proc maximizedSystemMenuIconWidget*(self: QMdiSubWindow, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQMdiSubWindow_maximizedSystemMenuIconWidget(self.h))

proc isShaded*(self: QMdiSubWindow, ): bool =

  fcQMdiSubWindow_isShaded(self.h)

proc setOption*(self: QMdiSubWindow, option: QMdiSubWindowSubWindowOption): void =

  fcQMdiSubWindow_setOption(self.h, cint(option))

proc testOption*(self: QMdiSubWindow, param1: QMdiSubWindowSubWindowOption): bool =

  fcQMdiSubWindow_testOption(self.h, cint(param1))

proc setKeyboardSingleStep*(self: QMdiSubWindow, step: cint): void =

  fcQMdiSubWindow_setKeyboardSingleStep(self.h, step)

proc keyboardSingleStep*(self: QMdiSubWindow, ): cint =

  fcQMdiSubWindow_keyboardSingleStep(self.h)

proc setKeyboardPageStep*(self: QMdiSubWindow, step: cint): void =

  fcQMdiSubWindow_setKeyboardPageStep(self.h, step)

proc keyboardPageStep*(self: QMdiSubWindow, ): cint =

  fcQMdiSubWindow_keyboardPageStep(self.h)

proc setSystemMenu*(self: QMdiSubWindow, systemMenu: gen_qmenu.QMenu): void =

  fcQMdiSubWindow_setSystemMenu(self.h, systemMenu.h)

proc systemMenu*(self: QMdiSubWindow, ): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQMdiSubWindow_systemMenu(self.h))

proc mdiArea*(self: QMdiSubWindow, ): gen_qmdiarea.QMdiArea =

  gen_qmdiarea.QMdiArea(h: fcQMdiSubWindow_mdiArea(self.h))

proc windowStateChanged*(self: QMdiSubWindow, oldState: gen_qnamespace.WindowState, newState: gen_qnamespace.WindowState): void =

  fcQMdiSubWindow_windowStateChanged(self.h, cint(oldState), cint(newState))

proc miqt_exec_callback_QMdiSubWindow_windowStateChanged(slot: int, oldState: cint, newState: cint) {.exportc.} =
  type Cb = proc(oldState: gen_qnamespace.WindowState, newState: gen_qnamespace.WindowState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.WindowState(oldState)

  let slotval2 = gen_qnamespace.WindowState(newState)


  nimfunc[](slotval1, slotval2)

proc onwindowStateChanged*(self: QMdiSubWindow, slot: proc(oldState: gen_qnamespace.WindowState, newState: gen_qnamespace.WindowState)) =
  type Cb = proc(oldState: gen_qnamespace.WindowState, newState: gen_qnamespace.WindowState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMdiSubWindow_connect_windowStateChanged(self.h, cast[int](addr tmp[]))
proc aboutToActivate*(self: QMdiSubWindow, ): void =

  fcQMdiSubWindow_aboutToActivate(self.h)

proc miqt_exec_callback_QMdiSubWindow_aboutToActivate(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaboutToActivate*(self: QMdiSubWindow, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMdiSubWindow_connect_aboutToActivate(self.h, cast[int](addr tmp[]))
proc showSystemMenu*(self: QMdiSubWindow, ): void =

  fcQMdiSubWindow_showSystemMenu(self.h)

proc showShaded*(self: QMdiSubWindow, ): void =

  fcQMdiSubWindow_showShaded(self.h)

proc tr2*(_: type QMdiSubWindow, s: cstring, c: cstring): string =

  let v_ms = fcQMdiSubWindow_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMdiSubWindow, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMdiSubWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMdiSubWindow, s: cstring, c: cstring): string =

  let v_ms = fcQMdiSubWindow_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMdiSubWindow, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMdiSubWindow_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption2*(self: QMdiSubWindow, option: QMdiSubWindowSubWindowOption, on: bool): void =

  fcQMdiSubWindow_setOption2(self.h, cint(option), on)

proc callVirtualBase_metacall(self: QMdiSubWindow, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQMdiSubWindow_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMdiSubWindowmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_metacall(self: ptr cQMdiSubWindow, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMdiSubWindow_metacall ".} =
  type Cb = proc(super: QMdiSubWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QMdiSubWindow(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QMdiSubWindow, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQMdiSubWindow_virtualbase_sizeHint(self.h))

type QMdiSubWindowsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_sizeHint(self: ptr cQMdiSubWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiSubWindow_sizeHint ".} =
  type Cb = proc(super: QMdiSubWindowsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QMdiSubWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QMdiSubWindow, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQMdiSubWindow_virtualbase_minimumSizeHint(self.h))

type QMdiSubWindowminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_minimumSizeHint(self: ptr cQMdiSubWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiSubWindow_minimumSizeHint ".} =
  type Cb = proc(super: QMdiSubWindowminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QMdiSubWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_eventFilter(self: QMdiSubWindow, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQMdiSubWindow_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QMdiSubWindoweventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindoweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindoweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_eventFilter(self: ptr cQMdiSubWindow, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMdiSubWindow_eventFilter ".} =
  type Cb = proc(super: QMdiSubWindoweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QMdiSubWindow(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QMdiSubWindow, event: gen_qcoreevent.QEvent): bool =


  fQMdiSubWindow_virtualbase_event(self.h, event.h)

type QMdiSubWindoweventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindoweventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindoweventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_event(self: ptr cQMdiSubWindow, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMdiSubWindow_event ".} =
  type Cb = proc(super: QMdiSubWindoweventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QMdiSubWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_showEvent(self: QMdiSubWindow, showEvent: gen_qevent.QShowEvent): void =


  fQMdiSubWindow_virtualbase_showEvent(self.h, showEvent.h)

type QMdiSubWindowshowEventBase* = proc(showEvent: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowshowEventBase, showEvent: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowshowEventBase, showEvent: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_showEvent(self: ptr cQMdiSubWindow, slot: int, showEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_showEvent ".} =
  type Cb = proc(super: QMdiSubWindowshowEventBase, showEvent: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(showEvent: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QMdiSubWindow(h: self), showEvent)
  let slotval1 = gen_qevent.QShowEvent(h: showEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QMdiSubWindow, hideEvent: gen_qevent.QHideEvent): void =


  fQMdiSubWindow_virtualbase_hideEvent(self.h, hideEvent.h)

type QMdiSubWindowhideEventBase* = proc(hideEvent: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowhideEventBase, hideEvent: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowhideEventBase, hideEvent: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_hideEvent(self: ptr cQMdiSubWindow, slot: int, hideEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_hideEvent ".} =
  type Cb = proc(super: QMdiSubWindowhideEventBase, hideEvent: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(hideEvent: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QMdiSubWindow(h: self), hideEvent)
  let slotval1 = gen_qevent.QHideEvent(h: hideEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QMdiSubWindow, changeEvent: gen_qcoreevent.QEvent): void =


  fQMdiSubWindow_virtualbase_changeEvent(self.h, changeEvent.h)

type QMdiSubWindowchangeEventBase* = proc(changeEvent: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowchangeEventBase, changeEvent: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowchangeEventBase, changeEvent: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_changeEvent(self: ptr cQMdiSubWindow, slot: int, changeEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_changeEvent ".} =
  type Cb = proc(super: QMdiSubWindowchangeEventBase, changeEvent: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(changeEvent: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QMdiSubWindow(h: self), changeEvent)
  let slotval1 = gen_qcoreevent.QEvent(h: changeEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QMdiSubWindow, closeEvent: gen_qevent.QCloseEvent): void =


  fQMdiSubWindow_virtualbase_closeEvent(self.h, closeEvent.h)

type QMdiSubWindowcloseEventBase* = proc(closeEvent: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowcloseEventBase, closeEvent: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowcloseEventBase, closeEvent: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_closeEvent(self: ptr cQMdiSubWindow, slot: int, closeEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_closeEvent ".} =
  type Cb = proc(super: QMdiSubWindowcloseEventBase, closeEvent: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(closeEvent: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QMdiSubWindow(h: self), closeEvent)
  let slotval1 = gen_qevent.QCloseEvent(h: closeEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QMdiSubWindow, leaveEvent: gen_qcoreevent.QEvent): void =


  fQMdiSubWindow_virtualbase_leaveEvent(self.h, leaveEvent.h)

type QMdiSubWindowleaveEventBase* = proc(leaveEvent: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowleaveEventBase, leaveEvent: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowleaveEventBase, leaveEvent: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_leaveEvent(self: ptr cQMdiSubWindow, slot: int, leaveEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_leaveEvent ".} =
  type Cb = proc(super: QMdiSubWindowleaveEventBase, leaveEvent: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(leaveEvent: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QMdiSubWindow(h: self), leaveEvent)
  let slotval1 = gen_qcoreevent.QEvent(h: leaveEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QMdiSubWindow, resizeEvent: gen_qevent.QResizeEvent): void =


  fQMdiSubWindow_virtualbase_resizeEvent(self.h, resizeEvent.h)

type QMdiSubWindowresizeEventBase* = proc(resizeEvent: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowresizeEventBase, resizeEvent: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowresizeEventBase, resizeEvent: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_resizeEvent(self: ptr cQMdiSubWindow, slot: int, resizeEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_resizeEvent ".} =
  type Cb = proc(super: QMdiSubWindowresizeEventBase, resizeEvent: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(resizeEvent: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QMdiSubWindow(h: self), resizeEvent)
  let slotval1 = gen_qevent.QResizeEvent(h: resizeEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QMdiSubWindow, timerEvent: gen_qcoreevent.QTimerEvent): void =


  fQMdiSubWindow_virtualbase_timerEvent(self.h, timerEvent.h)

type QMdiSubWindowtimerEventBase* = proc(timerEvent: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowtimerEventBase, timerEvent: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowtimerEventBase, timerEvent: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_timerEvent(self: ptr cQMdiSubWindow, slot: int, timerEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_timerEvent ".} =
  type Cb = proc(super: QMdiSubWindowtimerEventBase, timerEvent: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(timerEvent: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QMdiSubWindow(h: self), timerEvent)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: timerEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QMdiSubWindow, moveEvent: gen_qevent.QMoveEvent): void =


  fQMdiSubWindow_virtualbase_moveEvent(self.h, moveEvent.h)

type QMdiSubWindowmoveEventBase* = proc(moveEvent: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowmoveEventBase, moveEvent: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowmoveEventBase, moveEvent: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_moveEvent(self: ptr cQMdiSubWindow, slot: int, moveEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_moveEvent ".} =
  type Cb = proc(super: QMdiSubWindowmoveEventBase, moveEvent: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(moveEvent: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QMdiSubWindow(h: self), moveEvent)
  let slotval1 = gen_qevent.QMoveEvent(h: moveEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QMdiSubWindow, paintEvent: gen_qevent.QPaintEvent): void =


  fQMdiSubWindow_virtualbase_paintEvent(self.h, paintEvent.h)

type QMdiSubWindowpaintEventBase* = proc(paintEvent: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowpaintEventBase, paintEvent: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowpaintEventBase, paintEvent: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_paintEvent(self: ptr cQMdiSubWindow, slot: int, paintEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_paintEvent ".} =
  type Cb = proc(super: QMdiSubWindowpaintEventBase, paintEvent: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(paintEvent: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QMdiSubWindow(h: self), paintEvent)
  let slotval1 = gen_qevent.QPaintEvent(h: paintEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QMdiSubWindow, mouseEvent: gen_qevent.QMouseEvent): void =


  fQMdiSubWindow_virtualbase_mousePressEvent(self.h, mouseEvent.h)

type QMdiSubWindowmousePressEventBase* = proc(mouseEvent: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowmousePressEventBase, mouseEvent: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowmousePressEventBase, mouseEvent: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_mousePressEvent(self: ptr cQMdiSubWindow, slot: int, mouseEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_mousePressEvent ".} =
  type Cb = proc(super: QMdiSubWindowmousePressEventBase, mouseEvent: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mouseEvent: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QMdiSubWindow(h: self), mouseEvent)
  let slotval1 = gen_qevent.QMouseEvent(h: mouseEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QMdiSubWindow, mouseEvent: gen_qevent.QMouseEvent): void =


  fQMdiSubWindow_virtualbase_mouseDoubleClickEvent(self.h, mouseEvent.h)

type QMdiSubWindowmouseDoubleClickEventBase* = proc(mouseEvent: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowmouseDoubleClickEventBase, mouseEvent: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowmouseDoubleClickEventBase, mouseEvent: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_mouseDoubleClickEvent(self: ptr cQMdiSubWindow, slot: int, mouseEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QMdiSubWindowmouseDoubleClickEventBase, mouseEvent: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mouseEvent: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QMdiSubWindow(h: self), mouseEvent)
  let slotval1 = gen_qevent.QMouseEvent(h: mouseEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QMdiSubWindow, mouseEvent: gen_qevent.QMouseEvent): void =


  fQMdiSubWindow_virtualbase_mouseReleaseEvent(self.h, mouseEvent.h)

type QMdiSubWindowmouseReleaseEventBase* = proc(mouseEvent: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowmouseReleaseEventBase, mouseEvent: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowmouseReleaseEventBase, mouseEvent: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_mouseReleaseEvent(self: ptr cQMdiSubWindow, slot: int, mouseEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_mouseReleaseEvent ".} =
  type Cb = proc(super: QMdiSubWindowmouseReleaseEventBase, mouseEvent: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mouseEvent: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QMdiSubWindow(h: self), mouseEvent)
  let slotval1 = gen_qevent.QMouseEvent(h: mouseEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QMdiSubWindow, mouseEvent: gen_qevent.QMouseEvent): void =


  fQMdiSubWindow_virtualbase_mouseMoveEvent(self.h, mouseEvent.h)

type QMdiSubWindowmouseMoveEventBase* = proc(mouseEvent: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowmouseMoveEventBase, mouseEvent: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowmouseMoveEventBase, mouseEvent: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_mouseMoveEvent(self: ptr cQMdiSubWindow, slot: int, mouseEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_mouseMoveEvent ".} =
  type Cb = proc(super: QMdiSubWindowmouseMoveEventBase, mouseEvent: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mouseEvent: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QMdiSubWindow(h: self), mouseEvent)
  let slotval1 = gen_qevent.QMouseEvent(h: mouseEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QMdiSubWindow, keyEvent: gen_qevent.QKeyEvent): void =


  fQMdiSubWindow_virtualbase_keyPressEvent(self.h, keyEvent.h)

type QMdiSubWindowkeyPressEventBase* = proc(keyEvent: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowkeyPressEventBase, keyEvent: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowkeyPressEventBase, keyEvent: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_keyPressEvent(self: ptr cQMdiSubWindow, slot: int, keyEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_keyPressEvent ".} =
  type Cb = proc(super: QMdiSubWindowkeyPressEventBase, keyEvent: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(keyEvent: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QMdiSubWindow(h: self), keyEvent)
  let slotval1 = gen_qevent.QKeyEvent(h: keyEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QMdiSubWindow, contextMenuEvent: gen_qevent.QContextMenuEvent): void =


  fQMdiSubWindow_virtualbase_contextMenuEvent(self.h, contextMenuEvent.h)

type QMdiSubWindowcontextMenuEventBase* = proc(contextMenuEvent: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowcontextMenuEventBase, contextMenuEvent: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowcontextMenuEventBase, contextMenuEvent: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_contextMenuEvent(self: ptr cQMdiSubWindow, slot: int, contextMenuEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_contextMenuEvent ".} =
  type Cb = proc(super: QMdiSubWindowcontextMenuEventBase, contextMenuEvent: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(contextMenuEvent: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QMdiSubWindow(h: self), contextMenuEvent)
  let slotval1 = gen_qevent.QContextMenuEvent(h: contextMenuEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QMdiSubWindow, focusInEvent: gen_qevent.QFocusEvent): void =


  fQMdiSubWindow_virtualbase_focusInEvent(self.h, focusInEvent.h)

type QMdiSubWindowfocusInEventBase* = proc(focusInEvent: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowfocusInEventBase, focusInEvent: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowfocusInEventBase, focusInEvent: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_focusInEvent(self: ptr cQMdiSubWindow, slot: int, focusInEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_focusInEvent ".} =
  type Cb = proc(super: QMdiSubWindowfocusInEventBase, focusInEvent: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(focusInEvent: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QMdiSubWindow(h: self), focusInEvent)
  let slotval1 = gen_qevent.QFocusEvent(h: focusInEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QMdiSubWindow, focusOutEvent: gen_qevent.QFocusEvent): void =


  fQMdiSubWindow_virtualbase_focusOutEvent(self.h, focusOutEvent.h)

type QMdiSubWindowfocusOutEventBase* = proc(focusOutEvent: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowfocusOutEventBase, focusOutEvent: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowfocusOutEventBase, focusOutEvent: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_focusOutEvent(self: ptr cQMdiSubWindow, slot: int, focusOutEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_focusOutEvent ".} =
  type Cb = proc(super: QMdiSubWindowfocusOutEventBase, focusOutEvent: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(focusOutEvent: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QMdiSubWindow(h: self), focusOutEvent)
  let slotval1 = gen_qevent.QFocusEvent(h: focusOutEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QMdiSubWindow, childEvent: gen_qcoreevent.QChildEvent): void =


  fQMdiSubWindow_virtualbase_childEvent(self.h, childEvent.h)

type QMdiSubWindowchildEventBase* = proc(childEvent: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowchildEventBase, childEvent: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowchildEventBase, childEvent: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_childEvent(self: ptr cQMdiSubWindow, slot: int, childEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_childEvent ".} =
  type Cb = proc(super: QMdiSubWindowchildEventBase, childEvent: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(childEvent: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QMdiSubWindow(h: self), childEvent)
  let slotval1 = gen_qcoreevent.QChildEvent(h: childEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QMdiSubWindow, ): cint =


  fQMdiSubWindow_virtualbase_devType(self.h)

type QMdiSubWindowdevTypeBase* = proc(): cint
proc ondevType*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_devType(self: ptr cQMdiSubWindow, slot: int): cint {.exportc: "miqt_exec_callback_QMdiSubWindow_devType ".} =
  type Cb = proc(super: QMdiSubWindowdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QMdiSubWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QMdiSubWindow, visible: bool): void =


  fQMdiSubWindow_virtualbase_setVisible(self.h, visible)

type QMdiSubWindowsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_setVisible(self: ptr cQMdiSubWindow, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QMdiSubWindow_setVisible ".} =
  type Cb = proc(super: QMdiSubWindowsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QMdiSubWindow(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QMdiSubWindow, param1: cint): cint =


  fQMdiSubWindow_virtualbase_heightForWidth(self.h, param1)

type QMdiSubWindowheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_heightForWidth(self: ptr cQMdiSubWindow, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMdiSubWindow_heightForWidth ".} =
  type Cb = proc(super: QMdiSubWindowheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QMdiSubWindow(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QMdiSubWindow, ): bool =


  fQMdiSubWindow_virtualbase_hasHeightForWidth(self.h)

type QMdiSubWindowhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_hasHeightForWidth(self: ptr cQMdiSubWindow, slot: int): bool {.exportc: "miqt_exec_callback_QMdiSubWindow_hasHeightForWidth ".} =
  type Cb = proc(super: QMdiSubWindowhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QMdiSubWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QMdiSubWindow, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQMdiSubWindow_virtualbase_paintEngine(self.h))

type QMdiSubWindowpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_paintEngine(self: ptr cQMdiSubWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiSubWindow_paintEngine ".} =
  type Cb = proc(super: QMdiSubWindowpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QMdiSubWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_wheelEvent(self: QMdiSubWindow, event: gen_qevent.QWheelEvent): void =


  fQMdiSubWindow_virtualbase_wheelEvent(self.h, event.h)

type QMdiSubWindowwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_wheelEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_wheelEvent ".} =
  type Cb = proc(super: QMdiSubWindowwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QMdiSubWindow(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QMdiSubWindow, event: gen_qevent.QKeyEvent): void =


  fQMdiSubWindow_virtualbase_keyReleaseEvent(self.h, event.h)

type QMdiSubWindowkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_keyReleaseEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_keyReleaseEvent ".} =
  type Cb = proc(super: QMdiSubWindowkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QMdiSubWindow(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QMdiSubWindow, event: gen_qcoreevent.QEvent): void =


  fQMdiSubWindow_virtualbase_enterEvent(self.h, event.h)

type QMdiSubWindowenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_enterEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_enterEvent ".} =
  type Cb = proc(super: QMdiSubWindowenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QMdiSubWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QMdiSubWindow, event: gen_qevent.QTabletEvent): void =


  fQMdiSubWindow_virtualbase_tabletEvent(self.h, event.h)

type QMdiSubWindowtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_tabletEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_tabletEvent ".} =
  type Cb = proc(super: QMdiSubWindowtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QMdiSubWindow(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QMdiSubWindow, event: gen_qevent.QActionEvent): void =


  fQMdiSubWindow_virtualbase_actionEvent(self.h, event.h)

type QMdiSubWindowactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_actionEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_actionEvent ".} =
  type Cb = proc(super: QMdiSubWindowactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QMdiSubWindow(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QMdiSubWindow, event: gen_qevent.QDragEnterEvent): void =


  fQMdiSubWindow_virtualbase_dragEnterEvent(self.h, event.h)

type QMdiSubWindowdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_dragEnterEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_dragEnterEvent ".} =
  type Cb = proc(super: QMdiSubWindowdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QMdiSubWindow(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QMdiSubWindow, event: gen_qevent.QDragMoveEvent): void =


  fQMdiSubWindow_virtualbase_dragMoveEvent(self.h, event.h)

type QMdiSubWindowdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_dragMoveEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_dragMoveEvent ".} =
  type Cb = proc(super: QMdiSubWindowdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QMdiSubWindow(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QMdiSubWindow, event: gen_qevent.QDragLeaveEvent): void =


  fQMdiSubWindow_virtualbase_dragLeaveEvent(self.h, event.h)

type QMdiSubWindowdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_dragLeaveEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_dragLeaveEvent ".} =
  type Cb = proc(super: QMdiSubWindowdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QMdiSubWindow(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QMdiSubWindow, event: gen_qevent.QDropEvent): void =


  fQMdiSubWindow_virtualbase_dropEvent(self.h, event.h)

type QMdiSubWindowdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_dropEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_dropEvent ".} =
  type Cb = proc(super: QMdiSubWindowdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QMdiSubWindow(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QMdiSubWindow, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQMdiSubWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QMdiSubWindownativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_nativeEvent(self: ptr cQMdiSubWindow, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QMdiSubWindow_nativeEvent ".} =
  type Cb = proc(super: QMdiSubWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QMdiSubWindow(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QMdiSubWindow, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQMdiSubWindow_virtualbase_metric(self.h, cint(param1))

type QMdiSubWindowmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_metric(self: ptr cQMdiSubWindow, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMdiSubWindow_metric ".} =
  type Cb = proc(super: QMdiSubWindowmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QMdiSubWindow(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QMdiSubWindow, painter: gen_qpainter.QPainter): void =


  fQMdiSubWindow_virtualbase_initPainter(self.h, painter.h)

type QMdiSubWindowinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_initPainter(self: ptr cQMdiSubWindow, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_initPainter ".} =
  type Cb = proc(super: QMdiSubWindowinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QMdiSubWindow(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QMdiSubWindow, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQMdiSubWindow_virtualbase_redirected(self.h, offset.h))

type QMdiSubWindowredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_redirected(self: ptr cQMdiSubWindow, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QMdiSubWindow_redirected ".} =
  type Cb = proc(super: QMdiSubWindowredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QMdiSubWindow(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QMdiSubWindow, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQMdiSubWindow_virtualbase_sharedPainter(self.h))

type QMdiSubWindowsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_sharedPainter(self: ptr cQMdiSubWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiSubWindow_sharedPainter ".} =
  type Cb = proc(super: QMdiSubWindowsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QMdiSubWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QMdiSubWindow, param1: gen_qevent.QInputMethodEvent): void =


  fQMdiSubWindow_virtualbase_inputMethodEvent(self.h, param1.h)

type QMdiSubWindowinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_inputMethodEvent(self: ptr cQMdiSubWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_inputMethodEvent ".} =
  type Cb = proc(super: QMdiSubWindowinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QMdiSubWindow(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QMdiSubWindow, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQMdiSubWindow_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QMdiSubWindowinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_inputMethodQuery(self: ptr cQMdiSubWindow, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QMdiSubWindow_inputMethodQuery ".} =
  type Cb = proc(super: QMdiSubWindowinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QMdiSubWindow(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QMdiSubWindow, next: bool): bool =


  fQMdiSubWindow_virtualbase_focusNextPrevChild(self.h, next)

type QMdiSubWindowfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_focusNextPrevChild(self: ptr cQMdiSubWindow, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QMdiSubWindow_focusNextPrevChild ".} =
  type Cb = proc(super: QMdiSubWindowfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QMdiSubWindow(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_customEvent(self: QMdiSubWindow, event: gen_qcoreevent.QEvent): void =


  fQMdiSubWindow_virtualbase_customEvent(self.h, event.h)

type QMdiSubWindowcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_customEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_customEvent ".} =
  type Cb = proc(super: QMdiSubWindowcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QMdiSubWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QMdiSubWindow, signal: gen_qmetaobject.QMetaMethod): void =


  fQMdiSubWindow_virtualbase_connectNotify(self.h, signal.h)

type QMdiSubWindowconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_connectNotify(self: ptr cQMdiSubWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_connectNotify ".} =
  type Cb = proc(super: QMdiSubWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QMdiSubWindow(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QMdiSubWindow, signal: gen_qmetaobject.QMetaMethod): void =


  fQMdiSubWindow_virtualbase_disconnectNotify(self.h, signal.h)

type QMdiSubWindowdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QMdiSubWindow, slot: proc(super: QMdiSubWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMdiSubWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_disconnectNotify(self: ptr cQMdiSubWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_disconnectNotify ".} =
  type Cb = proc(super: QMdiSubWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QMdiSubWindow(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QMdiSubWindow): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMdiSubWindow_staticMetaObject())
proc delete*(self: QMdiSubWindow) =
  fcQMdiSubWindow_delete(self.h)
