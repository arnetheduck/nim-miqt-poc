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
{.compile("gen_qfocusframe.cpp", cflags).}


import gen_qfocusframe_types
export gen_qfocusframe_types

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
  gen_qstyleoption,
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
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget

type cQFocusFrame*{.exportc: "QFocusFrame", incompleteStruct.} = object

proc fcQFocusFrame_new(parent: pointer): ptr cQFocusFrame {.importc: "QFocusFrame_new".}
proc fcQFocusFrame_new2(): ptr cQFocusFrame {.importc: "QFocusFrame_new2".}
proc fcQFocusFrame_metaObject(self: pointer, ): pointer {.importc: "QFocusFrame_metaObject".}
proc fcQFocusFrame_metacast(self: pointer, param1: cstring): pointer {.importc: "QFocusFrame_metacast".}
proc fcQFocusFrame_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFocusFrame_metacall".}
proc fcQFocusFrame_tr(s: cstring): struct_miqt_string {.importc: "QFocusFrame_tr".}
proc fcQFocusFrame_setWidget(self: pointer, widget: pointer): void {.importc: "QFocusFrame_setWidget".}
proc fcQFocusFrame_widget(self: pointer, ): pointer {.importc: "QFocusFrame_widget".}
proc fcQFocusFrame_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFocusFrame_tr2".}
proc fcQFocusFrame_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFocusFrame_tr3".}
proc fQFocusFrame_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFocusFrame_virtualbase_metacall".}
proc fcQFocusFrame_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_metacall".}
proc fQFocusFrame_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QFocusFrame_virtualbase_event".}
proc fcQFocusFrame_override_virtual_event(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_event".}
proc fQFocusFrame_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QFocusFrame_virtualbase_eventFilter".}
proc fcQFocusFrame_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_eventFilter".}
proc fQFocusFrame_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QFocusFrame_virtualbase_paintEvent".}
proc fcQFocusFrame_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_paintEvent".}
proc fQFocusFrame_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QFocusFrame_virtualbase_initStyleOption".}
proc fcQFocusFrame_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_initStyleOption".}
proc fQFocusFrame_virtualbase_devType(self: pointer, ): cint{.importc: "QFocusFrame_virtualbase_devType".}
proc fcQFocusFrame_override_virtual_devType(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_devType".}
proc fQFocusFrame_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QFocusFrame_virtualbase_setVisible".}
proc fcQFocusFrame_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_setVisible".}
proc fQFocusFrame_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QFocusFrame_virtualbase_sizeHint".}
proc fcQFocusFrame_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_sizeHint".}
proc fQFocusFrame_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QFocusFrame_virtualbase_minimumSizeHint".}
proc fcQFocusFrame_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_minimumSizeHint".}
proc fQFocusFrame_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QFocusFrame_virtualbase_heightForWidth".}
proc fcQFocusFrame_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_heightForWidth".}
proc fQFocusFrame_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QFocusFrame_virtualbase_hasHeightForWidth".}
proc fcQFocusFrame_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_hasHeightForWidth".}
proc fQFocusFrame_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QFocusFrame_virtualbase_paintEngine".}
proc fcQFocusFrame_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_paintEngine".}
proc fQFocusFrame_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_mousePressEvent".}
proc fcQFocusFrame_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_mousePressEvent".}
proc fQFocusFrame_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_mouseReleaseEvent".}
proc fcQFocusFrame_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_mouseReleaseEvent".}
proc fQFocusFrame_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_mouseDoubleClickEvent".}
proc fcQFocusFrame_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_mouseDoubleClickEvent".}
proc fQFocusFrame_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_mouseMoveEvent".}
proc fcQFocusFrame_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_mouseMoveEvent".}
proc fQFocusFrame_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_wheelEvent".}
proc fcQFocusFrame_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_wheelEvent".}
proc fQFocusFrame_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_keyPressEvent".}
proc fcQFocusFrame_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_keyPressEvent".}
proc fQFocusFrame_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_keyReleaseEvent".}
proc fcQFocusFrame_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_keyReleaseEvent".}
proc fQFocusFrame_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_focusInEvent".}
proc fcQFocusFrame_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_focusInEvent".}
proc fQFocusFrame_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_focusOutEvent".}
proc fcQFocusFrame_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_focusOutEvent".}
proc fQFocusFrame_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_enterEvent".}
proc fcQFocusFrame_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_enterEvent".}
proc fQFocusFrame_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_leaveEvent".}
proc fcQFocusFrame_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_leaveEvent".}
proc fQFocusFrame_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_moveEvent".}
proc fcQFocusFrame_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_moveEvent".}
proc fQFocusFrame_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_resizeEvent".}
proc fcQFocusFrame_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_resizeEvent".}
proc fQFocusFrame_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_closeEvent".}
proc fcQFocusFrame_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_closeEvent".}
proc fQFocusFrame_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_contextMenuEvent".}
proc fcQFocusFrame_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_contextMenuEvent".}
proc fQFocusFrame_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_tabletEvent".}
proc fcQFocusFrame_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_tabletEvent".}
proc fQFocusFrame_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_actionEvent".}
proc fcQFocusFrame_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_actionEvent".}
proc fQFocusFrame_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_dragEnterEvent".}
proc fcQFocusFrame_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_dragEnterEvent".}
proc fQFocusFrame_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_dragMoveEvent".}
proc fcQFocusFrame_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_dragMoveEvent".}
proc fQFocusFrame_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_dragLeaveEvent".}
proc fcQFocusFrame_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_dragLeaveEvent".}
proc fQFocusFrame_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_dropEvent".}
proc fcQFocusFrame_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_dropEvent".}
proc fQFocusFrame_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_showEvent".}
proc fcQFocusFrame_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_showEvent".}
proc fQFocusFrame_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_hideEvent".}
proc fcQFocusFrame_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_hideEvent".}
proc fQFocusFrame_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QFocusFrame_virtualbase_nativeEvent".}
proc fcQFocusFrame_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_nativeEvent".}
proc fQFocusFrame_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QFocusFrame_virtualbase_changeEvent".}
proc fcQFocusFrame_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_changeEvent".}
proc fQFocusFrame_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QFocusFrame_virtualbase_metric".}
proc fcQFocusFrame_override_virtual_metric(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_metric".}
proc fQFocusFrame_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QFocusFrame_virtualbase_initPainter".}
proc fcQFocusFrame_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_initPainter".}
proc fQFocusFrame_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QFocusFrame_virtualbase_redirected".}
proc fcQFocusFrame_override_virtual_redirected(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_redirected".}
proc fQFocusFrame_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QFocusFrame_virtualbase_sharedPainter".}
proc fcQFocusFrame_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_sharedPainter".}
proc fQFocusFrame_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QFocusFrame_virtualbase_inputMethodEvent".}
proc fcQFocusFrame_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_inputMethodEvent".}
proc fQFocusFrame_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QFocusFrame_virtualbase_inputMethodQuery".}
proc fcQFocusFrame_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_inputMethodQuery".}
proc fQFocusFrame_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QFocusFrame_virtualbase_focusNextPrevChild".}
proc fcQFocusFrame_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_focusNextPrevChild".}
proc fQFocusFrame_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_timerEvent".}
proc fcQFocusFrame_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_timerEvent".}
proc fQFocusFrame_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_childEvent".}
proc fcQFocusFrame_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_childEvent".}
proc fQFocusFrame_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_customEvent".}
proc fcQFocusFrame_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_customEvent".}
proc fQFocusFrame_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFocusFrame_virtualbase_connectNotify".}
proc fcQFocusFrame_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_connectNotify".}
proc fQFocusFrame_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFocusFrame_virtualbase_disconnectNotify".}
proc fcQFocusFrame_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_disconnectNotify".}
proc fcQFocusFrame_delete(self: pointer) {.importc: "QFocusFrame_delete".}


func init*(T: type QFocusFrame, h: ptr cQFocusFrame): QFocusFrame =
  T(h: h)
proc create*(T: type QFocusFrame, parent: gen_qwidget.QWidget): QFocusFrame =

  QFocusFrame.init(fcQFocusFrame_new(parent.h))
proc create*(T: type QFocusFrame, ): QFocusFrame =

  QFocusFrame.init(fcQFocusFrame_new2())
proc metaObject*(self: QFocusFrame, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQFocusFrame_metaObject(self.h))

proc metacast*(self: QFocusFrame, param1: cstring): pointer =

  fcQFocusFrame_metacast(self.h, param1)

proc metacall*(self: QFocusFrame, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQFocusFrame_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QFocusFrame, s: cstring): string =

  let v_ms = fcQFocusFrame_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWidget*(self: QFocusFrame, widget: gen_qwidget.QWidget): void =

  fcQFocusFrame_setWidget(self.h, widget.h)

proc widget*(self: QFocusFrame, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQFocusFrame_widget(self.h))

proc tr2*(_: type QFocusFrame, s: cstring, c: cstring): string =

  let v_ms = fcQFocusFrame_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QFocusFrame, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFocusFrame_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QFocusFrame, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQFocusFrame_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFocusFramemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QFocusFrame, slot: proc(super: QFocusFramemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_metacall(self: ptr cQFocusFrame, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFocusFrame_metacall ".} =
  type Cb = proc(super: QFocusFramemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QFocusFrame(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QFocusFrame, e: gen_qcoreevent.QEvent): bool =


  fQFocusFrame_virtualbase_event(self.h, e.h)

type QFocusFrameeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QFocusFrame, slot: proc(super: QFocusFrameeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_event(self: ptr cQFocusFrame, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QFocusFrame_event ".} =
  type Cb = proc(super: QFocusFrameeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QFocusFrame(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QFocusFrame, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQFocusFrame_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QFocusFrameeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QFocusFrame, slot: proc(super: QFocusFrameeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_eventFilter(self: ptr cQFocusFrame, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QFocusFrame_eventFilter ".} =
  type Cb = proc(super: QFocusFrameeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QFocusFrame(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_paintEvent(self: QFocusFrame, param1: gen_qevent.QPaintEvent): void =


  fQFocusFrame_virtualbase_paintEvent(self.h, param1.h)

type QFocusFramepaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QFocusFrame, slot: proc(super: QFocusFramepaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramepaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_paintEvent(self: ptr cQFocusFrame, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_paintEvent ".} =
  type Cb = proc(super: QFocusFramepaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QFocusFrame(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QFocusFrame, option: gen_qstyleoption.QStyleOption): void =


  fQFocusFrame_virtualbase_initStyleOption(self.h, option.h)

type QFocusFrameinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOption): void
proc oninitStyleOption*(self: QFocusFrame, slot: proc(super: QFocusFrameinitStyleOptionBase, option: gen_qstyleoption.QStyleOption): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameinitStyleOptionBase, option: gen_qstyleoption.QStyleOption): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_initStyleOption(self: ptr cQFocusFrame, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_initStyleOption ".} =
  type Cb = proc(super: QFocusFrameinitStyleOptionBase, option: gen_qstyleoption.QStyleOption): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOption): auto =
    callVirtualBase_initStyleOption(QFocusFrame(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOption(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QFocusFrame, ): cint =


  fQFocusFrame_virtualbase_devType(self.h)

type QFocusFramedevTypeBase* = proc(): cint
proc ondevType*(self: QFocusFrame, slot: proc(super: QFocusFramedevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramedevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_devType(self: ptr cQFocusFrame, slot: int): cint {.exportc: "miqt_exec_callback_QFocusFrame_devType ".} =
  type Cb = proc(super: QFocusFramedevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QFocusFrame(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QFocusFrame, visible: bool): void =


  fQFocusFrame_virtualbase_setVisible(self.h, visible)

type QFocusFramesetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QFocusFrame, slot: proc(super: QFocusFramesetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramesetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_setVisible(self: ptr cQFocusFrame, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QFocusFrame_setVisible ".} =
  type Cb = proc(super: QFocusFramesetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QFocusFrame(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QFocusFrame, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQFocusFrame_virtualbase_sizeHint(self.h))

type QFocusFramesizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QFocusFrame, slot: proc(super: QFocusFramesizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramesizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_sizeHint(self: ptr cQFocusFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFocusFrame_sizeHint ".} =
  type Cb = proc(super: QFocusFramesizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QFocusFrame(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QFocusFrame, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQFocusFrame_virtualbase_minimumSizeHint(self.h))

type QFocusFrameminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QFocusFrame, slot: proc(super: QFocusFrameminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_minimumSizeHint(self: ptr cQFocusFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFocusFrame_minimumSizeHint ".} =
  type Cb = proc(super: QFocusFrameminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QFocusFrame(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QFocusFrame, param1: cint): cint =


  fQFocusFrame_virtualbase_heightForWidth(self.h, param1)

type QFocusFrameheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QFocusFrame, slot: proc(super: QFocusFrameheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_heightForWidth(self: ptr cQFocusFrame, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFocusFrame_heightForWidth ".} =
  type Cb = proc(super: QFocusFrameheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QFocusFrame(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QFocusFrame, ): bool =


  fQFocusFrame_virtualbase_hasHeightForWidth(self.h)

type QFocusFramehasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QFocusFrame, slot: proc(super: QFocusFramehasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramehasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_hasHeightForWidth(self: ptr cQFocusFrame, slot: int): bool {.exportc: "miqt_exec_callback_QFocusFrame_hasHeightForWidth ".} =
  type Cb = proc(super: QFocusFramehasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QFocusFrame(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QFocusFrame, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQFocusFrame_virtualbase_paintEngine(self.h))

type QFocusFramepaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QFocusFrame, slot: proc(super: QFocusFramepaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramepaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_paintEngine(self: ptr cQFocusFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFocusFrame_paintEngine ".} =
  type Cb = proc(super: QFocusFramepaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QFocusFrame(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QFocusFrame, event: gen_qevent.QMouseEvent): void =


  fQFocusFrame_virtualbase_mousePressEvent(self.h, event.h)

type QFocusFramemousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QFocusFrame, slot: proc(super: QFocusFramemousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramemousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_mousePressEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_mousePressEvent ".} =
  type Cb = proc(super: QFocusFramemousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QFocusFrame, event: gen_qevent.QMouseEvent): void =


  fQFocusFrame_virtualbase_mouseReleaseEvent(self.h, event.h)

type QFocusFramemouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QFocusFrame, slot: proc(super: QFocusFramemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_mouseReleaseEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_mouseReleaseEvent ".} =
  type Cb = proc(super: QFocusFramemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QFocusFrame, event: gen_qevent.QMouseEvent): void =


  fQFocusFrame_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QFocusFramemouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QFocusFrame, slot: proc(super: QFocusFramemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_mouseDoubleClickEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QFocusFramemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QFocusFrame, event: gen_qevent.QMouseEvent): void =


  fQFocusFrame_virtualbase_mouseMoveEvent(self.h, event.h)

type QFocusFramemouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QFocusFrame, slot: proc(super: QFocusFramemouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramemouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_mouseMoveEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_mouseMoveEvent ".} =
  type Cb = proc(super: QFocusFramemouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QFocusFrame, event: gen_qevent.QWheelEvent): void =


  fQFocusFrame_virtualbase_wheelEvent(self.h, event.h)

type QFocusFramewheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QFocusFrame, slot: proc(super: QFocusFramewheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramewheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_wheelEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_wheelEvent ".} =
  type Cb = proc(super: QFocusFramewheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QFocusFrame, event: gen_qevent.QKeyEvent): void =


  fQFocusFrame_virtualbase_keyPressEvent(self.h, event.h)

type QFocusFramekeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QFocusFrame, slot: proc(super: QFocusFramekeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramekeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_keyPressEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_keyPressEvent ".} =
  type Cb = proc(super: QFocusFramekeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QFocusFrame, event: gen_qevent.QKeyEvent): void =


  fQFocusFrame_virtualbase_keyReleaseEvent(self.h, event.h)

type QFocusFramekeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QFocusFrame, slot: proc(super: QFocusFramekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_keyReleaseEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_keyReleaseEvent ".} =
  type Cb = proc(super: QFocusFramekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QFocusFrame, event: gen_qevent.QFocusEvent): void =


  fQFocusFrame_virtualbase_focusInEvent(self.h, event.h)

type QFocusFramefocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QFocusFrame, slot: proc(super: QFocusFramefocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramefocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_focusInEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_focusInEvent ".} =
  type Cb = proc(super: QFocusFramefocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QFocusFrame, event: gen_qevent.QFocusEvent): void =


  fQFocusFrame_virtualbase_focusOutEvent(self.h, event.h)

type QFocusFramefocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QFocusFrame, slot: proc(super: QFocusFramefocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramefocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_focusOutEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_focusOutEvent ".} =
  type Cb = proc(super: QFocusFramefocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QFocusFrame, event: gen_qevent.QEnterEvent): void =


  fQFocusFrame_virtualbase_enterEvent(self.h, event.h)

type QFocusFrameenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QFocusFrame, slot: proc(super: QFocusFrameenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_enterEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_enterEvent ".} =
  type Cb = proc(super: QFocusFrameenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QFocusFrame, event: gen_qcoreevent.QEvent): void =


  fQFocusFrame_virtualbase_leaveEvent(self.h, event.h)

type QFocusFrameleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QFocusFrame, slot: proc(super: QFocusFrameleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_leaveEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_leaveEvent ".} =
  type Cb = proc(super: QFocusFrameleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QFocusFrame, event: gen_qevent.QMoveEvent): void =


  fQFocusFrame_virtualbase_moveEvent(self.h, event.h)

type QFocusFramemoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QFocusFrame, slot: proc(super: QFocusFramemoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramemoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_moveEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_moveEvent ".} =
  type Cb = proc(super: QFocusFramemoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QFocusFrame, event: gen_qevent.QResizeEvent): void =


  fQFocusFrame_virtualbase_resizeEvent(self.h, event.h)

type QFocusFrameresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QFocusFrame, slot: proc(super: QFocusFrameresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_resizeEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_resizeEvent ".} =
  type Cb = proc(super: QFocusFrameresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QFocusFrame, event: gen_qevent.QCloseEvent): void =


  fQFocusFrame_virtualbase_closeEvent(self.h, event.h)

type QFocusFramecloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QFocusFrame, slot: proc(super: QFocusFramecloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramecloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_closeEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_closeEvent ".} =
  type Cb = proc(super: QFocusFramecloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QFocusFrame, event: gen_qevent.QContextMenuEvent): void =


  fQFocusFrame_virtualbase_contextMenuEvent(self.h, event.h)

type QFocusFramecontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QFocusFrame, slot: proc(super: QFocusFramecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_contextMenuEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_contextMenuEvent ".} =
  type Cb = proc(super: QFocusFramecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QFocusFrame, event: gen_qevent.QTabletEvent): void =


  fQFocusFrame_virtualbase_tabletEvent(self.h, event.h)

type QFocusFrametabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QFocusFrame, slot: proc(super: QFocusFrametabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrametabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_tabletEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_tabletEvent ".} =
  type Cb = proc(super: QFocusFrametabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QFocusFrame, event: gen_qevent.QActionEvent): void =


  fQFocusFrame_virtualbase_actionEvent(self.h, event.h)

type QFocusFrameactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QFocusFrame, slot: proc(super: QFocusFrameactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_actionEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_actionEvent ".} =
  type Cb = proc(super: QFocusFrameactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QFocusFrame, event: gen_qevent.QDragEnterEvent): void =


  fQFocusFrame_virtualbase_dragEnterEvent(self.h, event.h)

type QFocusFramedragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QFocusFrame, slot: proc(super: QFocusFramedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_dragEnterEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_dragEnterEvent ".} =
  type Cb = proc(super: QFocusFramedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QFocusFrame, event: gen_qevent.QDragMoveEvent): void =


  fQFocusFrame_virtualbase_dragMoveEvent(self.h, event.h)

type QFocusFramedragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QFocusFrame, slot: proc(super: QFocusFramedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_dragMoveEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_dragMoveEvent ".} =
  type Cb = proc(super: QFocusFramedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QFocusFrame, event: gen_qevent.QDragLeaveEvent): void =


  fQFocusFrame_virtualbase_dragLeaveEvent(self.h, event.h)

type QFocusFramedragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QFocusFrame, slot: proc(super: QFocusFramedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_dragLeaveEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_dragLeaveEvent ".} =
  type Cb = proc(super: QFocusFramedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QFocusFrame, event: gen_qevent.QDropEvent): void =


  fQFocusFrame_virtualbase_dropEvent(self.h, event.h)

type QFocusFramedropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QFocusFrame, slot: proc(super: QFocusFramedropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramedropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_dropEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_dropEvent ".} =
  type Cb = proc(super: QFocusFramedropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QFocusFrame, event: gen_qevent.QShowEvent): void =


  fQFocusFrame_virtualbase_showEvent(self.h, event.h)

type QFocusFrameshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QFocusFrame, slot: proc(super: QFocusFrameshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_showEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_showEvent ".} =
  type Cb = proc(super: QFocusFrameshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QFocusFrame, event: gen_qevent.QHideEvent): void =


  fQFocusFrame_virtualbase_hideEvent(self.h, event.h)

type QFocusFramehideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QFocusFrame, slot: proc(super: QFocusFramehideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramehideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_hideEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_hideEvent ".} =
  type Cb = proc(super: QFocusFramehideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QFocusFrame, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQFocusFrame_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QFocusFramenativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QFocusFrame, slot: proc(super: QFocusFramenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_nativeEvent(self: ptr cQFocusFrame, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QFocusFrame_nativeEvent ".} =
  type Cb = proc(super: QFocusFramenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QFocusFrame(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QFocusFrame, param1: gen_qcoreevent.QEvent): void =


  fQFocusFrame_virtualbase_changeEvent(self.h, param1.h)

type QFocusFramechangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QFocusFrame, slot: proc(super: QFocusFramechangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramechangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_changeEvent(self: ptr cQFocusFrame, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_changeEvent ".} =
  type Cb = proc(super: QFocusFramechangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QFocusFrame(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QFocusFrame, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQFocusFrame_virtualbase_metric(self.h, cint(param1))

type QFocusFramemetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QFocusFrame, slot: proc(super: QFocusFramemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_metric(self: ptr cQFocusFrame, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFocusFrame_metric ".} =
  type Cb = proc(super: QFocusFramemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QFocusFrame(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QFocusFrame, painter: gen_qpainter.QPainter): void =


  fQFocusFrame_virtualbase_initPainter(self.h, painter.h)

type QFocusFrameinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QFocusFrame, slot: proc(super: QFocusFrameinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_initPainter(self: ptr cQFocusFrame, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_initPainter ".} =
  type Cb = proc(super: QFocusFrameinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QFocusFrame(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QFocusFrame, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQFocusFrame_virtualbase_redirected(self.h, offset.h))

type QFocusFrameredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QFocusFrame, slot: proc(super: QFocusFrameredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_redirected(self: ptr cQFocusFrame, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QFocusFrame_redirected ".} =
  type Cb = proc(super: QFocusFrameredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QFocusFrame(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QFocusFrame, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQFocusFrame_virtualbase_sharedPainter(self.h))

type QFocusFramesharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QFocusFrame, slot: proc(super: QFocusFramesharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramesharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_sharedPainter(self: ptr cQFocusFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFocusFrame_sharedPainter ".} =
  type Cb = proc(super: QFocusFramesharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QFocusFrame(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QFocusFrame, param1: gen_qevent.QInputMethodEvent): void =


  fQFocusFrame_virtualbase_inputMethodEvent(self.h, param1.h)

type QFocusFrameinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QFocusFrame, slot: proc(super: QFocusFrameinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_inputMethodEvent(self: ptr cQFocusFrame, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_inputMethodEvent ".} =
  type Cb = proc(super: QFocusFrameinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QFocusFrame(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QFocusFrame, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQFocusFrame_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QFocusFrameinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QFocusFrame, slot: proc(super: QFocusFrameinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_inputMethodQuery(self: ptr cQFocusFrame, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QFocusFrame_inputMethodQuery ".} =
  type Cb = proc(super: QFocusFrameinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QFocusFrame(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QFocusFrame, next: bool): bool =


  fQFocusFrame_virtualbase_focusNextPrevChild(self.h, next)

type QFocusFramefocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QFocusFrame, slot: proc(super: QFocusFramefocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramefocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_focusNextPrevChild(self: ptr cQFocusFrame, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QFocusFrame_focusNextPrevChild ".} =
  type Cb = proc(super: QFocusFramefocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QFocusFrame(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QFocusFrame, event: gen_qcoreevent.QTimerEvent): void =


  fQFocusFrame_virtualbase_timerEvent(self.h, event.h)

type QFocusFrametimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QFocusFrame, slot: proc(super: QFocusFrametimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrametimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_timerEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_timerEvent ".} =
  type Cb = proc(super: QFocusFrametimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QFocusFrame, event: gen_qcoreevent.QChildEvent): void =


  fQFocusFrame_virtualbase_childEvent(self.h, event.h)

type QFocusFramechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QFocusFrame, slot: proc(super: QFocusFramechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_childEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_childEvent ".} =
  type Cb = proc(super: QFocusFramechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QFocusFrame, event: gen_qcoreevent.QEvent): void =


  fQFocusFrame_virtualbase_customEvent(self.h, event.h)

type QFocusFramecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QFocusFrame, slot: proc(super: QFocusFramecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_customEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_customEvent ".} =
  type Cb = proc(super: QFocusFramecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QFocusFrame(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QFocusFrame, signal: gen_qmetaobject.QMetaMethod): void =


  fQFocusFrame_virtualbase_connectNotify(self.h, signal.h)

type QFocusFrameconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QFocusFrame, slot: proc(super: QFocusFrameconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFrameconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_connectNotify(self: ptr cQFocusFrame, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_connectNotify ".} =
  type Cb = proc(super: QFocusFrameconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QFocusFrame(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QFocusFrame, signal: gen_qmetaobject.QMetaMethod): void =


  fQFocusFrame_virtualbase_disconnectNotify(self.h, signal.h)

type QFocusFramedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QFocusFrame, slot: proc(super: QFocusFramedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusFramedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_disconnectNotify(self: ptr cQFocusFrame, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_disconnectNotify ".} =
  type Cb = proc(super: QFocusFramedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QFocusFrame(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QFocusFrame) =
  fcQFocusFrame_delete(self.h)
