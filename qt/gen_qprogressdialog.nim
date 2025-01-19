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
{.compile("gen_qprogressdialog.cpp", cflags).}


import gen_qprogressdialog_types
export gen_qprogressdialog_types

import
  gen_qcoreevent,
  gen_qdialog,
  gen_qevent,
  gen_qlabel,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qprogressbar,
  gen_qpushbutton,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qdialog,
  gen_qevent,
  gen_qlabel,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qprogressbar,
  gen_qpushbutton,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQProgressDialog*{.exportc: "QProgressDialog", incompleteStruct.} = object

proc fcQProgressDialog_new(parent: pointer): ptr cQProgressDialog {.importc: "QProgressDialog_new".}
proc fcQProgressDialog_new2(): ptr cQProgressDialog {.importc: "QProgressDialog_new2".}
proc fcQProgressDialog_new3(labelText: struct_miqt_string, cancelButtonText: struct_miqt_string, minimum: cint, maximum: cint): ptr cQProgressDialog {.importc: "QProgressDialog_new3".}
proc fcQProgressDialog_new4(parent: pointer, flags: cint): ptr cQProgressDialog {.importc: "QProgressDialog_new4".}
proc fcQProgressDialog_new5(labelText: struct_miqt_string, cancelButtonText: struct_miqt_string, minimum: cint, maximum: cint, parent: pointer): ptr cQProgressDialog {.importc: "QProgressDialog_new5".}
proc fcQProgressDialog_new6(labelText: struct_miqt_string, cancelButtonText: struct_miqt_string, minimum: cint, maximum: cint, parent: pointer, flags: cint): ptr cQProgressDialog {.importc: "QProgressDialog_new6".}
proc fcQProgressDialog_metaObject(self: pointer, ): pointer {.importc: "QProgressDialog_metaObject".}
proc fcQProgressDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QProgressDialog_metacast".}
proc fcQProgressDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProgressDialog_metacall".}
proc fcQProgressDialog_tr(s: cstring): struct_miqt_string {.importc: "QProgressDialog_tr".}
proc fcQProgressDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QProgressDialog_trUtf8".}
proc fcQProgressDialog_setLabel(self: pointer, label: pointer): void {.importc: "QProgressDialog_setLabel".}
proc fcQProgressDialog_setCancelButton(self: pointer, button: pointer): void {.importc: "QProgressDialog_setCancelButton".}
proc fcQProgressDialog_setBar(self: pointer, bar: pointer): void {.importc: "QProgressDialog_setBar".}
proc fcQProgressDialog_wasCanceled(self: pointer, ): bool {.importc: "QProgressDialog_wasCanceled".}
proc fcQProgressDialog_minimum(self: pointer, ): cint {.importc: "QProgressDialog_minimum".}
proc fcQProgressDialog_maximum(self: pointer, ): cint {.importc: "QProgressDialog_maximum".}
proc fcQProgressDialog_value(self: pointer, ): cint {.importc: "QProgressDialog_value".}
proc fcQProgressDialog_sizeHint(self: pointer, ): pointer {.importc: "QProgressDialog_sizeHint".}
proc fcQProgressDialog_labelText(self: pointer, ): struct_miqt_string {.importc: "QProgressDialog_labelText".}
proc fcQProgressDialog_minimumDuration(self: pointer, ): cint {.importc: "QProgressDialog_minimumDuration".}
proc fcQProgressDialog_setAutoReset(self: pointer, reset: bool): void {.importc: "QProgressDialog_setAutoReset".}
proc fcQProgressDialog_autoReset(self: pointer, ): bool {.importc: "QProgressDialog_autoReset".}
proc fcQProgressDialog_setAutoClose(self: pointer, close: bool): void {.importc: "QProgressDialog_setAutoClose".}
proc fcQProgressDialog_autoClose(self: pointer, ): bool {.importc: "QProgressDialog_autoClose".}
proc fcQProgressDialog_cancel(self: pointer, ): void {.importc: "QProgressDialog_cancel".}
proc fcQProgressDialog_reset(self: pointer, ): void {.importc: "QProgressDialog_reset".}
proc fcQProgressDialog_setMaximum(self: pointer, maximum: cint): void {.importc: "QProgressDialog_setMaximum".}
proc fcQProgressDialog_setMinimum(self: pointer, minimum: cint): void {.importc: "QProgressDialog_setMinimum".}
proc fcQProgressDialog_setRange(self: pointer, minimum: cint, maximum: cint): void {.importc: "QProgressDialog_setRange".}
proc fcQProgressDialog_setValue(self: pointer, progress: cint): void {.importc: "QProgressDialog_setValue".}
proc fcQProgressDialog_setLabelText(self: pointer, text: struct_miqt_string): void {.importc: "QProgressDialog_setLabelText".}
proc fcQProgressDialog_setCancelButtonText(self: pointer, text: struct_miqt_string): void {.importc: "QProgressDialog_setCancelButtonText".}
proc fcQProgressDialog_setMinimumDuration(self: pointer, ms: cint): void {.importc: "QProgressDialog_setMinimumDuration".}
proc fcQProgressDialog_canceled(self: pointer, ): void {.importc: "QProgressDialog_canceled".}
proc fQProgressDialog_connect_canceled(self: pointer, slot: int) {.importc: "QProgressDialog_connect_canceled".}
proc fcQProgressDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QProgressDialog_tr2".}
proc fcQProgressDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProgressDialog_tr3".}
proc fcQProgressDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QProgressDialog_trUtf82".}
proc fcQProgressDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProgressDialog_trUtf83".}
proc fQProgressDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QProgressDialog_virtualbase_metacall".}
proc fcQProgressDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_metacall".}
proc fQProgressDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QProgressDialog_virtualbase_sizeHint".}
proc fcQProgressDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_sizeHint".}
proc fQProgressDialog_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_resizeEvent".}
proc fcQProgressDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_resizeEvent".}
proc fQProgressDialog_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_closeEvent".}
proc fcQProgressDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_closeEvent".}
proc fQProgressDialog_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_changeEvent".}
proc fcQProgressDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_changeEvent".}
proc fQProgressDialog_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_showEvent".}
proc fcQProgressDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_showEvent".}
proc fQProgressDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QProgressDialog_virtualbase_setVisible".}
proc fcQProgressDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_setVisible".}
proc fQProgressDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QProgressDialog_virtualbase_minimumSizeHint".}
proc fcQProgressDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_minimumSizeHint".}
proc fQProgressDialog_virtualbase_open(self: pointer, ): void{.importc: "QProgressDialog_virtualbase_open".}
proc fcQProgressDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_open".}
proc fQProgressDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QProgressDialog_virtualbase_exec".}
proc fcQProgressDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_exec".}
proc fQProgressDialog_virtualbase_done(self: pointer, param1: cint): void{.importc: "QProgressDialog_virtualbase_done".}
proc fcQProgressDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_done".}
proc fQProgressDialog_virtualbase_accept(self: pointer, ): void{.importc: "QProgressDialog_virtualbase_accept".}
proc fcQProgressDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_accept".}
proc fQProgressDialog_virtualbase_reject(self: pointer, ): void{.importc: "QProgressDialog_virtualbase_reject".}
proc fcQProgressDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_reject".}
proc fQProgressDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QProgressDialog_virtualbase_keyPressEvent".}
proc fcQProgressDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_keyPressEvent".}
proc fQProgressDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QProgressDialog_virtualbase_contextMenuEvent".}
proc fcQProgressDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_contextMenuEvent".}
proc fQProgressDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QProgressDialog_virtualbase_eventFilter".}
proc fcQProgressDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_eventFilter".}
proc fQProgressDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QProgressDialog_virtualbase_devType".}
proc fcQProgressDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_devType".}
proc fQProgressDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QProgressDialog_virtualbase_heightForWidth".}
proc fcQProgressDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_heightForWidth".}
proc fQProgressDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QProgressDialog_virtualbase_hasHeightForWidth".}
proc fcQProgressDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_hasHeightForWidth".}
proc fQProgressDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QProgressDialog_virtualbase_paintEngine".}
proc fcQProgressDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_paintEngine".}
proc fQProgressDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QProgressDialog_virtualbase_event".}
proc fcQProgressDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_event".}
proc fQProgressDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_mousePressEvent".}
proc fcQProgressDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_mousePressEvent".}
proc fQProgressDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_mouseReleaseEvent".}
proc fcQProgressDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_mouseReleaseEvent".}
proc fQProgressDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQProgressDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_mouseDoubleClickEvent".}
proc fQProgressDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_mouseMoveEvent".}
proc fcQProgressDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_mouseMoveEvent".}
proc fQProgressDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_wheelEvent".}
proc fcQProgressDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_wheelEvent".}
proc fQProgressDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_keyReleaseEvent".}
proc fcQProgressDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_keyReleaseEvent".}
proc fQProgressDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_focusInEvent".}
proc fcQProgressDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_focusInEvent".}
proc fQProgressDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_focusOutEvent".}
proc fcQProgressDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_focusOutEvent".}
proc fQProgressDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_enterEvent".}
proc fcQProgressDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_enterEvent".}
proc fQProgressDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_leaveEvent".}
proc fcQProgressDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_leaveEvent".}
proc fQProgressDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_paintEvent".}
proc fcQProgressDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_paintEvent".}
proc fQProgressDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_moveEvent".}
proc fcQProgressDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_moveEvent".}
proc fQProgressDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_tabletEvent".}
proc fcQProgressDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_tabletEvent".}
proc fQProgressDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_actionEvent".}
proc fcQProgressDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_actionEvent".}
proc fQProgressDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_dragEnterEvent".}
proc fcQProgressDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_dragEnterEvent".}
proc fQProgressDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_dragMoveEvent".}
proc fcQProgressDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_dragMoveEvent".}
proc fQProgressDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_dragLeaveEvent".}
proc fcQProgressDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_dragLeaveEvent".}
proc fQProgressDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_dropEvent".}
proc fcQProgressDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_dropEvent".}
proc fQProgressDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_hideEvent".}
proc fcQProgressDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_hideEvent".}
proc fQProgressDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QProgressDialog_virtualbase_nativeEvent".}
proc fcQProgressDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_nativeEvent".}
proc fQProgressDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QProgressDialog_virtualbase_metric".}
proc fcQProgressDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_metric".}
proc fQProgressDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QProgressDialog_virtualbase_initPainter".}
proc fcQProgressDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_initPainter".}
proc fQProgressDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QProgressDialog_virtualbase_redirected".}
proc fcQProgressDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_redirected".}
proc fQProgressDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QProgressDialog_virtualbase_sharedPainter".}
proc fcQProgressDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_sharedPainter".}
proc fQProgressDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QProgressDialog_virtualbase_inputMethodEvent".}
proc fcQProgressDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_inputMethodEvent".}
proc fQProgressDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QProgressDialog_virtualbase_inputMethodQuery".}
proc fcQProgressDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_inputMethodQuery".}
proc fQProgressDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QProgressDialog_virtualbase_focusNextPrevChild".}
proc fcQProgressDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_focusNextPrevChild".}
proc fQProgressDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_timerEvent".}
proc fcQProgressDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_timerEvent".}
proc fQProgressDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_childEvent".}
proc fcQProgressDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_childEvent".}
proc fQProgressDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_customEvent".}
proc fcQProgressDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_customEvent".}
proc fQProgressDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QProgressDialog_virtualbase_connectNotify".}
proc fcQProgressDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_connectNotify".}
proc fQProgressDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QProgressDialog_virtualbase_disconnectNotify".}
proc fcQProgressDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_disconnectNotify".}
proc fcQProgressDialog_staticMetaObject(): pointer {.importc: "QProgressDialog_staticMetaObject".}
proc fcQProgressDialog_delete(self: pointer) {.importc: "QProgressDialog_delete".}


