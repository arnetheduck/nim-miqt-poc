import Qt5PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt5PrintSupport")
{.compile("gen_qpagesetupdialog.cpp", cflags).}


import gen_qpagesetupdialog_types
export gen_qpagesetupdialog_types

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

type cQPageSetupDialog*{.exportc: "QPageSetupDialog", incompleteStruct.} = object

proc fcQPageSetupDialog_new(parent: pointer): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new".}
proc fcQPageSetupDialog_new2(printer: pointer): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new2".}
proc fcQPageSetupDialog_new3(): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new3".}
proc fcQPageSetupDialog_new4(printer: pointer, parent: pointer): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new4".}
proc fcQPageSetupDialog_metaObject(self: pointer, ): pointer {.importc: "QPageSetupDialog_metaObject".}
proc fcQPageSetupDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QPageSetupDialog_metacast".}
proc fcQPageSetupDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPageSetupDialog_metacall".}
proc fcQPageSetupDialog_tr(s: cstring): struct_miqt_string {.importc: "QPageSetupDialog_tr".}
proc fcQPageSetupDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QPageSetupDialog_trUtf8".}
proc fcQPageSetupDialog_exec(self: pointer, ): cint {.importc: "QPageSetupDialog_exec".}
proc fcQPageSetupDialog_done(self: pointer, resultVal: cint): void {.importc: "QPageSetupDialog_done".}
proc fcQPageSetupDialog_printer(self: pointer, ): pointer {.importc: "QPageSetupDialog_printer".}
proc fcQPageSetupDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPageSetupDialog_tr2".}
proc fcQPageSetupDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPageSetupDialog_tr3".}
proc fcQPageSetupDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPageSetupDialog_trUtf82".}
proc fcQPageSetupDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPageSetupDialog_trUtf83".}
proc fQPageSetupDialog_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPageSetupDialog_virtualbase_metaObject".}
proc fcQPageSetupDialog_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_metaObject".}
proc fQPageSetupDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPageSetupDialog_virtualbase_metacast".}
proc fcQPageSetupDialog_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_metacast".}
proc fQPageSetupDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPageSetupDialog_virtualbase_metacall".}
proc fcQPageSetupDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_metacall".}
proc fQPageSetupDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QPageSetupDialog_virtualbase_exec".}
proc fcQPageSetupDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_exec".}
proc fQPageSetupDialog_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QPageSetupDialog_virtualbase_done".}
proc fcQPageSetupDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_done".}
proc fQPageSetupDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QPageSetupDialog_virtualbase_setVisible".}
proc fcQPageSetupDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_setVisible".}
proc fQPageSetupDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QPageSetupDialog_virtualbase_sizeHint".}
proc fcQPageSetupDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_sizeHint".}
proc fQPageSetupDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QPageSetupDialog_virtualbase_minimumSizeHint".}
proc fcQPageSetupDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_minimumSizeHint".}
proc fQPageSetupDialog_virtualbase_open(self: pointer, ): void{.importc: "QPageSetupDialog_virtualbase_open".}
proc fcQPageSetupDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_open".}
proc fQPageSetupDialog_virtualbase_accept(self: pointer, ): void{.importc: "QPageSetupDialog_virtualbase_accept".}
proc fcQPageSetupDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_accept".}
proc fQPageSetupDialog_virtualbase_reject(self: pointer, ): void{.importc: "QPageSetupDialog_virtualbase_reject".}
proc fcQPageSetupDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_reject".}
proc fQPageSetupDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QPageSetupDialog_virtualbase_keyPressEvent".}
proc fcQPageSetupDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_keyPressEvent".}
proc fQPageSetupDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QPageSetupDialog_virtualbase_closeEvent".}
proc fcQPageSetupDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_closeEvent".}
proc fQPageSetupDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QPageSetupDialog_virtualbase_showEvent".}
proc fcQPageSetupDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_showEvent".}
proc fQPageSetupDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QPageSetupDialog_virtualbase_resizeEvent".}
proc fcQPageSetupDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_resizeEvent".}
proc fQPageSetupDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QPageSetupDialog_virtualbase_contextMenuEvent".}
proc fcQPageSetupDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_contextMenuEvent".}
proc fQPageSetupDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QPageSetupDialog_virtualbase_eventFilter".}
proc fcQPageSetupDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_eventFilter".}
proc fQPageSetupDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QPageSetupDialog_virtualbase_devType".}
proc fcQPageSetupDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_devType".}
proc fQPageSetupDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QPageSetupDialog_virtualbase_heightForWidth".}
proc fcQPageSetupDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_heightForWidth".}
proc fQPageSetupDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QPageSetupDialog_virtualbase_hasHeightForWidth".}
proc fcQPageSetupDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_hasHeightForWidth".}
proc fQPageSetupDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPageSetupDialog_virtualbase_paintEngine".}
proc fcQPageSetupDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_paintEngine".}
proc fQPageSetupDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPageSetupDialog_virtualbase_event".}
proc fcQPageSetupDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_event".}
proc fQPageSetupDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_mousePressEvent".}
proc fcQPageSetupDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_mousePressEvent".}
proc fQPageSetupDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_mouseReleaseEvent".}
proc fcQPageSetupDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_mouseReleaseEvent".}
proc fQPageSetupDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQPageSetupDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_mouseDoubleClickEvent".}
proc fQPageSetupDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_mouseMoveEvent".}
proc fcQPageSetupDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_mouseMoveEvent".}
proc fQPageSetupDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_wheelEvent".}
proc fcQPageSetupDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_wheelEvent".}
proc fQPageSetupDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_keyReleaseEvent".}
proc fcQPageSetupDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_keyReleaseEvent".}
proc fQPageSetupDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_focusInEvent".}
proc fcQPageSetupDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_focusInEvent".}
proc fQPageSetupDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_focusOutEvent".}
proc fcQPageSetupDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_focusOutEvent".}
proc fQPageSetupDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_enterEvent".}
proc fcQPageSetupDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_enterEvent".}
proc fQPageSetupDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_leaveEvent".}
proc fcQPageSetupDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_leaveEvent".}
proc fQPageSetupDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_paintEvent".}
proc fcQPageSetupDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_paintEvent".}
proc fQPageSetupDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_moveEvent".}
proc fcQPageSetupDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_moveEvent".}
proc fQPageSetupDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_tabletEvent".}
proc fcQPageSetupDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_tabletEvent".}
proc fQPageSetupDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_actionEvent".}
proc fcQPageSetupDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_actionEvent".}
proc fQPageSetupDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_dragEnterEvent".}
proc fcQPageSetupDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_dragEnterEvent".}
proc fQPageSetupDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_dragMoveEvent".}
proc fcQPageSetupDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_dragMoveEvent".}
proc fQPageSetupDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_dragLeaveEvent".}
proc fcQPageSetupDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_dragLeaveEvent".}
proc fQPageSetupDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_dropEvent".}
proc fcQPageSetupDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_dropEvent".}
proc fQPageSetupDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_hideEvent".}
proc fcQPageSetupDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_hideEvent".}
proc fQPageSetupDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QPageSetupDialog_virtualbase_nativeEvent".}
proc fcQPageSetupDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_nativeEvent".}
proc fQPageSetupDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QPageSetupDialog_virtualbase_changeEvent".}
proc fcQPageSetupDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_changeEvent".}
proc fQPageSetupDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QPageSetupDialog_virtualbase_metric".}
proc fcQPageSetupDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_metric".}
proc fQPageSetupDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPageSetupDialog_virtualbase_initPainter".}
proc fcQPageSetupDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_initPainter".}
proc fQPageSetupDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPageSetupDialog_virtualbase_redirected".}
proc fcQPageSetupDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_redirected".}
proc fQPageSetupDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPageSetupDialog_virtualbase_sharedPainter".}
proc fcQPageSetupDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_sharedPainter".}
proc fQPageSetupDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QPageSetupDialog_virtualbase_inputMethodEvent".}
proc fcQPageSetupDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_inputMethodEvent".}
proc fQPageSetupDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QPageSetupDialog_virtualbase_inputMethodQuery".}
proc fcQPageSetupDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_inputMethodQuery".}
proc fQPageSetupDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QPageSetupDialog_virtualbase_focusNextPrevChild".}
proc fcQPageSetupDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_focusNextPrevChild".}
proc fQPageSetupDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_timerEvent".}
proc fcQPageSetupDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_timerEvent".}
proc fQPageSetupDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_childEvent".}
proc fcQPageSetupDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_childEvent".}
proc fQPageSetupDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_customEvent".}
proc fcQPageSetupDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_customEvent".}
proc fQPageSetupDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPageSetupDialog_virtualbase_connectNotify".}
proc fcQPageSetupDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_connectNotify".}
proc fQPageSetupDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPageSetupDialog_virtualbase_disconnectNotify".}
proc fcQPageSetupDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_disconnectNotify".}
proc fcQPageSetupDialog_staticMetaObject(): pointer {.importc: "QPageSetupDialog_staticMetaObject".}
proc fcQPageSetupDialog_delete(self: pointer) {.importc: "QPageSetupDialog_delete".}


