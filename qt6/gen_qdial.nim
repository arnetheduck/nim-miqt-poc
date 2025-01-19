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
{.compile("gen_qdial.cpp", cflags).}


import gen_qdial_types
export gen_qdial_types

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

type cQDial*{.exportc: "QDial", incompleteStruct.} = object

proc fcQDial_new(parent: pointer): ptr cQDial {.importc: "QDial_new".}
proc fcQDial_new2(): ptr cQDial {.importc: "QDial_new2".}
proc fcQDial_metaObject(self: pointer, ): pointer {.importc: "QDial_metaObject".}
proc fcQDial_metacast(self: pointer, param1: cstring): pointer {.importc: "QDial_metacast".}
proc fcQDial_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDial_metacall".}
proc fcQDial_tr(s: cstring): struct_miqt_string {.importc: "QDial_tr".}
proc fcQDial_wrapping(self: pointer, ): bool {.importc: "QDial_wrapping".}
proc fcQDial_notchSize(self: pointer, ): cint {.importc: "QDial_notchSize".}
proc fcQDial_setNotchTarget(self: pointer, target: float64): void {.importc: "QDial_setNotchTarget".}
proc fcQDial_notchTarget(self: pointer, ): float64 {.importc: "QDial_notchTarget".}
proc fcQDial_notchesVisible(self: pointer, ): bool {.importc: "QDial_notchesVisible".}
proc fcQDial_sizeHint(self: pointer, ): pointer {.importc: "QDial_sizeHint".}
proc fcQDial_minimumSizeHint(self: pointer, ): pointer {.importc: "QDial_minimumSizeHint".}
proc fcQDial_setNotchesVisible(self: pointer, visible: bool): void {.importc: "QDial_setNotchesVisible".}
proc fcQDial_setWrapping(self: pointer, on: bool): void {.importc: "QDial_setWrapping".}
proc fcQDial_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDial_tr2".}
proc fcQDial_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDial_tr3".}
proc fQDial_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDial_virtualbase_metacall".}
proc fcQDial_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDial_override_virtual_metacall".}
proc fQDial_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDial_virtualbase_sizeHint".}
proc fcQDial_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDial_override_virtual_sizeHint".}
proc fQDial_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDial_virtualbase_minimumSizeHint".}
proc fcQDial_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDial_override_virtual_minimumSizeHint".}
proc fQDial_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QDial_virtualbase_event".}
proc fcQDial_override_virtual_event(self: pointer, slot: int) {.importc: "QDial_override_virtual_event".}
proc fQDial_virtualbase_resizeEvent(self: pointer, re: pointer): void{.importc: "QDial_virtualbase_resizeEvent".}
proc fcQDial_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_resizeEvent".}
proc fQDial_virtualbase_paintEvent(self: pointer, pe: pointer): void{.importc: "QDial_virtualbase_paintEvent".}
proc fcQDial_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_paintEvent".}
proc fQDial_virtualbase_mousePressEvent(self: pointer, me: pointer): void{.importc: "QDial_virtualbase_mousePressEvent".}
proc fcQDial_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_mousePressEvent".}
proc fQDial_virtualbase_mouseReleaseEvent(self: pointer, me: pointer): void{.importc: "QDial_virtualbase_mouseReleaseEvent".}
proc fcQDial_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_mouseReleaseEvent".}
proc fQDial_virtualbase_mouseMoveEvent(self: pointer, me: pointer): void{.importc: "QDial_virtualbase_mouseMoveEvent".}
proc fcQDial_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_mouseMoveEvent".}
proc fQDial_virtualbase_sliderChange(self: pointer, change: cint): void{.importc: "QDial_virtualbase_sliderChange".}
proc fcQDial_override_virtual_sliderChange(self: pointer, slot: int) {.importc: "QDial_override_virtual_sliderChange".}
proc fQDial_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QDial_virtualbase_initStyleOption".}
proc fcQDial_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QDial_override_virtual_initStyleOption".}
proc fQDial_virtualbase_keyPressEvent(self: pointer, ev: pointer): void{.importc: "QDial_virtualbase_keyPressEvent".}
proc fcQDial_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_keyPressEvent".}
proc fQDial_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QDial_virtualbase_timerEvent".}
proc fcQDial_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_timerEvent".}
proc fQDial_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QDial_virtualbase_wheelEvent".}
proc fcQDial_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_wheelEvent".}
proc fQDial_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QDial_virtualbase_changeEvent".}
proc fcQDial_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_changeEvent".}
proc fQDial_virtualbase_devType(self: pointer, ): cint{.importc: "QDial_virtualbase_devType".}
proc fcQDial_override_virtual_devType(self: pointer, slot: int) {.importc: "QDial_override_virtual_devType".}
proc fQDial_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDial_virtualbase_setVisible".}
proc fcQDial_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDial_override_virtual_setVisible".}
proc fQDial_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDial_virtualbase_heightForWidth".}
proc fcQDial_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDial_override_virtual_heightForWidth".}
proc fQDial_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDial_virtualbase_hasHeightForWidth".}
proc fcQDial_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDial_override_virtual_hasHeightForWidth".}
proc fQDial_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDial_virtualbase_paintEngine".}
proc fcQDial_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDial_override_virtual_paintEngine".}
proc fQDial_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_mouseDoubleClickEvent".}
proc fcQDial_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_mouseDoubleClickEvent".}
proc fQDial_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_keyReleaseEvent".}
proc fcQDial_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_keyReleaseEvent".}
proc fQDial_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_focusInEvent".}
proc fcQDial_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_focusInEvent".}
proc fQDial_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_focusOutEvent".}
proc fcQDial_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_focusOutEvent".}
proc fQDial_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_enterEvent".}
proc fcQDial_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_enterEvent".}
proc fQDial_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_leaveEvent".}
proc fcQDial_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_leaveEvent".}
proc fQDial_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_moveEvent".}
proc fcQDial_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_moveEvent".}
proc fQDial_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_closeEvent".}
proc fcQDial_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_closeEvent".}
proc fQDial_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_contextMenuEvent".}
proc fcQDial_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_contextMenuEvent".}
proc fQDial_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_tabletEvent".}
proc fcQDial_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_tabletEvent".}
proc fQDial_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_actionEvent".}
proc fcQDial_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_actionEvent".}
proc fQDial_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_dragEnterEvent".}
proc fcQDial_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_dragEnterEvent".}
proc fQDial_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_dragMoveEvent".}
proc fcQDial_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_dragMoveEvent".}
proc fQDial_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_dragLeaveEvent".}
proc fcQDial_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_dragLeaveEvent".}
proc fQDial_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_dropEvent".}
proc fcQDial_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_dropEvent".}
proc fQDial_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_showEvent".}
proc fcQDial_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_showEvent".}
proc fQDial_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_hideEvent".}
proc fcQDial_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_hideEvent".}
proc fQDial_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QDial_virtualbase_nativeEvent".}
proc fcQDial_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_nativeEvent".}
proc fQDial_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDial_virtualbase_metric".}
proc fcQDial_override_virtual_metric(self: pointer, slot: int) {.importc: "QDial_override_virtual_metric".}
proc fQDial_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDial_virtualbase_initPainter".}
proc fcQDial_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDial_override_virtual_initPainter".}
proc fQDial_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDial_virtualbase_redirected".}
proc fcQDial_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDial_override_virtual_redirected".}
proc fQDial_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDial_virtualbase_sharedPainter".}
proc fcQDial_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDial_override_virtual_sharedPainter".}
proc fQDial_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDial_virtualbase_inputMethodEvent".}
proc fcQDial_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_inputMethodEvent".}
proc fQDial_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDial_virtualbase_inputMethodQuery".}
proc fcQDial_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDial_override_virtual_inputMethodQuery".}
proc fQDial_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDial_virtualbase_focusNextPrevChild".}
proc fcQDial_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDial_override_virtual_focusNextPrevChild".}
proc fQDial_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDial_virtualbase_eventFilter".}
proc fcQDial_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDial_override_virtual_eventFilter".}
proc fQDial_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_childEvent".}
proc fcQDial_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_childEvent".}
proc fQDial_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_customEvent".}
proc fcQDial_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_customEvent".}
proc fQDial_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDial_virtualbase_connectNotify".}
proc fcQDial_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDial_override_virtual_connectNotify".}
proc fQDial_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDial_virtualbase_disconnectNotify".}
proc fcQDial_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDial_override_virtual_disconnectNotify".}
proc fcQDial_staticMetaObject(): pointer {.importc: "QDial_staticMetaObject".}
proc fcQDial_delete(self: pointer) {.importc: "QDial_delete".}


