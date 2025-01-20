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
{.compile("gen_qprintdialog.cpp", cflags).}


import gen_qprintdialog_types
export gen_qprintdialog_types

import
  gen_qabstractprintdialog,
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
  gen_qprinter,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractprintdialog,
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
  gen_qprinter,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQPrintDialog*{.exportc: "QPrintDialog", incompleteStruct.} = object

proc fcQPrintDialog_new(parent: pointer): ptr cQPrintDialog {.importc: "QPrintDialog_new".}
proc fcQPrintDialog_new2(printer: pointer): ptr cQPrintDialog {.importc: "QPrintDialog_new2".}
proc fcQPrintDialog_new3(): ptr cQPrintDialog {.importc: "QPrintDialog_new3".}
proc fcQPrintDialog_new4(printer: pointer, parent: pointer): ptr cQPrintDialog {.importc: "QPrintDialog_new4".}
proc fcQPrintDialog_metaObject(self: pointer, ): pointer {.importc: "QPrintDialog_metaObject".}
proc fcQPrintDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintDialog_metacast".}
proc fcQPrintDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPrintDialog_metacall".}
proc fcQPrintDialog_tr(s: cstring): struct_miqt_string {.importc: "QPrintDialog_tr".}
proc fcQPrintDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QPrintDialog_trUtf8".}
proc fcQPrintDialog_exec(self: pointer, ): cint {.importc: "QPrintDialog_exec".}
proc fcQPrintDialog_accept(self: pointer, ): void {.importc: "QPrintDialog_accept".}
proc fcQPrintDialog_done(self: pointer, resultVal: cint): void {.importc: "QPrintDialog_done".}
proc fcQPrintDialog_setOption(self: pointer, option: cint): void {.importc: "QPrintDialog_setOption".}
proc fcQPrintDialog_testOption(self: pointer, option: cint): bool {.importc: "QPrintDialog_testOption".}
proc fcQPrintDialog_setOptions(self: pointer, options: cint): void {.importc: "QPrintDialog_setOptions".}
proc fcQPrintDialog_options(self: pointer, ): cint {.importc: "QPrintDialog_options".}
proc fcQPrintDialog_setVisible(self: pointer, visible: bool): void {.importc: "QPrintDialog_setVisible".}
proc fcQPrintDialog_accepted(self: pointer, printer: pointer): void {.importc: "QPrintDialog_accepted".}
proc fQPrintDialog_connect_accepted(self: pointer, slot: int) {.importc: "QPrintDialog_connect_accepted".}
proc fcQPrintDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintDialog_tr2".}
proc fcQPrintDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintDialog_tr3".}
proc fcQPrintDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintDialog_trUtf82".}
proc fcQPrintDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintDialog_trUtf83".}
proc fcQPrintDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QPrintDialog_setOption2".}
proc fQPrintDialog_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPrintDialog_virtualbase_metaObject".}
proc fcQPrintDialog_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_metaObject".}
proc fQPrintDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPrintDialog_virtualbase_metacast".}
proc fcQPrintDialog_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_metacast".}
proc fQPrintDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPrintDialog_virtualbase_metacall".}
proc fcQPrintDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_metacall".}
proc fQPrintDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QPrintDialog_virtualbase_exec".}
proc fcQPrintDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_exec".}
proc fQPrintDialog_virtualbase_accept(self: pointer, ): void{.importc: "QPrintDialog_virtualbase_accept".}
proc fcQPrintDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_accept".}
proc fQPrintDialog_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QPrintDialog_virtualbase_done".}
proc fcQPrintDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_done".}
proc fQPrintDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QPrintDialog_virtualbase_setVisible".}
proc fcQPrintDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_setVisible".}
proc fQPrintDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QPrintDialog_virtualbase_sizeHint".}
proc fcQPrintDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_sizeHint".}
proc fQPrintDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QPrintDialog_virtualbase_minimumSizeHint".}
proc fcQPrintDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_minimumSizeHint".}
proc fQPrintDialog_virtualbase_open(self: pointer, ): void{.importc: "QPrintDialog_virtualbase_open".}
proc fcQPrintDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_open".}
proc fQPrintDialog_virtualbase_reject(self: pointer, ): void{.importc: "QPrintDialog_virtualbase_reject".}
proc fcQPrintDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_reject".}
proc fQPrintDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QPrintDialog_virtualbase_keyPressEvent".}
proc fcQPrintDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_keyPressEvent".}
proc fQPrintDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QPrintDialog_virtualbase_closeEvent".}
proc fcQPrintDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_closeEvent".}
proc fQPrintDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QPrintDialog_virtualbase_showEvent".}
proc fcQPrintDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_showEvent".}
proc fQPrintDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QPrintDialog_virtualbase_resizeEvent".}
proc fcQPrintDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_resizeEvent".}
proc fQPrintDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QPrintDialog_virtualbase_contextMenuEvent".}
proc fcQPrintDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_contextMenuEvent".}
proc fQPrintDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QPrintDialog_virtualbase_eventFilter".}
proc fcQPrintDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_eventFilter".}
proc fQPrintDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QPrintDialog_virtualbase_devType".}
proc fcQPrintDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_devType".}
proc fQPrintDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QPrintDialog_virtualbase_heightForWidth".}
proc fcQPrintDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_heightForWidth".}
proc fQPrintDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QPrintDialog_virtualbase_hasHeightForWidth".}
proc fcQPrintDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_hasHeightForWidth".}
proc fQPrintDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPrintDialog_virtualbase_paintEngine".}
proc fcQPrintDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_paintEngine".}
proc fQPrintDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPrintDialog_virtualbase_event".}
proc fcQPrintDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_event".}
proc fQPrintDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_mousePressEvent".}
proc fcQPrintDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_mousePressEvent".}
proc fQPrintDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_mouseReleaseEvent".}
proc fcQPrintDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_mouseReleaseEvent".}
proc fQPrintDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQPrintDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_mouseDoubleClickEvent".}
proc fQPrintDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_mouseMoveEvent".}
proc fcQPrintDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_mouseMoveEvent".}
proc fQPrintDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_wheelEvent".}
proc fcQPrintDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_wheelEvent".}
proc fQPrintDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_keyReleaseEvent".}
proc fcQPrintDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_keyReleaseEvent".}
proc fQPrintDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_focusInEvent".}
proc fcQPrintDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_focusInEvent".}
proc fQPrintDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_focusOutEvent".}
proc fcQPrintDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_focusOutEvent".}
proc fQPrintDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_enterEvent".}
proc fcQPrintDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_enterEvent".}
proc fQPrintDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_leaveEvent".}
proc fcQPrintDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_leaveEvent".}
proc fQPrintDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_paintEvent".}
proc fcQPrintDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_paintEvent".}
proc fQPrintDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_moveEvent".}
proc fcQPrintDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_moveEvent".}
proc fQPrintDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_tabletEvent".}
proc fcQPrintDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_tabletEvent".}
proc fQPrintDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_actionEvent".}
proc fcQPrintDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_actionEvent".}
proc fQPrintDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_dragEnterEvent".}
proc fcQPrintDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_dragEnterEvent".}
proc fQPrintDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_dragMoveEvent".}
proc fcQPrintDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_dragMoveEvent".}
proc fQPrintDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_dragLeaveEvent".}
proc fcQPrintDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_dragLeaveEvent".}
proc fQPrintDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_dropEvent".}
proc fcQPrintDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_dropEvent".}
proc fQPrintDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_hideEvent".}
proc fcQPrintDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_hideEvent".}
proc fQPrintDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QPrintDialog_virtualbase_nativeEvent".}
proc fcQPrintDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_nativeEvent".}
proc fQPrintDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QPrintDialog_virtualbase_changeEvent".}
proc fcQPrintDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_changeEvent".}
proc fQPrintDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QPrintDialog_virtualbase_metric".}
proc fcQPrintDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_metric".}
proc fQPrintDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPrintDialog_virtualbase_initPainter".}
proc fcQPrintDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_initPainter".}
proc fQPrintDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPrintDialog_virtualbase_redirected".}
proc fcQPrintDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_redirected".}
proc fQPrintDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPrintDialog_virtualbase_sharedPainter".}
proc fcQPrintDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_sharedPainter".}
proc fQPrintDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QPrintDialog_virtualbase_inputMethodEvent".}
proc fcQPrintDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_inputMethodEvent".}
proc fQPrintDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QPrintDialog_virtualbase_inputMethodQuery".}
proc fcQPrintDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_inputMethodQuery".}
proc fQPrintDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QPrintDialog_virtualbase_focusNextPrevChild".}
proc fcQPrintDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_focusNextPrevChild".}
proc fQPrintDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_timerEvent".}
proc fcQPrintDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_timerEvent".}
proc fQPrintDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_childEvent".}
proc fcQPrintDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_childEvent".}
proc fQPrintDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_customEvent".}
proc fcQPrintDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_customEvent".}
proc fQPrintDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPrintDialog_virtualbase_connectNotify".}
proc fcQPrintDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_connectNotify".}
proc fQPrintDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPrintDialog_virtualbase_disconnectNotify".}
proc fcQPrintDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_disconnectNotify".}
proc fcQPrintDialog_staticMetaObject(): pointer {.importc: "QPrintDialog_staticMetaObject".}
proc fcQPrintDialog_delete(self: pointer) {.importc: "QPrintDialog_delete".}


