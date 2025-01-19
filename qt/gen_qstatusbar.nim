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
{.compile("gen_qstatusbar.cpp", cflags).}


import gen_qstatusbar_types
export gen_qstatusbar_types

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
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQStatusBar*{.exportc: "QStatusBar", incompleteStruct.} = object

proc fcQStatusBar_new(parent: pointer): ptr cQStatusBar {.importc: "QStatusBar_new".}
proc fcQStatusBar_new2(): ptr cQStatusBar {.importc: "QStatusBar_new2".}
proc fcQStatusBar_metaObject(self: pointer, ): pointer {.importc: "QStatusBar_metaObject".}
proc fcQStatusBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QStatusBar_metacast".}
proc fcQStatusBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStatusBar_metacall".}
proc fcQStatusBar_tr(s: cstring): struct_miqt_string {.importc: "QStatusBar_tr".}
proc fcQStatusBar_trUtf8(s: cstring): struct_miqt_string {.importc: "QStatusBar_trUtf8".}
proc fcQStatusBar_addWidget(self: pointer, widget: pointer): void {.importc: "QStatusBar_addWidget".}
proc fcQStatusBar_insertWidget(self: pointer, index: cint, widget: pointer): cint {.importc: "QStatusBar_insertWidget".}
proc fcQStatusBar_addPermanentWidget(self: pointer, widget: pointer): void {.importc: "QStatusBar_addPermanentWidget".}
proc fcQStatusBar_insertPermanentWidget(self: pointer, index: cint, widget: pointer): cint {.importc: "QStatusBar_insertPermanentWidget".}
proc fcQStatusBar_removeWidget(self: pointer, widget: pointer): void {.importc: "QStatusBar_removeWidget".}
proc fcQStatusBar_setSizeGripEnabled(self: pointer, sizeGripEnabled: bool): void {.importc: "QStatusBar_setSizeGripEnabled".}
proc fcQStatusBar_isSizeGripEnabled(self: pointer, ): bool {.importc: "QStatusBar_isSizeGripEnabled".}
proc fcQStatusBar_currentMessage(self: pointer, ): struct_miqt_string {.importc: "QStatusBar_currentMessage".}
proc fcQStatusBar_showMessage(self: pointer, text: struct_miqt_string): void {.importc: "QStatusBar_showMessage".}
proc fcQStatusBar_clearMessage(self: pointer, ): void {.importc: "QStatusBar_clearMessage".}
proc fcQStatusBar_messageChanged(self: pointer, text: struct_miqt_string): void {.importc: "QStatusBar_messageChanged".}
proc fQStatusBar_connect_messageChanged(self: pointer, slot: int) {.importc: "QStatusBar_connect_messageChanged".}
proc fcQStatusBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStatusBar_tr2".}
proc fcQStatusBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStatusBar_tr3".}
proc fcQStatusBar_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStatusBar_trUtf82".}
proc fcQStatusBar_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStatusBar_trUtf83".}
proc fcQStatusBar_addWidget2(self: pointer, widget: pointer, stretch: cint): void {.importc: "QStatusBar_addWidget2".}
proc fcQStatusBar_insertWidget3(self: pointer, index: cint, widget: pointer, stretch: cint): cint {.importc: "QStatusBar_insertWidget3".}
proc fcQStatusBar_addPermanentWidget2(self: pointer, widget: pointer, stretch: cint): void {.importc: "QStatusBar_addPermanentWidget2".}
proc fcQStatusBar_insertPermanentWidget3(self: pointer, index: cint, widget: pointer, stretch: cint): cint {.importc: "QStatusBar_insertPermanentWidget3".}
proc fcQStatusBar_showMessage2(self: pointer, text: struct_miqt_string, timeout: cint): void {.importc: "QStatusBar_showMessage2".}
proc fQStatusBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QStatusBar_virtualbase_metacall".}
proc fcQStatusBar_override_virtual_metacall(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_metacall".}
proc fQStatusBar_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QStatusBar_virtualbase_showEvent".}
proc fcQStatusBar_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_showEvent".}
proc fQStatusBar_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QStatusBar_virtualbase_paintEvent".}
proc fcQStatusBar_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_paintEvent".}
proc fQStatusBar_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QStatusBar_virtualbase_resizeEvent".}
proc fcQStatusBar_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_resizeEvent".}
proc fQStatusBar_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QStatusBar_virtualbase_event".}
proc fcQStatusBar_override_virtual_event(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_event".}
proc fQStatusBar_virtualbase_devType(self: pointer, ): cint{.importc: "QStatusBar_virtualbase_devType".}
proc fcQStatusBar_override_virtual_devType(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_devType".}
proc fQStatusBar_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QStatusBar_virtualbase_setVisible".}
proc fcQStatusBar_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_setVisible".}
proc fQStatusBar_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QStatusBar_virtualbase_sizeHint".}
proc fcQStatusBar_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_sizeHint".}
proc fQStatusBar_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QStatusBar_virtualbase_minimumSizeHint".}
proc fcQStatusBar_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_minimumSizeHint".}
proc fQStatusBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QStatusBar_virtualbase_heightForWidth".}
proc fcQStatusBar_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_heightForWidth".}
proc fQStatusBar_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QStatusBar_virtualbase_hasHeightForWidth".}
proc fcQStatusBar_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_hasHeightForWidth".}
proc fQStatusBar_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QStatusBar_virtualbase_paintEngine".}
proc fcQStatusBar_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_paintEngine".}
proc fQStatusBar_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_mousePressEvent".}
proc fcQStatusBar_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_mousePressEvent".}
proc fQStatusBar_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_mouseReleaseEvent".}
proc fcQStatusBar_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_mouseReleaseEvent".}
proc fQStatusBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_mouseDoubleClickEvent".}
proc fcQStatusBar_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_mouseDoubleClickEvent".}
proc fQStatusBar_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_mouseMoveEvent".}
proc fcQStatusBar_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_mouseMoveEvent".}
proc fQStatusBar_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_wheelEvent".}
proc fcQStatusBar_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_wheelEvent".}
proc fQStatusBar_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_keyPressEvent".}
proc fcQStatusBar_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_keyPressEvent".}
proc fQStatusBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_keyReleaseEvent".}
proc fcQStatusBar_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_keyReleaseEvent".}
proc fQStatusBar_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_focusInEvent".}
proc fcQStatusBar_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_focusInEvent".}
proc fQStatusBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_focusOutEvent".}
proc fcQStatusBar_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_focusOutEvent".}
proc fQStatusBar_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_enterEvent".}
proc fcQStatusBar_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_enterEvent".}
proc fQStatusBar_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_leaveEvent".}
proc fcQStatusBar_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_leaveEvent".}
proc fQStatusBar_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_moveEvent".}
proc fcQStatusBar_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_moveEvent".}
proc fQStatusBar_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_closeEvent".}
proc fcQStatusBar_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_closeEvent".}
proc fQStatusBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_contextMenuEvent".}
proc fcQStatusBar_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_contextMenuEvent".}
proc fQStatusBar_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_tabletEvent".}
proc fcQStatusBar_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_tabletEvent".}
proc fQStatusBar_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_actionEvent".}
proc fcQStatusBar_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_actionEvent".}
proc fQStatusBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_dragEnterEvent".}
proc fcQStatusBar_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_dragEnterEvent".}
proc fQStatusBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_dragMoveEvent".}
proc fcQStatusBar_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_dragMoveEvent".}
proc fQStatusBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_dragLeaveEvent".}
proc fcQStatusBar_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_dragLeaveEvent".}
proc fQStatusBar_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_dropEvent".}
proc fcQStatusBar_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_dropEvent".}
proc fQStatusBar_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_hideEvent".}
proc fcQStatusBar_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_hideEvent".}
proc fQStatusBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QStatusBar_virtualbase_nativeEvent".}
proc fcQStatusBar_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_nativeEvent".}
proc fQStatusBar_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QStatusBar_virtualbase_changeEvent".}
proc fcQStatusBar_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_changeEvent".}
proc fQStatusBar_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QStatusBar_virtualbase_metric".}
proc fcQStatusBar_override_virtual_metric(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_metric".}
proc fQStatusBar_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QStatusBar_virtualbase_initPainter".}
proc fcQStatusBar_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_initPainter".}
proc fQStatusBar_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QStatusBar_virtualbase_redirected".}
proc fcQStatusBar_override_virtual_redirected(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_redirected".}
proc fQStatusBar_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QStatusBar_virtualbase_sharedPainter".}
proc fcQStatusBar_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_sharedPainter".}
proc fQStatusBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QStatusBar_virtualbase_inputMethodEvent".}
proc fcQStatusBar_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_inputMethodEvent".}
proc fQStatusBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QStatusBar_virtualbase_inputMethodQuery".}
proc fcQStatusBar_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_inputMethodQuery".}
proc fQStatusBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QStatusBar_virtualbase_focusNextPrevChild".}
proc fcQStatusBar_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_focusNextPrevChild".}
proc fQStatusBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStatusBar_virtualbase_eventFilter".}
proc fcQStatusBar_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_eventFilter".}
proc fQStatusBar_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_timerEvent".}
proc fcQStatusBar_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_timerEvent".}
proc fQStatusBar_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_childEvent".}
proc fcQStatusBar_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_childEvent".}
proc fQStatusBar_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_customEvent".}
proc fcQStatusBar_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_customEvent".}
proc fQStatusBar_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStatusBar_virtualbase_connectNotify".}
proc fcQStatusBar_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_connectNotify".}
proc fQStatusBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStatusBar_virtualbase_disconnectNotify".}
proc fcQStatusBar_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_disconnectNotify".}
proc fcQStatusBar_staticMetaObject(): pointer {.importc: "QStatusBar_staticMetaObject".}
proc fcQStatusBar_delete(self: pointer) {.importc: "QStatusBar_delete".}


func init*(T: type QStatusBar, h: ptr cQStatusBar): QStatusBar =
  T(h: h)
proc create*(T: type QStatusBar, parent: gen_qwidget.QWidget): QStatusBar =

  QStatusBar.init(fcQStatusBar_new(parent.h))
proc create*(T: type QStatusBar, ): QStatusBar =

  QStatusBar.init(fcQStatusBar_new2())
proc metaObject*(self: QStatusBar, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQStatusBar_metaObject(self.h))

proc metacast*(self: QStatusBar, param1: cstring): pointer =

  fcQStatusBar_metacast(self.h, param1)

proc metacall*(self: QStatusBar, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQStatusBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QStatusBar, s: cstring): string =

  let v_ms = fcQStatusBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QStatusBar, s: cstring): string =

  let v_ms = fcQStatusBar_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: QStatusBar, widget: gen_qwidget.QWidget): void =

  fcQStatusBar_addWidget(self.h, widget.h)

proc insertWidget*(self: QStatusBar, index: cint, widget: gen_qwidget.QWidget): cint =

  fcQStatusBar_insertWidget(self.h, index, widget.h)

proc addPermanentWidget*(self: QStatusBar, widget: gen_qwidget.QWidget): void =

  fcQStatusBar_addPermanentWidget(self.h, widget.h)

proc insertPermanentWidget*(self: QStatusBar, index: cint, widget: gen_qwidget.QWidget): cint =

  fcQStatusBar_insertPermanentWidget(self.h, index, widget.h)

proc removeWidget*(self: QStatusBar, widget: gen_qwidget.QWidget): void =

  fcQStatusBar_removeWidget(self.h, widget.h)

proc setSizeGripEnabled*(self: QStatusBar, sizeGripEnabled: bool): void =

  fcQStatusBar_setSizeGripEnabled(self.h, sizeGripEnabled)

proc isSizeGripEnabled*(self: QStatusBar, ): bool =

  fcQStatusBar_isSizeGripEnabled(self.h)

proc currentMessage*(self: QStatusBar, ): string =

  let v_ms = fcQStatusBar_currentMessage(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showMessage*(self: QStatusBar, text: string): void =

  fcQStatusBar_showMessage(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc clearMessage*(self: QStatusBar, ): void =

  fcQStatusBar_clearMessage(self.h)

proc messageChanged*(self: QStatusBar, text: string): void =

  fcQStatusBar_messageChanged(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc miqt_exec_callback_QStatusBar_messageChanged(slot: int, text: struct_miqt_string) {.exportc.} =
  type Cb = proc(text: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](slotval1)

proc onmessageChanged*(self: QStatusBar, slot: proc(text: string)) =
  type Cb = proc(text: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStatusBar_connect_messageChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QStatusBar, s: cstring, c: cstring): string =

  let v_ms = fcQStatusBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QStatusBar, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStatusBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QStatusBar, s: cstring, c: cstring): string =

  let v_ms = fcQStatusBar_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QStatusBar, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStatusBar_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget2*(self: QStatusBar, widget: gen_qwidget.QWidget, stretch: cint): void =

  fcQStatusBar_addWidget2(self.h, widget.h, stretch)

proc insertWidget3*(self: QStatusBar, index: cint, widget: gen_qwidget.QWidget, stretch: cint): cint =

  fcQStatusBar_insertWidget3(self.h, index, widget.h, stretch)

proc addPermanentWidget2*(self: QStatusBar, widget: gen_qwidget.QWidget, stretch: cint): void =

  fcQStatusBar_addPermanentWidget2(self.h, widget.h, stretch)

proc insertPermanentWidget3*(self: QStatusBar, index: cint, widget: gen_qwidget.QWidget, stretch: cint): cint =

  fcQStatusBar_insertPermanentWidget3(self.h, index, widget.h, stretch)

proc showMessage2*(self: QStatusBar, text: string, timeout: cint): void =

  fcQStatusBar_showMessage2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), timeout)

proc callVirtualBase_metacall(self: QStatusBar, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQStatusBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStatusBarmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QStatusBar, slot: proc(super: QStatusBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_metacall(self: ptr cQStatusBar, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QStatusBar_metacall ".} =
  type Cb = proc(super: QStatusBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QStatusBar(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_showEvent(self: QStatusBar, param1: gen_qevent.QShowEvent): void =


  fQStatusBar_virtualbase_showEvent(self.h, param1.h)

type QStatusBarshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QStatusBar, slot: proc(super: QStatusBarshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_showEvent(self: ptr cQStatusBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_showEvent ".} =
  type Cb = proc(super: QStatusBarshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QStatusBar(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QStatusBar, param1: gen_qevent.QPaintEvent): void =


  fQStatusBar_virtualbase_paintEvent(self.h, param1.h)

type QStatusBarpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QStatusBar, slot: proc(super: QStatusBarpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_paintEvent(self: ptr cQStatusBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_paintEvent ".} =
  type Cb = proc(super: QStatusBarpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QStatusBar(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QStatusBar, param1: gen_qevent.QResizeEvent): void =


  fQStatusBar_virtualbase_resizeEvent(self.h, param1.h)

type QStatusBarresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QStatusBar, slot: proc(super: QStatusBarresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_resizeEvent(self: ptr cQStatusBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_resizeEvent ".} =
  type Cb = proc(super: QStatusBarresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QStatusBar(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QStatusBar, param1: gen_qcoreevent.QEvent): bool =


  fQStatusBar_virtualbase_event(self.h, param1.h)

type QStatusBareventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QStatusBar, slot: proc(super: QStatusBareventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStatusBareventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_event(self: ptr cQStatusBar, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QStatusBar_event ".} =
  type Cb = proc(super: QStatusBareventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QStatusBar(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_devType(self: QStatusBar, ): cint =


  fQStatusBar_virtualbase_devType(self.h)

type QStatusBardevTypeBase* = proc(): cint
proc ondevType*(self: QStatusBar, slot: proc(super: QStatusBardevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QStatusBardevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_devType(self: ptr cQStatusBar, slot: int): cint {.exportc: "miqt_exec_callback_QStatusBar_devType ".} =
  type Cb = proc(super: QStatusBardevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QStatusBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QStatusBar, visible: bool): void =


  fQStatusBar_virtualbase_setVisible(self.h, visible)

type QStatusBarsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QStatusBar, slot: proc(super: QStatusBarsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_setVisible(self: ptr cQStatusBar, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QStatusBar_setVisible ".} =
  type Cb = proc(super: QStatusBarsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QStatusBar(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QStatusBar, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQStatusBar_virtualbase_sizeHint(self.h))

type QStatusBarsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QStatusBar, slot: proc(super: QStatusBarsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_sizeHint(self: ptr cQStatusBar, slot: int): pointer {.exportc: "miqt_exec_callback_QStatusBar_sizeHint ".} =
  type Cb = proc(super: QStatusBarsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QStatusBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QStatusBar, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQStatusBar_virtualbase_minimumSizeHint(self.h))

type QStatusBarminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QStatusBar, slot: proc(super: QStatusBarminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_minimumSizeHint(self: ptr cQStatusBar, slot: int): pointer {.exportc: "miqt_exec_callback_QStatusBar_minimumSizeHint ".} =
  type Cb = proc(super: QStatusBarminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QStatusBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QStatusBar, param1: cint): cint =


  fQStatusBar_virtualbase_heightForWidth(self.h, param1)

type QStatusBarheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QStatusBar, slot: proc(super: QStatusBarheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_heightForWidth(self: ptr cQStatusBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QStatusBar_heightForWidth ".} =
  type Cb = proc(super: QStatusBarheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QStatusBar(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QStatusBar, ): bool =


  fQStatusBar_virtualbase_hasHeightForWidth(self.h)

type QStatusBarhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QStatusBar, slot: proc(super: QStatusBarhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_hasHeightForWidth(self: ptr cQStatusBar, slot: int): bool {.exportc: "miqt_exec_callback_QStatusBar_hasHeightForWidth ".} =
  type Cb = proc(super: QStatusBarhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QStatusBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QStatusBar, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQStatusBar_virtualbase_paintEngine(self.h))

type QStatusBarpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QStatusBar, slot: proc(super: QStatusBarpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_paintEngine(self: ptr cQStatusBar, slot: int): pointer {.exportc: "miqt_exec_callback_QStatusBar_paintEngine ".} =
  type Cb = proc(super: QStatusBarpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QStatusBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QStatusBar, event: gen_qevent.QMouseEvent): void =


  fQStatusBar_virtualbase_mousePressEvent(self.h, event.h)

type QStatusBarmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QStatusBar, slot: proc(super: QStatusBarmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_mousePressEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_mousePressEvent ".} =
  type Cb = proc(super: QStatusBarmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QStatusBar, event: gen_qevent.QMouseEvent): void =


  fQStatusBar_virtualbase_mouseReleaseEvent(self.h, event.h)

type QStatusBarmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QStatusBar, slot: proc(super: QStatusBarmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_mouseReleaseEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_mouseReleaseEvent ".} =
  type Cb = proc(super: QStatusBarmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QStatusBar, event: gen_qevent.QMouseEvent): void =


  fQStatusBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QStatusBarmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QStatusBar, slot: proc(super: QStatusBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_mouseDoubleClickEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QStatusBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QStatusBar, event: gen_qevent.QMouseEvent): void =


  fQStatusBar_virtualbase_mouseMoveEvent(self.h, event.h)

type QStatusBarmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QStatusBar, slot: proc(super: QStatusBarmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_mouseMoveEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_mouseMoveEvent ".} =
  type Cb = proc(super: QStatusBarmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QStatusBar, event: gen_qevent.QWheelEvent): void =


  fQStatusBar_virtualbase_wheelEvent(self.h, event.h)

type QStatusBarwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QStatusBar, slot: proc(super: QStatusBarwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_wheelEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_wheelEvent ".} =
  type Cb = proc(super: QStatusBarwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QStatusBar, event: gen_qevent.QKeyEvent): void =


  fQStatusBar_virtualbase_keyPressEvent(self.h, event.h)

type QStatusBarkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QStatusBar, slot: proc(super: QStatusBarkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_keyPressEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_keyPressEvent ".} =
  type Cb = proc(super: QStatusBarkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QStatusBar, event: gen_qevent.QKeyEvent): void =


  fQStatusBar_virtualbase_keyReleaseEvent(self.h, event.h)

type QStatusBarkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QStatusBar, slot: proc(super: QStatusBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_keyReleaseEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_keyReleaseEvent ".} =
  type Cb = proc(super: QStatusBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QStatusBar, event: gen_qevent.QFocusEvent): void =


  fQStatusBar_virtualbase_focusInEvent(self.h, event.h)

type QStatusBarfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QStatusBar, slot: proc(super: QStatusBarfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_focusInEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_focusInEvent ".} =
  type Cb = proc(super: QStatusBarfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QStatusBar, event: gen_qevent.QFocusEvent): void =


  fQStatusBar_virtualbase_focusOutEvent(self.h, event.h)

type QStatusBarfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QStatusBar, slot: proc(super: QStatusBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_focusOutEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_focusOutEvent ".} =
  type Cb = proc(super: QStatusBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QStatusBar, event: gen_qcoreevent.QEvent): void =


  fQStatusBar_virtualbase_enterEvent(self.h, event.h)

type QStatusBarenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QStatusBar, slot: proc(super: QStatusBarenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_enterEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_enterEvent ".} =
  type Cb = proc(super: QStatusBarenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QStatusBar, event: gen_qcoreevent.QEvent): void =


  fQStatusBar_virtualbase_leaveEvent(self.h, event.h)

type QStatusBarleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QStatusBar, slot: proc(super: QStatusBarleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_leaveEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_leaveEvent ".} =
  type Cb = proc(super: QStatusBarleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QStatusBar, event: gen_qevent.QMoveEvent): void =


  fQStatusBar_virtualbase_moveEvent(self.h, event.h)

type QStatusBarmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QStatusBar, slot: proc(super: QStatusBarmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_moveEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_moveEvent ".} =
  type Cb = proc(super: QStatusBarmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QStatusBar, event: gen_qevent.QCloseEvent): void =


  fQStatusBar_virtualbase_closeEvent(self.h, event.h)

type QStatusBarcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QStatusBar, slot: proc(super: QStatusBarcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_closeEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_closeEvent ".} =
  type Cb = proc(super: QStatusBarcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QStatusBar, event: gen_qevent.QContextMenuEvent): void =


  fQStatusBar_virtualbase_contextMenuEvent(self.h, event.h)

type QStatusBarcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QStatusBar, slot: proc(super: QStatusBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_contextMenuEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_contextMenuEvent ".} =
  type Cb = proc(super: QStatusBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QStatusBar, event: gen_qevent.QTabletEvent): void =


  fQStatusBar_virtualbase_tabletEvent(self.h, event.h)

type QStatusBartabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QStatusBar, slot: proc(super: QStatusBartabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBartabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_tabletEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_tabletEvent ".} =
  type Cb = proc(super: QStatusBartabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QStatusBar, event: gen_qevent.QActionEvent): void =


  fQStatusBar_virtualbase_actionEvent(self.h, event.h)

type QStatusBaractionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QStatusBar, slot: proc(super: QStatusBaractionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBaractionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_actionEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_actionEvent ".} =
  type Cb = proc(super: QStatusBaractionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QStatusBar, event: gen_qevent.QDragEnterEvent): void =


  fQStatusBar_virtualbase_dragEnterEvent(self.h, event.h)

type QStatusBardragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QStatusBar, slot: proc(super: QStatusBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_dragEnterEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_dragEnterEvent ".} =
  type Cb = proc(super: QStatusBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QStatusBar, event: gen_qevent.QDragMoveEvent): void =


  fQStatusBar_virtualbase_dragMoveEvent(self.h, event.h)

type QStatusBardragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QStatusBar, slot: proc(super: QStatusBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_dragMoveEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_dragMoveEvent ".} =
  type Cb = proc(super: QStatusBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QStatusBar, event: gen_qevent.QDragLeaveEvent): void =


  fQStatusBar_virtualbase_dragLeaveEvent(self.h, event.h)

type QStatusBardragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QStatusBar, slot: proc(super: QStatusBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_dragLeaveEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_dragLeaveEvent ".} =
  type Cb = proc(super: QStatusBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QStatusBar, event: gen_qevent.QDropEvent): void =


  fQStatusBar_virtualbase_dropEvent(self.h, event.h)

type QStatusBardropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QStatusBar, slot: proc(super: QStatusBardropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBardropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_dropEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_dropEvent ".} =
  type Cb = proc(super: QStatusBardropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QStatusBar, event: gen_qevent.QHideEvent): void =


  fQStatusBar_virtualbase_hideEvent(self.h, event.h)

type QStatusBarhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QStatusBar, slot: proc(super: QStatusBarhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_hideEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_hideEvent ".} =
  type Cb = proc(super: QStatusBarhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QStatusBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQStatusBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QStatusBarnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QStatusBar, slot: proc(super: QStatusBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_nativeEvent(self: ptr cQStatusBar, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QStatusBar_nativeEvent ".} =
  type Cb = proc(super: QStatusBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QStatusBar(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QStatusBar, param1: gen_qcoreevent.QEvent): void =


  fQStatusBar_virtualbase_changeEvent(self.h, param1.h)

type QStatusBarchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QStatusBar, slot: proc(super: QStatusBarchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_changeEvent(self: ptr cQStatusBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_changeEvent ".} =
  type Cb = proc(super: QStatusBarchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QStatusBar(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QStatusBar, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQStatusBar_virtualbase_metric(self.h, cint(param1))

type QStatusBarmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QStatusBar, slot: proc(super: QStatusBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_metric(self: ptr cQStatusBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QStatusBar_metric ".} =
  type Cb = proc(super: QStatusBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QStatusBar(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QStatusBar, painter: gen_qpainter.QPainter): void =


  fQStatusBar_virtualbase_initPainter(self.h, painter.h)

type QStatusBarinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QStatusBar, slot: proc(super: QStatusBarinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_initPainter(self: ptr cQStatusBar, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_initPainter ".} =
  type Cb = proc(super: QStatusBarinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QStatusBar(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QStatusBar, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQStatusBar_virtualbase_redirected(self.h, offset.h))

type QStatusBarredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QStatusBar, slot: proc(super: QStatusBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_redirected(self: ptr cQStatusBar, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QStatusBar_redirected ".} =
  type Cb = proc(super: QStatusBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QStatusBar(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QStatusBar, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQStatusBar_virtualbase_sharedPainter(self.h))

type QStatusBarsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QStatusBar, slot: proc(super: QStatusBarsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_sharedPainter(self: ptr cQStatusBar, slot: int): pointer {.exportc: "miqt_exec_callback_QStatusBar_sharedPainter ".} =
  type Cb = proc(super: QStatusBarsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QStatusBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QStatusBar, param1: gen_qevent.QInputMethodEvent): void =


  fQStatusBar_virtualbase_inputMethodEvent(self.h, param1.h)

type QStatusBarinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QStatusBar, slot: proc(super: QStatusBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_inputMethodEvent(self: ptr cQStatusBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_inputMethodEvent ".} =
  type Cb = proc(super: QStatusBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QStatusBar(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QStatusBar, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQStatusBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QStatusBarinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QStatusBar, slot: proc(super: QStatusBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_inputMethodQuery(self: ptr cQStatusBar, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QStatusBar_inputMethodQuery ".} =
  type Cb = proc(super: QStatusBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QStatusBar(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QStatusBar, next: bool): bool =


  fQStatusBar_virtualbase_focusNextPrevChild(self.h, next)

type QStatusBarfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QStatusBar, slot: proc(super: QStatusBarfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_focusNextPrevChild(self: ptr cQStatusBar, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QStatusBar_focusNextPrevChild ".} =
  type Cb = proc(super: QStatusBarfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QStatusBar(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QStatusBar, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQStatusBar_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStatusBareventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QStatusBar, slot: proc(super: QStatusBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStatusBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_eventFilter(self: ptr cQStatusBar, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStatusBar_eventFilter ".} =
  type Cb = proc(super: QStatusBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QStatusBar(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QStatusBar, event: gen_qcoreevent.QTimerEvent): void =


  fQStatusBar_virtualbase_timerEvent(self.h, event.h)

type QStatusBartimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QStatusBar, slot: proc(super: QStatusBartimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBartimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_timerEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_timerEvent ".} =
  type Cb = proc(super: QStatusBartimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QStatusBar, event: gen_qcoreevent.QChildEvent): void =


  fQStatusBar_virtualbase_childEvent(self.h, event.h)

type QStatusBarchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QStatusBar, slot: proc(super: QStatusBarchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_childEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_childEvent ".} =
  type Cb = proc(super: QStatusBarchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QStatusBar, event: gen_qcoreevent.QEvent): void =


  fQStatusBar_virtualbase_customEvent(self.h, event.h)

type QStatusBarcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QStatusBar, slot: proc(super: QStatusBarcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_customEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_customEvent ".} =
  type Cb = proc(super: QStatusBarcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QStatusBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QStatusBar, signal: gen_qmetaobject.QMetaMethod): void =


  fQStatusBar_virtualbase_connectNotify(self.h, signal.h)

type QStatusBarconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QStatusBar, slot: proc(super: QStatusBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_connectNotify(self: ptr cQStatusBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_connectNotify ".} =
  type Cb = proc(super: QStatusBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QStatusBar(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QStatusBar, signal: gen_qmetaobject.QMetaMethod): void =


  fQStatusBar_virtualbase_disconnectNotify(self.h, signal.h)

type QStatusBardisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QStatusBar, slot: proc(super: QStatusBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_disconnectNotify(self: ptr cQStatusBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_disconnectNotify ".} =
  type Cb = proc(super: QStatusBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QStatusBar(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QStatusBar): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQStatusBar_staticMetaObject())
proc delete*(self: QStatusBar) =
  fcQStatusBar_delete(self.h)