func init*(T: type QDial, h: ptr cQDial): QDial =
  T(h: h)
proc create*(T: type QDial, parent: gen_qwidget.QWidget): QDial =

  QDial.init(fcQDial_new(parent.h))
proc create*(T: type QDial, ): QDial =

  QDial.init(fcQDial_new2())
proc metaObject*(self: QDial, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDial_metaObject(self.h))

proc metacast*(self: QDial, param1: cstring): pointer =

  fcQDial_metacast(self.h, param1)

proc metacall*(self: QDial, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDial_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDial, s: cstring): string =

  let v_ms = fcQDial_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc wrapping*(self: QDial, ): bool =

  fcQDial_wrapping(self.h)

proc notchSize*(self: QDial, ): cint =

  fcQDial_notchSize(self.h)

proc setNotchTarget*(self: QDial, target: float64): void =

  fcQDial_setNotchTarget(self.h, target)

proc notchTarget*(self: QDial, ): float64 =

  fcQDial_notchTarget(self.h)

proc notchesVisible*(self: QDial, ): bool =

  fcQDial_notchesVisible(self.h)

proc sizeHint*(self: QDial, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQDial_sizeHint(self.h))

proc minimumSizeHint*(self: QDial, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQDial_minimumSizeHint(self.h))