func init*(T: type QPrintDialog, h: ptr cQPrintDialog): QPrintDialog =
  T(h: h)
proc create*(T: type QPrintDialog, parent: gen_qwidget.QWidget): QPrintDialog =

  QPrintDialog.init(fcQPrintDialog_new(parent.h))
proc create2*(T: type QPrintDialog, printer: gen_qprinter.QPrinter): QPrintDialog =

  QPrintDialog.init(fcQPrintDialog_new2(printer.h))
proc create*(T: type QPrintDialog, ): QPrintDialog =

  QPrintDialog.init(fcQPrintDialog_new3())
proc create*(T: type QPrintDialog, printer: gen_qprinter.QPrinter, parent: gen_qwidget.QWidget): QPrintDialog =

  QPrintDialog.init(fcQPrintDialog_new4(printer.h, parent.h))
proc metaObject*(self: QPrintDialog, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPrintDialog_metaObject(self.h))

proc metacast*(self: QPrintDialog, param1: cstring): pointer =

  fcQPrintDialog_metacast(self.h, param1)

proc metacall*(self: QPrintDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPrintDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPrintDialog, s: cstring): string =

  let v_ms = fcQPrintDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QPrintDialog, s: cstring): string =

  let v_ms = fcQPrintDialog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc exec*(self: QPrintDialog, ): cint =

  fcQPrintDialog_exec(self.h)

