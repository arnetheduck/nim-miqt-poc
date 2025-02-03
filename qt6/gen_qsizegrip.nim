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
{.compile("gen_qsizegrip.cpp", cflags).}


import gen_qsizegrip_types
export gen_qsizegrip_types

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

type cQSizeGrip*{.exportc: "QSizeGrip", incompleteStruct.} = object

proc fcQSizeGrip_new(parent: pointer): ptr cQSizeGrip {.importc: "QSizeGrip_new".}
proc fcQSizeGrip_metaObject(self: pointer, ): pointer {.importc: "QSizeGrip_metaObject".}
proc fcQSizeGrip_metacast(self: pointer, param1: cstring): pointer {.importc: "QSizeGrip_metacast".}
proc fcQSizeGrip_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSizeGrip_metacall".}
proc fcQSizeGrip_tr(s: cstring): struct_miqt_string {.importc: "QSizeGrip_tr".}
proc fcQSizeGrip_sizeHint(self: pointer, ): pointer {.importc: "QSizeGrip_sizeHint".}
proc fcQSizeGrip_setVisible(self: pointer, visible: bool): void {.importc: "QSizeGrip_setVisible".}
proc fcQSizeGrip_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSizeGrip_tr2".}
proc fcQSizeGrip_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSizeGrip_tr3".}
proc fQSizeGrip_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSizeGrip_virtualbase_metacall".}
proc fcQSizeGrip_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_metacall".}
proc fQSizeGrip_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSizeGrip_virtualbase_sizeHint".}
proc fcQSizeGrip_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_sizeHint".}
proc fQSizeGrip_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QSizeGrip_virtualbase_setVisible".}
proc fcQSizeGrip_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_setVisible".}
proc fQSizeGrip_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QSizeGrip_virtualbase_paintEvent".}
proc fcQSizeGrip_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_paintEvent".}
proc fQSizeGrip_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QSizeGrip_virtualbase_mousePressEvent".}
proc fcQSizeGrip_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_mousePressEvent".}
proc fQSizeGrip_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QSizeGrip_virtualbase_mouseMoveEvent".}
proc fcQSizeGrip_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_mouseMoveEvent".}
proc fQSizeGrip_virtualbase_mouseReleaseEvent(self: pointer, mouseEvent: pointer): void{.importc: "QSizeGrip_virtualbase_mouseReleaseEvent".}
proc fcQSizeGrip_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_mouseReleaseEvent".}
proc fQSizeGrip_virtualbase_moveEvent(self: pointer, moveEvent: pointer): void{.importc: "QSizeGrip_virtualbase_moveEvent".}
proc fcQSizeGrip_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_moveEvent".}
proc fQSizeGrip_virtualbase_showEvent(self: pointer, showEvent: pointer): void{.importc: "QSizeGrip_virtualbase_showEvent".}
proc fcQSizeGrip_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_showEvent".}
proc fQSizeGrip_virtualbase_hideEvent(self: pointer, hideEvent: pointer): void{.importc: "QSizeGrip_virtualbase_hideEvent".}
proc fcQSizeGrip_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_hideEvent".}
proc fQSizeGrip_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QSizeGrip_virtualbase_eventFilter".}
proc fcQSizeGrip_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_eventFilter".}
proc fQSizeGrip_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QSizeGrip_virtualbase_event".}
proc fcQSizeGrip_override_virtual_event(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_event".}
proc fQSizeGrip_virtualbase_devType(self: pointer, ): cint{.importc: "QSizeGrip_virtualbase_devType".}
proc fcQSizeGrip_override_virtual_devType(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_devType".}
proc fQSizeGrip_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QSizeGrip_virtualbase_minimumSizeHint".}
proc fcQSizeGrip_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_minimumSizeHint".}
proc fQSizeGrip_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSizeGrip_virtualbase_heightForWidth".}
proc fcQSizeGrip_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_heightForWidth".}
proc fQSizeGrip_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSizeGrip_virtualbase_hasHeightForWidth".}
proc fcQSizeGrip_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_hasHeightForWidth".}
proc fQSizeGrip_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSizeGrip_virtualbase_paintEngine".}
proc fcQSizeGrip_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_paintEngine".}
proc fQSizeGrip_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_mouseDoubleClickEvent".}
proc fcQSizeGrip_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_mouseDoubleClickEvent".}
proc fQSizeGrip_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_wheelEvent".}
proc fcQSizeGrip_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_wheelEvent".}
proc fQSizeGrip_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_keyPressEvent".}
proc fcQSizeGrip_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_keyPressEvent".}
proc fQSizeGrip_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_keyReleaseEvent".}
proc fcQSizeGrip_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_keyReleaseEvent".}
proc fQSizeGrip_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_focusInEvent".}
proc fcQSizeGrip_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_focusInEvent".}
proc fQSizeGrip_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_focusOutEvent".}
proc fcQSizeGrip_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_focusOutEvent".}
proc fQSizeGrip_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_enterEvent".}
proc fcQSizeGrip_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_enterEvent".}
proc fQSizeGrip_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_leaveEvent".}
proc fcQSizeGrip_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_leaveEvent".}
proc fQSizeGrip_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_resizeEvent".}
proc fcQSizeGrip_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_resizeEvent".}
proc fQSizeGrip_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_closeEvent".}
proc fcQSizeGrip_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_closeEvent".}
proc fQSizeGrip_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_contextMenuEvent".}
proc fcQSizeGrip_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_contextMenuEvent".}
proc fQSizeGrip_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_tabletEvent".}
proc fcQSizeGrip_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_tabletEvent".}
proc fQSizeGrip_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_actionEvent".}
proc fcQSizeGrip_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_actionEvent".}
proc fQSizeGrip_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_dragEnterEvent".}
proc fcQSizeGrip_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_dragEnterEvent".}
proc fQSizeGrip_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_dragMoveEvent".}
proc fcQSizeGrip_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_dragMoveEvent".}
proc fQSizeGrip_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_dragLeaveEvent".}
proc fcQSizeGrip_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_dragLeaveEvent".}
proc fQSizeGrip_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_dropEvent".}
proc fcQSizeGrip_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_dropEvent".}
proc fQSizeGrip_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QSizeGrip_virtualbase_nativeEvent".}
proc fcQSizeGrip_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_nativeEvent".}
proc fQSizeGrip_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QSizeGrip_virtualbase_changeEvent".}
proc fcQSizeGrip_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_changeEvent".}
proc fQSizeGrip_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QSizeGrip_virtualbase_metric".}
proc fcQSizeGrip_override_virtual_metric(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_metric".}
proc fQSizeGrip_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSizeGrip_virtualbase_initPainter".}
proc fcQSizeGrip_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_initPainter".}
proc fQSizeGrip_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSizeGrip_virtualbase_redirected".}
proc fcQSizeGrip_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_redirected".}
proc fQSizeGrip_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSizeGrip_virtualbase_sharedPainter".}
proc fcQSizeGrip_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_sharedPainter".}
proc fQSizeGrip_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QSizeGrip_virtualbase_inputMethodEvent".}
proc fcQSizeGrip_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_inputMethodEvent".}
proc fQSizeGrip_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QSizeGrip_virtualbase_inputMethodQuery".}
proc fcQSizeGrip_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_inputMethodQuery".}
proc fQSizeGrip_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QSizeGrip_virtualbase_focusNextPrevChild".}
proc fcQSizeGrip_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_focusNextPrevChild".}
proc fQSizeGrip_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_timerEvent".}
proc fcQSizeGrip_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_timerEvent".}
proc fQSizeGrip_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_childEvent".}
proc fcQSizeGrip_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_childEvent".}
proc fQSizeGrip_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_customEvent".}
proc fcQSizeGrip_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_customEvent".}
proc fQSizeGrip_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSizeGrip_virtualbase_connectNotify".}
proc fcQSizeGrip_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_connectNotify".}
proc fQSizeGrip_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSizeGrip_virtualbase_disconnectNotify".}
proc fcQSizeGrip_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_disconnectNotify".}
proc fcQSizeGrip_delete(self: pointer) {.importc: "QSizeGrip_delete".}


func init*(T: type QSizeGrip, h: ptr cQSizeGrip): QSizeGrip =
  T(h: h)
proc create*(T: type QSizeGrip, parent: gen_qwidget.QWidget): QSizeGrip =

  QSizeGrip.init(fcQSizeGrip_new(parent.h))
proc metaObject*(self: QSizeGrip, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSizeGrip_metaObject(self.h))

proc metacast*(self: QSizeGrip, param1: cstring): pointer =

  fcQSizeGrip_metacast(self.h, param1)

proc metacall*(self: QSizeGrip, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSizeGrip_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSizeGrip, s: cstring): string =

  let v_ms = fcQSizeGrip_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: QSizeGrip, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSizeGrip_sizeHint(self.h))

proc setVisible*(self: QSizeGrip, visible: bool): void =

  fcQSizeGrip_setVisible(self.h, visible)

proc tr2*(_: type QSizeGrip, s: cstring, c: cstring): string =

  let v_ms = fcQSizeGrip_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSizeGrip, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSizeGrip_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSizeGrip, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSizeGrip_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSizeGripmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSizeGrip, slot: proc(super: QSizeGripmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_metacall(self: ptr cQSizeGrip, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSizeGrip_metacall ".} =
  type Cb = proc(super: QSizeGripmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSizeGrip(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QSizeGrip, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSizeGrip_virtualbase_sizeHint(self.h))

type QSizeGripsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QSizeGrip, slot: proc(super: QSizeGripsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_sizeHint(self: ptr cQSizeGrip, slot: int): pointer {.exportc: "miqt_exec_callback_QSizeGrip_sizeHint ".} =
  type Cb = proc(super: QSizeGripsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QSizeGrip(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setVisible(self: QSizeGrip, visible: bool): void =


  fQSizeGrip_virtualbase_setVisible(self.h, visible)

type QSizeGripsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QSizeGrip, slot: proc(super: QSizeGripsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_setVisible(self: ptr cQSizeGrip, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QSizeGrip_setVisible ".} =
  type Cb = proc(super: QSizeGripsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QSizeGrip(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QSizeGrip, param1: gen_qevent.QPaintEvent): void =


  fQSizeGrip_virtualbase_paintEvent(self.h, param1.h)

type QSizeGrippaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QSizeGrip, slot: proc(super: QSizeGrippaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGrippaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_paintEvent(self: ptr cQSizeGrip, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_paintEvent ".} =
  type Cb = proc(super: QSizeGrippaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QSizeGrip(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QSizeGrip, param1: gen_qevent.QMouseEvent): void =


  fQSizeGrip_virtualbase_mousePressEvent(self.h, param1.h)

type QSizeGripmousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QSizeGrip, slot: proc(super: QSizeGripmousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_mousePressEvent(self: ptr cQSizeGrip, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_mousePressEvent ".} =
  type Cb = proc(super: QSizeGripmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QSizeGrip(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QSizeGrip, param1: gen_qevent.QMouseEvent): void =


  fQSizeGrip_virtualbase_mouseMoveEvent(self.h, param1.h)

type QSizeGripmouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QSizeGrip, slot: proc(super: QSizeGripmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_mouseMoveEvent(self: ptr cQSizeGrip, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_mouseMoveEvent ".} =
  type Cb = proc(super: QSizeGripmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QSizeGrip(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QSizeGrip, mouseEvent: gen_qevent.QMouseEvent): void =


  fQSizeGrip_virtualbase_mouseReleaseEvent(self.h, mouseEvent.h)

type QSizeGripmouseReleaseEventBase* = proc(mouseEvent: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QSizeGrip, slot: proc(super: QSizeGripmouseReleaseEventBase, mouseEvent: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripmouseReleaseEventBase, mouseEvent: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_mouseReleaseEvent(self: ptr cQSizeGrip, slot: int, mouseEvent: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_mouseReleaseEvent ".} =
  type Cb = proc(super: QSizeGripmouseReleaseEventBase, mouseEvent: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mouseEvent: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QSizeGrip(h: self), mouseEvent)
  let slotval1 = gen_qevent.QMouseEvent(h: mouseEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QSizeGrip, moveEvent: gen_qevent.QMoveEvent): void =


  fQSizeGrip_virtualbase_moveEvent(self.h, moveEvent.h)

type QSizeGripmoveEventBase* = proc(moveEvent: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QSizeGrip, slot: proc(super: QSizeGripmoveEventBase, moveEvent: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripmoveEventBase, moveEvent: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_moveEvent(self: ptr cQSizeGrip, slot: int, moveEvent: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_moveEvent ".} =
  type Cb = proc(super: QSizeGripmoveEventBase, moveEvent: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(moveEvent: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QSizeGrip(h: self), moveEvent)
  let slotval1 = gen_qevent.QMoveEvent(h: moveEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QSizeGrip, showEvent: gen_qevent.QShowEvent): void =


  fQSizeGrip_virtualbase_showEvent(self.h, showEvent.h)

type QSizeGripshowEventBase* = proc(showEvent: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QSizeGrip, slot: proc(super: QSizeGripshowEventBase, showEvent: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripshowEventBase, showEvent: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_showEvent(self: ptr cQSizeGrip, slot: int, showEvent: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_showEvent ".} =
  type Cb = proc(super: QSizeGripshowEventBase, showEvent: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(showEvent: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QSizeGrip(h: self), showEvent)
  let slotval1 = gen_qevent.QShowEvent(h: showEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QSizeGrip, hideEvent: gen_qevent.QHideEvent): void =


  fQSizeGrip_virtualbase_hideEvent(self.h, hideEvent.h)

type QSizeGriphideEventBase* = proc(hideEvent: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QSizeGrip, slot: proc(super: QSizeGriphideEventBase, hideEvent: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGriphideEventBase, hideEvent: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_hideEvent(self: ptr cQSizeGrip, slot: int, hideEvent: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_hideEvent ".} =
  type Cb = proc(super: QSizeGriphideEventBase, hideEvent: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(hideEvent: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QSizeGrip(h: self), hideEvent)
  let slotval1 = gen_qevent.QHideEvent(h: hideEvent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QSizeGrip, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQSizeGrip_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QSizeGripeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSizeGrip, slot: proc(super: QSizeGripeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_eventFilter(self: ptr cQSizeGrip, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QSizeGrip_eventFilter ".} =
  type Cb = proc(super: QSizeGripeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSizeGrip(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QSizeGrip, param1: gen_qcoreevent.QEvent): bool =


  fQSizeGrip_virtualbase_event(self.h, param1.h)

type QSizeGripeventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSizeGrip, slot: proc(super: QSizeGripeventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripeventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_event(self: ptr cQSizeGrip, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QSizeGrip_event ".} =
  type Cb = proc(super: QSizeGripeventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSizeGrip(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_devType(self: QSizeGrip, ): cint =


  fQSizeGrip_virtualbase_devType(self.h)

type QSizeGripdevTypeBase* = proc(): cint
proc ondevType*(self: QSizeGrip, slot: proc(super: QSizeGripdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_devType(self: ptr cQSizeGrip, slot: int): cint {.exportc: "miqt_exec_callback_QSizeGrip_devType ".} =
  type Cb = proc(super: QSizeGripdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QSizeGrip(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_minimumSizeHint(self: QSizeGrip, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSizeGrip_virtualbase_minimumSizeHint(self.h))

type QSizeGripminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QSizeGrip, slot: proc(super: QSizeGripminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_minimumSizeHint(self: ptr cQSizeGrip, slot: int): pointer {.exportc: "miqt_exec_callback_QSizeGrip_minimumSizeHint ".} =
  type Cb = proc(super: QSizeGripminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QSizeGrip(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QSizeGrip, param1: cint): cint =


  fQSizeGrip_virtualbase_heightForWidth(self.h, param1)

type QSizeGripheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QSizeGrip, slot: proc(super: QSizeGripheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_heightForWidth(self: ptr cQSizeGrip, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSizeGrip_heightForWidth ".} =
  type Cb = proc(super: QSizeGripheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QSizeGrip(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QSizeGrip, ): bool =


  fQSizeGrip_virtualbase_hasHeightForWidth(self.h)

type QSizeGriphasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QSizeGrip, slot: proc(super: QSizeGriphasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSizeGriphasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_hasHeightForWidth(self: ptr cQSizeGrip, slot: int): bool {.exportc: "miqt_exec_callback_QSizeGrip_hasHeightForWidth ".} =
  type Cb = proc(super: QSizeGriphasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QSizeGrip(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QSizeGrip, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQSizeGrip_virtualbase_paintEngine(self.h))

type QSizeGrippaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QSizeGrip, slot: proc(super: QSizeGrippaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QSizeGrippaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_paintEngine(self: ptr cQSizeGrip, slot: int): pointer {.exportc: "miqt_exec_callback_QSizeGrip_paintEngine ".} =
  type Cb = proc(super: QSizeGrippaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QSizeGrip(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QSizeGrip, event: gen_qevent.QMouseEvent): void =


  fQSizeGrip_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QSizeGripmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QSizeGrip, slot: proc(super: QSizeGripmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_mouseDoubleClickEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QSizeGripmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QSizeGrip, event: gen_qevent.QWheelEvent): void =


  fQSizeGrip_virtualbase_wheelEvent(self.h, event.h)

type QSizeGripwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QSizeGrip, slot: proc(super: QSizeGripwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_wheelEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_wheelEvent ".} =
  type Cb = proc(super: QSizeGripwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QSizeGrip, event: gen_qevent.QKeyEvent): void =


  fQSizeGrip_virtualbase_keyPressEvent(self.h, event.h)

type QSizeGripkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QSizeGrip, slot: proc(super: QSizeGripkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_keyPressEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_keyPressEvent ".} =
  type Cb = proc(super: QSizeGripkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QSizeGrip, event: gen_qevent.QKeyEvent): void =


  fQSizeGrip_virtualbase_keyReleaseEvent(self.h, event.h)

type QSizeGripkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QSizeGrip, slot: proc(super: QSizeGripkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_keyReleaseEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_keyReleaseEvent ".} =
  type Cb = proc(super: QSizeGripkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QSizeGrip, event: gen_qevent.QFocusEvent): void =


  fQSizeGrip_virtualbase_focusInEvent(self.h, event.h)

type QSizeGripfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QSizeGrip, slot: proc(super: QSizeGripfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_focusInEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_focusInEvent ".} =
  type Cb = proc(super: QSizeGripfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QSizeGrip, event: gen_qevent.QFocusEvent): void =


  fQSizeGrip_virtualbase_focusOutEvent(self.h, event.h)

type QSizeGripfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QSizeGrip, slot: proc(super: QSizeGripfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_focusOutEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_focusOutEvent ".} =
  type Cb = proc(super: QSizeGripfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QSizeGrip, event: gen_qevent.QEnterEvent): void =


  fQSizeGrip_virtualbase_enterEvent(self.h, event.h)

type QSizeGripenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QSizeGrip, slot: proc(super: QSizeGripenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_enterEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_enterEvent ".} =
  type Cb = proc(super: QSizeGripenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QSizeGrip, event: gen_qcoreevent.QEvent): void =


  fQSizeGrip_virtualbase_leaveEvent(self.h, event.h)

type QSizeGripleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QSizeGrip, slot: proc(super: QSizeGripleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_leaveEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_leaveEvent ".} =
  type Cb = proc(super: QSizeGripleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QSizeGrip, event: gen_qevent.QResizeEvent): void =


  fQSizeGrip_virtualbase_resizeEvent(self.h, event.h)

type QSizeGripresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QSizeGrip, slot: proc(super: QSizeGripresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_resizeEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_resizeEvent ".} =
  type Cb = proc(super: QSizeGripresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QSizeGrip, event: gen_qevent.QCloseEvent): void =


  fQSizeGrip_virtualbase_closeEvent(self.h, event.h)

type QSizeGripcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QSizeGrip, slot: proc(super: QSizeGripcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_closeEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_closeEvent ".} =
  type Cb = proc(super: QSizeGripcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QSizeGrip, event: gen_qevent.QContextMenuEvent): void =


  fQSizeGrip_virtualbase_contextMenuEvent(self.h, event.h)

type QSizeGripcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QSizeGrip, slot: proc(super: QSizeGripcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_contextMenuEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_contextMenuEvent ".} =
  type Cb = proc(super: QSizeGripcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QSizeGrip, event: gen_qevent.QTabletEvent): void =


  fQSizeGrip_virtualbase_tabletEvent(self.h, event.h)

type QSizeGriptabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QSizeGrip, slot: proc(super: QSizeGriptabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGriptabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_tabletEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_tabletEvent ".} =
  type Cb = proc(super: QSizeGriptabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QSizeGrip, event: gen_qevent.QActionEvent): void =


  fQSizeGrip_virtualbase_actionEvent(self.h, event.h)

type QSizeGripactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QSizeGrip, slot: proc(super: QSizeGripactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_actionEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_actionEvent ".} =
  type Cb = proc(super: QSizeGripactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QSizeGrip, event: gen_qevent.QDragEnterEvent): void =


  fQSizeGrip_virtualbase_dragEnterEvent(self.h, event.h)

type QSizeGripdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QSizeGrip, slot: proc(super: QSizeGripdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_dragEnterEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_dragEnterEvent ".} =
  type Cb = proc(super: QSizeGripdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QSizeGrip, event: gen_qevent.QDragMoveEvent): void =


  fQSizeGrip_virtualbase_dragMoveEvent(self.h, event.h)

type QSizeGripdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QSizeGrip, slot: proc(super: QSizeGripdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_dragMoveEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_dragMoveEvent ".} =
  type Cb = proc(super: QSizeGripdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QSizeGrip, event: gen_qevent.QDragLeaveEvent): void =


  fQSizeGrip_virtualbase_dragLeaveEvent(self.h, event.h)

type QSizeGripdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QSizeGrip, slot: proc(super: QSizeGripdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_dragLeaveEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_dragLeaveEvent ".} =
  type Cb = proc(super: QSizeGripdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QSizeGrip, event: gen_qevent.QDropEvent): void =


  fQSizeGrip_virtualbase_dropEvent(self.h, event.h)

type QSizeGripdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QSizeGrip, slot: proc(super: QSizeGripdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_dropEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_dropEvent ".} =
  type Cb = proc(super: QSizeGripdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QSizeGrip, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQSizeGrip_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QSizeGripnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QSizeGrip, slot: proc(super: QSizeGripnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_nativeEvent(self: ptr cQSizeGrip, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QSizeGrip_nativeEvent ".} =
  type Cb = proc(super: QSizeGripnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QSizeGrip(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QSizeGrip, param1: gen_qcoreevent.QEvent): void =


  fQSizeGrip_virtualbase_changeEvent(self.h, param1.h)

type QSizeGripchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QSizeGrip, slot: proc(super: QSizeGripchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_changeEvent(self: ptr cQSizeGrip, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_changeEvent ".} =
  type Cb = proc(super: QSizeGripchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QSizeGrip(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QSizeGrip, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQSizeGrip_virtualbase_metric(self.h, cint(param1))

type QSizeGripmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QSizeGrip, slot: proc(super: QSizeGripmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_metric(self: ptr cQSizeGrip, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSizeGrip_metric ".} =
  type Cb = proc(super: QSizeGripmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QSizeGrip(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QSizeGrip, painter: gen_qpainter.QPainter): void =


  fQSizeGrip_virtualbase_initPainter(self.h, painter.h)

type QSizeGripinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QSizeGrip, slot: proc(super: QSizeGripinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_initPainter(self: ptr cQSizeGrip, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_initPainter ".} =
  type Cb = proc(super: QSizeGripinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QSizeGrip(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QSizeGrip, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQSizeGrip_virtualbase_redirected(self.h, offset.h))

type QSizeGripredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QSizeGrip, slot: proc(super: QSizeGripredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_redirected(self: ptr cQSizeGrip, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSizeGrip_redirected ".} =
  type Cb = proc(super: QSizeGripredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QSizeGrip(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QSizeGrip, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQSizeGrip_virtualbase_sharedPainter(self.h))

type QSizeGripsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QSizeGrip, slot: proc(super: QSizeGripsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_sharedPainter(self: ptr cQSizeGrip, slot: int): pointer {.exportc: "miqt_exec_callback_QSizeGrip_sharedPainter ".} =
  type Cb = proc(super: QSizeGripsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QSizeGrip(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QSizeGrip, param1: gen_qevent.QInputMethodEvent): void =


  fQSizeGrip_virtualbase_inputMethodEvent(self.h, param1.h)

type QSizeGripinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QSizeGrip, slot: proc(super: QSizeGripinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_inputMethodEvent(self: ptr cQSizeGrip, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_inputMethodEvent ".} =
  type Cb = proc(super: QSizeGripinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QSizeGrip(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QSizeGrip, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQSizeGrip_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QSizeGripinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QSizeGrip, slot: proc(super: QSizeGripinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_inputMethodQuery(self: ptr cQSizeGrip, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QSizeGrip_inputMethodQuery ".} =
  type Cb = proc(super: QSizeGripinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QSizeGrip(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QSizeGrip, next: bool): bool =


  fQSizeGrip_virtualbase_focusNextPrevChild(self.h, next)

type QSizeGripfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QSizeGrip, slot: proc(super: QSizeGripfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_focusNextPrevChild(self: ptr cQSizeGrip, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QSizeGrip_focusNextPrevChild ".} =
  type Cb = proc(super: QSizeGripfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QSizeGrip(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSizeGrip, event: gen_qcoreevent.QTimerEvent): void =


  fQSizeGrip_virtualbase_timerEvent(self.h, event.h)

type QSizeGriptimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSizeGrip, slot: proc(super: QSizeGriptimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGriptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_timerEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_timerEvent ".} =
  type Cb = proc(super: QSizeGriptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSizeGrip, event: gen_qcoreevent.QChildEvent): void =


  fQSizeGrip_virtualbase_childEvent(self.h, event.h)

type QSizeGripchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSizeGrip, slot: proc(super: QSizeGripchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_childEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_childEvent ".} =
  type Cb = proc(super: QSizeGripchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSizeGrip, event: gen_qcoreevent.QEvent): void =


  fQSizeGrip_virtualbase_customEvent(self.h, event.h)

type QSizeGripcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSizeGrip, slot: proc(super: QSizeGripcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_customEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_customEvent ".} =
  type Cb = proc(super: QSizeGripcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSizeGrip(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSizeGrip, signal: gen_qmetaobject.QMetaMethod): void =


  fQSizeGrip_virtualbase_connectNotify(self.h, signal.h)

type QSizeGripconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSizeGrip, slot: proc(super: QSizeGripconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_connectNotify(self: ptr cQSizeGrip, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_connectNotify ".} =
  type Cb = proc(super: QSizeGripconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSizeGrip(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSizeGrip, signal: gen_qmetaobject.QMetaMethod): void =


  fQSizeGrip_virtualbase_disconnectNotify(self.h, signal.h)

type QSizeGripdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSizeGrip, slot: proc(super: QSizeGripdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSizeGripdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_disconnectNotify(self: ptr cQSizeGrip, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_disconnectNotify ".} =
  type Cb = proc(super: QSizeGripdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSizeGrip(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QSizeGrip) =
  fcQSizeGrip_delete(self.h)