func init*(T: type QProgressDialog, h: ptr cQProgressDialog): QProgressDialog =
  T(h: h)
proc create*(T: type QProgressDialog, parent: gen_qwidget.QWidget): QProgressDialog =

  QProgressDialog.init(fcQProgressDialog_new(parent.h))
proc create*(T: type QProgressDialog, ): QProgressDialog =

  QProgressDialog.init(fcQProgressDialog_new2())
proc create*(T: type QProgressDialog, labelText: string, cancelButtonText: string, minimum: cint, maximum: cint): QProgressDialog =

  QProgressDialog.init(fcQProgressDialog_new3(struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum))
proc create*(T: type QProgressDialog, parent: gen_qwidget.QWidget, flags: gen_qnamespace.WindowType): QProgressDialog =

  QProgressDialog.init(fcQProgressDialog_new4(parent.h, cint(flags)))
proc create*(T: type QProgressDialog, labelText: string, cancelButtonText: string, minimum: cint, maximum: cint, parent: gen_qwidget.QWidget): QProgressDialog =

  QProgressDialog.init(fcQProgressDialog_new5(struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum, parent.h))
proc create*(T: type QProgressDialog, labelText: string, cancelButtonText: string, minimum: cint, maximum: cint, parent: gen_qwidget.QWidget, flags: gen_qnamespace.WindowType): QProgressDialog =

  QProgressDialog.init(fcQProgressDialog_new6(struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum, parent.h, cint(flags)))