func init*(T: type QPageSetupDialog, h: ptr cQPageSetupDialog): QPageSetupDialog =
  T(h: h)
proc create*(T: type QPageSetupDialog, parent: gen_qwidget.QWidget): QPageSetupDialog =

  QPageSetupDialog.init(fcQPageSetupDialog_new(parent.h))
proc create2*(T: type QPageSetupDialog, printer: gen_qprinter.QPrinter): QPageSetupDialog =

  QPageSetupDialog.init(fcQPageSetupDialog_new2(printer.h))
proc create*(T: type QPageSetupDialog, ): QPageSetupDialog =

  QPageSetupDialog.init(fcQPageSetupDialog_new3())
proc create*(T: type QPageSetupDialog, printer: gen_qprinter.QPrinter, parent: gen_qwidget.QWidget): QPageSetupDialog =

  QPageSetupDialog.init(fcQPageSetupDialog_new4(printer.h, parent.h))
proc metaObject*(self: QPageSetupDialog, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPageSetupDialog_metaObject(self.h))

proc metacast*(self: QPageSetupDialog, param1: cstring): pointer =

  fcQPageSetupDialog_metacast(self.h, param1)

proc metacall*(self: QPageSetupDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPageSetupDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPageSetupDialog, s: cstring): string =

  let v_ms = fcQPageSetupDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QPageSetupDialog, s: cstring): string =

  let v_ms = fcQPageSetupDialog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc exec*(self: QPageSetupDialog, ): cint =

  fcQPageSetupDialog_exec(self.h)