proc setNotchesVisible*(self: QDial, visible: bool): void =

  fcQDial_setNotchesVisible(self.h, visible)

proc setWrapping*(self: QDial, on: bool): void =

  fcQDial_setWrapping(self.h, on)

proc tr2*(_: type QDial, s: cstring, c: cstring): string =

  let v_ms = fcQDial_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDial, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDial_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QDial, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDial_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDialmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDial, slot: proc(super: QDialmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDialmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_metacall(self: ptr cQDial, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDial_metacall ".} =
  type Cb = proc(super: QDialmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDial(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QDial, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDial_virtualbase_sizeHint(self.h))

type QDialsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QDial, slot: proc(super: QDialsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDialsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_sizeHint(self: ptr cQDial, slot: int): pointer {.exportc: "miqt_exec_callback_QDial_sizeHint ".} =
  type Cb = proc(super: QDialsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QDial(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QDial, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDial_virtualbase_minimumSizeHint(self.h))

type QDialminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QDial, slot: proc(super: QDialminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDialminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_minimumSizeHint(self: ptr cQDial, slot: int): pointer {.exportc: "miqt_exec_callback_QDial_minimumSizeHint ".} =
  type Cb = proc(super: QDialminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QDial(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QDial, e: gen_qcoreevent.QEvent): bool =


  fQDial_virtualbase_event(self.h, e.h)

type QDialeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDial, slot: proc(super: QDialeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_event(self: ptr cQDial, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QDial_event ".} =
  type Cb = proc(super: QDialeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDial(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_resizeEvent(self: QDial, re: gen_qevent.QResizeEvent): void =


  fQDial_virtualbase_resizeEvent(self.h, re.h)

type QDialresizeEventBase* = proc(re: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QDial, slot: proc(super: QDialresizeEventBase, re: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialresizeEventBase, re: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_resizeEvent(self: ptr cQDial, slot: int, re: pointer): void {.exportc: "miqt_exec_callback_QDial_resizeEvent ".} =
  type Cb = proc(super: QDialresizeEventBase, re: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(re: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QDial(h: self), re)
  let slotval1 = gen_qevent.QResizeEvent(h: re)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QDial, pe: gen_qevent.QPaintEvent): void =


  fQDial_virtualbase_paintEvent(self.h, pe.h)

type QDialpaintEventBase* = proc(pe: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QDial, slot: proc(super: QDialpaintEventBase, pe: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialpaintEventBase, pe: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_paintEvent(self: ptr cQDial, slot: int, pe: pointer): void {.exportc: "miqt_exec_callback_QDial_paintEvent ".} =
  type Cb = proc(super: QDialpaintEventBase, pe: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pe: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QDial(h: self), pe)
  let slotval1 = gen_qevent.QPaintEvent(h: pe)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QDial, me: gen_qevent.QMouseEvent): void =


  fQDial_virtualbase_mousePressEvent(self.h, me.h)

type QDialmousePressEventBase* = proc(me: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QDial, slot: proc(super: QDialmousePressEventBase, me: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialmousePressEventBase, me: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_mousePressEvent(self: ptr cQDial, slot: int, me: pointer): void {.exportc: "miqt_exec_callback_QDial_mousePressEvent ".} =
  type Cb = proc(super: QDialmousePressEventBase, me: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(me: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QDial(h: self), me)
  let slotval1 = gen_qevent.QMouseEvent(h: me)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QDial, me: gen_qevent.QMouseEvent): void =


  fQDial_virtualbase_mouseReleaseEvent(self.h, me.h)

type QDialmouseReleaseEventBase* = proc(me: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QDial, slot: proc(super: QDialmouseReleaseEventBase, me: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialmouseReleaseEventBase, me: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_mouseReleaseEvent(self: ptr cQDial, slot: int, me: pointer): void {.exportc: "miqt_exec_callback_QDial_mouseReleaseEvent ".} =
  type Cb = proc(super: QDialmouseReleaseEventBase, me: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(me: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QDial(h: self), me)
  let slotval1 = gen_qevent.QMouseEvent(h: me)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QDial, me: gen_qevent.QMouseEvent): void =


  fQDial_virtualbase_mouseMoveEvent(self.h, me.h)

type QDialmouseMoveEventBase* = proc(me: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QDial, slot: proc(super: QDialmouseMoveEventBase, me: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialmouseMoveEventBase, me: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_mouseMoveEvent(self: ptr cQDial, slot: int, me: pointer): void {.exportc: "miqt_exec_callback_QDial_mouseMoveEvent ".} =
  type Cb = proc(super: QDialmouseMoveEventBase, me: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(me: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QDial(h: self), me)
  let slotval1 = gen_qevent.QMouseEvent(h: me)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sliderChange(self: QDial, change: gen_qabstractslider.QAbstractSliderSliderChange): void =


  fQDial_virtualbase_sliderChange(self.h, cint(change))

type QDialsliderChangeBase* = proc(change: gen_qabstractslider.QAbstractSliderSliderChange): void
proc onsliderChange*(self: QDial, slot: proc(super: QDialsliderChangeBase, change: gen_qabstractslider.QAbstractSliderSliderChange): void) =
  # TODO check subclass
  type Cb = proc(super: QDialsliderChangeBase, change: gen_qabstractslider.QAbstractSliderSliderChange): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_sliderChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_sliderChange(self: ptr cQDial, slot: int, change: cint): void {.exportc: "miqt_exec_callback_QDial_sliderChange ".} =
  type Cb = proc(super: QDialsliderChangeBase, change: gen_qabstractslider.QAbstractSliderSliderChange): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: gen_qabstractslider.QAbstractSliderSliderChange): auto =
    callVirtualBase_sliderChange(QDial(h: self), change)
  let slotval1 = gen_qabstractslider.QAbstractSliderSliderChange(change)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QDial, option: gen_qstyleoption.QStyleOptionSlider): void =


  fQDial_virtualbase_initStyleOption(self.h, option.h)

type QDialinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionSlider): void
proc oninitStyleOption*(self: QDial, slot: proc(super: QDialinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSlider): void) =
  # TODO check subclass
  type Cb = proc(super: QDialinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSlider): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_initStyleOption(self: ptr cQDial, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QDial_initStyleOption ".} =
  type Cb = proc(super: QDialinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSlider): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionSlider): auto =
    callVirtualBase_initStyleOption(QDial(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionSlider(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QDial, ev: gen_qevent.QKeyEvent): void =


  fQDial_virtualbase_keyPressEvent(self.h, ev.h)

type QDialkeyPressEventBase* = proc(ev: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QDial, slot: proc(super: QDialkeyPressEventBase, ev: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialkeyPressEventBase, ev: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_keyPressEvent(self: ptr cQDial, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QDial_keyPressEvent ".} =
  type Cb = proc(super: QDialkeyPressEventBase, ev: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QDial(h: self), ev)
  let slotval1 = gen_qevent.QKeyEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QDial, param1: gen_qcoreevent.QTimerEvent): void =


  fQDial_virtualbase_timerEvent(self.h, param1.h)

type QDialtimerEventBase* = proc(param1: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDial, slot: proc(super: QDialtimerEventBase, param1: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialtimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_timerEvent(self: ptr cQDial, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDial_timerEvent ".} =
  type Cb = proc(super: QDialtimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDial(h: self), param1)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QDial, e: gen_qevent.QWheelEvent): void =


  fQDial_virtualbase_wheelEvent(self.h, e.h)

type QDialwheelEventBase* = proc(e: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QDial, slot: proc(super: QDialwheelEventBase, e: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialwheelEventBase, e: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_wheelEvent(self: ptr cQDial, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QDial_wheelEvent ".} =
  type Cb = proc(super: QDialwheelEventBase, e: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QDial(h: self), e)
  let slotval1 = gen_qevent.QWheelEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QDial, e: gen_qcoreevent.QEvent): void =


  fQDial_virtualbase_changeEvent(self.h, e.h)

type QDialchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QDial, slot: proc(super: QDialchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_changeEvent(self: ptr cQDial, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QDial_changeEvent ".} =
  type Cb = proc(super: QDialchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QDial(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QDial, ): cint =


  fQDial_virtualbase_devType(self.h)

type QDialdevTypeBase* = proc(): cint
proc ondevType*(self: QDial, slot: proc(super: QDialdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QDialdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_devType(self: ptr cQDial, slot: int): cint {.exportc: "miqt_exec_callback_QDial_devType ".} =
  type Cb = proc(super: QDialdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QDial(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QDial, visible: bool): void =


  fQDial_virtualbase_setVisible(self.h, visible)

type QDialsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QDial, slot: proc(super: QDialsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QDialsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_setVisible(self: ptr cQDial, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDial_setVisible ".} =
  type Cb = proc(super: QDialsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QDial(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QDial, param1: cint): cint =


  fQDial_virtualbase_heightForWidth(self.h, param1)

type QDialheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QDial, slot: proc(super: QDialheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QDialheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_heightForWidth(self: ptr cQDial, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDial_heightForWidth ".} =
  type Cb = proc(super: QDialheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QDial(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QDial, ): bool =


  fQDial_virtualbase_hasHeightForWidth(self.h)

type QDialhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QDial, slot: proc(super: QDialhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_hasHeightForWidth(self: ptr cQDial, slot: int): bool {.exportc: "miqt_exec_callback_QDial_hasHeightForWidth ".} =
  type Cb = proc(super: QDialhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QDial(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QDial, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQDial_virtualbase_paintEngine(self.h))

type QDialpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QDial, slot: proc(super: QDialpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QDialpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_paintEngine(self: ptr cQDial, slot: int): pointer {.exportc: "miqt_exec_callback_QDial_paintEngine ".} =
  type Cb = proc(super: QDialpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QDial(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QDial, event: gen_qevent.QMouseEvent): void =


  fQDial_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDialmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QDial, slot: proc(super: QDialmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_mouseDoubleClickEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QDialmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QDial, event: gen_qevent.QKeyEvent): void =


  fQDial_virtualbase_keyReleaseEvent(self.h, event.h)

type QDialkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QDial, slot: proc(super: QDialkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_keyReleaseEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_keyReleaseEvent ".} =
  type Cb = proc(super: QDialkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QDial, event: gen_qevent.QFocusEvent): void =


  fQDial_virtualbase_focusInEvent(self.h, event.h)

type QDialfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QDial, slot: proc(super: QDialfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_focusInEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_focusInEvent ".} =
  type Cb = proc(super: QDialfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QDial, event: gen_qevent.QFocusEvent): void =


  fQDial_virtualbase_focusOutEvent(self.h, event.h)

type QDialfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QDial, slot: proc(super: QDialfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_focusOutEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_focusOutEvent ".} =
  type Cb = proc(super: QDialfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QDial, event: gen_qevent.QEnterEvent): void =


  fQDial_virtualbase_enterEvent(self.h, event.h)

type QDialenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QDial, slot: proc(super: QDialenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_enterEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_enterEvent ".} =
  type Cb = proc(super: QDialenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QDial, event: gen_qcoreevent.QEvent): void =


  fQDial_virtualbase_leaveEvent(self.h, event.h)

type QDialleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QDial, slot: proc(super: QDialleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_leaveEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_leaveEvent ".} =
  type Cb = proc(super: QDialleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QDial(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QDial, event: gen_qevent.QMoveEvent): void =


  fQDial_virtualbase_moveEvent(self.h, event.h)

type QDialmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QDial, slot: proc(super: QDialmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_moveEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_moveEvent ".} =
  type Cb = proc(super: QDialmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QDial, event: gen_qevent.QCloseEvent): void =


  fQDial_virtualbase_closeEvent(self.h, event.h)

type QDialcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QDial, slot: proc(super: QDialcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_closeEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_closeEvent ".} =
  type Cb = proc(super: QDialcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QDial, event: gen_qevent.QContextMenuEvent): void =


  fQDial_virtualbase_contextMenuEvent(self.h, event.h)

type QDialcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QDial, slot: proc(super: QDialcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_contextMenuEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_contextMenuEvent ".} =
  type Cb = proc(super: QDialcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QDial, event: gen_qevent.QTabletEvent): void =


  fQDial_virtualbase_tabletEvent(self.h, event.h)

type QDialtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QDial, slot: proc(super: QDialtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_tabletEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_tabletEvent ".} =
  type Cb = proc(super: QDialtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QDial, event: gen_qevent.QActionEvent): void =


  fQDial_virtualbase_actionEvent(self.h, event.h)

type QDialactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QDial, slot: proc(super: QDialactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_actionEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_actionEvent ".} =
  type Cb = proc(super: QDialactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QDial, event: gen_qevent.QDragEnterEvent): void =


  fQDial_virtualbase_dragEnterEvent(self.h, event.h)

type QDialdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QDial, slot: proc(super: QDialdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_dragEnterEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_dragEnterEvent ".} =
  type Cb = proc(super: QDialdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QDial, event: gen_qevent.QDragMoveEvent): void =


  fQDial_virtualbase_dragMoveEvent(self.h, event.h)

type QDialdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QDial, slot: proc(super: QDialdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_dragMoveEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_dragMoveEvent ".} =
  type Cb = proc(super: QDialdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QDial, event: gen_qevent.QDragLeaveEvent): void =


  fQDial_virtualbase_dragLeaveEvent(self.h, event.h)

type QDialdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QDial, slot: proc(super: QDialdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_dragLeaveEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_dragLeaveEvent ".} =
  type Cb = proc(super: QDialdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QDial, event: gen_qevent.QDropEvent): void =


  fQDial_virtualbase_dropEvent(self.h, event.h)

type QDialdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QDial, slot: proc(super: QDialdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_dropEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_dropEvent ".} =
  type Cb = proc(super: QDialdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QDial, event: gen_qevent.QShowEvent): void =


  fQDial_virtualbase_showEvent(self.h, event.h)

type QDialshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QDial, slot: proc(super: QDialshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_showEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_showEvent ".} =
  type Cb = proc(super: QDialshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QDial, event: gen_qevent.QHideEvent): void =


  fQDial_virtualbase_hideEvent(self.h, event.h)

type QDialhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QDial, slot: proc(super: QDialhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_hideEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_hideEvent ".} =
  type Cb = proc(super: QDialhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QDial(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QDial, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQDial_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDialnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QDial, slot: proc(super: QDialnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_nativeEvent(self: ptr cQDial, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QDial_nativeEvent ".} =
  type Cb = proc(super: QDialnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QDial(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QDial, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQDial_virtualbase_metric(self.h, cint(param1))

type QDialmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QDial, slot: proc(super: QDialmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QDialmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_metric(self: ptr cQDial, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDial_metric ".} =
  type Cb = proc(super: QDialmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QDial(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QDial, painter: gen_qpainter.QPainter): void =


  fQDial_virtualbase_initPainter(self.h, painter.h)

type QDialinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QDial, slot: proc(super: QDialinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QDialinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_initPainter(self: ptr cQDial, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDial_initPainter ".} =
  type Cb = proc(super: QDialinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QDial(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QDial, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQDial_virtualbase_redirected(self.h, offset.h))

type QDialredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QDial, slot: proc(super: QDialredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QDialredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_redirected(self: ptr cQDial, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDial_redirected ".} =
  type Cb = proc(super: QDialredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QDial(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QDial, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQDial_virtualbase_sharedPainter(self.h))

type QDialsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QDial, slot: proc(super: QDialsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QDialsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_sharedPainter(self: ptr cQDial, slot: int): pointer {.exportc: "miqt_exec_callback_QDial_sharedPainter ".} =
  type Cb = proc(super: QDialsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QDial(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QDial, param1: gen_qevent.QInputMethodEvent): void =


  fQDial_virtualbase_inputMethodEvent(self.h, param1.h)

type QDialinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QDial, slot: proc(super: QDialinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_inputMethodEvent(self: ptr cQDial, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDial_inputMethodEvent ".} =
  type Cb = proc(super: QDialinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QDial(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QDial, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQDial_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDialinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QDial, slot: proc(super: QDialinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QDialinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_inputMethodQuery(self: ptr cQDial, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDial_inputMethodQuery ".} =
  type Cb = proc(super: QDialinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QDial(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QDial, next: bool): bool =


  fQDial_virtualbase_focusNextPrevChild(self.h, next)

type QDialfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QDial, slot: proc(super: QDialfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_focusNextPrevChild(self: ptr cQDial, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDial_focusNextPrevChild ".} =
  type Cb = proc(super: QDialfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QDial(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QDial, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQDial_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDialeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDial, slot: proc(super: QDialeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_eventFilter(self: ptr cQDial, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDial_eventFilter ".} =
  type Cb = proc(super: QDialeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDial(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QDial, event: gen_qcoreevent.QChildEvent): void =


  fQDial_virtualbase_childEvent(self.h, event.h)

type QDialchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDial, slot: proc(super: QDialchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_childEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_childEvent ".} =
  type Cb = proc(super: QDialchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDial(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDial, event: gen_qcoreevent.QEvent): void =


  fQDial_virtualbase_customEvent(self.h, event.h)

type QDialcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDial, slot: proc(super: QDialcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_customEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_customEvent ".} =
  type Cb = proc(super: QDialcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDial(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDial, signal: gen_qmetaobject.QMetaMethod): void =


  fQDial_virtualbase_connectNotify(self.h, signal.h)

type QDialconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDial, slot: proc(super: QDialconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDialconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_connectNotify(self: ptr cQDial, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDial_connectNotify ".} =
  type Cb = proc(super: QDialconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDial(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDial, signal: gen_qmetaobject.QMetaMethod): void =


  fQDial_virtualbase_disconnectNotify(self.h, signal.h)

type QDialdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDial, slot: proc(super: QDialdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDialdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_disconnectNotify(self: ptr cQDial, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDial_disconnectNotify ".} =
  type Cb = proc(super: QDialdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDial(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QDial): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQDial_staticMetaObject())
proc delete*(self: QDial) =
  fcQDial_delete(self.h)
