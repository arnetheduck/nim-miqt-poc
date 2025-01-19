import Qt6PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt6PrintSupport")
{.compile("gen_qprintpreviewdialog.cpp", cflags).}


import gen_qprintpreviewdialog_types
export gen_qprintpreviewdialog_types

import
  gen_qcoreevent,
  gen_qdialog,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qprinter,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qdialog,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qprinter,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQPrintPreviewDialog*{.exportc: "QPrintPreviewDialog", incompleteStruct.} = object

proc fcQPrintPreviewDialog_new(parent: pointer): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new".}
proc fcQPrintPreviewDialog_new2(): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new2".}
proc fcQPrintPreviewDialog_new3(printer: pointer): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new3".}
proc fcQPrintPreviewDialog_new4(parent: pointer, flags: cint): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new4".}
proc fcQPrintPreviewDialog_new5(printer: pointer, parent: pointer): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new5".}
proc fcQPrintPreviewDialog_new6(printer: pointer, parent: pointer, flags: cint): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new6".}
proc fcQPrintPreviewDialog_metaObject(self: pointer, ): pointer {.importc: "QPrintPreviewDialog_metaObject".}
proc fcQPrintPreviewDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintPreviewDialog_metacast".}
proc fcQPrintPreviewDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPrintPreviewDialog_metacall".}
proc fcQPrintPreviewDialog_tr(s: cstring): struct_miqt_string {.importc: "QPrintPreviewDialog_tr".}
proc fcQPrintPreviewDialog_printer(self: pointer, ): pointer {.importc: "QPrintPreviewDialog_printer".}
proc fcQPrintPreviewDialog_setVisible(self: pointer, visible: bool): void {.importc: "QPrintPreviewDialog_setVisible".}
proc fcQPrintPreviewDialog_done(self: pointer, resultVal: cint): void {.importc: "QPrintPreviewDialog_done".}
proc fcQPrintPreviewDialog_paintRequested(self: pointer, printer: pointer): void {.importc: "QPrintPreviewDialog_paintRequested".}
proc fQPrintPreviewDialog_connect_paintRequested(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_connect_paintRequested".}
proc fcQPrintPreviewDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintPreviewDialog_tr2".}
proc fcQPrintPreviewDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintPreviewDialog_tr3".}
proc fQPrintPreviewDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPrintPreviewDialog_virtualbase_metacall".}
proc fcQPrintPreviewDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_metacall".}
proc fQPrintPreviewDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QPrintPreviewDialog_virtualbase_setVisible".}
proc fcQPrintPreviewDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_setVisible".}
proc fQPrintPreviewDialog_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QPrintPreviewDialog_virtualbase_done".}
proc fcQPrintPreviewDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_done".}
proc fQPrintPreviewDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QPrintPreviewDialog_virtualbase_sizeHint".}
proc fcQPrintPreviewDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_sizeHint".}
proc fQPrintPreviewDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QPrintPreviewDialog_virtualbase_minimumSizeHint".}
proc fcQPrintPreviewDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_minimumSizeHint".}
proc fQPrintPreviewDialog_virtualbase_open(self: pointer, ): void{.importc: "QPrintPreviewDialog_virtualbase_open".}
proc fcQPrintPreviewDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_open".}
proc fQPrintPreviewDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QPrintPreviewDialog_virtualbase_exec".}
proc fcQPrintPreviewDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_exec".}
proc fQPrintPreviewDialog_virtualbase_accept(self: pointer, ): void{.importc: "QPrintPreviewDialog_virtualbase_accept".}
proc fcQPrintPreviewDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_accept".}
proc fQPrintPreviewDialog_virtualbase_reject(self: pointer, ): void{.importc: "QPrintPreviewDialog_virtualbase_reject".}
proc fcQPrintPreviewDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_reject".}
proc fQPrintPreviewDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_keyPressEvent".}
proc fcQPrintPreviewDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_keyPressEvent".}
proc fQPrintPreviewDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_closeEvent".}
proc fcQPrintPreviewDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_closeEvent".}
proc fQPrintPreviewDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_showEvent".}
proc fcQPrintPreviewDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_showEvent".}
proc fQPrintPreviewDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_resizeEvent".}
proc fcQPrintPreviewDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_resizeEvent".}
proc fQPrintPreviewDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_contextMenuEvent".}
proc fcQPrintPreviewDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_contextMenuEvent".}
proc fQPrintPreviewDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QPrintPreviewDialog_virtualbase_eventFilter".}
proc fcQPrintPreviewDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_eventFilter".}
proc fQPrintPreviewDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QPrintPreviewDialog_virtualbase_devType".}
proc fcQPrintPreviewDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_devType".}
proc fQPrintPreviewDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QPrintPreviewDialog_virtualbase_heightForWidth".}
proc fcQPrintPreviewDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_heightForWidth".}
proc fQPrintPreviewDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QPrintPreviewDialog_virtualbase_hasHeightForWidth".}
proc fcQPrintPreviewDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_hasHeightForWidth".}
proc fQPrintPreviewDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPrintPreviewDialog_virtualbase_paintEngine".}
proc fcQPrintPreviewDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_paintEngine".}
proc fQPrintPreviewDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPrintPreviewDialog_virtualbase_event".}
proc fcQPrintPreviewDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_event".}
proc fQPrintPreviewDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_mousePressEvent".}
proc fcQPrintPreviewDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_mousePressEvent".}
proc fQPrintPreviewDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_mouseReleaseEvent".}
proc fcQPrintPreviewDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_mouseReleaseEvent".}
proc fQPrintPreviewDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQPrintPreviewDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_mouseDoubleClickEvent".}
proc fQPrintPreviewDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_mouseMoveEvent".}
proc fcQPrintPreviewDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_mouseMoveEvent".}
proc fQPrintPreviewDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_wheelEvent".}
proc fcQPrintPreviewDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_wheelEvent".}
proc fQPrintPreviewDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_keyReleaseEvent".}
proc fcQPrintPreviewDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_keyReleaseEvent".}
proc fQPrintPreviewDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_focusInEvent".}
proc fcQPrintPreviewDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_focusInEvent".}
proc fQPrintPreviewDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_focusOutEvent".}
proc fcQPrintPreviewDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_focusOutEvent".}
proc fQPrintPreviewDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_enterEvent".}
proc fcQPrintPreviewDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_enterEvent".}
proc fQPrintPreviewDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_leaveEvent".}
proc fcQPrintPreviewDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_leaveEvent".}
proc fQPrintPreviewDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_paintEvent".}
proc fcQPrintPreviewDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_paintEvent".}
proc fQPrintPreviewDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_moveEvent".}
proc fcQPrintPreviewDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_moveEvent".}
proc fQPrintPreviewDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_tabletEvent".}
proc fcQPrintPreviewDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_tabletEvent".}
proc fQPrintPreviewDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_actionEvent".}
proc fcQPrintPreviewDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_actionEvent".}
proc fQPrintPreviewDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_dragEnterEvent".}
proc fcQPrintPreviewDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_dragEnterEvent".}
proc fQPrintPreviewDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_dragMoveEvent".}
proc fcQPrintPreviewDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_dragMoveEvent".}
proc fQPrintPreviewDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_dragLeaveEvent".}
proc fcQPrintPreviewDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_dragLeaveEvent".}
proc fQPrintPreviewDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_dropEvent".}
proc fcQPrintPreviewDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_dropEvent".}
proc fQPrintPreviewDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_hideEvent".}
proc fcQPrintPreviewDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_hideEvent".}
proc fQPrintPreviewDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QPrintPreviewDialog_virtualbase_nativeEvent".}
proc fcQPrintPreviewDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_nativeEvent".}
proc fQPrintPreviewDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_changeEvent".}
proc fcQPrintPreviewDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_changeEvent".}
proc fQPrintPreviewDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QPrintPreviewDialog_virtualbase_metric".}
proc fcQPrintPreviewDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_metric".}
proc fQPrintPreviewDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_initPainter".}
proc fcQPrintPreviewDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_initPainter".}
proc fQPrintPreviewDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPrintPreviewDialog_virtualbase_redirected".}
proc fcQPrintPreviewDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_redirected".}
proc fQPrintPreviewDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPrintPreviewDialog_virtualbase_sharedPainter".}
proc fcQPrintPreviewDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_sharedPainter".}
proc fQPrintPreviewDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_inputMethodEvent".}
proc fcQPrintPreviewDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_inputMethodEvent".}
proc fQPrintPreviewDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QPrintPreviewDialog_virtualbase_inputMethodQuery".}
proc fcQPrintPreviewDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_inputMethodQuery".}
proc fQPrintPreviewDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QPrintPreviewDialog_virtualbase_focusNextPrevChild".}
proc fcQPrintPreviewDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_focusNextPrevChild".}
proc fQPrintPreviewDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_timerEvent".}
proc fcQPrintPreviewDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_timerEvent".}
proc fQPrintPreviewDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_childEvent".}
proc fcQPrintPreviewDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_childEvent".}
proc fQPrintPreviewDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_customEvent".}
proc fcQPrintPreviewDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_customEvent".}
proc fQPrintPreviewDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_connectNotify".}
proc fcQPrintPreviewDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_connectNotify".}
proc fQPrintPreviewDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_disconnectNotify".}
proc fcQPrintPreviewDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_disconnectNotify".}
proc fcQPrintPreviewDialog_staticMetaObject(): pointer {.importc: "QPrintPreviewDialog_staticMetaObject".}
proc fcQPrintPreviewDialog_delete(self: pointer) {.importc: "QPrintPreviewDialog_delete".}


func init*(T: type QPrintPreviewDialog, h: ptr cQPrintPreviewDialog): QPrintPreviewDialog =
  T(h: h)
proc create*(T: type QPrintPreviewDialog, parent: gen_qwidget.QWidget): QPrintPreviewDialog =

  QPrintPreviewDialog.init(fcQPrintPreviewDialog_new(parent.h))
proc create*(T: type QPrintPreviewDialog, ): QPrintPreviewDialog =

  QPrintPreviewDialog.init(fcQPrintPreviewDialog_new2())
proc create2*(T: type QPrintPreviewDialog, printer: gen_qprinter.QPrinter): QPrintPreviewDialog =

  QPrintPreviewDialog.init(fcQPrintPreviewDialog_new3(printer.h))
proc create*(T: type QPrintPreviewDialog, parent: gen_qwidget.QWidget, flags: gen_qnamespace.WindowType): QPrintPreviewDialog =

  QPrintPreviewDialog.init(fcQPrintPreviewDialog_new4(parent.h, cint(flags)))
proc create*(T: type QPrintPreviewDialog, printer: gen_qprinter.QPrinter, parent: gen_qwidget.QWidget): QPrintPreviewDialog =

  QPrintPreviewDialog.init(fcQPrintPreviewDialog_new5(printer.h, parent.h))
proc create*(T: type QPrintPreviewDialog, printer: gen_qprinter.QPrinter, parent: gen_qwidget.QWidget, flags: gen_qnamespace.WindowType): QPrintPreviewDialog =

  QPrintPreviewDialog.init(fcQPrintPreviewDialog_new6(printer.h, parent.h, cint(flags)))
proc metaObject*(self: QPrintPreviewDialog, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPrintPreviewDialog_metaObject(self.h))

proc metacast*(self: QPrintPreviewDialog, param1: cstring): pointer =

  fcQPrintPreviewDialog_metacast(self.h, param1)

proc metacall*(self: QPrintPreviewDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPrintPreviewDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPrintPreviewDialog, s: cstring): string =

  let v_ms = fcQPrintPreviewDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc printer*(self: QPrintPreviewDialog, ): gen_qprinter.QPrinter =

  gen_qprinter.QPrinter(h: fcQPrintPreviewDialog_printer(self.h))

proc setVisible*(self: QPrintPreviewDialog, visible: bool): void =

  fcQPrintPreviewDialog_setVisible(self.h, visible)

proc done*(self: QPrintPreviewDialog, resultVal: cint): void =

  fcQPrintPreviewDialog_done(self.h, resultVal)

proc paintRequested*(self: QPrintPreviewDialog, printer: gen_qprinter.QPrinter): void =

  fcQPrintPreviewDialog_paintRequested(self.h, printer.h)

proc miqt_exec_callback_QPrintPreviewDialog_paintRequested(slot: int, printer: pointer) {.exportc.} =
  type Cb = proc(printer: gen_qprinter.QPrinter)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qprinter.QPrinter(h: printer)


  nimfunc[](slotval1)

proc onpaintRequested*(self: QPrintPreviewDialog, slot: proc(printer: gen_qprinter.QPrinter)) =
  type Cb = proc(printer: gen_qprinter.QPrinter)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQPrintPreviewDialog_connect_paintRequested(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QPrintPreviewDialog, s: cstring, c: cstring): string =

  let v_ms = fcQPrintPreviewDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPrintPreviewDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPrintPreviewDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QPrintPreviewDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQPrintPreviewDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPrintPreviewDialogmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_metacall(self: ptr cQPrintPreviewDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPrintPreviewDialog_metacall ".} =
  type Cb = proc(super: QPrintPreviewDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QPrintPreviewDialog(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setVisible(self: QPrintPreviewDialog, visible: bool): void =


  fQPrintPreviewDialog_virtualbase_setVisible(self.h, visible)

type QPrintPreviewDialogsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_setVisible(self: ptr cQPrintPreviewDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_setVisible ".} =
  type Cb = proc(super: QPrintPreviewDialogsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QPrintPreviewDialog(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_done(self: QPrintPreviewDialog, resultVal: cint): void =


  fQPrintPreviewDialog_virtualbase_done(self.h, resultVal)

type QPrintPreviewDialogdoneBase* = proc(resultVal: cint): void
proc ondone*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogdoneBase, resultVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogdoneBase, resultVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_done(self: ptr cQPrintPreviewDialog, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_done ".} =
  type Cb = proc(super: QPrintPreviewDialogdoneBase, resultVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(resultVal: cint): auto =
    callVirtualBase_done(QPrintPreviewDialog(h: self), resultVal)
  let slotval1 = resultVal


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QPrintPreviewDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQPrintPreviewDialog_virtualbase_sizeHint(self.h))

type QPrintPreviewDialogsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_sizeHint(self: ptr cQPrintPreviewDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewDialog_sizeHint ".} =
  type Cb = proc(super: QPrintPreviewDialogsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QPrintPreviewDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QPrintPreviewDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQPrintPreviewDialog_virtualbase_minimumSizeHint(self.h))

type QPrintPreviewDialogminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_minimumSizeHint(self: ptr cQPrintPreviewDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewDialog_minimumSizeHint ".} =
  type Cb = proc(super: QPrintPreviewDialogminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QPrintPreviewDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_open(self: QPrintPreviewDialog, ): void =


  fQPrintPreviewDialog_virtualbase_open(self.h)

type QPrintPreviewDialogopenBase* = proc(): void
proc onopen*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogopenBase): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogopenBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_open(self: ptr cQPrintPreviewDialog, slot: int): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_open ".} =
  type Cb = proc(super: QPrintPreviewDialogopenBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_open(QPrintPreviewDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_exec(self: QPrintPreviewDialog, ): cint =


  fQPrintPreviewDialog_virtualbase_exec(self.h)

type QPrintPreviewDialogexecBase* = proc(): cint
proc onexec*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogexecBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogexecBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_exec(self: ptr cQPrintPreviewDialog, slot: int): cint {.exportc: "miqt_exec_callback_QPrintPreviewDialog_exec ".} =
  type Cb = proc(super: QPrintPreviewDialogexecBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_exec(QPrintPreviewDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_accept(self: QPrintPreviewDialog, ): void =


  fQPrintPreviewDialog_virtualbase_accept(self.h)

type QPrintPreviewDialogacceptBase* = proc(): void
proc onaccept*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogacceptBase): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogacceptBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_accept(self: ptr cQPrintPreviewDialog, slot: int): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_accept ".} =
  type Cb = proc(super: QPrintPreviewDialogacceptBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accept(QPrintPreviewDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reject(self: QPrintPreviewDialog, ): void =


  fQPrintPreviewDialog_virtualbase_reject(self.h)

type QPrintPreviewDialogrejectBase* = proc(): void
proc onreject*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogrejectBase): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogrejectBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_reject(self: ptr cQPrintPreviewDialog, slot: int): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_reject ".} =
  type Cb = proc(super: QPrintPreviewDialogrejectBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reject(QPrintPreviewDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QPrintPreviewDialog, param1: gen_qevent.QKeyEvent): void =


  fQPrintPreviewDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QPrintPreviewDialogkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_keyPressEvent(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_keyPressEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QPrintPreviewDialog(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QPrintPreviewDialog, param1: gen_qevent.QCloseEvent): void =


  fQPrintPreviewDialog_virtualbase_closeEvent(self.h, param1.h)

type QPrintPreviewDialogcloseEventBase* = proc(param1: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_closeEvent(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_closeEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QPrintPreviewDialog(h: self), param1)
  let slotval1 = gen_qevent.QCloseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QPrintPreviewDialog, param1: gen_qevent.QShowEvent): void =


  fQPrintPreviewDialog_virtualbase_showEvent(self.h, param1.h)

type QPrintPreviewDialogshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_showEvent(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_showEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QPrintPreviewDialog(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QPrintPreviewDialog, param1: gen_qevent.QResizeEvent): void =


  fQPrintPreviewDialog_virtualbase_resizeEvent(self.h, param1.h)

type QPrintPreviewDialogresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_resizeEvent(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_resizeEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QPrintPreviewDialog(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QPrintPreviewDialog, param1: gen_qevent.QContextMenuEvent): void =


  fQPrintPreviewDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QPrintPreviewDialogcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_contextMenuEvent(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_contextMenuEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QPrintPreviewDialog(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QPrintPreviewDialog, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQPrintPreviewDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QPrintPreviewDialogeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_eventFilter(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QPrintPreviewDialog_eventFilter ".} =
  type Cb = proc(super: QPrintPreviewDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QPrintPreviewDialog(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_devType(self: QPrintPreviewDialog, ): cint =


  fQPrintPreviewDialog_virtualbase_devType(self.h)

type QPrintPreviewDialogdevTypeBase* = proc(): cint
proc ondevType*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_devType(self: ptr cQPrintPreviewDialog, slot: int): cint {.exportc: "miqt_exec_callback_QPrintPreviewDialog_devType ".} =
  type Cb = proc(super: QPrintPreviewDialogdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QPrintPreviewDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QPrintPreviewDialog, param1: cint): cint =


  fQPrintPreviewDialog_virtualbase_heightForWidth(self.h, param1)

type QPrintPreviewDialogheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_heightForWidth(self: ptr cQPrintPreviewDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPrintPreviewDialog_heightForWidth ".} =
  type Cb = proc(super: QPrintPreviewDialogheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QPrintPreviewDialog(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QPrintPreviewDialog, ): bool =


  fQPrintPreviewDialog_virtualbase_hasHeightForWidth(self.h)

type QPrintPreviewDialoghasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialoghasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialoghasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_hasHeightForWidth(self: ptr cQPrintPreviewDialog, slot: int): bool {.exportc: "miqt_exec_callback_QPrintPreviewDialog_hasHeightForWidth ".} =
  type Cb = proc(super: QPrintPreviewDialoghasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QPrintPreviewDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QPrintPreviewDialog, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQPrintPreviewDialog_virtualbase_paintEngine(self.h))

type QPrintPreviewDialogpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_paintEngine(self: ptr cQPrintPreviewDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewDialog_paintEngine ".} =
  type Cb = proc(super: QPrintPreviewDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QPrintPreviewDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QPrintPreviewDialog, event: gen_qcoreevent.QEvent): bool =


  fQPrintPreviewDialog_virtualbase_event(self.h, event.h)

type QPrintPreviewDialogeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_event(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPrintPreviewDialog_event ".} =
  type Cb = proc(super: QPrintPreviewDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QPrintPreviewDialog, event: gen_qevent.QMouseEvent): void =


  fQPrintPreviewDialog_virtualbase_mousePressEvent(self.h, event.h)

type QPrintPreviewDialogmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_mousePressEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_mousePressEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QPrintPreviewDialog, event: gen_qevent.QMouseEvent): void =


  fQPrintPreviewDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QPrintPreviewDialogmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_mouseReleaseEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_mouseReleaseEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QPrintPreviewDialog, event: gen_qevent.QMouseEvent): void =


  fQPrintPreviewDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QPrintPreviewDialogmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_mouseDoubleClickEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QPrintPreviewDialog, event: gen_qevent.QMouseEvent): void =


  fQPrintPreviewDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QPrintPreviewDialogmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_mouseMoveEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_mouseMoveEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QPrintPreviewDialog, event: gen_qevent.QWheelEvent): void =


  fQPrintPreviewDialog_virtualbase_wheelEvent(self.h, event.h)

type QPrintPreviewDialogwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_wheelEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_wheelEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QPrintPreviewDialog, event: gen_qevent.QKeyEvent): void =


  fQPrintPreviewDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QPrintPreviewDialogkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_keyReleaseEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_keyReleaseEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QPrintPreviewDialog, event: gen_qevent.QFocusEvent): void =


  fQPrintPreviewDialog_virtualbase_focusInEvent(self.h, event.h)

type QPrintPreviewDialogfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_focusInEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_focusInEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QPrintPreviewDialog, event: gen_qevent.QFocusEvent): void =


  fQPrintPreviewDialog_virtualbase_focusOutEvent(self.h, event.h)

type QPrintPreviewDialogfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_focusOutEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_focusOutEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QPrintPreviewDialog, event: gen_qevent.QEnterEvent): void =


  fQPrintPreviewDialog_virtualbase_enterEvent(self.h, event.h)

type QPrintPreviewDialogenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_enterEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_enterEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QPrintPreviewDialog, event: gen_qcoreevent.QEvent): void =


  fQPrintPreviewDialog_virtualbase_leaveEvent(self.h, event.h)

type QPrintPreviewDialogleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_leaveEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_leaveEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QPrintPreviewDialog, event: gen_qevent.QPaintEvent): void =


  fQPrintPreviewDialog_virtualbase_paintEvent(self.h, event.h)

type QPrintPreviewDialogpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_paintEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_paintEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QPrintPreviewDialog, event: gen_qevent.QMoveEvent): void =


  fQPrintPreviewDialog_virtualbase_moveEvent(self.h, event.h)

type QPrintPreviewDialogmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_moveEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_moveEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QPrintPreviewDialog, event: gen_qevent.QTabletEvent): void =


  fQPrintPreviewDialog_virtualbase_tabletEvent(self.h, event.h)

type QPrintPreviewDialogtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_tabletEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_tabletEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QPrintPreviewDialog, event: gen_qevent.QActionEvent): void =


  fQPrintPreviewDialog_virtualbase_actionEvent(self.h, event.h)

type QPrintPreviewDialogactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_actionEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_actionEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QPrintPreviewDialog, event: gen_qevent.QDragEnterEvent): void =


  fQPrintPreviewDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QPrintPreviewDialogdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_dragEnterEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_dragEnterEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QPrintPreviewDialog, event: gen_qevent.QDragMoveEvent): void =


  fQPrintPreviewDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QPrintPreviewDialogdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_dragMoveEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_dragMoveEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QPrintPreviewDialog, event: gen_qevent.QDragLeaveEvent): void =


  fQPrintPreviewDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QPrintPreviewDialogdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_dragLeaveEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_dragLeaveEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QPrintPreviewDialog, event: gen_qevent.QDropEvent): void =


  fQPrintPreviewDialog_virtualbase_dropEvent(self.h, event.h)

type QPrintPreviewDialogdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_dropEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_dropEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QPrintPreviewDialog, event: gen_qevent.QHideEvent): void =


  fQPrintPreviewDialog_virtualbase_hideEvent(self.h, event.h)

type QPrintPreviewDialoghideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialoghideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_hideEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_hideEvent ".} =
  type Cb = proc(super: QPrintPreviewDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QPrintPreviewDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQPrintPreviewDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QPrintPreviewDialognativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_nativeEvent(self: ptr cQPrintPreviewDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QPrintPreviewDialog_nativeEvent ".} =
  type Cb = proc(super: QPrintPreviewDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QPrintPreviewDialog(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QPrintPreviewDialog, param1: gen_qcoreevent.QEvent): void =


  fQPrintPreviewDialog_virtualbase_changeEvent(self.h, param1.h)

type QPrintPreviewDialogchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_changeEvent(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_changeEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QPrintPreviewDialog(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QPrintPreviewDialog, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQPrintPreviewDialog_virtualbase_metric(self.h, cint(param1))

type QPrintPreviewDialogmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_metric(self: ptr cQPrintPreviewDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPrintPreviewDialog_metric ".} =
  type Cb = proc(super: QPrintPreviewDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QPrintPreviewDialog(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QPrintPreviewDialog, painter: gen_qpainter.QPainter): void =


  fQPrintPreviewDialog_virtualbase_initPainter(self.h, painter.h)

type QPrintPreviewDialoginitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialoginitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_initPainter(self: ptr cQPrintPreviewDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_initPainter ".} =
  type Cb = proc(super: QPrintPreviewDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QPrintPreviewDialog(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QPrintPreviewDialog, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQPrintPreviewDialog_virtualbase_redirected(self.h, offset.h))

type QPrintPreviewDialogredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_redirected(self: ptr cQPrintPreviewDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPrintPreviewDialog_redirected ".} =
  type Cb = proc(super: QPrintPreviewDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QPrintPreviewDialog(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QPrintPreviewDialog, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQPrintPreviewDialog_virtualbase_sharedPainter(self.h))

type QPrintPreviewDialogsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_sharedPainter(self: ptr cQPrintPreviewDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewDialog_sharedPainter ".} =
  type Cb = proc(super: QPrintPreviewDialogsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QPrintPreviewDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QPrintPreviewDialog, param1: gen_qevent.QInputMethodEvent): void =


  fQPrintPreviewDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QPrintPreviewDialoginputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_inputMethodEvent(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_inputMethodEvent ".} =
  type Cb = proc(super: QPrintPreviewDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QPrintPreviewDialog(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QPrintPreviewDialog, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQPrintPreviewDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QPrintPreviewDialoginputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_inputMethodQuery(self: ptr cQPrintPreviewDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QPrintPreviewDialog_inputMethodQuery ".} =
  type Cb = proc(super: QPrintPreviewDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QPrintPreviewDialog(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QPrintPreviewDialog, next: bool): bool =


  fQPrintPreviewDialog_virtualbase_focusNextPrevChild(self.h, next)

type QPrintPreviewDialogfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_focusNextPrevChild(self: ptr cQPrintPreviewDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QPrintPreviewDialog_focusNextPrevChild ".} =
  type Cb = proc(super: QPrintPreviewDialogfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QPrintPreviewDialog(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QPrintPreviewDialog, event: gen_qcoreevent.QTimerEvent): void =


  fQPrintPreviewDialog_virtualbase_timerEvent(self.h, event.h)

type QPrintPreviewDialogtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_timerEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_timerEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QPrintPreviewDialog, event: gen_qcoreevent.QChildEvent): void =


  fQPrintPreviewDialog_virtualbase_childEvent(self.h, event.h)

type QPrintPreviewDialogchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_childEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_childEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QPrintPreviewDialog, event: gen_qcoreevent.QEvent): void =


  fQPrintPreviewDialog_virtualbase_customEvent(self.h, event.h)

type QPrintPreviewDialogcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_customEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_customEvent ".} =
  type Cb = proc(super: QPrintPreviewDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QPrintPreviewDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QPrintPreviewDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQPrintPreviewDialog_virtualbase_connectNotify(self.h, signal.h)

type QPrintPreviewDialogconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_connectNotify(self: ptr cQPrintPreviewDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_connectNotify ".} =
  type Cb = proc(super: QPrintPreviewDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QPrintPreviewDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QPrintPreviewDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQPrintPreviewDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QPrintPreviewDialogdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QPrintPreviewDialog, slot: proc(super: QPrintPreviewDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_disconnectNotify(self: ptr cQPrintPreviewDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_disconnectNotify ".} =
  type Cb = proc(super: QPrintPreviewDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QPrintPreviewDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QPrintPreviewDialog): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPrintPreviewDialog_staticMetaObject())
proc delete*(self: QPrintPreviewDialog) =
  fcQPrintPreviewDialog_delete(self.h)