proc accept*(self: QPrintDialog, ): void =

  fcQPrintDialog_accept(self.h)

proc done*(self: QPrintDialog, resultVal: cint): void =

  fcQPrintDialog_done(self.h, resultVal)

proc setOption*(self: QPrintDialog, option: gen_qabstractprintdialog.QAbstractPrintDialogPrintDialogOption): void =

  fcQPrintDialog_setOption(self.h, cint(option))

proc testOption*(self: QPrintDialog, option: gen_qabstractprintdialog.QAbstractPrintDialogPrintDialogOption): bool =

  fcQPrintDialog_testOption(self.h, cint(option))

proc setOptions*(self: QPrintDialog, options: gen_qabstractprintdialog.QAbstractPrintDialogPrintDialogOption): void =

  fcQPrintDialog_setOptions(self.h, cint(options))

proc options*(self: QPrintDialog, ): gen_qabstractprintdialog.QAbstractPrintDialogPrintDialogOption =

  gen_qabstractprintdialog.QAbstractPrintDialogPrintDialogOption(fcQPrintDialog_options(self.h))

proc setVisible*(self: QPrintDialog, visible: bool): void =

  fcQPrintDialog_setVisible(self.h, visible)

proc accepted*(self: QPrintDialog, printer: gen_qprinter.QPrinter): void =

  fcQPrintDialog_accepted(self.h, printer.h)

proc miqt_exec_callback_QPrintDialog_accepted(slot: int, printer: pointer) {.exportc.} =
  type Cb = proc(printer: gen_qprinter.QPrinter)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qprinter.QPrinter(h: printer)


  nimfunc[](slotval1)

proc onaccepted*(self: QPrintDialog, slot: proc(printer: gen_qprinter.QPrinter)) =
  type Cb = proc(printer: gen_qprinter.QPrinter)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQPrintDialog_connect_accepted(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QPrintDialog, s: cstring, c: cstring): string =

  let v_ms = fcQPrintDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPrintDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPrintDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QPrintDialog, s: cstring, c: cstring): string =

  let v_ms = fcQPrintDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QPrintDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPrintDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption2*(self: QPrintDialog, option: gen_qabstractprintdialog.QAbstractPrintDialogPrintDialogOption, on: bool): void =

  fcQPrintDialog_setOption2(self.h, cint(option), on)

