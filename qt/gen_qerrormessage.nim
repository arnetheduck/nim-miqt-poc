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
{.compile("gen_qerrormessage.cpp", cflags).}


import gen_qerrormessage_types
export gen_qerrormessage_types

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
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQErrorMessage*{.exportc: "QErrorMessage", incompleteStruct.} = object

proc fcQErrorMessage_new(parent: pointer): ptr cQErrorMessage {.importc: "QErrorMessage_new".}
proc fcQErrorMessage_new2(): ptr cQErrorMessage {.importc: "QErrorMessage_new2".}
proc fcQErrorMessage_metaObject(self: pointer, ): pointer {.importc: "QErrorMessage_metaObject".}
proc fcQErrorMessage_metacast(self: pointer, param1: cstring): pointer {.importc: "QErrorMessage_metacast".}
proc fcQErrorMessage_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QErrorMessage_metacall".}
proc fcQErrorMessage_tr(s: cstring): struct_miqt_string {.importc: "QErrorMessage_tr".}
proc fcQErrorMessage_trUtf8(s: cstring): struct_miqt_string {.importc: "QErrorMessage_trUtf8".}
proc fcQErrorMessage_qtHandler(): pointer {.importc: "QErrorMessage_qtHandler".}
proc fcQErrorMessage_showMessage(self: pointer, message: struct_miqt_string): void {.importc: "QErrorMessage_showMessage".}
proc fcQErrorMessage_showMessage2(self: pointer, message: struct_miqt_string, typeVal: struct_miqt_string): void {.importc: "QErrorMessage_showMessage2".}
proc fcQErrorMessage_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QErrorMessage_tr2".}
proc fcQErrorMessage_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QErrorMessage_tr3".}
proc fcQErrorMessage_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QErrorMessage_trUtf82".}
proc fcQErrorMessage_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QErrorMessage_trUtf83".}
proc fQErrorMessage_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QErrorMessage_virtualbase_metacall".}
proc fcQErrorMessage_override_virtual_metacall(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_metacall".}
proc fQErrorMessage_virtualbase_done(self: pointer, param1: cint): void{.importc: "QErrorMessage_virtualbase_done".}
proc fcQErrorMessage_override_virtual_done(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_done".}
proc fQErrorMessage_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QErrorMessage_virtualbase_changeEvent".}
proc fcQErrorMessage_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_changeEvent".}
proc fQErrorMessage_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QErrorMessage_virtualbase_setVisible".}
proc fcQErrorMessage_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_setVisible".}
proc fQErrorMessage_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QErrorMessage_virtualbase_sizeHint".}
proc fcQErrorMessage_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_sizeHint".}
proc fQErrorMessage_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QErrorMessage_virtualbase_minimumSizeHint".}
proc fcQErrorMessage_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_minimumSizeHint".}
proc fQErrorMessage_virtualbase_open(self: pointer, ): void{.importc: "QErrorMessage_virtualbase_open".}
proc fcQErrorMessage_override_virtual_open(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_open".}
proc fQErrorMessage_virtualbase_exec(self: pointer, ): cint{.importc: "QErrorMessage_virtualbase_exec".}
proc fcQErrorMessage_override_virtual_exec(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_exec".}
proc fQErrorMessage_virtualbase_accept(self: pointer, ): void{.importc: "QErrorMessage_virtualbase_accept".}
proc fcQErrorMessage_override_virtual_accept(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_accept".}
proc fQErrorMessage_virtualbase_reject(self: pointer, ): void{.importc: "QErrorMessage_virtualbase_reject".}
proc fcQErrorMessage_override_virtual_reject(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_reject".}
proc fQErrorMessage_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QErrorMessage_virtualbase_keyPressEvent".}
proc fcQErrorMessage_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_keyPressEvent".}
proc fQErrorMessage_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QErrorMessage_virtualbase_closeEvent".}
proc fcQErrorMessage_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_closeEvent".}
proc fQErrorMessage_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QErrorMessage_virtualbase_showEvent".}
proc fcQErrorMessage_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_showEvent".}
proc fQErrorMessage_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QErrorMessage_virtualbase_resizeEvent".}
proc fcQErrorMessage_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_resizeEvent".}
proc fQErrorMessage_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QErrorMessage_virtualbase_contextMenuEvent".}
proc fcQErrorMessage_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_contextMenuEvent".}
proc fQErrorMessage_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QErrorMessage_virtualbase_eventFilter".}
proc fcQErrorMessage_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_eventFilter".}
proc fQErrorMessage_virtualbase_devType(self: pointer, ): cint{.importc: "QErrorMessage_virtualbase_devType".}
proc fcQErrorMessage_override_virtual_devType(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_devType".}
proc fQErrorMessage_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QErrorMessage_virtualbase_heightForWidth".}
proc fcQErrorMessage_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_heightForWidth".}
proc fQErrorMessage_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QErrorMessage_virtualbase_hasHeightForWidth".}
proc fcQErrorMessage_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_hasHeightForWidth".}
proc fQErrorMessage_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QErrorMessage_virtualbase_paintEngine".}
proc fcQErrorMessage_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_paintEngine".}
proc fQErrorMessage_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QErrorMessage_virtualbase_event".}
proc fcQErrorMessage_override_virtual_event(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_event".}
proc fQErrorMessage_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_mousePressEvent".}
proc fcQErrorMessage_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_mousePressEvent".}
proc fQErrorMessage_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_mouseReleaseEvent".}
proc fcQErrorMessage_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_mouseReleaseEvent".}
proc fQErrorMessage_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_mouseDoubleClickEvent".}
proc fcQErrorMessage_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_mouseDoubleClickEvent".}
proc fQErrorMessage_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_mouseMoveEvent".}
proc fcQErrorMessage_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_mouseMoveEvent".}
proc fQErrorMessage_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_wheelEvent".}
proc fcQErrorMessage_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_wheelEvent".}
proc fQErrorMessage_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_keyReleaseEvent".}
proc fcQErrorMessage_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_keyReleaseEvent".}
proc fQErrorMessage_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_focusInEvent".}
proc fcQErrorMessage_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_focusInEvent".}
proc fQErrorMessage_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_focusOutEvent".}
proc fcQErrorMessage_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_focusOutEvent".}
proc fQErrorMessage_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_enterEvent".}
proc fcQErrorMessage_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_enterEvent".}
proc fQErrorMessage_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_leaveEvent".}
proc fcQErrorMessage_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_leaveEvent".}
proc fQErrorMessage_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_paintEvent".}
proc fcQErrorMessage_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_paintEvent".}
proc fQErrorMessage_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_moveEvent".}
proc fcQErrorMessage_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_moveEvent".}
proc fQErrorMessage_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_tabletEvent".}
proc fcQErrorMessage_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_tabletEvent".}
proc fQErrorMessage_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_actionEvent".}
proc fcQErrorMessage_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_actionEvent".}
proc fQErrorMessage_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_dragEnterEvent".}
proc fcQErrorMessage_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_dragEnterEvent".}
proc fQErrorMessage_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_dragMoveEvent".}
proc fcQErrorMessage_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_dragMoveEvent".}
proc fQErrorMessage_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_dragLeaveEvent".}
proc fcQErrorMessage_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_dragLeaveEvent".}
proc fQErrorMessage_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_dropEvent".}
proc fcQErrorMessage_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_dropEvent".}
proc fQErrorMessage_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_hideEvent".}
proc fcQErrorMessage_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_hideEvent".}
proc fQErrorMessage_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QErrorMessage_virtualbase_nativeEvent".}
proc fcQErrorMessage_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_nativeEvent".}
proc fQErrorMessage_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QErrorMessage_virtualbase_metric".}
proc fcQErrorMessage_override_virtual_metric(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_metric".}
proc fQErrorMessage_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QErrorMessage_virtualbase_initPainter".}
proc fcQErrorMessage_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_initPainter".}
proc fQErrorMessage_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QErrorMessage_virtualbase_redirected".}
proc fcQErrorMessage_override_virtual_redirected(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_redirected".}
proc fQErrorMessage_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QErrorMessage_virtualbase_sharedPainter".}
proc fcQErrorMessage_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_sharedPainter".}
proc fQErrorMessage_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QErrorMessage_virtualbase_inputMethodEvent".}
proc fcQErrorMessage_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_inputMethodEvent".}
proc fQErrorMessage_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QErrorMessage_virtualbase_inputMethodQuery".}
proc fcQErrorMessage_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_inputMethodQuery".}
proc fQErrorMessage_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QErrorMessage_virtualbase_focusNextPrevChild".}
proc fcQErrorMessage_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_focusNextPrevChild".}
proc fQErrorMessage_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_timerEvent".}
proc fcQErrorMessage_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_timerEvent".}
proc fQErrorMessage_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_childEvent".}
proc fcQErrorMessage_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_childEvent".}
proc fQErrorMessage_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_customEvent".}
proc fcQErrorMessage_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_customEvent".}
proc fQErrorMessage_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QErrorMessage_virtualbase_connectNotify".}
proc fcQErrorMessage_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_connectNotify".}
proc fQErrorMessage_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QErrorMessage_virtualbase_disconnectNotify".}
proc fcQErrorMessage_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_disconnectNotify".}
proc fcQErrorMessage_staticMetaObject(): pointer {.importc: "QErrorMessage_staticMetaObject".}
proc fcQErrorMessage_delete(self: pointer) {.importc: "QErrorMessage_delete".}


func init*(T: type QErrorMessage, h: ptr cQErrorMessage): QErrorMessage =
  T(h: h)
proc create*(T: type QErrorMessage, parent: gen_qwidget.QWidget): QErrorMessage =

  QErrorMessage.init(fcQErrorMessage_new(parent.h))
proc create*(T: type QErrorMessage, ): QErrorMessage =

  QErrorMessage.init(fcQErrorMessage_new2())
proc metaObject*(self: QErrorMessage, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQErrorMessage_metaObject(self.h))

proc metacast*(self: QErrorMessage, param1: cstring): pointer =

  fcQErrorMessage_metacast(self.h, param1)

proc metacall*(self: QErrorMessage, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQErrorMessage_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QErrorMessage, s: cstring): string =

  let v_ms = fcQErrorMessage_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QErrorMessage, s: cstring): string =

  let v_ms = fcQErrorMessage_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc qtHandler*(_: type QErrorMessage, ): QErrorMessage =

  QErrorMessage(h: fcQErrorMessage_qtHandler())

proc showMessage*(self: QErrorMessage, message: string): void =

  fcQErrorMessage_showMessage(self.h, struct_miqt_string(data: message, len: csize_t(len(message))))

proc showMessage2*(self: QErrorMessage, message: string, typeVal: string): void =

  fcQErrorMessage_showMessage2(self.h, struct_miqt_string(data: message, len: csize_t(len(message))), struct_miqt_string(data: typeVal, len: csize_t(len(typeVal))))

proc tr2*(_: type QErrorMessage, s: cstring, c: cstring): string =

  let v_ms = fcQErrorMessage_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QErrorMessage, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQErrorMessage_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QErrorMessage, s: cstring, c: cstring): string =

  let v_ms = fcQErrorMessage_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QErrorMessage, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQErrorMessage_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QErrorMessage, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQErrorMessage_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QErrorMessagemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QErrorMessage, slot: proc(super: QErrorMessagemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_metacall(self: ptr cQErrorMessage, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QErrorMessage_metacall ".} =
  type Cb = proc(super: QErrorMessagemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QErrorMessage(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_done(self: QErrorMessage, param1: cint): void =


  fQErrorMessage_virtualbase_done(self.h, param1)

type QErrorMessagedoneBase* = proc(param1: cint): void
proc ondone*(self: QErrorMessage, slot: proc(super: QErrorMessagedoneBase, param1: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagedoneBase, param1: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_done(self: ptr cQErrorMessage, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QErrorMessage_done ".} =
  type Cb = proc(super: QErrorMessagedoneBase, param1: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_done(QErrorMessage(h: self), param1)
  let slotval1 = param1


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QErrorMessage, e: gen_qcoreevent.QEvent): void =


  fQErrorMessage_virtualbase_changeEvent(self.h, e.h)

type QErrorMessagechangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagechangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagechangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_changeEvent(self: ptr cQErrorMessage, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_changeEvent ".} =
  type Cb = proc(super: QErrorMessagechangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QErrorMessage(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setVisible(self: QErrorMessage, visible: bool): void =


  fQErrorMessage_virtualbase_setVisible(self.h, visible)

type QErrorMessagesetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QErrorMessage, slot: proc(super: QErrorMessagesetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagesetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_setVisible(self: ptr cQErrorMessage, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QErrorMessage_setVisible ".} =
  type Cb = proc(super: QErrorMessagesetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QErrorMessage(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QErrorMessage, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQErrorMessage_virtualbase_sizeHint(self.h))

type QErrorMessagesizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QErrorMessage, slot: proc(super: QErrorMessagesizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagesizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_sizeHint(self: ptr cQErrorMessage, slot: int): pointer {.exportc: "miqt_exec_callback_QErrorMessage_sizeHint ".} =
  type Cb = proc(super: QErrorMessagesizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QErrorMessage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QErrorMessage, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQErrorMessage_virtualbase_minimumSizeHint(self.h))

type QErrorMessageminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QErrorMessage, slot: proc(super: QErrorMessageminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_minimumSizeHint(self: ptr cQErrorMessage, slot: int): pointer {.exportc: "miqt_exec_callback_QErrorMessage_minimumSizeHint ".} =
  type Cb = proc(super: QErrorMessageminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QErrorMessage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_open(self: QErrorMessage, ): void =


  fQErrorMessage_virtualbase_open(self.h)

type QErrorMessageopenBase* = proc(): void
proc onopen*(self: QErrorMessage, slot: proc(super: QErrorMessageopenBase): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageopenBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_open(self: ptr cQErrorMessage, slot: int): void {.exportc: "miqt_exec_callback_QErrorMessage_open ".} =
  type Cb = proc(super: QErrorMessageopenBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_open(QErrorMessage(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_exec(self: QErrorMessage, ): cint =


  fQErrorMessage_virtualbase_exec(self.h)

type QErrorMessageexecBase* = proc(): cint
proc onexec*(self: QErrorMessage, slot: proc(super: QErrorMessageexecBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageexecBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_exec(self: ptr cQErrorMessage, slot: int): cint {.exportc: "miqt_exec_callback_QErrorMessage_exec ".} =
  type Cb = proc(super: QErrorMessageexecBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_exec(QErrorMessage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_accept(self: QErrorMessage, ): void =


  fQErrorMessage_virtualbase_accept(self.h)

type QErrorMessageacceptBase* = proc(): void
proc onaccept*(self: QErrorMessage, slot: proc(super: QErrorMessageacceptBase): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageacceptBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_accept(self: ptr cQErrorMessage, slot: int): void {.exportc: "miqt_exec_callback_QErrorMessage_accept ".} =
  type Cb = proc(super: QErrorMessageacceptBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accept(QErrorMessage(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reject(self: QErrorMessage, ): void =


  fQErrorMessage_virtualbase_reject(self.h)

type QErrorMessagerejectBase* = proc(): void
proc onreject*(self: QErrorMessage, slot: proc(super: QErrorMessagerejectBase): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagerejectBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_reject(self: ptr cQErrorMessage, slot: int): void {.exportc: "miqt_exec_callback_QErrorMessage_reject ".} =
  type Cb = proc(super: QErrorMessagerejectBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reject(QErrorMessage(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QErrorMessage, param1: gen_qevent.QKeyEvent): void =


  fQErrorMessage_virtualbase_keyPressEvent(self.h, param1.h)

type QErrorMessagekeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagekeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagekeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_keyPressEvent(self: ptr cQErrorMessage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_keyPressEvent ".} =
  type Cb = proc(super: QErrorMessagekeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QErrorMessage(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QErrorMessage, param1: gen_qevent.QCloseEvent): void =


  fQErrorMessage_virtualbase_closeEvent(self.h, param1.h)

type QErrorMessagecloseEventBase* = proc(param1: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagecloseEventBase, param1: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagecloseEventBase, param1: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_closeEvent(self: ptr cQErrorMessage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_closeEvent ".} =
  type Cb = proc(super: QErrorMessagecloseEventBase, param1: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QErrorMessage(h: self), param1)
  let slotval1 = gen_qevent.QCloseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QErrorMessage, param1: gen_qevent.QShowEvent): void =


  fQErrorMessage_virtualbase_showEvent(self.h, param1.h)

type QErrorMessageshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QErrorMessage, slot: proc(super: QErrorMessageshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_showEvent(self: ptr cQErrorMessage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_showEvent ".} =
  type Cb = proc(super: QErrorMessageshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QErrorMessage(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QErrorMessage, param1: gen_qevent.QResizeEvent): void =


  fQErrorMessage_virtualbase_resizeEvent(self.h, param1.h)

type QErrorMessageresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QErrorMessage, slot: proc(super: QErrorMessageresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_resizeEvent(self: ptr cQErrorMessage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_resizeEvent ".} =
  type Cb = proc(super: QErrorMessageresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QErrorMessage(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QErrorMessage, param1: gen_qevent.QContextMenuEvent): void =


  fQErrorMessage_virtualbase_contextMenuEvent(self.h, param1.h)

type QErrorMessagecontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagecontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagecontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_contextMenuEvent(self: ptr cQErrorMessage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_contextMenuEvent ".} =
  type Cb = proc(super: QErrorMessagecontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QErrorMessage(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QErrorMessage, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQErrorMessage_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QErrorMessageeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QErrorMessage, slot: proc(super: QErrorMessageeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_eventFilter(self: ptr cQErrorMessage, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QErrorMessage_eventFilter ".} =
  type Cb = proc(super: QErrorMessageeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QErrorMessage(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_devType(self: QErrorMessage, ): cint =


  fQErrorMessage_virtualbase_devType(self.h)

type QErrorMessagedevTypeBase* = proc(): cint
proc ondevType*(self: QErrorMessage, slot: proc(super: QErrorMessagedevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagedevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_devType(self: ptr cQErrorMessage, slot: int): cint {.exportc: "miqt_exec_callback_QErrorMessage_devType ".} =
  type Cb = proc(super: QErrorMessagedevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QErrorMessage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QErrorMessage, param1: cint): cint =


  fQErrorMessage_virtualbase_heightForWidth(self.h, param1)

type QErrorMessageheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QErrorMessage, slot: proc(super: QErrorMessageheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_heightForWidth(self: ptr cQErrorMessage, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QErrorMessage_heightForWidth ".} =
  type Cb = proc(super: QErrorMessageheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QErrorMessage(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QErrorMessage, ): bool =


  fQErrorMessage_virtualbase_hasHeightForWidth(self.h)

type QErrorMessagehasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QErrorMessage, slot: proc(super: QErrorMessagehasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagehasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_hasHeightForWidth(self: ptr cQErrorMessage, slot: int): bool {.exportc: "miqt_exec_callback_QErrorMessage_hasHeightForWidth ".} =
  type Cb = proc(super: QErrorMessagehasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QErrorMessage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QErrorMessage, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQErrorMessage_virtualbase_paintEngine(self.h))

type QErrorMessagepaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QErrorMessage, slot: proc(super: QErrorMessagepaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagepaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_paintEngine(self: ptr cQErrorMessage, slot: int): pointer {.exportc: "miqt_exec_callback_QErrorMessage_paintEngine ".} =
  type Cb = proc(super: QErrorMessagepaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QErrorMessage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QErrorMessage, event: gen_qcoreevent.QEvent): bool =


  fQErrorMessage_virtualbase_event(self.h, event.h)

type QErrorMessageeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QErrorMessage, slot: proc(super: QErrorMessageeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_event(self: ptr cQErrorMessage, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QErrorMessage_event ".} =
  type Cb = proc(super: QErrorMessageeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QErrorMessage(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QErrorMessage, event: gen_qevent.QMouseEvent): void =


  fQErrorMessage_virtualbase_mousePressEvent(self.h, event.h)

type QErrorMessagemousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagemousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagemousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_mousePressEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_mousePressEvent ".} =
  type Cb = proc(super: QErrorMessagemousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QErrorMessage, event: gen_qevent.QMouseEvent): void =


  fQErrorMessage_virtualbase_mouseReleaseEvent(self.h, event.h)

type QErrorMessagemouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_mouseReleaseEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_mouseReleaseEvent ".} =
  type Cb = proc(super: QErrorMessagemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QErrorMessage, event: gen_qevent.QMouseEvent): void =


  fQErrorMessage_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QErrorMessagemouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_mouseDoubleClickEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QErrorMessagemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QErrorMessage, event: gen_qevent.QMouseEvent): void =


  fQErrorMessage_virtualbase_mouseMoveEvent(self.h, event.h)

type QErrorMessagemouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagemouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagemouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_mouseMoveEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_mouseMoveEvent ".} =
  type Cb = proc(super: QErrorMessagemouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QErrorMessage, event: gen_qevent.QWheelEvent): void =


  fQErrorMessage_virtualbase_wheelEvent(self.h, event.h)

type QErrorMessagewheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagewheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagewheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_wheelEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_wheelEvent ".} =
  type Cb = proc(super: QErrorMessagewheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QErrorMessage, event: gen_qevent.QKeyEvent): void =


  fQErrorMessage_virtualbase_keyReleaseEvent(self.h, event.h)

type QErrorMessagekeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_keyReleaseEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_keyReleaseEvent ".} =
  type Cb = proc(super: QErrorMessagekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QErrorMessage, event: gen_qevent.QFocusEvent): void =


  fQErrorMessage_virtualbase_focusInEvent(self.h, event.h)

type QErrorMessagefocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagefocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagefocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_focusInEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_focusInEvent ".} =
  type Cb = proc(super: QErrorMessagefocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QErrorMessage, event: gen_qevent.QFocusEvent): void =


  fQErrorMessage_virtualbase_focusOutEvent(self.h, event.h)

type QErrorMessagefocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagefocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagefocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_focusOutEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_focusOutEvent ".} =
  type Cb = proc(super: QErrorMessagefocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QErrorMessage, event: gen_qcoreevent.QEvent): void =


  fQErrorMessage_virtualbase_enterEvent(self.h, event.h)

type QErrorMessageenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QErrorMessage, slot: proc(super: QErrorMessageenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_enterEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_enterEvent ".} =
  type Cb = proc(super: QErrorMessageenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QErrorMessage, event: gen_qcoreevent.QEvent): void =


  fQErrorMessage_virtualbase_leaveEvent(self.h, event.h)

type QErrorMessageleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QErrorMessage, slot: proc(super: QErrorMessageleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_leaveEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_leaveEvent ".} =
  type Cb = proc(super: QErrorMessageleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QErrorMessage, event: gen_qevent.QPaintEvent): void =


  fQErrorMessage_virtualbase_paintEvent(self.h, event.h)

type QErrorMessagepaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagepaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagepaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_paintEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_paintEvent ".} =
  type Cb = proc(super: QErrorMessagepaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QErrorMessage, event: gen_qevent.QMoveEvent): void =


  fQErrorMessage_virtualbase_moveEvent(self.h, event.h)

type QErrorMessagemoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagemoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagemoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_moveEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_moveEvent ".} =
  type Cb = proc(super: QErrorMessagemoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QErrorMessage, event: gen_qevent.QTabletEvent): void =


  fQErrorMessage_virtualbase_tabletEvent(self.h, event.h)

type QErrorMessagetabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagetabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagetabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_tabletEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_tabletEvent ".} =
  type Cb = proc(super: QErrorMessagetabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QErrorMessage, event: gen_qevent.QActionEvent): void =


  fQErrorMessage_virtualbase_actionEvent(self.h, event.h)

type QErrorMessageactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QErrorMessage, slot: proc(super: QErrorMessageactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_actionEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_actionEvent ".} =
  type Cb = proc(super: QErrorMessageactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QErrorMessage, event: gen_qevent.QDragEnterEvent): void =


  fQErrorMessage_virtualbase_dragEnterEvent(self.h, event.h)

type QErrorMessagedragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_dragEnterEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_dragEnterEvent ".} =
  type Cb = proc(super: QErrorMessagedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QErrorMessage, event: gen_qevent.QDragMoveEvent): void =


  fQErrorMessage_virtualbase_dragMoveEvent(self.h, event.h)

type QErrorMessagedragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_dragMoveEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_dragMoveEvent ".} =
  type Cb = proc(super: QErrorMessagedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QErrorMessage, event: gen_qevent.QDragLeaveEvent): void =


  fQErrorMessage_virtualbase_dragLeaveEvent(self.h, event.h)

type QErrorMessagedragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_dragLeaveEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_dragLeaveEvent ".} =
  type Cb = proc(super: QErrorMessagedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QErrorMessage, event: gen_qevent.QDropEvent): void =


  fQErrorMessage_virtualbase_dropEvent(self.h, event.h)

type QErrorMessagedropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagedropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagedropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_dropEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_dropEvent ".} =
  type Cb = proc(super: QErrorMessagedropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QErrorMessage, event: gen_qevent.QHideEvent): void =


  fQErrorMessage_virtualbase_hideEvent(self.h, event.h)

type QErrorMessagehideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagehideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagehideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_hideEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_hideEvent ".} =
  type Cb = proc(super: QErrorMessagehideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QErrorMessage, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQErrorMessage_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QErrorMessagenativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_nativeEvent(self: ptr cQErrorMessage, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QErrorMessage_nativeEvent ".} =
  type Cb = proc(super: QErrorMessagenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QErrorMessage(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QErrorMessage, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQErrorMessage_virtualbase_metric(self.h, cint(param1))

type QErrorMessagemetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QErrorMessage, slot: proc(super: QErrorMessagemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_metric(self: ptr cQErrorMessage, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QErrorMessage_metric ".} =
  type Cb = proc(super: QErrorMessagemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QErrorMessage(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QErrorMessage, painter: gen_qpainter.QPainter): void =


  fQErrorMessage_virtualbase_initPainter(self.h, painter.h)

type QErrorMessageinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QErrorMessage, slot: proc(super: QErrorMessageinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_initPainter(self: ptr cQErrorMessage, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_initPainter ".} =
  type Cb = proc(super: QErrorMessageinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QErrorMessage(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QErrorMessage, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQErrorMessage_virtualbase_redirected(self.h, offset.h))

type QErrorMessageredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QErrorMessage, slot: proc(super: QErrorMessageredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_redirected(self: ptr cQErrorMessage, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QErrorMessage_redirected ".} =
  type Cb = proc(super: QErrorMessageredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QErrorMessage(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QErrorMessage, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQErrorMessage_virtualbase_sharedPainter(self.h))

type QErrorMessagesharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QErrorMessage, slot: proc(super: QErrorMessagesharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagesharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_sharedPainter(self: ptr cQErrorMessage, slot: int): pointer {.exportc: "miqt_exec_callback_QErrorMessage_sharedPainter ".} =
  type Cb = proc(super: QErrorMessagesharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QErrorMessage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QErrorMessage, param1: gen_qevent.QInputMethodEvent): void =


  fQErrorMessage_virtualbase_inputMethodEvent(self.h, param1.h)

type QErrorMessageinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QErrorMessage, slot: proc(super: QErrorMessageinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_inputMethodEvent(self: ptr cQErrorMessage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_inputMethodEvent ".} =
  type Cb = proc(super: QErrorMessageinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QErrorMessage(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QErrorMessage, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQErrorMessage_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QErrorMessageinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QErrorMessage, slot: proc(super: QErrorMessageinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_inputMethodQuery(self: ptr cQErrorMessage, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QErrorMessage_inputMethodQuery ".} =
  type Cb = proc(super: QErrorMessageinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QErrorMessage(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QErrorMessage, next: bool): bool =


  fQErrorMessage_virtualbase_focusNextPrevChild(self.h, next)

type QErrorMessagefocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QErrorMessage, slot: proc(super: QErrorMessagefocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagefocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_focusNextPrevChild(self: ptr cQErrorMessage, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QErrorMessage_focusNextPrevChild ".} =
  type Cb = proc(super: QErrorMessagefocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QErrorMessage(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QErrorMessage, event: gen_qcoreevent.QTimerEvent): void =


  fQErrorMessage_virtualbase_timerEvent(self.h, event.h)

type QErrorMessagetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_timerEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_timerEvent ".} =
  type Cb = proc(super: QErrorMessagetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QErrorMessage, event: gen_qcoreevent.QChildEvent): void =


  fQErrorMessage_virtualbase_childEvent(self.h, event.h)

type QErrorMessagechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_childEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_childEvent ".} =
  type Cb = proc(super: QErrorMessagechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QErrorMessage, event: gen_qcoreevent.QEvent): void =


  fQErrorMessage_virtualbase_customEvent(self.h, event.h)

type QErrorMessagecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QErrorMessage, slot: proc(super: QErrorMessagecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_customEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_customEvent ".} =
  type Cb = proc(super: QErrorMessagecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QErrorMessage(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QErrorMessage, signal: gen_qmetaobject.QMetaMethod): void =


  fQErrorMessage_virtualbase_connectNotify(self.h, signal.h)

type QErrorMessageconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QErrorMessage, slot: proc(super: QErrorMessageconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessageconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_connectNotify(self: ptr cQErrorMessage, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_connectNotify ".} =
  type Cb = proc(super: QErrorMessageconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QErrorMessage(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QErrorMessage, signal: gen_qmetaobject.QMetaMethod): void =


  fQErrorMessage_virtualbase_disconnectNotify(self.h, signal.h)

type QErrorMessagedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QErrorMessage, slot: proc(super: QErrorMessagedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QErrorMessagedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_disconnectNotify(self: ptr cQErrorMessage, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_disconnectNotify ".} =
  type Cb = proc(super: QErrorMessagedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QErrorMessage(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QErrorMessage): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQErrorMessage_staticMetaObject())
proc delete*(self: QErrorMessage) =
  fcQErrorMessage_delete(self.h)
