import Qt6Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6Widgets")
{.compile("gen_qsplashscreen.cpp", cflags).}


import gen_qsplashscreen_types
export gen_qsplashscreen_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpixmap,
  gen_qpoint,
  gen_qscreen,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
  gen_qcolor,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpixmap,
  gen_qpoint,
  gen_qscreen,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQSplashScreen*{.exportc: "QSplashScreen", incompleteStruct.} = object

proc fcQSplashScreen_new(): ptr cQSplashScreen {.importc: "QSplashScreen_new".}
proc fcQSplashScreen_new2(screen: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new2".}
proc fcQSplashScreen_new3(pixmap: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new3".}
proc fcQSplashScreen_new4(pixmap: pointer, f: cint): ptr cQSplashScreen {.importc: "QSplashScreen_new4".}
proc fcQSplashScreen_new5(screen: pointer, pixmap: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new5".}
proc fcQSplashScreen_new6(screen: pointer, pixmap: pointer, f: cint): ptr cQSplashScreen {.importc: "QSplashScreen_new6".}
proc fcQSplashScreen_metaObject(self: pointer, ): pointer {.importc: "QSplashScreen_metaObject".}
proc fcQSplashScreen_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplashScreen_metacast".}
proc fcQSplashScreen_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplashScreen_metacall".}
proc fcQSplashScreen_tr(s: cstring): struct_miqt_string {.importc: "QSplashScreen_tr".}
proc fcQSplashScreen_setPixmap(self: pointer, pixmap: pointer): void {.importc: "QSplashScreen_setPixmap".}
proc fcQSplashScreen_pixmap(self: pointer, ): pointer {.importc: "QSplashScreen_pixmap".}
proc fcQSplashScreen_finish(self: pointer, w: pointer): void {.importc: "QSplashScreen_finish".}
proc fcQSplashScreen_repaint(self: pointer, ): void {.importc: "QSplashScreen_repaint".}
proc fcQSplashScreen_message(self: pointer, ): struct_miqt_string {.importc: "QSplashScreen_message".}
proc fcQSplashScreen_showMessage(self: pointer, message: struct_miqt_string): void {.importc: "QSplashScreen_showMessage".}
proc fcQSplashScreen_clearMessage(self: pointer, ): void {.importc: "QSplashScreen_clearMessage".}
proc fcQSplashScreen_messageChanged(self: pointer, message: struct_miqt_string): void {.importc: "QSplashScreen_messageChanged".}
proc fQSplashScreen_connect_messageChanged(self: pointer, slot: int) {.importc: "QSplashScreen_connect_messageChanged".}
proc fcQSplashScreen_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplashScreen_tr2".}
proc fcQSplashScreen_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplashScreen_tr3".}
proc fcQSplashScreen_showMessage2(self: pointer, message: struct_miqt_string, alignment: cint): void {.importc: "QSplashScreen_showMessage2".}
proc fcQSplashScreen_showMessage3(self: pointer, message: struct_miqt_string, alignment: cint, color: pointer): void {.importc: "QSplashScreen_showMessage3".}
proc fQSplashScreen_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSplashScreen_virtualbase_metacall".}
proc fcQSplashScreen_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_metacall".}
proc fQSplashScreen_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QSplashScreen_virtualbase_event".}
proc fcQSplashScreen_override_virtual_event(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_event".}
proc fQSplashScreen_virtualbase_drawContents(self: pointer, painter: pointer): void{.importc: "QSplashScreen_virtualbase_drawContents".}
proc fcQSplashScreen_override_virtual_drawContents(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_drawContents".}
proc fQSplashScreen_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QSplashScreen_virtualbase_mousePressEvent".}
proc fcQSplashScreen_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_mousePressEvent".}
proc fQSplashScreen_virtualbase_devType(self: pointer, ): cint{.importc: "QSplashScreen_virtualbase_devType".}
proc fcQSplashScreen_override_virtual_devType(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_devType".}
proc fQSplashScreen_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QSplashScreen_virtualbase_setVisible".}
proc fcQSplashScreen_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_setVisible".}
proc fQSplashScreen_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSplashScreen_virtualbase_sizeHint".}
proc fcQSplashScreen_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_sizeHint".}
proc fQSplashScreen_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QSplashScreen_virtualbase_minimumSizeHint".}
proc fcQSplashScreen_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_minimumSizeHint".}
proc fQSplashScreen_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSplashScreen_virtualbase_heightForWidth".}
proc fcQSplashScreen_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_heightForWidth".}
proc fQSplashScreen_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSplashScreen_virtualbase_hasHeightForWidth".}
proc fcQSplashScreen_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_hasHeightForWidth".}
proc fQSplashScreen_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSplashScreen_virtualbase_paintEngine".}
proc fcQSplashScreen_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_paintEngine".}
proc fQSplashScreen_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_mouseReleaseEvent".}
proc fcQSplashScreen_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_mouseReleaseEvent".}
proc fQSplashScreen_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_mouseDoubleClickEvent".}
proc fcQSplashScreen_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_mouseDoubleClickEvent".}
proc fQSplashScreen_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_mouseMoveEvent".}
proc fcQSplashScreen_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_mouseMoveEvent".}
proc fQSplashScreen_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_wheelEvent".}
proc fcQSplashScreen_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_wheelEvent".}
proc fQSplashScreen_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_keyPressEvent".}
proc fcQSplashScreen_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_keyPressEvent".}
proc fQSplashScreen_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_keyReleaseEvent".}
proc fcQSplashScreen_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_keyReleaseEvent".}
proc fQSplashScreen_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_focusInEvent".}
proc fcQSplashScreen_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_focusInEvent".}
proc fQSplashScreen_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_focusOutEvent".}
proc fcQSplashScreen_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_focusOutEvent".}
proc fQSplashScreen_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_enterEvent".}
proc fcQSplashScreen_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_enterEvent".}
proc fQSplashScreen_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_leaveEvent".}
proc fcQSplashScreen_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_leaveEvent".}
proc fQSplashScreen_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_paintEvent".}
proc fcQSplashScreen_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_paintEvent".}
proc fQSplashScreen_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_moveEvent".}
proc fcQSplashScreen_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_moveEvent".}
proc fQSplashScreen_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_resizeEvent".}
proc fcQSplashScreen_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_resizeEvent".}
proc fQSplashScreen_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_closeEvent".}
proc fcQSplashScreen_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_closeEvent".}
proc fQSplashScreen_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_contextMenuEvent".}
proc fcQSplashScreen_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_contextMenuEvent".}
proc fQSplashScreen_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_tabletEvent".}
proc fcQSplashScreen_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_tabletEvent".}
proc fQSplashScreen_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_actionEvent".}
proc fcQSplashScreen_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_actionEvent".}
proc fQSplashScreen_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_dragEnterEvent".}
proc fcQSplashScreen_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_dragEnterEvent".}
proc fQSplashScreen_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_dragMoveEvent".}
proc fcQSplashScreen_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_dragMoveEvent".}
proc fQSplashScreen_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_dragLeaveEvent".}
proc fcQSplashScreen_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_dragLeaveEvent".}
proc fQSplashScreen_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_dropEvent".}
proc fcQSplashScreen_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_dropEvent".}
proc fQSplashScreen_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_showEvent".}
proc fcQSplashScreen_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_showEvent".}
proc fQSplashScreen_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_hideEvent".}
proc fcQSplashScreen_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_hideEvent".}
proc fQSplashScreen_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QSplashScreen_virtualbase_nativeEvent".}
proc fcQSplashScreen_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_nativeEvent".}
proc fQSplashScreen_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QSplashScreen_virtualbase_changeEvent".}
proc fcQSplashScreen_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_changeEvent".}
proc fQSplashScreen_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QSplashScreen_virtualbase_metric".}
proc fcQSplashScreen_override_virtual_metric(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_metric".}
proc fQSplashScreen_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSplashScreen_virtualbase_initPainter".}
proc fcQSplashScreen_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_initPainter".}
proc fQSplashScreen_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSplashScreen_virtualbase_redirected".}
proc fcQSplashScreen_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_redirected".}
proc fQSplashScreen_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSplashScreen_virtualbase_sharedPainter".}
proc fcQSplashScreen_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_sharedPainter".}
proc fQSplashScreen_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QSplashScreen_virtualbase_inputMethodEvent".}
proc fcQSplashScreen_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_inputMethodEvent".}
proc fQSplashScreen_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QSplashScreen_virtualbase_inputMethodQuery".}
proc fcQSplashScreen_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_inputMethodQuery".}
proc fQSplashScreen_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QSplashScreen_virtualbase_focusNextPrevChild".}
proc fcQSplashScreen_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_focusNextPrevChild".}
proc fQSplashScreen_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSplashScreen_virtualbase_eventFilter".}
proc fcQSplashScreen_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_eventFilter".}
proc fQSplashScreen_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_timerEvent".}
proc fcQSplashScreen_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_timerEvent".}
proc fQSplashScreen_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_childEvent".}
proc fcQSplashScreen_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_childEvent".}
proc fQSplashScreen_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_customEvent".}
proc fcQSplashScreen_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_customEvent".}
proc fQSplashScreen_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSplashScreen_virtualbase_connectNotify".}
proc fcQSplashScreen_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_connectNotify".}
proc fQSplashScreen_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSplashScreen_virtualbase_disconnectNotify".}
proc fcQSplashScreen_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_disconnectNotify".}
proc fcQSplashScreen_staticMetaObject(): pointer {.importc: "QSplashScreen_staticMetaObject".}
proc fcQSplashScreen_delete(self: pointer) {.importc: "QSplashScreen_delete".}


func init*(T: type QSplashScreen, h: ptr cQSplashScreen): QSplashScreen =
  T(h: h)
proc create*(T: type QSplashScreen, ): QSplashScreen =

  QSplashScreen.init(fcQSplashScreen_new())
proc create*(T: type QSplashScreen, screen: gen_qscreen.QScreen): QSplashScreen =

  QSplashScreen.init(fcQSplashScreen_new2(screen.h))
proc create2*(T: type QSplashScreen, pixmap: gen_qpixmap.QPixmap): QSplashScreen =

  QSplashScreen.init(fcQSplashScreen_new3(pixmap.h))
proc create*(T: type QSplashScreen, pixmap: gen_qpixmap.QPixmap, f: gen_qnamespace.WindowType): QSplashScreen =

  QSplashScreen.init(fcQSplashScreen_new4(pixmap.h, cint(f)))
proc create*(T: type QSplashScreen, screen: gen_qscreen.QScreen, pixmap: gen_qpixmap.QPixmap): QSplashScreen =

  QSplashScreen.init(fcQSplashScreen_new5(screen.h, pixmap.h))
proc create*(T: type QSplashScreen, screen: gen_qscreen.QScreen, pixmap: gen_qpixmap.QPixmap, f: gen_qnamespace.WindowType): QSplashScreen =

  QSplashScreen.init(fcQSplashScreen_new6(screen.h, pixmap.h, cint(f)))
proc metaObject*(self: QSplashScreen, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSplashScreen_metaObject(self.h))

proc metacast*(self: QSplashScreen, param1: cstring): pointer =

  fcQSplashScreen_metacast(self.h, param1)

proc metacall*(self: QSplashScreen, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSplashScreen_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSplashScreen, s: cstring): string =

  let v_ms = fcQSplashScreen_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPixmap*(self: QSplashScreen, pixmap: gen_qpixmap.QPixmap): void =

  fcQSplashScreen_setPixmap(self.h, pixmap.h)

proc pixmap*(self: QSplashScreen, ): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQSplashScreen_pixmap(self.h))

proc finish*(self: QSplashScreen, w: gen_qwidget.QWidget): void =

  fcQSplashScreen_finish(self.h, w.h)

proc repaint*(self: QSplashScreen, ): void =

  fcQSplashScreen_repaint(self.h)

proc message*(self: QSplashScreen, ): string =

  let v_ms = fcQSplashScreen_message(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showMessage*(self: QSplashScreen, message: string): void =

  fcQSplashScreen_showMessage(self.h, struct_miqt_string(data: message, len: csize_t(len(message))))

proc clearMessage*(self: QSplashScreen, ): void =

  fcQSplashScreen_clearMessage(self.h)

proc messageChanged*(self: QSplashScreen, message: string): void =

  fcQSplashScreen_messageChanged(self.h, struct_miqt_string(data: message, len: csize_t(len(message))))

proc miqt_exec_callback_QSplashScreen_messageChanged(slot: int, message: struct_miqt_string) {.exportc.} =
  type Cb = proc(message: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(toOpenArrayByte(vmessage_ms.data, 0, int(vmessage_ms.len)-1))
  c_free(vmessage_ms.data)
  let slotval1 = vmessagex_ret


  nimfunc[](slotval1)

proc onmessageChanged*(self: QSplashScreen, slot: proc(message: string)) =
  type Cb = proc(message: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSplashScreen_connect_messageChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QSplashScreen, s: cstring, c: cstring): string =

  let v_ms = fcQSplashScreen_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSplashScreen, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSplashScreen_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showMessage2*(self: QSplashScreen, message: string, alignment: cint): void =

  fcQSplashScreen_showMessage2(self.h, struct_miqt_string(data: message, len: csize_t(len(message))), alignment)

proc showMessage3*(self: QSplashScreen, message: string, alignment: cint, color: gen_qcolor.QColor): void =

  fcQSplashScreen_showMessage3(self.h, struct_miqt_string(data: message, len: csize_t(len(message))), alignment, color.h)

proc callVirtualBase_metacall(self: QSplashScreen, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSplashScreen_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSplashScreenmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSplashScreen, slot: proc(super: QSplashScreenmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_metacall(self: ptr cQSplashScreen, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSplashScreen_metacall ".} =
  type Cb = proc(super: QSplashScreenmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSplashScreen(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QSplashScreen, e: gen_qcoreevent.QEvent): bool =


  fQSplashScreen_virtualbase_event(self.h, e.h)

type QSplashScreeneventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSplashScreen, slot: proc(super: QSplashScreeneventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreeneventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_event(self: ptr cQSplashScreen, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QSplashScreen_event ".} =
  type Cb = proc(super: QSplashScreeneventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSplashScreen(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_drawContents(self: QSplashScreen, painter: gen_qpainter.QPainter): void =


  fQSplashScreen_virtualbase_drawContents(self.h, painter.h)

type QSplashScreendrawContentsBase* = proc(painter: gen_qpainter.QPainter): void
proc ondrawContents*(self: QSplashScreen, slot: proc(super: QSplashScreendrawContentsBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreendrawContentsBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_drawContents(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_drawContents(self: ptr cQSplashScreen, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_drawContents ".} =
  type Cb = proc(super: QSplashScreendrawContentsBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_drawContents(QSplashScreen(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QSplashScreen, param1: gen_qevent.QMouseEvent): void =


  fQSplashScreen_virtualbase_mousePressEvent(self.h, param1.h)

type QSplashScreenmousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenmousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_mousePressEvent(self: ptr cQSplashScreen, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_mousePressEvent ".} =
  type Cb = proc(super: QSplashScreenmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QSplashScreen(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QSplashScreen, ): cint =


  fQSplashScreen_virtualbase_devType(self.h)

type QSplashScreendevTypeBase* = proc(): cint
proc ondevType*(self: QSplashScreen, slot: proc(super: QSplashScreendevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreendevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_devType(self: ptr cQSplashScreen, slot: int): cint {.exportc: "miqt_exec_callback_QSplashScreen_devType ".} =
  type Cb = proc(super: QSplashScreendevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QSplashScreen(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QSplashScreen, visible: bool): void =


  fQSplashScreen_virtualbase_setVisible(self.h, visible)

type QSplashScreensetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QSplashScreen, slot: proc(super: QSplashScreensetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreensetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_setVisible(self: ptr cQSplashScreen, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QSplashScreen_setVisible ".} =
  type Cb = proc(super: QSplashScreensetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QSplashScreen(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QSplashScreen, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSplashScreen_virtualbase_sizeHint(self.h))

type QSplashScreensizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QSplashScreen, slot: proc(super: QSplashScreensizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreensizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_sizeHint(self: ptr cQSplashScreen, slot: int): pointer {.exportc: "miqt_exec_callback_QSplashScreen_sizeHint ".} =
  type Cb = proc(super: QSplashScreensizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QSplashScreen(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QSplashScreen, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSplashScreen_virtualbase_minimumSizeHint(self.h))

type QSplashScreenminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QSplashScreen, slot: proc(super: QSplashScreenminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_minimumSizeHint(self: ptr cQSplashScreen, slot: int): pointer {.exportc: "miqt_exec_callback_QSplashScreen_minimumSizeHint ".} =
  type Cb = proc(super: QSplashScreenminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QSplashScreen(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QSplashScreen, param1: cint): cint =


  fQSplashScreen_virtualbase_heightForWidth(self.h, param1)

type QSplashScreenheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QSplashScreen, slot: proc(super: QSplashScreenheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_heightForWidth(self: ptr cQSplashScreen, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSplashScreen_heightForWidth ".} =
  type Cb = proc(super: QSplashScreenheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QSplashScreen(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QSplashScreen, ): bool =


  fQSplashScreen_virtualbase_hasHeightForWidth(self.h)

type QSplashScreenhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QSplashScreen, slot: proc(super: QSplashScreenhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_hasHeightForWidth(self: ptr cQSplashScreen, slot: int): bool {.exportc: "miqt_exec_callback_QSplashScreen_hasHeightForWidth ".} =
  type Cb = proc(super: QSplashScreenhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QSplashScreen(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QSplashScreen, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQSplashScreen_virtualbase_paintEngine(self.h))

type QSplashScreenpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QSplashScreen, slot: proc(super: QSplashScreenpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_paintEngine(self: ptr cQSplashScreen, slot: int): pointer {.exportc: "miqt_exec_callback_QSplashScreen_paintEngine ".} =
  type Cb = proc(super: QSplashScreenpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QSplashScreen(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseReleaseEvent(self: QSplashScreen, event: gen_qevent.QMouseEvent): void =


  fQSplashScreen_virtualbase_mouseReleaseEvent(self.h, event.h)

type QSplashScreenmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_mouseReleaseEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_mouseReleaseEvent ".} =
  type Cb = proc(super: QSplashScreenmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QSplashScreen, event: gen_qevent.QMouseEvent): void =


  fQSplashScreen_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QSplashScreenmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_mouseDoubleClickEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QSplashScreenmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QSplashScreen, event: gen_qevent.QMouseEvent): void =


  fQSplashScreen_virtualbase_mouseMoveEvent(self.h, event.h)

type QSplashScreenmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_mouseMoveEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_mouseMoveEvent ".} =
  type Cb = proc(super: QSplashScreenmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QSplashScreen, event: gen_qevent.QWheelEvent): void =


  fQSplashScreen_virtualbase_wheelEvent(self.h, event.h)

type QSplashScreenwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_wheelEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_wheelEvent ".} =
  type Cb = proc(super: QSplashScreenwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QSplashScreen, event: gen_qevent.QKeyEvent): void =


  fQSplashScreen_virtualbase_keyPressEvent(self.h, event.h)

type QSplashScreenkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_keyPressEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_keyPressEvent ".} =
  type Cb = proc(super: QSplashScreenkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QSplashScreen, event: gen_qevent.QKeyEvent): void =


  fQSplashScreen_virtualbase_keyReleaseEvent(self.h, event.h)

type QSplashScreenkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_keyReleaseEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_keyReleaseEvent ".} =
  type Cb = proc(super: QSplashScreenkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QSplashScreen, event: gen_qevent.QFocusEvent): void =


  fQSplashScreen_virtualbase_focusInEvent(self.h, event.h)

type QSplashScreenfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_focusInEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_focusInEvent ".} =
  type Cb = proc(super: QSplashScreenfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QSplashScreen, event: gen_qevent.QFocusEvent): void =


  fQSplashScreen_virtualbase_focusOutEvent(self.h, event.h)

type QSplashScreenfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_focusOutEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_focusOutEvent ".} =
  type Cb = proc(super: QSplashScreenfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QSplashScreen, event: gen_qevent.QEnterEvent): void =


  fQSplashScreen_virtualbase_enterEvent(self.h, event.h)

type QSplashScreenenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_enterEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_enterEvent ".} =
  type Cb = proc(super: QSplashScreenenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QSplashScreen, event: gen_qcoreevent.QEvent): void =


  fQSplashScreen_virtualbase_leaveEvent(self.h, event.h)

type QSplashScreenleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_leaveEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_leaveEvent ".} =
  type Cb = proc(super: QSplashScreenleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QSplashScreen, event: gen_qevent.QPaintEvent): void =


  fQSplashScreen_virtualbase_paintEvent(self.h, event.h)

type QSplashScreenpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_paintEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_paintEvent ".} =
  type Cb = proc(super: QSplashScreenpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QSplashScreen, event: gen_qevent.QMoveEvent): void =


  fQSplashScreen_virtualbase_moveEvent(self.h, event.h)

type QSplashScreenmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_moveEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_moveEvent ".} =
  type Cb = proc(super: QSplashScreenmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QSplashScreen, event: gen_qevent.QResizeEvent): void =


  fQSplashScreen_virtualbase_resizeEvent(self.h, event.h)

type QSplashScreenresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_resizeEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_resizeEvent ".} =
  type Cb = proc(super: QSplashScreenresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QSplashScreen, event: gen_qevent.QCloseEvent): void =


  fQSplashScreen_virtualbase_closeEvent(self.h, event.h)

type QSplashScreencloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QSplashScreen, slot: proc(super: QSplashScreencloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreencloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_closeEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_closeEvent ".} =
  type Cb = proc(super: QSplashScreencloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QSplashScreen, event: gen_qevent.QContextMenuEvent): void =


  fQSplashScreen_virtualbase_contextMenuEvent(self.h, event.h)

type QSplashScreencontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QSplashScreen, slot: proc(super: QSplashScreencontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreencontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_contextMenuEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_contextMenuEvent ".} =
  type Cb = proc(super: QSplashScreencontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QSplashScreen, event: gen_qevent.QTabletEvent): void =


  fQSplashScreen_virtualbase_tabletEvent(self.h, event.h)

type QSplashScreentabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QSplashScreen, slot: proc(super: QSplashScreentabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreentabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_tabletEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_tabletEvent ".} =
  type Cb = proc(super: QSplashScreentabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QSplashScreen, event: gen_qevent.QActionEvent): void =


  fQSplashScreen_virtualbase_actionEvent(self.h, event.h)

type QSplashScreenactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_actionEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_actionEvent ".} =
  type Cb = proc(super: QSplashScreenactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QSplashScreen, event: gen_qevent.QDragEnterEvent): void =


  fQSplashScreen_virtualbase_dragEnterEvent(self.h, event.h)

type QSplashScreendragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QSplashScreen, slot: proc(super: QSplashScreendragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreendragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_dragEnterEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_dragEnterEvent ".} =
  type Cb = proc(super: QSplashScreendragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QSplashScreen, event: gen_qevent.QDragMoveEvent): void =


  fQSplashScreen_virtualbase_dragMoveEvent(self.h, event.h)

type QSplashScreendragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QSplashScreen, slot: proc(super: QSplashScreendragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreendragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_dragMoveEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_dragMoveEvent ".} =
  type Cb = proc(super: QSplashScreendragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QSplashScreen, event: gen_qevent.QDragLeaveEvent): void =


  fQSplashScreen_virtualbase_dragLeaveEvent(self.h, event.h)

type QSplashScreendragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QSplashScreen, slot: proc(super: QSplashScreendragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreendragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_dragLeaveEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_dragLeaveEvent ".} =
  type Cb = proc(super: QSplashScreendragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QSplashScreen, event: gen_qevent.QDropEvent): void =


  fQSplashScreen_virtualbase_dropEvent(self.h, event.h)

type QSplashScreendropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QSplashScreen, slot: proc(super: QSplashScreendropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreendropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_dropEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_dropEvent ".} =
  type Cb = proc(super: QSplashScreendropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QSplashScreen, event: gen_qevent.QShowEvent): void =


  fQSplashScreen_virtualbase_showEvent(self.h, event.h)

type QSplashScreenshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_showEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_showEvent ".} =
  type Cb = proc(super: QSplashScreenshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QSplashScreen, event: gen_qevent.QHideEvent): void =


  fQSplashScreen_virtualbase_hideEvent(self.h, event.h)

type QSplashScreenhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_hideEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_hideEvent ".} =
  type Cb = proc(super: QSplashScreenhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QSplashScreen, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQSplashScreen_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QSplashScreennativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QSplashScreen, slot: proc(super: QSplashScreennativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreennativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_nativeEvent(self: ptr cQSplashScreen, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QSplashScreen_nativeEvent ".} =
  type Cb = proc(super: QSplashScreennativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QSplashScreen(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QSplashScreen, param1: gen_qcoreevent.QEvent): void =


  fQSplashScreen_virtualbase_changeEvent(self.h, param1.h)

type QSplashScreenchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_changeEvent(self: ptr cQSplashScreen, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_changeEvent ".} =
  type Cb = proc(super: QSplashScreenchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QSplashScreen(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QSplashScreen, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQSplashScreen_virtualbase_metric(self.h, cint(param1))

type QSplashScreenmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QSplashScreen, slot: proc(super: QSplashScreenmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_metric(self: ptr cQSplashScreen, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSplashScreen_metric ".} =
  type Cb = proc(super: QSplashScreenmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QSplashScreen(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QSplashScreen, painter: gen_qpainter.QPainter): void =


  fQSplashScreen_virtualbase_initPainter(self.h, painter.h)

type QSplashScreeninitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QSplashScreen, slot: proc(super: QSplashScreeninitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreeninitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_initPainter(self: ptr cQSplashScreen, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_initPainter ".} =
  type Cb = proc(super: QSplashScreeninitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QSplashScreen(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QSplashScreen, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQSplashScreen_virtualbase_redirected(self.h, offset.h))

type QSplashScreenredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QSplashScreen, slot: proc(super: QSplashScreenredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_redirected(self: ptr cQSplashScreen, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSplashScreen_redirected ".} =
  type Cb = proc(super: QSplashScreenredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QSplashScreen(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QSplashScreen, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQSplashScreen_virtualbase_sharedPainter(self.h))

type QSplashScreensharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QSplashScreen, slot: proc(super: QSplashScreensharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreensharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_sharedPainter(self: ptr cQSplashScreen, slot: int): pointer {.exportc: "miqt_exec_callback_QSplashScreen_sharedPainter ".} =
  type Cb = proc(super: QSplashScreensharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QSplashScreen(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QSplashScreen, param1: gen_qevent.QInputMethodEvent): void =


  fQSplashScreen_virtualbase_inputMethodEvent(self.h, param1.h)

type QSplashScreeninputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QSplashScreen, slot: proc(super: QSplashScreeninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreeninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_inputMethodEvent(self: ptr cQSplashScreen, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_inputMethodEvent ".} =
  type Cb = proc(super: QSplashScreeninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QSplashScreen(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QSplashScreen, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQSplashScreen_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QSplashScreeninputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QSplashScreen, slot: proc(super: QSplashScreeninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreeninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_inputMethodQuery(self: ptr cQSplashScreen, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QSplashScreen_inputMethodQuery ".} =
  type Cb = proc(super: QSplashScreeninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QSplashScreen(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QSplashScreen, next: bool): bool =


  fQSplashScreen_virtualbase_focusNextPrevChild(self.h, next)

type QSplashScreenfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QSplashScreen, slot: proc(super: QSplashScreenfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_focusNextPrevChild(self: ptr cQSplashScreen, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QSplashScreen_focusNextPrevChild ".} =
  type Cb = proc(super: QSplashScreenfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QSplashScreen(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSplashScreen, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSplashScreen_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSplashScreeneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSplashScreen, slot: proc(super: QSplashScreeneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreeneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_eventFilter(self: ptr cQSplashScreen, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSplashScreen_eventFilter ".} =
  type Cb = proc(super: QSplashScreeneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSplashScreen(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSplashScreen, event: gen_qcoreevent.QTimerEvent): void =


  fQSplashScreen_virtualbase_timerEvent(self.h, event.h)

type QSplashScreentimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSplashScreen, slot: proc(super: QSplashScreentimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreentimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_timerEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_timerEvent ".} =
  type Cb = proc(super: QSplashScreentimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSplashScreen, event: gen_qcoreevent.QChildEvent): void =


  fQSplashScreen_virtualbase_childEvent(self.h, event.h)

type QSplashScreenchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSplashScreen, slot: proc(super: QSplashScreenchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_childEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_childEvent ".} =
  type Cb = proc(super: QSplashScreenchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSplashScreen, event: gen_qcoreevent.QEvent): void =


  fQSplashScreen_virtualbase_customEvent(self.h, event.h)

type QSplashScreencustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSplashScreen, slot: proc(super: QSplashScreencustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreencustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_customEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_customEvent ".} =
  type Cb = proc(super: QSplashScreencustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSplashScreen(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSplashScreen, signal: gen_qmetaobject.QMetaMethod): void =


  fQSplashScreen_virtualbase_connectNotify(self.h, signal.h)

type QSplashScreenconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSplashScreen, slot: proc(super: QSplashScreenconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreenconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_connectNotify(self: ptr cQSplashScreen, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_connectNotify ".} =
  type Cb = proc(super: QSplashScreenconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSplashScreen(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSplashScreen, signal: gen_qmetaobject.QMetaMethod): void =


  fQSplashScreen_virtualbase_disconnectNotify(self.h, signal.h)

type QSplashScreendisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSplashScreen, slot: proc(super: QSplashScreendisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSplashScreendisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_disconnectNotify(self: ptr cQSplashScreen, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_disconnectNotify ".} =
  type Cb = proc(super: QSplashScreendisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSplashScreen(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSplashScreen): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSplashScreen_staticMetaObject())
proc delete*(self: QSplashScreen) =
  fcQSplashScreen_delete(self.h)