proc done*(self: QPageSetupDialog, resultVal: cint): void =

  fcQPageSetupDialog_done(self.h, resultVal)

proc printer*(self: QPageSetupDialog, ): gen_qprinter.QPrinter =

  gen_qprinter.QPrinter(h: fcQPageSetupDialog_printer(self.h))

proc tr2*(_: type QPageSetupDialog, s: cstring, c: cstring): string =

  let v_ms = fcQPageSetupDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPageSetupDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPageSetupDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QPageSetupDialog, s: cstring, c: cstring): string =

  let v_ms = fcQPageSetupDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QPageSetupDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPageSetupDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QPageSetupDialog, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQPageSetupDialog_virtualbase_metaObject(self.h))

type QPageSetupDialogmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_metaObject(self: ptr cQPageSetupDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPageSetupDialog_metaObject ".} =
  type Cb = proc(super: QPageSetupDialogmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QPageSetupDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QPageSetupDialog, param1: cstring): pointer =


  fQPageSetupDialog_virtualbase_metacast(self.h, param1)

type QPageSetupDialogmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_metacast(self: ptr cQPageSetupDialog, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPageSetupDialog_metacast ".} =
  type Cb = proc(super: QPageSetupDialogmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QPageSetupDialog(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QPageSetupDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQPageSetupDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPageSetupDialogmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_metacall(self: ptr cQPageSetupDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPageSetupDialog_metacall ".} =
  type Cb = proc(super: QPageSetupDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QPageSetupDialog(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_exec(self: QPageSetupDialog, ): cint =


  fQPageSetupDialog_virtualbase_exec(self.h)

type QPageSetupDialogexecBase* = proc(): cint
proc onexec*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogexecBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogexecBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_exec(self: ptr cQPageSetupDialog, slot: int): cint {.exportc: "miqt_exec_callback_QPageSetupDialog_exec ".} =
  type Cb = proc(super: QPageSetupDialogexecBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_exec(QPageSetupDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_done(self: QPageSetupDialog, resultVal: cint): void =


  fQPageSetupDialog_virtualbase_done(self.h, resultVal)

type QPageSetupDialogdoneBase* = proc(resultVal: cint): void
proc ondone*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogdoneBase, resultVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogdoneBase, resultVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_done(self: ptr cQPageSetupDialog, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QPageSetupDialog_done ".} =
  type Cb = proc(super: QPageSetupDialogdoneBase, resultVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(resultVal: cint): auto =
    callVirtualBase_done(QPageSetupDialog(h: self), resultVal)
  let slotval1 = resultVal


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setVisible(self: QPageSetupDialog, visible: bool): void =


  fQPageSetupDialog_virtualbase_setVisible(self.h, visible)

type QPageSetupDialogsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_setVisible(self: ptr cQPageSetupDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QPageSetupDialog_setVisible ".} =
  type Cb = proc(super: QPageSetupDialogsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QPageSetupDialog(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QPageSetupDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQPageSetupDialog_virtualbase_sizeHint(self.h))

type QPageSetupDialogsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_sizeHint(self: ptr cQPageSetupDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPageSetupDialog_sizeHint ".} =
  type Cb = proc(super: QPageSetupDialogsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QPageSetupDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QPageSetupDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQPageSetupDialog_virtualbase_minimumSizeHint(self.h))

type QPageSetupDialogminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_minimumSizeHint(self: ptr cQPageSetupDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPageSetupDialog_minimumSizeHint ".} =
  type Cb = proc(super: QPageSetupDialogminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QPageSetupDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_open(self: QPageSetupDialog, ): void =


  fQPageSetupDialog_virtualbase_open(self.h)

type QPageSetupDialogopenBase* = proc(): void
proc onopen*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogopenBase): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogopenBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_open(self: ptr cQPageSetupDialog, slot: int): void {.exportc: "miqt_exec_callback_QPageSetupDialog_open ".} =
  type Cb = proc(super: QPageSetupDialogopenBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_open(QPageSetupDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_accept(self: QPageSetupDialog, ): void =


  fQPageSetupDialog_virtualbase_accept(self.h)

type QPageSetupDialogacceptBase* = proc(): void
proc onaccept*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogacceptBase): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogacceptBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_accept(self: ptr cQPageSetupDialog, slot: int): void {.exportc: "miqt_exec_callback_QPageSetupDialog_accept ".} =
  type Cb = proc(super: QPageSetupDialogacceptBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accept(QPageSetupDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reject(self: QPageSetupDialog, ): void =


  fQPageSetupDialog_virtualbase_reject(self.h)

type QPageSetupDialogrejectBase* = proc(): void
proc onreject*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogrejectBase): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogrejectBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_reject(self: ptr cQPageSetupDialog, slot: int): void {.exportc: "miqt_exec_callback_QPageSetupDialog_reject ".} =
  type Cb = proc(super: QPageSetupDialogrejectBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reject(QPageSetupDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QPageSetupDialog, param1: gen_qevent.QKeyEvent): void =


  fQPageSetupDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QPageSetupDialogkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_keyPressEvent(self: ptr cQPageSetupDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_keyPressEvent ".} =
  type Cb = proc(super: QPageSetupDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QPageSetupDialog(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QPageSetupDialog, param1: gen_qevent.QCloseEvent): void =


  fQPageSetupDialog_virtualbase_closeEvent(self.h, param1.h)

type QPageSetupDialogcloseEventBase* = proc(param1: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_closeEvent(self: ptr cQPageSetupDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_closeEvent ".} =
  type Cb = proc(super: QPageSetupDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QPageSetupDialog(h: self), param1)
  let slotval1 = gen_qevent.QCloseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QPageSetupDialog, param1: gen_qevent.QShowEvent): void =


  fQPageSetupDialog_virtualbase_showEvent(self.h, param1.h)

type QPageSetupDialogshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_showEvent(self: ptr cQPageSetupDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_showEvent ".} =
  type Cb = proc(super: QPageSetupDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QPageSetupDialog(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QPageSetupDialog, param1: gen_qevent.QResizeEvent): void =


  fQPageSetupDialog_virtualbase_resizeEvent(self.h, param1.h)

type QPageSetupDialogresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_resizeEvent(self: ptr cQPageSetupDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_resizeEvent ".} =
  type Cb = proc(super: QPageSetupDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QPageSetupDialog(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QPageSetupDialog, param1: gen_qevent.QContextMenuEvent): void =


  fQPageSetupDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QPageSetupDialogcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_contextMenuEvent(self: ptr cQPageSetupDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_contextMenuEvent ".} =
  type Cb = proc(super: QPageSetupDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QPageSetupDialog(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QPageSetupDialog, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQPageSetupDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QPageSetupDialogeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_eventFilter(self: ptr cQPageSetupDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QPageSetupDialog_eventFilter ".} =
  type Cb = proc(super: QPageSetupDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QPageSetupDialog(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_devType(self: QPageSetupDialog, ): cint =


  fQPageSetupDialog_virtualbase_devType(self.h)

type QPageSetupDialogdevTypeBase* = proc(): cint
proc ondevType*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_devType(self: ptr cQPageSetupDialog, slot: int): cint {.exportc: "miqt_exec_callback_QPageSetupDialog_devType ".} =
  type Cb = proc(super: QPageSetupDialogdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QPageSetupDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QPageSetupDialog, param1: cint): cint =


  fQPageSetupDialog_virtualbase_heightForWidth(self.h, param1)

type QPageSetupDialogheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_heightForWidth(self: ptr cQPageSetupDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPageSetupDialog_heightForWidth ".} =
  type Cb = proc(super: QPageSetupDialogheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QPageSetupDialog(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QPageSetupDialog, ): bool =


  fQPageSetupDialog_virtualbase_hasHeightForWidth(self.h)

type QPageSetupDialoghasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialoghasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialoghasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_hasHeightForWidth(self: ptr cQPageSetupDialog, slot: int): bool {.exportc: "miqt_exec_callback_QPageSetupDialog_hasHeightForWidth ".} =
  type Cb = proc(super: QPageSetupDialoghasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QPageSetupDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QPageSetupDialog, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQPageSetupDialog_virtualbase_paintEngine(self.h))

type QPageSetupDialogpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_paintEngine(self: ptr cQPageSetupDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPageSetupDialog_paintEngine ".} =
  type Cb = proc(super: QPageSetupDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QPageSetupDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QPageSetupDialog, event: gen_qcoreevent.QEvent): bool =


  fQPageSetupDialog_virtualbase_event(self.h, event.h)

type QPageSetupDialogeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_event(self: ptr cQPageSetupDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPageSetupDialog_event ".} =
  type Cb = proc(super: QPageSetupDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QPageSetupDialog, event: gen_qevent.QMouseEvent): void =


  fQPageSetupDialog_virtualbase_mousePressEvent(self.h, event.h)

type QPageSetupDialogmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_mousePressEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_mousePressEvent ".} =
  type Cb = proc(super: QPageSetupDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QPageSetupDialog, event: gen_qevent.QMouseEvent): void =


  fQPageSetupDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QPageSetupDialogmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_mouseReleaseEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_mouseReleaseEvent ".} =
  type Cb = proc(super: QPageSetupDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QPageSetupDialog, event: gen_qevent.QMouseEvent): void =


  fQPageSetupDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QPageSetupDialogmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_mouseDoubleClickEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QPageSetupDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QPageSetupDialog, event: gen_qevent.QMouseEvent): void =


  fQPageSetupDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QPageSetupDialogmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_mouseMoveEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_mouseMoveEvent ".} =
  type Cb = proc(super: QPageSetupDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QPageSetupDialog, event: gen_qevent.QWheelEvent): void =


  fQPageSetupDialog_virtualbase_wheelEvent(self.h, event.h)

type QPageSetupDialogwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_wheelEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_wheelEvent ".} =
  type Cb = proc(super: QPageSetupDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QPageSetupDialog, event: gen_qevent.QKeyEvent): void =


  fQPageSetupDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QPageSetupDialogkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_keyReleaseEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_keyReleaseEvent ".} =
  type Cb = proc(super: QPageSetupDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QPageSetupDialog, event: gen_qevent.QFocusEvent): void =


  fQPageSetupDialog_virtualbase_focusInEvent(self.h, event.h)

type QPageSetupDialogfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_focusInEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_focusInEvent ".} =
  type Cb = proc(super: QPageSetupDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QPageSetupDialog, event: gen_qevent.QFocusEvent): void =


  fQPageSetupDialog_virtualbase_focusOutEvent(self.h, event.h)

type QPageSetupDialogfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_focusOutEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_focusOutEvent ".} =
  type Cb = proc(super: QPageSetupDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QPageSetupDialog, event: gen_qcoreevent.QEvent): void =


  fQPageSetupDialog_virtualbase_enterEvent(self.h, event.h)

type QPageSetupDialogenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_enterEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_enterEvent ".} =
  type Cb = proc(super: QPageSetupDialogenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QPageSetupDialog, event: gen_qcoreevent.QEvent): void =


  fQPageSetupDialog_virtualbase_leaveEvent(self.h, event.h)

type QPageSetupDialogleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_leaveEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_leaveEvent ".} =
  type Cb = proc(super: QPageSetupDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QPageSetupDialog, event: gen_qevent.QPaintEvent): void =


  fQPageSetupDialog_virtualbase_paintEvent(self.h, event.h)

type QPageSetupDialogpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_paintEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_paintEvent ".} =
  type Cb = proc(super: QPageSetupDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QPageSetupDialog, event: gen_qevent.QMoveEvent): void =


  fQPageSetupDialog_virtualbase_moveEvent(self.h, event.h)

type QPageSetupDialogmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_moveEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_moveEvent ".} =
  type Cb = proc(super: QPageSetupDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QPageSetupDialog, event: gen_qevent.QTabletEvent): void =


  fQPageSetupDialog_virtualbase_tabletEvent(self.h, event.h)

type QPageSetupDialogtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_tabletEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_tabletEvent ".} =
  type Cb = proc(super: QPageSetupDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QPageSetupDialog, event: gen_qevent.QActionEvent): void =


  fQPageSetupDialog_virtualbase_actionEvent(self.h, event.h)

type QPageSetupDialogactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_actionEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_actionEvent ".} =
  type Cb = proc(super: QPageSetupDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QPageSetupDialog, event: gen_qevent.QDragEnterEvent): void =


  fQPageSetupDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QPageSetupDialogdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_dragEnterEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_dragEnterEvent ".} =
  type Cb = proc(super: QPageSetupDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QPageSetupDialog, event: gen_qevent.QDragMoveEvent): void =


  fQPageSetupDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QPageSetupDialogdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_dragMoveEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_dragMoveEvent ".} =
  type Cb = proc(super: QPageSetupDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QPageSetupDialog, event: gen_qevent.QDragLeaveEvent): void =


  fQPageSetupDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QPageSetupDialogdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_dragLeaveEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_dragLeaveEvent ".} =
  type Cb = proc(super: QPageSetupDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QPageSetupDialog, event: gen_qevent.QDropEvent): void =


  fQPageSetupDialog_virtualbase_dropEvent(self.h, event.h)

type QPageSetupDialogdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_dropEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_dropEvent ".} =
  type Cb = proc(super: QPageSetupDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QPageSetupDialog, event: gen_qevent.QHideEvent): void =


  fQPageSetupDialog_virtualbase_hideEvent(self.h, event.h)

type QPageSetupDialoghideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialoghideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_hideEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_hideEvent ".} =
  type Cb = proc(super: QPageSetupDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QPageSetupDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQPageSetupDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QPageSetupDialognativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_nativeEvent(self: ptr cQPageSetupDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QPageSetupDialog_nativeEvent ".} =
  type Cb = proc(super: QPageSetupDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QPageSetupDialog(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QPageSetupDialog, param1: gen_qcoreevent.QEvent): void =


  fQPageSetupDialog_virtualbase_changeEvent(self.h, param1.h)

type QPageSetupDialogchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_changeEvent(self: ptr cQPageSetupDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_changeEvent ".} =
  type Cb = proc(super: QPageSetupDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QPageSetupDialog(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QPageSetupDialog, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQPageSetupDialog_virtualbase_metric(self.h, cint(param1))

type QPageSetupDialogmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_metric(self: ptr cQPageSetupDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPageSetupDialog_metric ".} =
  type Cb = proc(super: QPageSetupDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QPageSetupDialog(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QPageSetupDialog, painter: gen_qpainter.QPainter): void =


  fQPageSetupDialog_virtualbase_initPainter(self.h, painter.h)

type QPageSetupDialoginitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialoginitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_initPainter(self: ptr cQPageSetupDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_initPainter ".} =
  type Cb = proc(super: QPageSetupDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QPageSetupDialog(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QPageSetupDialog, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQPageSetupDialog_virtualbase_redirected(self.h, offset.h))

type QPageSetupDialogredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_redirected(self: ptr cQPageSetupDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPageSetupDialog_redirected ".} =
  type Cb = proc(super: QPageSetupDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QPageSetupDialog(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QPageSetupDialog, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQPageSetupDialog_virtualbase_sharedPainter(self.h))

type QPageSetupDialogsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_sharedPainter(self: ptr cQPageSetupDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPageSetupDialog_sharedPainter ".} =
  type Cb = proc(super: QPageSetupDialogsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QPageSetupDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QPageSetupDialog, param1: gen_qevent.QInputMethodEvent): void =


  fQPageSetupDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QPageSetupDialoginputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_inputMethodEvent(self: ptr cQPageSetupDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_inputMethodEvent ".} =
  type Cb = proc(super: QPageSetupDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QPageSetupDialog(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QPageSetupDialog, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQPageSetupDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QPageSetupDialoginputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_inputMethodQuery(self: ptr cQPageSetupDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QPageSetupDialog_inputMethodQuery ".} =
  type Cb = proc(super: QPageSetupDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QPageSetupDialog(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QPageSetupDialog, next: bool): bool =


  fQPageSetupDialog_virtualbase_focusNextPrevChild(self.h, next)

type QPageSetupDialogfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_focusNextPrevChild(self: ptr cQPageSetupDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QPageSetupDialog_focusNextPrevChild ".} =
  type Cb = proc(super: QPageSetupDialogfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QPageSetupDialog(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QPageSetupDialog, event: gen_qcoreevent.QTimerEvent): void =


  fQPageSetupDialog_virtualbase_timerEvent(self.h, event.h)

type QPageSetupDialogtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_timerEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_timerEvent ".} =
  type Cb = proc(super: QPageSetupDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QPageSetupDialog, event: gen_qcoreevent.QChildEvent): void =


  fQPageSetupDialog_virtualbase_childEvent(self.h, event.h)

type QPageSetupDialogchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_childEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_childEvent ".} =
  type Cb = proc(super: QPageSetupDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QPageSetupDialog, event: gen_qcoreevent.QEvent): void =


  fQPageSetupDialog_virtualbase_customEvent(self.h, event.h)

type QPageSetupDialogcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_customEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_customEvent ".} =
  type Cb = proc(super: QPageSetupDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QPageSetupDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QPageSetupDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQPageSetupDialog_virtualbase_connectNotify(self.h, signal.h)

type QPageSetupDialogconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_connectNotify(self: ptr cQPageSetupDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_connectNotify ".} =
  type Cb = proc(super: QPageSetupDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QPageSetupDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QPageSetupDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQPageSetupDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QPageSetupDialogdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QPageSetupDialog, slot: proc(super: QPageSetupDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPageSetupDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_disconnectNotify(self: ptr cQPageSetupDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_disconnectNotify ".} =
  type Cb = proc(super: QPageSetupDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QPageSetupDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QPageSetupDialog): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPageSetupDialog_staticMetaObject())
proc delete*(self: QPageSetupDialog) =
  fcQPageSetupDialog_delete(self.h)