proc metaObject*(self: QProgressDialog, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQProgressDialog_metaObject(self.h))

proc metacast*(self: QProgressDialog, param1: cstring): pointer =

  fcQProgressDialog_metacast(self.h, param1)

proc metacall*(self: QProgressDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQProgressDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QProgressDialog, s: cstring): string =

  let v_ms = fcQProgressDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QProgressDialog, s: cstring): string =

  let v_ms = fcQProgressDialog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setLabel*(self: QProgressDialog, label: gen_qlabel.QLabel): void =

  fcQProgressDialog_setLabel(self.h, label.h)

proc setCancelButton*(self: QProgressDialog, button: gen_qpushbutton.QPushButton): void =

  fcQProgressDialog_setCancelButton(self.h, button.h)

proc setBar*(self: QProgressDialog, bar: gen_qprogressbar.QProgressBar): void =

  fcQProgressDialog_setBar(self.h, bar.h)

proc wasCanceled*(self: QProgressDialog, ): bool =

  fcQProgressDialog_wasCanceled(self.h)

proc minimum*(self: QProgressDialog, ): cint =

  fcQProgressDialog_minimum(self.h)

proc maximum*(self: QProgressDialog, ): cint =

  fcQProgressDialog_maximum(self.h)

proc value*(self: QProgressDialog, ): cint =

  fcQProgressDialog_value(self.h)

