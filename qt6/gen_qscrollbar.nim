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
{.compile("gen_qscrollbar.cpp", cflags).}


import gen_qscrollbar_types
export gen_qscrollbar_types

import
  gen_qabstractslider,
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
  gen_qabstractslider,
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

type cQScrollBar*{.exportc: "QScrollBar", incompleteStruct.} = object

proc fcQScrollBar_new(parent: pointer): ptr cQScrollBar {.importc: "QScrollBar_new".}
proc fcQScrollBar_new2(): ptr cQScrollBar {.importc: "QScrollBar_new2".}
proc fcQScrollBar_new3(param1: cint): ptr cQScrollBar {.importc: "QScrollBar_new3".}
proc fcQScrollBar_new4(param1: cint, parent: pointer): ptr cQScrollBar {.importc: "QScrollBar_new4".}
proc fcQScrollBar_metaObject(self: pointer, ): pointer {.importc: "QScrollBar_metaObject".}
proc fcQScrollBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QScrollBar_metacast".}
proc fcQScrollBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScrollBar_metacall".}
proc fcQScrollBar_tr(s: cstring): struct_miqt_string {.importc: "QScrollBar_tr".}
proc fcQScrollBar_sizeHint(self: pointer, ): pointer {.importc: "QScrollBar_sizeHint".}
proc fcQScrollBar_event(self: pointer, event: pointer): bool {.importc: "QScrollBar_event".}
proc fcQScrollBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QScrollBar_tr2".}
proc fcQScrollBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScrollBar_tr3".}
proc fQScrollBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QScrollBar_virtualbase_metacall".}
proc fcQScrollBar_override_virtual_metacall(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_metacall".}
proc fQScrollBar_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QScrollBar_virtualbase_sizeHint".}
proc fcQScrollBar_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_sizeHint".}
proc fQScrollBar_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QScrollBar_virtualbase_event".}
proc fcQScrollBar_override_virtual_event(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_event".}
proc fQScrollBar_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_wheelEvent".}
proc fcQScrollBar_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_wheelEvent".}
proc fQScrollBar_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_paintEvent".}
proc fcQScrollBar_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_paintEvent".}
proc fQScrollBar_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_mousePressEvent".}
proc fcQScrollBar_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_mousePressEvent".}
proc fQScrollBar_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_mouseReleaseEvent".}
proc fcQScrollBar_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_mouseReleaseEvent".}
proc fQScrollBar_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_mouseMoveEvent".}
proc fcQScrollBar_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_mouseMoveEvent".}
proc fQScrollBar_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_hideEvent".}
proc fcQScrollBar_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_hideEvent".}
proc fQScrollBar_virtualbase_sliderChange(self: pointer, change: cint): void{.importc: "QScrollBar_virtualbase_sliderChange".}
proc fcQScrollBar_override_virtual_sliderChange(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_sliderChange".}
proc fQScrollBar_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_contextMenuEvent".}
proc fcQScrollBar_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_contextMenuEvent".}
proc fQScrollBar_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QScrollBar_virtualbase_initStyleOption".}
proc fcQScrollBar_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_initStyleOption".}
proc fQScrollBar_virtualbase_keyPressEvent(self: pointer, ev: pointer): void{.importc: "QScrollBar_virtualbase_keyPressEvent".}
proc fcQScrollBar_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_keyPressEvent".}
proc fQScrollBar_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_timerEvent".}
proc fcQScrollBar_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_timerEvent".}
proc fQScrollBar_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QScrollBar_virtualbase_changeEvent".}
proc fcQScrollBar_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_changeEvent".}
proc fQScrollBar_virtualbase_devType(self: pointer, ): cint{.importc: "QScrollBar_virtualbase_devType".}
proc fcQScrollBar_override_virtual_devType(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_devType".}
proc fQScrollBar_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QScrollBar_virtualbase_setVisible".}
proc fcQScrollBar_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_setVisible".}
proc fQScrollBar_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QScrollBar_virtualbase_minimumSizeHint".}
proc fcQScrollBar_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_minimumSizeHint".}
proc fQScrollBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QScrollBar_virtualbase_heightForWidth".}
proc fcQScrollBar_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_heightForWidth".}
proc fQScrollBar_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QScrollBar_virtualbase_hasHeightForWidth".}
proc fcQScrollBar_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_hasHeightForWidth".}
proc fQScrollBar_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QScrollBar_virtualbase_paintEngine".}
proc fcQScrollBar_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_paintEngine".}
proc fQScrollBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_mouseDoubleClickEvent".}
proc fcQScrollBar_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_mouseDoubleClickEvent".}
proc fQScrollBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_keyReleaseEvent".}
proc fcQScrollBar_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_keyReleaseEvent".}
proc fQScrollBar_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_focusInEvent".}
proc fcQScrollBar_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_focusInEvent".}
proc fQScrollBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_focusOutEvent".}
proc fcQScrollBar_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_focusOutEvent".}
proc fQScrollBar_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_enterEvent".}
proc fcQScrollBar_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_enterEvent".}
proc fQScrollBar_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_leaveEvent".}
proc fcQScrollBar_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_leaveEvent".}
proc fQScrollBar_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_moveEvent".}
proc fcQScrollBar_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_moveEvent".}
proc fQScrollBar_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_resizeEvent".}
proc fcQScrollBar_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_resizeEvent".}
proc fQScrollBar_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_closeEvent".}
proc fcQScrollBar_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_closeEvent".}
proc fQScrollBar_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_tabletEvent".}
proc fcQScrollBar_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_tabletEvent".}
proc fQScrollBar_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_actionEvent".}
proc fcQScrollBar_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_actionEvent".}
proc fQScrollBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_dragEnterEvent".}
proc fcQScrollBar_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_dragEnterEvent".}
proc fQScrollBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_dragMoveEvent".}
proc fcQScrollBar_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_dragMoveEvent".}
proc fQScrollBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_dragLeaveEvent".}
proc fcQScrollBar_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_dragLeaveEvent".}
proc fQScrollBar_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_dropEvent".}
proc fcQScrollBar_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_dropEvent".}
proc fQScrollBar_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_showEvent".}
proc fcQScrollBar_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_showEvent".}
proc fQScrollBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QScrollBar_virtualbase_nativeEvent".}
proc fcQScrollBar_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_nativeEvent".}
proc fQScrollBar_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QScrollBar_virtualbase_metric".}
proc fcQScrollBar_override_virtual_metric(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_metric".}
proc fQScrollBar_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QScrollBar_virtualbase_initPainter".}
proc fcQScrollBar_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_initPainter".}
proc fQScrollBar_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QScrollBar_virtualbase_redirected".}
proc fcQScrollBar_override_virtual_redirected(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_redirected".}
proc fQScrollBar_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QScrollBar_virtualbase_sharedPainter".}
proc fcQScrollBar_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_sharedPainter".}
proc fQScrollBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_inputMethodEvent".}
proc fcQScrollBar_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_inputMethodEvent".}
proc fQScrollBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QScrollBar_virtualbase_inputMethodQuery".}
proc fcQScrollBar_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_inputMethodQuery".}
proc fQScrollBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QScrollBar_virtualbase_focusNextPrevChild".}
proc fcQScrollBar_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_focusNextPrevChild".}
proc fQScrollBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QScrollBar_virtualbase_eventFilter".}
proc fcQScrollBar_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_eventFilter".}
proc fQScrollBar_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_childEvent".}
proc fcQScrollBar_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_childEvent".}
proc fQScrollBar_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_customEvent".}
proc fcQScrollBar_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_customEvent".}
proc fQScrollBar_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QScrollBar_virtualbase_connectNotify".}
proc fcQScrollBar_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_connectNotify".}
proc fQScrollBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QScrollBar_virtualbase_disconnectNotify".}
proc fcQScrollBar_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_disconnectNotify".}
proc fcQScrollBar_staticMetaObject(): pointer {.importc: "QScrollBar_staticMetaObject".}
proc fcQScrollBar_delete(self: pointer) {.importc: "QScrollBar_delete".}


func init*(T: type QScrollBar, h: ptr cQScrollBar): QScrollBar =
  T(h: h)
proc create*(T: type QScrollBar, parent: gen_qwidget.QWidget): QScrollBar =

  QScrollBar.init(fcQScrollBar_new(parent.h))
proc create*(T: type QScrollBar, ): QScrollBar =

  QScrollBar.init(fcQScrollBar_new2())
proc create*(T: type QScrollBar, param1: gen_qnamespace.Orientation): QScrollBar =

  QScrollBar.init(fcQScrollBar_new3(cint(param1)))
proc create*(T: type QScrollBar, param1: gen_qnamespace.Orientation, parent: gen_qwidget.QWidget): QScrollBar =

  QScrollBar.init(fcQScrollBar_new4(cint(param1), parent.h))
proc metaObject*(self: QScrollBar, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQScrollBar_metaObject(self.h))

proc metacast*(self: QScrollBar, param1: cstring): pointer =

  fcQScrollBar_metacast(self.h, param1)

proc metacall*(self: QScrollBar, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQScrollBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QScrollBar, s: cstring): string =

  let v_ms = fcQScrollBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: QScrollBar, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQScrollBar_sizeHint(self.h))

proc event*(self: QScrollBar, event: gen_qcoreevent.QEvent): bool =

  fcQScrollBar_event(self.h, event.h)

proc tr2*(_: type QScrollBar, s: cstring, c: cstring): string =

  let v_ms = fcQScrollBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QScrollBar, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQScrollBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QScrollBar, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQScrollBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QScrollBarmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QScrollBar, slot: proc(super: QScrollBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_metacall(self: ptr cQScrollBar, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QScrollBar_metacall ".} =
  type Cb = proc(super: QScrollBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QScrollBar(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QScrollBar, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQScrollBar_virtualbase_sizeHint(self.h))

type QScrollBarsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QScrollBar, slot: proc(super: QScrollBarsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_sizeHint(self: ptr cQScrollBar, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollBar_sizeHint ".} =
  type Cb = proc(super: QScrollBarsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QScrollBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QScrollBar, event: gen_qcoreevent.QEvent): bool =


  fQScrollBar_virtualbase_event(self.h, event.h)

type QScrollBareventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QScrollBar, slot: proc(super: QScrollBareventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QScrollBareventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_event(self: ptr cQScrollBar, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QScrollBar_event ".} =
  type Cb = proc(super: QScrollBareventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QScrollBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_wheelEvent(self: QScrollBar, param1: gen_qevent.QWheelEvent): void =


  fQScrollBar_virtualbase_wheelEvent(self.h, param1.h)

type QScrollBarwheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QScrollBar, slot: proc(super: QScrollBarwheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_wheelEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_wheelEvent ".} =
  type Cb = proc(super: QScrollBarwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QScrollBar(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QScrollBar, param1: gen_qevent.QPaintEvent): void =


  fQScrollBar_virtualbase_paintEvent(self.h, param1.h)

type QScrollBarpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QScrollBar, slot: proc(super: QScrollBarpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_paintEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_paintEvent ".} =
  type Cb = proc(super: QScrollBarpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QScrollBar(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QScrollBar, param1: gen_qevent.QMouseEvent): void =


  fQScrollBar_virtualbase_mousePressEvent(self.h, param1.h)

type QScrollBarmousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QScrollBar, slot: proc(super: QScrollBarmousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_mousePressEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_mousePressEvent ".} =
  type Cb = proc(super: QScrollBarmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QScrollBar(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QScrollBar, param1: gen_qevent.QMouseEvent): void =


  fQScrollBar_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QScrollBarmouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QScrollBar, slot: proc(super: QScrollBarmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_mouseReleaseEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_mouseReleaseEvent ".} =
  type Cb = proc(super: QScrollBarmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QScrollBar(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QScrollBar, param1: gen_qevent.QMouseEvent): void =


  fQScrollBar_virtualbase_mouseMoveEvent(self.h, param1.h)

type QScrollBarmouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QScrollBar, slot: proc(super: QScrollBarmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_mouseMoveEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_mouseMoveEvent ".} =
  type Cb = proc(super: QScrollBarmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QScrollBar(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QScrollBar, param1: gen_qevent.QHideEvent): void =


  fQScrollBar_virtualbase_hideEvent(self.h, param1.h)

type QScrollBarhideEventBase* = proc(param1: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QScrollBar, slot: proc(super: QScrollBarhideEventBase, param1: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarhideEventBase, param1: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_hideEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_hideEvent ".} =
  type Cb = proc(super: QScrollBarhideEventBase, param1: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QScrollBar(h: self), param1)
  let slotval1 = gen_qevent.QHideEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sliderChange(self: QScrollBar, change: gen_qabstractslider.QAbstractSliderSliderChange): void =


  fQScrollBar_virtualbase_sliderChange(self.h, cint(change))

type QScrollBarsliderChangeBase* = proc(change: gen_qabstractslider.QAbstractSliderSliderChange): void
proc onsliderChange*(self: QScrollBar, slot: proc(super: QScrollBarsliderChangeBase, change: gen_qabstractslider.QAbstractSliderSliderChange): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarsliderChangeBase, change: gen_qabstractslider.QAbstractSliderSliderChange): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_sliderChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_sliderChange(self: ptr cQScrollBar, slot: int, change: cint): void {.exportc: "miqt_exec_callback_QScrollBar_sliderChange ".} =
  type Cb = proc(super: QScrollBarsliderChangeBase, change: gen_qabstractslider.QAbstractSliderSliderChange): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: gen_qabstractslider.QAbstractSliderSliderChange): auto =
    callVirtualBase_sliderChange(QScrollBar(h: self), change)
  let slotval1 = gen_qabstractslider.QAbstractSliderSliderChange(change)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QScrollBar, param1: gen_qevent.QContextMenuEvent): void =


  fQScrollBar_virtualbase_contextMenuEvent(self.h, param1.h)

type QScrollBarcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QScrollBar, slot: proc(super: QScrollBarcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_contextMenuEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_contextMenuEvent ".} =
  type Cb = proc(super: QScrollBarcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QScrollBar(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QScrollBar, option: gen_qstyleoption.QStyleOptionSlider): void =


  fQScrollBar_virtualbase_initStyleOption(self.h, option.h)

type QScrollBarinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionSlider): void
proc oninitStyleOption*(self: QScrollBar, slot: proc(super: QScrollBarinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSlider): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSlider): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_initStyleOption(self: ptr cQScrollBar, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_initStyleOption ".} =
  type Cb = proc(super: QScrollBarinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSlider): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionSlider): auto =
    callVirtualBase_initStyleOption(QScrollBar(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionSlider(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QScrollBar, ev: gen_qevent.QKeyEvent): void =


  fQScrollBar_virtualbase_keyPressEvent(self.h, ev.h)

type QScrollBarkeyPressEventBase* = proc(ev: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QScrollBar, slot: proc(super: QScrollBarkeyPressEventBase, ev: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarkeyPressEventBase, ev: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_keyPressEvent(self: ptr cQScrollBar, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_keyPressEvent ".} =
  type Cb = proc(super: QScrollBarkeyPressEventBase, ev: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QScrollBar(h: self), ev)
  let slotval1 = gen_qevent.QKeyEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QScrollBar, param1: gen_qcoreevent.QTimerEvent): void =


  fQScrollBar_virtualbase_timerEvent(self.h, param1.h)

type QScrollBartimerEventBase* = proc(param1: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QScrollBar, slot: proc(super: QScrollBartimerEventBase, param1: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBartimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_timerEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_timerEvent ".} =
  type Cb = proc(super: QScrollBartimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QScrollBar(h: self), param1)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QScrollBar, e: gen_qcoreevent.QEvent): void =


  fQScrollBar_virtualbase_changeEvent(self.h, e.h)

type QScrollBarchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QScrollBar, slot: proc(super: QScrollBarchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_changeEvent(self: ptr cQScrollBar, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_changeEvent ".} =
  type Cb = proc(super: QScrollBarchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QScrollBar(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QScrollBar, ): cint =


  fQScrollBar_virtualbase_devType(self.h)

type QScrollBardevTypeBase* = proc(): cint
proc ondevType*(self: QScrollBar, slot: proc(super: QScrollBardevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QScrollBardevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_devType(self: ptr cQScrollBar, slot: int): cint {.exportc: "miqt_exec_callback_QScrollBar_devType ".} =
  type Cb = proc(super: QScrollBardevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QScrollBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QScrollBar, visible: bool): void =


  fQScrollBar_virtualbase_setVisible(self.h, visible)

type QScrollBarsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QScrollBar, slot: proc(super: QScrollBarsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_setVisible(self: ptr cQScrollBar, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QScrollBar_setVisible ".} =
  type Cb = proc(super: QScrollBarsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QScrollBar(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QScrollBar, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQScrollBar_virtualbase_minimumSizeHint(self.h))

type QScrollBarminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QScrollBar, slot: proc(super: QScrollBarminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_minimumSizeHint(self: ptr cQScrollBar, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollBar_minimumSizeHint ".} =
  type Cb = proc(super: QScrollBarminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QScrollBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QScrollBar, param1: cint): cint =


  fQScrollBar_virtualbase_heightForWidth(self.h, param1)

type QScrollBarheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QScrollBar, slot: proc(super: QScrollBarheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_heightForWidth(self: ptr cQScrollBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QScrollBar_heightForWidth ".} =
  type Cb = proc(super: QScrollBarheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QScrollBar(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QScrollBar, ): bool =


  fQScrollBar_virtualbase_hasHeightForWidth(self.h)

type QScrollBarhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QScrollBar, slot: proc(super: QScrollBarhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_hasHeightForWidth(self: ptr cQScrollBar, slot: int): bool {.exportc: "miqt_exec_callback_QScrollBar_hasHeightForWidth ".} =
  type Cb = proc(super: QScrollBarhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QScrollBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QScrollBar, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQScrollBar_virtualbase_paintEngine(self.h))

type QScrollBarpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QScrollBar, slot: proc(super: QScrollBarpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_paintEngine(self: ptr cQScrollBar, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollBar_paintEngine ".} =
  type Cb = proc(super: QScrollBarpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QScrollBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QScrollBar, event: gen_qevent.QMouseEvent): void =


  fQScrollBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QScrollBarmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QScrollBar, slot: proc(super: QScrollBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_mouseDoubleClickEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QScrollBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QScrollBar, event: gen_qevent.QKeyEvent): void =


  fQScrollBar_virtualbase_keyReleaseEvent(self.h, event.h)

type QScrollBarkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QScrollBar, slot: proc(super: QScrollBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_keyReleaseEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_keyReleaseEvent ".} =
  type Cb = proc(super: QScrollBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QScrollBar, event: gen_qevent.QFocusEvent): void =


  fQScrollBar_virtualbase_focusInEvent(self.h, event.h)

type QScrollBarfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QScrollBar, slot: proc(super: QScrollBarfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_focusInEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_focusInEvent ".} =
  type Cb = proc(super: QScrollBarfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QScrollBar, event: gen_qevent.QFocusEvent): void =


  fQScrollBar_virtualbase_focusOutEvent(self.h, event.h)

type QScrollBarfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QScrollBar, slot: proc(super: QScrollBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_focusOutEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_focusOutEvent ".} =
  type Cb = proc(super: QScrollBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QScrollBar, event: gen_qevent.QEnterEvent): void =


  fQScrollBar_virtualbase_enterEvent(self.h, event.h)

type QScrollBarenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QScrollBar, slot: proc(super: QScrollBarenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_enterEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_enterEvent ".} =
  type Cb = proc(super: QScrollBarenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QScrollBar, event: gen_qcoreevent.QEvent): void =


  fQScrollBar_virtualbase_leaveEvent(self.h, event.h)

type QScrollBarleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QScrollBar, slot: proc(super: QScrollBarleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_leaveEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_leaveEvent ".} =
  type Cb = proc(super: QScrollBarleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QScrollBar, event: gen_qevent.QMoveEvent): void =


  fQScrollBar_virtualbase_moveEvent(self.h, event.h)

type QScrollBarmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QScrollBar, slot: proc(super: QScrollBarmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_moveEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_moveEvent ".} =
  type Cb = proc(super: QScrollBarmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QScrollBar, event: gen_qevent.QResizeEvent): void =


  fQScrollBar_virtualbase_resizeEvent(self.h, event.h)

type QScrollBarresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QScrollBar, slot: proc(super: QScrollBarresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_resizeEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_resizeEvent ".} =
  type Cb = proc(super: QScrollBarresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QScrollBar, event: gen_qevent.QCloseEvent): void =


  fQScrollBar_virtualbase_closeEvent(self.h, event.h)

type QScrollBarcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QScrollBar, slot: proc(super: QScrollBarcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_closeEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_closeEvent ".} =
  type Cb = proc(super: QScrollBarcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QScrollBar, event: gen_qevent.QTabletEvent): void =


  fQScrollBar_virtualbase_tabletEvent(self.h, event.h)

type QScrollBartabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QScrollBar, slot: proc(super: QScrollBartabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBartabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_tabletEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_tabletEvent ".} =
  type Cb = proc(super: QScrollBartabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QScrollBar, event: gen_qevent.QActionEvent): void =


  fQScrollBar_virtualbase_actionEvent(self.h, event.h)

type QScrollBaractionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QScrollBar, slot: proc(super: QScrollBaractionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBaractionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_actionEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_actionEvent ".} =
  type Cb = proc(super: QScrollBaractionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QScrollBar, event: gen_qevent.QDragEnterEvent): void =


  fQScrollBar_virtualbase_dragEnterEvent(self.h, event.h)

type QScrollBardragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QScrollBar, slot: proc(super: QScrollBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_dragEnterEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_dragEnterEvent ".} =
  type Cb = proc(super: QScrollBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QScrollBar, event: gen_qevent.QDragMoveEvent): void =


  fQScrollBar_virtualbase_dragMoveEvent(self.h, event.h)

type QScrollBardragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QScrollBar, slot: proc(super: QScrollBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_dragMoveEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_dragMoveEvent ".} =
  type Cb = proc(super: QScrollBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QScrollBar, event: gen_qevent.QDragLeaveEvent): void =


  fQScrollBar_virtualbase_dragLeaveEvent(self.h, event.h)

type QScrollBardragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QScrollBar, slot: proc(super: QScrollBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_dragLeaveEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_dragLeaveEvent ".} =
  type Cb = proc(super: QScrollBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QScrollBar, event: gen_qevent.QDropEvent): void =


  fQScrollBar_virtualbase_dropEvent(self.h, event.h)

type QScrollBardropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QScrollBar, slot: proc(super: QScrollBardropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBardropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_dropEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_dropEvent ".} =
  type Cb = proc(super: QScrollBardropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QScrollBar, event: gen_qevent.QShowEvent): void =


  fQScrollBar_virtualbase_showEvent(self.h, event.h)

type QScrollBarshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QScrollBar, slot: proc(super: QScrollBarshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_showEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_showEvent ".} =
  type Cb = proc(super: QScrollBarshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QScrollBar, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQScrollBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QScrollBarnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QScrollBar, slot: proc(super: QScrollBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_nativeEvent(self: ptr cQScrollBar, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QScrollBar_nativeEvent ".} =
  type Cb = proc(super: QScrollBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QScrollBar(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QScrollBar, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQScrollBar_virtualbase_metric(self.h, cint(param1))

type QScrollBarmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QScrollBar, slot: proc(super: QScrollBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_metric(self: ptr cQScrollBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QScrollBar_metric ".} =
  type Cb = proc(super: QScrollBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QScrollBar(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QScrollBar, painter: gen_qpainter.QPainter): void =


  fQScrollBar_virtualbase_initPainter(self.h, painter.h)

type QScrollBarinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QScrollBar, slot: proc(super: QScrollBarinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_initPainter(self: ptr cQScrollBar, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_initPainter ".} =
  type Cb = proc(super: QScrollBarinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QScrollBar(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QScrollBar, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQScrollBar_virtualbase_redirected(self.h, offset.h))

type QScrollBarredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QScrollBar, slot: proc(super: QScrollBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_redirected(self: ptr cQScrollBar, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QScrollBar_redirected ".} =
  type Cb = proc(super: QScrollBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QScrollBar(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QScrollBar, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQScrollBar_virtualbase_sharedPainter(self.h))

type QScrollBarsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QScrollBar, slot: proc(super: QScrollBarsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_sharedPainter(self: ptr cQScrollBar, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollBar_sharedPainter ".} =
  type Cb = proc(super: QScrollBarsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QScrollBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QScrollBar, param1: gen_qevent.QInputMethodEvent): void =


  fQScrollBar_virtualbase_inputMethodEvent(self.h, param1.h)

type QScrollBarinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QScrollBar, slot: proc(super: QScrollBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_inputMethodEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_inputMethodEvent ".} =
  type Cb = proc(super: QScrollBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QScrollBar(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QScrollBar, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQScrollBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QScrollBarinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QScrollBar, slot: proc(super: QScrollBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_inputMethodQuery(self: ptr cQScrollBar, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QScrollBar_inputMethodQuery ".} =
  type Cb = proc(super: QScrollBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QScrollBar(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QScrollBar, next: bool): bool =


  fQScrollBar_virtualbase_focusNextPrevChild(self.h, next)

type QScrollBarfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QScrollBar, slot: proc(super: QScrollBarfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_focusNextPrevChild(self: ptr cQScrollBar, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QScrollBar_focusNextPrevChild ".} =
  type Cb = proc(super: QScrollBarfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QScrollBar(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QScrollBar, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQScrollBar_virtualbase_eventFilter(self.h, watched.h, event.h)

type QScrollBareventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QScrollBar, slot: proc(super: QScrollBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QScrollBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_eventFilter(self: ptr cQScrollBar, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QScrollBar_eventFilter ".} =
  type Cb = proc(super: QScrollBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QScrollBar(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QScrollBar, event: gen_qcoreevent.QChildEvent): void =


  fQScrollBar_virtualbase_childEvent(self.h, event.h)

type QScrollBarchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QScrollBar, slot: proc(super: QScrollBarchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_childEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_childEvent ".} =
  type Cb = proc(super: QScrollBarchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QScrollBar, event: gen_qcoreevent.QEvent): void =


  fQScrollBar_virtualbase_customEvent(self.h, event.h)

type QScrollBarcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QScrollBar, slot: proc(super: QScrollBarcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_customEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_customEvent ".} =
  type Cb = proc(super: QScrollBarcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QScrollBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QScrollBar, signal: gen_qmetaobject.QMetaMethod): void =


  fQScrollBar_virtualbase_connectNotify(self.h, signal.h)

type QScrollBarconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QScrollBar, slot: proc(super: QScrollBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_connectNotify(self: ptr cQScrollBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_connectNotify ".} =
  type Cb = proc(super: QScrollBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QScrollBar(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QScrollBar, signal: gen_qmetaobject.QMetaMethod): void =


  fQScrollBar_virtualbase_disconnectNotify(self.h, signal.h)

type QScrollBardisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QScrollBar, slot: proc(super: QScrollBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_disconnectNotify(self: ptr cQScrollBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_disconnectNotify ".} =
  type Cb = proc(super: QScrollBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QScrollBar(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QScrollBar): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQScrollBar_staticMetaObject())
proc delete*(self: QScrollBar) =
  fcQScrollBar_delete(self.h)