proc callVirtualBase_metaObject(self: QPrintDialog, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQPrintDialog_virtualbase_metaObject(self.h))

type QPrintDialogmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QPrintDialog, slot: proc(super: QPrintDialogmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_metaObject(self: ptr cQPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintDialog_metaObject ".} =
  type Cb = proc(super: QPrintDialogmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QPrintDialog, param1: cstring): pointer =


  fQPrintDialog_virtualbase_metacast(self.h, param1)

type QPrintDialogmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QPrintDialog, slot: proc(super: QPrintDialogmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_metacast(self: ptr cQPrintDialog, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPrintDialog_metacast ".} =
  type Cb = proc(super: QPrintDialogmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QPrintDialog(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QPrintDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQPrintDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPrintDialogmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QPrintDialog, slot: proc(super: QPrintDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_metacall(self: ptr cQPrintDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPrintDialog_metacall ".} =
  type Cb = proc(super: QPrintDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QPrintDialog(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_exec(self: QPrintDialog, ): cint =


  fQPrintDialog_virtualbase_exec(self.h)

type QPrintDialogexecBase* = proc(): cint
proc onexec*(self: QPrintDialog, slot: proc(super: QPrintDialogexecBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogexecBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_exec(self: ptr cQPrintDialog, slot: int): cint {.exportc: "miqt_exec_callback_QPrintDialog_exec ".} =
  type Cb = proc(super: QPrintDialogexecBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_exec(QPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_accept(self: QPrintDialog, ): void =


  fQPrintDialog_virtualbase_accept(self.h)

type QPrintDialogacceptBase* = proc(): void
proc onaccept*(self: QPrintDialog, slot: proc(super: QPrintDialogacceptBase): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogacceptBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_accept(self: ptr cQPrintDialog, slot: int): void {.exportc: "miqt_exec_callback_QPrintDialog_accept ".} =
  type Cb = proc(super: QPrintDialogacceptBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accept(QPrintDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_done(self: QPrintDialog, resultVal: cint): void =


  fQPrintDialog_virtualbase_done(self.h, resultVal)

type QPrintDialogdoneBase* = proc(resultVal: cint): void
proc ondone*(self: QPrintDialog, slot: proc(super: QPrintDialogdoneBase, resultVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogdoneBase, resultVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_done(self: ptr cQPrintDialog, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QPrintDialog_done ".} =
  type Cb = proc(super: QPrintDialogdoneBase, resultVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(resultVal: cint): auto =
    callVirtualBase_done(QPrintDialog(h: self), resultVal)
  let slotval1 = resultVal


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setVisible(self: QPrintDialog, visible: bool): void =


  fQPrintDialog_virtualbase_setVisible(self.h, visible)

type QPrintDialogsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QPrintDialog, slot: proc(super: QPrintDialogsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_setVisible(self: ptr cQPrintDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QPrintDialog_setVisible ".} =
  type Cb = proc(super: QPrintDialogsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QPrintDialog(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QPrintDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQPrintDialog_virtualbase_sizeHint(self.h))

type QPrintDialogsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QPrintDialog, slot: proc(super: QPrintDialogsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_sizeHint(self: ptr cQPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintDialog_sizeHint ".} =
  type Cb = proc(super: QPrintDialogsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QPrintDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQPrintDialog_virtualbase_minimumSizeHint(self.h))

type QPrintDialogminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QPrintDialog, slot: proc(super: QPrintDialogminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_minimumSizeHint(self: ptr cQPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintDialog_minimumSizeHint ".} =
  type Cb = proc(super: QPrintDialogminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_open(self: QPrintDialog, ): void =


  fQPrintDialog_virtualbase_open(self.h)

type QPrintDialogopenBase* = proc(): void
proc onopen*(self: QPrintDialog, slot: proc(super: QPrintDialogopenBase): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogopenBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_open(self: ptr cQPrintDialog, slot: int): void {.exportc: "miqt_exec_callback_QPrintDialog_open ".} =
  type Cb = proc(super: QPrintDialogopenBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_open(QPrintDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reject(self: QPrintDialog, ): void =


  fQPrintDialog_virtualbase_reject(self.h)

type QPrintDialogrejectBase* = proc(): void
proc onreject*(self: QPrintDialog, slot: proc(super: QPrintDialogrejectBase): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogrejectBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_reject(self: ptr cQPrintDialog, slot: int): void {.exportc: "miqt_exec_callback_QPrintDialog_reject ".} =
  type Cb = proc(super: QPrintDialogrejectBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reject(QPrintDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QPrintDialog, param1: gen_qevent.QKeyEvent): void =


  fQPrintDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QPrintDialogkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_keyPressEvent(self: ptr cQPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_keyPressEvent ".} =
  type Cb = proc(super: QPrintDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QPrintDialog(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QPrintDialog, param1: gen_qevent.QCloseEvent): void =


  fQPrintDialog_virtualbase_closeEvent(self.h, param1.h)

type QPrintDialogcloseEventBase* = proc(param1: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_closeEvent(self: ptr cQPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_closeEvent ".} =
  type Cb = proc(super: QPrintDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QPrintDialog(h: self), param1)
  let slotval1 = gen_qevent.QCloseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QPrintDialog, param1: gen_qevent.QShowEvent): void =


  fQPrintDialog_virtualbase_showEvent(self.h, param1.h)

type QPrintDialogshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_showEvent(self: ptr cQPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_showEvent ".} =
  type Cb = proc(super: QPrintDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QPrintDialog(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QPrintDialog, param1: gen_qevent.QResizeEvent): void =


  fQPrintDialog_virtualbase_resizeEvent(self.h, param1.h)

type QPrintDialogresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_resizeEvent(self: ptr cQPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_resizeEvent ".} =
  type Cb = proc(super: QPrintDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QPrintDialog(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QPrintDialog, param1: gen_qevent.QContextMenuEvent): void =


  fQPrintDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QPrintDialogcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_contextMenuEvent(self: ptr cQPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_contextMenuEvent ".} =
  type Cb = proc(super: QPrintDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QPrintDialog(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QPrintDialog, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQPrintDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QPrintDialogeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QPrintDialog, slot: proc(super: QPrintDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_eventFilter(self: ptr cQPrintDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QPrintDialog_eventFilter ".} =
  type Cb = proc(super: QPrintDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QPrintDialog(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_devType(self: QPrintDialog, ): cint =


  fQPrintDialog_virtualbase_devType(self.h)

type QPrintDialogdevTypeBase* = proc(): cint
proc ondevType*(self: QPrintDialog, slot: proc(super: QPrintDialogdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_devType(self: ptr cQPrintDialog, slot: int): cint {.exportc: "miqt_exec_callback_QPrintDialog_devType ".} =
  type Cb = proc(super: QPrintDialogdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QPrintDialog, param1: cint): cint =


  fQPrintDialog_virtualbase_heightForWidth(self.h, param1)

type QPrintDialogheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QPrintDialog, slot: proc(super: QPrintDialogheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_heightForWidth(self: ptr cQPrintDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPrintDialog_heightForWidth ".} =
  type Cb = proc(super: QPrintDialogheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QPrintDialog(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QPrintDialog, ): bool =


  fQPrintDialog_virtualbase_hasHeightForWidth(self.h)

type QPrintDialoghasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QPrintDialog, slot: proc(super: QPrintDialoghasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialoghasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_hasHeightForWidth(self: ptr cQPrintDialog, slot: int): bool {.exportc: "miqt_exec_callback_QPrintDialog_hasHeightForWidth ".} =
  type Cb = proc(super: QPrintDialoghasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QPrintDialog, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQPrintDialog_virtualbase_paintEngine(self.h))

type QPrintDialogpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QPrintDialog, slot: proc(super: QPrintDialogpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_paintEngine(self: ptr cQPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintDialog_paintEngine ".} =
  type Cb = proc(super: QPrintDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QPrintDialog, event: gen_qcoreevent.QEvent): bool =


  fQPrintDialog_virtualbase_event(self.h, event.h)

type QPrintDialogeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QPrintDialog, slot: proc(super: QPrintDialogeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_event(self: ptr cQPrintDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPrintDialog_event ".} =
  type Cb = proc(super: QPrintDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QPrintDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QPrintDialog, event: gen_qevent.QMouseEvent): void =


  fQPrintDialog_virtualbase_mousePressEvent(self.h, event.h)

type QPrintDialogmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_mousePressEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_mousePressEvent ".} =
  type Cb = proc(super: QPrintDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QPrintDialog, event: gen_qevent.QMouseEvent): void =


  fQPrintDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QPrintDialogmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_mouseReleaseEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_mouseReleaseEvent ".} =
  type Cb = proc(super: QPrintDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QPrintDialog, event: gen_qevent.QMouseEvent): void =


  fQPrintDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QPrintDialogmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_mouseDoubleClickEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QPrintDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QPrintDialog, event: gen_qevent.QMouseEvent): void =


  fQPrintDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QPrintDialogmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_mouseMoveEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_mouseMoveEvent ".} =
  type Cb = proc(super: QPrintDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QPrintDialog, event: gen_qevent.QWheelEvent): void =


  fQPrintDialog_virtualbase_wheelEvent(self.h, event.h)

type QPrintDialogwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_wheelEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_wheelEvent ".} =
  type Cb = proc(super: QPrintDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QPrintDialog, event: gen_qevent.QKeyEvent): void =


  fQPrintDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QPrintDialogkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_keyReleaseEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_keyReleaseEvent ".} =
  type Cb = proc(super: QPrintDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QPrintDialog, event: gen_qevent.QFocusEvent): void =


  fQPrintDialog_virtualbase_focusInEvent(self.h, event.h)

type QPrintDialogfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_focusInEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_focusInEvent ".} =
  type Cb = proc(super: QPrintDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QPrintDialog, event: gen_qevent.QFocusEvent): void =


  fQPrintDialog_virtualbase_focusOutEvent(self.h, event.h)

type QPrintDialogfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_focusOutEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_focusOutEvent ".} =
  type Cb = proc(super: QPrintDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QPrintDialog, event: gen_qcoreevent.QEvent): void =


  fQPrintDialog_virtualbase_enterEvent(self.h, event.h)

type QPrintDialogenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_enterEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_enterEvent ".} =
  type Cb = proc(super: QPrintDialogenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QPrintDialog, event: gen_qcoreevent.QEvent): void =


  fQPrintDialog_virtualbase_leaveEvent(self.h, event.h)

type QPrintDialogleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_leaveEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_leaveEvent ".} =
  type Cb = proc(super: QPrintDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QPrintDialog, event: gen_qevent.QPaintEvent): void =


  fQPrintDialog_virtualbase_paintEvent(self.h, event.h)

type QPrintDialogpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_paintEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_paintEvent ".} =
  type Cb = proc(super: QPrintDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QPrintDialog, event: gen_qevent.QMoveEvent): void =


  fQPrintDialog_virtualbase_moveEvent(self.h, event.h)

type QPrintDialogmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_moveEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_moveEvent ".} =
  type Cb = proc(super: QPrintDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QPrintDialog, event: gen_qevent.QTabletEvent): void =


  fQPrintDialog_virtualbase_tabletEvent(self.h, event.h)

type QPrintDialogtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_tabletEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_tabletEvent ".} =
  type Cb = proc(super: QPrintDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QPrintDialog, event: gen_qevent.QActionEvent): void =


  fQPrintDialog_virtualbase_actionEvent(self.h, event.h)

type QPrintDialogactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_actionEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_actionEvent ".} =
  type Cb = proc(super: QPrintDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QPrintDialog, event: gen_qevent.QDragEnterEvent): void =


  fQPrintDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QPrintDialogdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_dragEnterEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_dragEnterEvent ".} =
  type Cb = proc(super: QPrintDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QPrintDialog, event: gen_qevent.QDragMoveEvent): void =


  fQPrintDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QPrintDialogdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_dragMoveEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_dragMoveEvent ".} =
  type Cb = proc(super: QPrintDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QPrintDialog, event: gen_qevent.QDragLeaveEvent): void =


  fQPrintDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QPrintDialogdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_dragLeaveEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_dragLeaveEvent ".} =
  type Cb = proc(super: QPrintDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QPrintDialog, event: gen_qevent.QDropEvent): void =


  fQPrintDialog_virtualbase_dropEvent(self.h, event.h)

type QPrintDialogdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_dropEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_dropEvent ".} =
  type Cb = proc(super: QPrintDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QPrintDialog, event: gen_qevent.QHideEvent): void =


  fQPrintDialog_virtualbase_hideEvent(self.h, event.h)

type QPrintDialoghideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QPrintDialog, slot: proc(super: QPrintDialoghideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_hideEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_hideEvent ".} =
  type Cb = proc(super: QPrintDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QPrintDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQPrintDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QPrintDialognativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QPrintDialog, slot: proc(super: QPrintDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_nativeEvent(self: ptr cQPrintDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QPrintDialog_nativeEvent ".} =
  type Cb = proc(super: QPrintDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QPrintDialog(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QPrintDialog, param1: gen_qcoreevent.QEvent): void =


  fQPrintDialog_virtualbase_changeEvent(self.h, param1.h)

type QPrintDialogchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_changeEvent(self: ptr cQPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_changeEvent ".} =
  type Cb = proc(super: QPrintDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QPrintDialog(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QPrintDialog, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQPrintDialog_virtualbase_metric(self.h, cint(param1))

type QPrintDialogmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QPrintDialog, slot: proc(super: QPrintDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_metric(self: ptr cQPrintDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPrintDialog_metric ".} =
  type Cb = proc(super: QPrintDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QPrintDialog(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QPrintDialog, painter: gen_qpainter.QPainter): void =


  fQPrintDialog_virtualbase_initPainter(self.h, painter.h)

type QPrintDialoginitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QPrintDialog, slot: proc(super: QPrintDialoginitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_initPainter(self: ptr cQPrintDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_initPainter ".} =
  type Cb = proc(super: QPrintDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QPrintDialog(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QPrintDialog, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQPrintDialog_virtualbase_redirected(self.h, offset.h))

type QPrintDialogredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QPrintDialog, slot: proc(super: QPrintDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_redirected(self: ptr cQPrintDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPrintDialog_redirected ".} =
  type Cb = proc(super: QPrintDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QPrintDialog(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QPrintDialog, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQPrintDialog_virtualbase_sharedPainter(self.h))

type QPrintDialogsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QPrintDialog, slot: proc(super: QPrintDialogsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_sharedPainter(self: ptr cQPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintDialog_sharedPainter ".} =
  type Cb = proc(super: QPrintDialogsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QPrintDialog, param1: gen_qevent.QInputMethodEvent): void =


  fQPrintDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QPrintDialoginputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QPrintDialog, slot: proc(super: QPrintDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_inputMethodEvent(self: ptr cQPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_inputMethodEvent ".} =
  type Cb = proc(super: QPrintDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QPrintDialog(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QPrintDialog, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQPrintDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QPrintDialoginputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QPrintDialog, slot: proc(super: QPrintDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_inputMethodQuery(self: ptr cQPrintDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QPrintDialog_inputMethodQuery ".} =
  type Cb = proc(super: QPrintDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QPrintDialog(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QPrintDialog, next: bool): bool =


  fQPrintDialog_virtualbase_focusNextPrevChild(self.h, next)

type QPrintDialogfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QPrintDialog, slot: proc(super: QPrintDialogfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_focusNextPrevChild(self: ptr cQPrintDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QPrintDialog_focusNextPrevChild ".} =
  type Cb = proc(super: QPrintDialogfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QPrintDialog(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QPrintDialog, event: gen_qcoreevent.QTimerEvent): void =


  fQPrintDialog_virtualbase_timerEvent(self.h, event.h)

type QPrintDialogtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_timerEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_timerEvent ".} =
  type Cb = proc(super: QPrintDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QPrintDialog, event: gen_qcoreevent.QChildEvent): void =


  fQPrintDialog_virtualbase_childEvent(self.h, event.h)

type QPrintDialogchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_childEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_childEvent ".} =
  type Cb = proc(super: QPrintDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QPrintDialog, event: gen_qcoreevent.QEvent): void =


  fQPrintDialog_virtualbase_customEvent(self.h, event.h)

type QPrintDialogcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QPrintDialog, slot: proc(super: QPrintDialogcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_customEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_customEvent ".} =
  type Cb = proc(super: QPrintDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QPrintDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QPrintDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQPrintDialog_virtualbase_connectNotify(self.h, signal.h)

type QPrintDialogconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QPrintDialog, slot: proc(super: QPrintDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_connectNotify(self: ptr cQPrintDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_connectNotify ".} =
  type Cb = proc(super: QPrintDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QPrintDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QPrintDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQPrintDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QPrintDialogdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QPrintDialog, slot: proc(super: QPrintDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_disconnectNotify(self: ptr cQPrintDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_disconnectNotify ".} =
  type Cb = proc(super: QPrintDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QPrintDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QPrintDialog): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPrintDialog_staticMetaObject())
proc delete*(self: QPrintDialog) =
  fcQPrintDialog_delete(self.h)