proc sizeHint*(self: QProgressDialog, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQProgressDialog_sizeHint(self.h))

proc labelText*(self: QProgressDialog, ): string =

  let v_ms = fcQProgressDialog_labelText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc minimumDuration*(self: QProgressDialog, ): cint =

  fcQProgressDialog_minimumDuration(self.h)

proc setAutoReset*(self: QProgressDialog, reset: bool): void =

  fcQProgressDialog_setAutoReset(self.h, reset)

proc autoReset*(self: QProgressDialog, ): bool =

  fcQProgressDialog_autoReset(self.h)

proc setAutoClose*(self: QProgressDialog, close: bool): void =

  fcQProgressDialog_setAutoClose(self.h, close)

proc autoClose*(self: QProgressDialog, ): bool =

  fcQProgressDialog_autoClose(self.h)

proc cancel*(self: QProgressDialog, ): void =

  fcQProgressDialog_cancel(self.h)

proc reset*(self: QProgressDialog, ): void =

  fcQProgressDialog_reset(self.h)

proc setMaximum*(self: QProgressDialog, maximum: cint): void =

  fcQProgressDialog_setMaximum(self.h, maximum)

proc setMinimum*(self: QProgressDialog, minimum: cint): void =

  fcQProgressDialog_setMinimum(self.h, minimum)

proc setRange*(self: QProgressDialog, minimum: cint, maximum: cint): void =

  fcQProgressDialog_setRange(self.h, minimum, maximum)

proc setValue*(self: QProgressDialog, progress: cint): void =

  fcQProgressDialog_setValue(self.h, progress)

proc setLabelText*(self: QProgressDialog, text: string): void =

  fcQProgressDialog_setLabelText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setCancelButtonText*(self: QProgressDialog, text: string): void =

  fcQProgressDialog_setCancelButtonText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setMinimumDuration*(self: QProgressDialog, ms: cint): void =

  fcQProgressDialog_setMinimumDuration(self.h, ms)

proc canceled*(self: QProgressDialog, ): void =

  fcQProgressDialog_canceled(self.h)

proc miqt_exec_callback_QProgressDialog_canceled(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncanceled*(self: QProgressDialog, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQProgressDialog_connect_canceled(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QProgressDialog, s: cstring, c: cstring): string =

  let v_ms = fcQProgressDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QProgressDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQProgressDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QProgressDialog, s: cstring, c: cstring): string =

  let v_ms = fcQProgressDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QProgressDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQProgressDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QProgressDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQProgressDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QProgressDialogmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QProgressDialog, slot: proc(super: QProgressDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_metacall(self: ptr cQProgressDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QProgressDialog_metacall ".} =
  type Cb = proc(super: QProgressDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QProgressDialog(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QProgressDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQProgressDialog_virtualbase_sizeHint(self.h))

type QProgressDialogsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QProgressDialog, slot: proc(super: QProgressDialogsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_sizeHint(self: ptr cQProgressDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressDialog_sizeHint ".} =
  type Cb = proc(super: QProgressDialogsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QProgressDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_resizeEvent(self: QProgressDialog, event: gen_qevent.QResizeEvent): void =


  fQProgressDialog_virtualbase_resizeEvent(self.h, event.h)

type QProgressDialogresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_resizeEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_resizeEvent ".} =
  type Cb = proc(super: QProgressDialogresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QProgressDialog, event: gen_qevent.QCloseEvent): void =


  fQProgressDialog_virtualbase_closeEvent(self.h, event.h)

type QProgressDialogcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_closeEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_closeEvent ".} =
  type Cb = proc(super: QProgressDialogcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QProgressDialog, event: gen_qcoreevent.QEvent): void =


  fQProgressDialog_virtualbase_changeEvent(self.h, event.h)

type QProgressDialogchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_changeEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_changeEvent ".} =
  type Cb = proc(super: QProgressDialogchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QProgressDialog, event: gen_qevent.QShowEvent): void =


  fQProgressDialog_virtualbase_showEvent(self.h, event.h)

type QProgressDialogshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_showEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_showEvent ".} =
  type Cb = proc(super: QProgressDialogshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setVisible(self: QProgressDialog, visible: bool): void =


  fQProgressDialog_virtualbase_setVisible(self.h, visible)

type QProgressDialogsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QProgressDialog, slot: proc(super: QProgressDialogsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_setVisible(self: ptr cQProgressDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QProgressDialog_setVisible ".} =
  type Cb = proc(super: QProgressDialogsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QProgressDialog(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QProgressDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQProgressDialog_virtualbase_minimumSizeHint(self.h))

type QProgressDialogminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QProgressDialog, slot: proc(super: QProgressDialogminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_minimumSizeHint(self: ptr cQProgressDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressDialog_minimumSizeHint ".} =
  type Cb = proc(super: QProgressDialogminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QProgressDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_open(self: QProgressDialog, ): void =


  fQProgressDialog_virtualbase_open(self.h)

type QProgressDialogopenBase* = proc(): void
proc onopen*(self: QProgressDialog, slot: proc(super: QProgressDialogopenBase): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogopenBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_open(self: ptr cQProgressDialog, slot: int): void {.exportc: "miqt_exec_callback_QProgressDialog_open ".} =
  type Cb = proc(super: QProgressDialogopenBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_open(QProgressDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_exec(self: QProgressDialog, ): cint =


  fQProgressDialog_virtualbase_exec(self.h)

type QProgressDialogexecBase* = proc(): cint
proc onexec*(self: QProgressDialog, slot: proc(super: QProgressDialogexecBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogexecBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_exec(self: ptr cQProgressDialog, slot: int): cint {.exportc: "miqt_exec_callback_QProgressDialog_exec ".} =
  type Cb = proc(super: QProgressDialogexecBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_exec(QProgressDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_done(self: QProgressDialog, param1: cint): void =


  fQProgressDialog_virtualbase_done(self.h, param1)

type QProgressDialogdoneBase* = proc(param1: cint): void
proc ondone*(self: QProgressDialog, slot: proc(super: QProgressDialogdoneBase, param1: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogdoneBase, param1: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_done(self: ptr cQProgressDialog, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QProgressDialog_done ".} =
  type Cb = proc(super: QProgressDialogdoneBase, param1: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_done(QProgressDialog(h: self), param1)
  let slotval1 = param1


  nimfunc[](superCall, slotval1)
proc callVirtualBase_accept(self: QProgressDialog, ): void =


  fQProgressDialog_virtualbase_accept(self.h)

type QProgressDialogacceptBase* = proc(): void
proc onaccept*(self: QProgressDialog, slot: proc(super: QProgressDialogacceptBase): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogacceptBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_accept(self: ptr cQProgressDialog, slot: int): void {.exportc: "miqt_exec_callback_QProgressDialog_accept ".} =
  type Cb = proc(super: QProgressDialogacceptBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accept(QProgressDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reject(self: QProgressDialog, ): void =


  fQProgressDialog_virtualbase_reject(self.h)

type QProgressDialogrejectBase* = proc(): void
proc onreject*(self: QProgressDialog, slot: proc(super: QProgressDialogrejectBase): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogrejectBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_reject(self: ptr cQProgressDialog, slot: int): void {.exportc: "miqt_exec_callback_QProgressDialog_reject ".} =
  type Cb = proc(super: QProgressDialogrejectBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reject(QProgressDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QProgressDialog, param1: gen_qevent.QKeyEvent): void =


  fQProgressDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QProgressDialogkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_keyPressEvent(self: ptr cQProgressDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_keyPressEvent ".} =
  type Cb = proc(super: QProgressDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QProgressDialog(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QProgressDialog, param1: gen_qevent.QContextMenuEvent): void =


  fQProgressDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QProgressDialogcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_contextMenuEvent(self: ptr cQProgressDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_contextMenuEvent ".} =
  type Cb = proc(super: QProgressDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QProgressDialog(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QProgressDialog, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQProgressDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QProgressDialogeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QProgressDialog, slot: proc(super: QProgressDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_eventFilter(self: ptr cQProgressDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QProgressDialog_eventFilter ".} =
  type Cb = proc(super: QProgressDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QProgressDialog(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_devType(self: QProgressDialog, ): cint =


  fQProgressDialog_virtualbase_devType(self.h)

type QProgressDialogdevTypeBase* = proc(): cint
proc ondevType*(self: QProgressDialog, slot: proc(super: QProgressDialogdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_devType(self: ptr cQProgressDialog, slot: int): cint {.exportc: "miqt_exec_callback_QProgressDialog_devType ".} =
  type Cb = proc(super: QProgressDialogdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QProgressDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QProgressDialog, param1: cint): cint =


  fQProgressDialog_virtualbase_heightForWidth(self.h, param1)

type QProgressDialogheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QProgressDialog, slot: proc(super: QProgressDialogheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_heightForWidth(self: ptr cQProgressDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QProgressDialog_heightForWidth ".} =
  type Cb = proc(super: QProgressDialogheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QProgressDialog(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QProgressDialog, ): bool =


  fQProgressDialog_virtualbase_hasHeightForWidth(self.h)

type QProgressDialoghasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QProgressDialog, slot: proc(super: QProgressDialoghasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialoghasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_hasHeightForWidth(self: ptr cQProgressDialog, slot: int): bool {.exportc: "miqt_exec_callback_QProgressDialog_hasHeightForWidth ".} =
  type Cb = proc(super: QProgressDialoghasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QProgressDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QProgressDialog, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQProgressDialog_virtualbase_paintEngine(self.h))

type QProgressDialogpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QProgressDialog, slot: proc(super: QProgressDialogpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_paintEngine(self: ptr cQProgressDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressDialog_paintEngine ".} =
  type Cb = proc(super: QProgressDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QProgressDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QProgressDialog, event: gen_qcoreevent.QEvent): bool =


  fQProgressDialog_virtualbase_event(self.h, event.h)

type QProgressDialogeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QProgressDialog, slot: proc(super: QProgressDialogeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_event(self: ptr cQProgressDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QProgressDialog_event ".} =
  type Cb = proc(super: QProgressDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QProgressDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QProgressDialog, event: gen_qevent.QMouseEvent): void =


  fQProgressDialog_virtualbase_mousePressEvent(self.h, event.h)

type QProgressDialogmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_mousePressEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_mousePressEvent ".} =
  type Cb = proc(super: QProgressDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QProgressDialog, event: gen_qevent.QMouseEvent): void =


  fQProgressDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QProgressDialogmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_mouseReleaseEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_mouseReleaseEvent ".} =
  type Cb = proc(super: QProgressDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QProgressDialog, event: gen_qevent.QMouseEvent): void =


  fQProgressDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QProgressDialogmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_mouseDoubleClickEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QProgressDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QProgressDialog, event: gen_qevent.QMouseEvent): void =


  fQProgressDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QProgressDialogmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_mouseMoveEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_mouseMoveEvent ".} =
  type Cb = proc(super: QProgressDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QProgressDialog, event: gen_qevent.QWheelEvent): void =


  fQProgressDialog_virtualbase_wheelEvent(self.h, event.h)

type QProgressDialogwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_wheelEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_wheelEvent ".} =
  type Cb = proc(super: QProgressDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QProgressDialog, event: gen_qevent.QKeyEvent): void =


  fQProgressDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QProgressDialogkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_keyReleaseEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_keyReleaseEvent ".} =
  type Cb = proc(super: QProgressDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QProgressDialog, event: gen_qevent.QFocusEvent): void =


  fQProgressDialog_virtualbase_focusInEvent(self.h, event.h)

type QProgressDialogfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_focusInEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_focusInEvent ".} =
  type Cb = proc(super: QProgressDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QProgressDialog, event: gen_qevent.QFocusEvent): void =


  fQProgressDialog_virtualbase_focusOutEvent(self.h, event.h)

type QProgressDialogfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_focusOutEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_focusOutEvent ".} =
  type Cb = proc(super: QProgressDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QProgressDialog, event: gen_qcoreevent.QEvent): void =


  fQProgressDialog_virtualbase_enterEvent(self.h, event.h)

type QProgressDialogenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_enterEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_enterEvent ".} =
  type Cb = proc(super: QProgressDialogenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QProgressDialog, event: gen_qcoreevent.QEvent): void =


  fQProgressDialog_virtualbase_leaveEvent(self.h, event.h)

type QProgressDialogleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_leaveEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_leaveEvent ".} =
  type Cb = proc(super: QProgressDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QProgressDialog, event: gen_qevent.QPaintEvent): void =


  fQProgressDialog_virtualbase_paintEvent(self.h, event.h)

type QProgressDialogpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_paintEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_paintEvent ".} =
  type Cb = proc(super: QProgressDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QProgressDialog, event: gen_qevent.QMoveEvent): void =


  fQProgressDialog_virtualbase_moveEvent(self.h, event.h)

type QProgressDialogmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_moveEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_moveEvent ".} =
  type Cb = proc(super: QProgressDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QProgressDialog, event: gen_qevent.QTabletEvent): void =


  fQProgressDialog_virtualbase_tabletEvent(self.h, event.h)

type QProgressDialogtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_tabletEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_tabletEvent ".} =
  type Cb = proc(super: QProgressDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QProgressDialog, event: gen_qevent.QActionEvent): void =


  fQProgressDialog_virtualbase_actionEvent(self.h, event.h)

type QProgressDialogactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_actionEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_actionEvent ".} =
  type Cb = proc(super: QProgressDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QProgressDialog, event: gen_qevent.QDragEnterEvent): void =


  fQProgressDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QProgressDialogdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_dragEnterEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_dragEnterEvent ".} =
  type Cb = proc(super: QProgressDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QProgressDialog, event: gen_qevent.QDragMoveEvent): void =


  fQProgressDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QProgressDialogdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_dragMoveEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_dragMoveEvent ".} =
  type Cb = proc(super: QProgressDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QProgressDialog, event: gen_qevent.QDragLeaveEvent): void =


  fQProgressDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QProgressDialogdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_dragLeaveEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_dragLeaveEvent ".} =
  type Cb = proc(super: QProgressDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QProgressDialog, event: gen_qevent.QDropEvent): void =


  fQProgressDialog_virtualbase_dropEvent(self.h, event.h)

type QProgressDialogdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_dropEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_dropEvent ".} =
  type Cb = proc(super: QProgressDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QProgressDialog, event: gen_qevent.QHideEvent): void =


  fQProgressDialog_virtualbase_hideEvent(self.h, event.h)

type QProgressDialoghideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QProgressDialog, slot: proc(super: QProgressDialoghideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_hideEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_hideEvent ".} =
  type Cb = proc(super: QProgressDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QProgressDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQProgressDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QProgressDialognativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QProgressDialog, slot: proc(super: QProgressDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_nativeEvent(self: ptr cQProgressDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QProgressDialog_nativeEvent ".} =
  type Cb = proc(super: QProgressDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QProgressDialog(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QProgressDialog, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQProgressDialog_virtualbase_metric(self.h, cint(param1))

type QProgressDialogmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QProgressDialog, slot: proc(super: QProgressDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_metric(self: ptr cQProgressDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QProgressDialog_metric ".} =
  type Cb = proc(super: QProgressDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QProgressDialog(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QProgressDialog, painter: gen_qpainter.QPainter): void =


  fQProgressDialog_virtualbase_initPainter(self.h, painter.h)

type QProgressDialoginitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QProgressDialog, slot: proc(super: QProgressDialoginitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_initPainter(self: ptr cQProgressDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_initPainter ".} =
  type Cb = proc(super: QProgressDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QProgressDialog(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QProgressDialog, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQProgressDialog_virtualbase_redirected(self.h, offset.h))

type QProgressDialogredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QProgressDialog, slot: proc(super: QProgressDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_redirected(self: ptr cQProgressDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QProgressDialog_redirected ".} =
  type Cb = proc(super: QProgressDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QProgressDialog(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QProgressDialog, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQProgressDialog_virtualbase_sharedPainter(self.h))

type QProgressDialogsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QProgressDialog, slot: proc(super: QProgressDialogsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_sharedPainter(self: ptr cQProgressDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressDialog_sharedPainter ".} =
  type Cb = proc(super: QProgressDialogsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QProgressDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QProgressDialog, param1: gen_qevent.QInputMethodEvent): void =


  fQProgressDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QProgressDialoginputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QProgressDialog, slot: proc(super: QProgressDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_inputMethodEvent(self: ptr cQProgressDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_inputMethodEvent ".} =
  type Cb = proc(super: QProgressDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QProgressDialog(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QProgressDialog, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQProgressDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QProgressDialoginputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QProgressDialog, slot: proc(super: QProgressDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_inputMethodQuery(self: ptr cQProgressDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QProgressDialog_inputMethodQuery ".} =
  type Cb = proc(super: QProgressDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QProgressDialog(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QProgressDialog, next: bool): bool =


  fQProgressDialog_virtualbase_focusNextPrevChild(self.h, next)

type QProgressDialogfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QProgressDialog, slot: proc(super: QProgressDialogfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_focusNextPrevChild(self: ptr cQProgressDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QProgressDialog_focusNextPrevChild ".} =
  type Cb = proc(super: QProgressDialogfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QProgressDialog(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QProgressDialog, event: gen_qcoreevent.QTimerEvent): void =


  fQProgressDialog_virtualbase_timerEvent(self.h, event.h)

type QProgressDialogtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_timerEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_timerEvent ".} =
  type Cb = proc(super: QProgressDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QProgressDialog, event: gen_qcoreevent.QChildEvent): void =


  fQProgressDialog_virtualbase_childEvent(self.h, event.h)

type QProgressDialogchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_childEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_childEvent ".} =
  type Cb = proc(super: QProgressDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QProgressDialog, event: gen_qcoreevent.QEvent): void =


  fQProgressDialog_virtualbase_customEvent(self.h, event.h)

type QProgressDialogcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QProgressDialog, slot: proc(super: QProgressDialogcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_customEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_customEvent ".} =
  type Cb = proc(super: QProgressDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QProgressDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QProgressDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQProgressDialog_virtualbase_connectNotify(self.h, signal.h)

type QProgressDialogconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QProgressDialog, slot: proc(super: QProgressDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_connectNotify(self: ptr cQProgressDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_connectNotify ".} =
  type Cb = proc(super: QProgressDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QProgressDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QProgressDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQProgressDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QProgressDialogdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QProgressDialog, slot: proc(super: QProgressDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_disconnectNotify(self: ptr cQProgressDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_disconnectNotify ".} =
  type Cb = proc(super: QProgressDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QProgressDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QProgressDialog): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQProgressDialog_staticMetaObject())
proc delete*(self: QProgressDialog) =
  fcQProgressDialog_delete(self.h)
