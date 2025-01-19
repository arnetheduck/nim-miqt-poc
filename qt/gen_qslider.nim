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
{.compile("gen_qslider.cpp", cflags).}


type QSliderTickPosition* = cint
const
  QSliderNoTicks* = 0
  QSliderTicksAbove* = 1
  QSliderTicksLeft* = 1
  QSliderTicksBelow* = 2
  QSliderTicksRight* = 2
  QSliderTicksBothSides* = 3



import gen_qslider_types
export gen_qslider_types

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
  gen_qvariant,
  gen_qwidget

type cQSlider*{.exportc: "QSlider", incompleteStruct.} = object

proc fcQSlider_new(parent: pointer): ptr cQSlider {.importc: "QSlider_new".}
proc fcQSlider_new2(): ptr cQSlider {.importc: "QSlider_new2".}
proc fcQSlider_new3(orientation: cint): ptr cQSlider {.importc: "QSlider_new3".}
proc fcQSlider_new4(orientation: cint, parent: pointer): ptr cQSlider {.importc: "QSlider_new4".}
proc fcQSlider_metaObject(self: pointer, ): pointer {.importc: "QSlider_metaObject".}
proc fcQSlider_metacast(self: pointer, param1: cstring): pointer {.importc: "QSlider_metacast".}
proc fcQSlider_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSlider_metacall".}
proc fcQSlider_tr(s: cstring): struct_miqt_string {.importc: "QSlider_tr".}
proc fcQSlider_trUtf8(s: cstring): struct_miqt_string {.importc: "QSlider_trUtf8".}
proc fcQSlider_sizeHint(self: pointer, ): pointer {.importc: "QSlider_sizeHint".}
proc fcQSlider_minimumSizeHint(self: pointer, ): pointer {.importc: "QSlider_minimumSizeHint".}
proc fcQSlider_setTickPosition(self: pointer, position: cint): void {.importc: "QSlider_setTickPosition".}
proc fcQSlider_tickPosition(self: pointer, ): cint {.importc: "QSlider_tickPosition".}
proc fcQSlider_setTickInterval(self: pointer, ti: cint): void {.importc: "QSlider_setTickInterval".}
proc fcQSlider_tickInterval(self: pointer, ): cint {.importc: "QSlider_tickInterval".}
proc fcQSlider_event(self: pointer, event: pointer): bool {.importc: "QSlider_event".}
proc fcQSlider_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSlider_tr2".}
proc fcQSlider_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSlider_tr3".}
proc fcQSlider_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSlider_trUtf82".}
proc fcQSlider_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSlider_trUtf83".}
proc fQSlider_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSlider_virtualbase_metacall".}
proc fcQSlider_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSlider_override_virtual_metacall".}
proc fQSlider_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSlider_virtualbase_sizeHint".}
proc fcQSlider_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSlider_override_virtual_sizeHint".}
proc fQSlider_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QSlider_virtualbase_minimumSizeHint".}
proc fcQSlider_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QSlider_override_virtual_minimumSizeHint".}
proc fQSlider_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSlider_virtualbase_event".}
proc fcQSlider_override_virtual_event(self: pointer, slot: int) {.importc: "QSlider_override_virtual_event".}
proc fQSlider_virtualbase_paintEvent(self: pointer, ev: pointer): void{.importc: "QSlider_virtualbase_paintEvent".}
proc fcQSlider_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_paintEvent".}
proc fQSlider_virtualbase_mousePressEvent(self: pointer, ev: pointer): void{.importc: "QSlider_virtualbase_mousePressEvent".}
proc fcQSlider_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_mousePressEvent".}
proc fQSlider_virtualbase_mouseReleaseEvent(self: pointer, ev: pointer): void{.importc: "QSlider_virtualbase_mouseReleaseEvent".}
proc fcQSlider_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_mouseReleaseEvent".}
proc fQSlider_virtualbase_mouseMoveEvent(self: pointer, ev: pointer): void{.importc: "QSlider_virtualbase_mouseMoveEvent".}
proc fcQSlider_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_mouseMoveEvent".}
proc fQSlider_virtualbase_sliderChange(self: pointer, change: cint): void{.importc: "QSlider_virtualbase_sliderChange".}
proc fcQSlider_override_virtual_sliderChange(self: pointer, slot: int) {.importc: "QSlider_override_virtual_sliderChange".}
proc fQSlider_virtualbase_keyPressEvent(self: pointer, ev: pointer): void{.importc: "QSlider_virtualbase_keyPressEvent".}
proc fcQSlider_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_keyPressEvent".}
proc fQSlider_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QSlider_virtualbase_timerEvent".}
proc fcQSlider_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_timerEvent".}
proc fQSlider_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QSlider_virtualbase_wheelEvent".}
proc fcQSlider_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_wheelEvent".}
proc fQSlider_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QSlider_virtualbase_changeEvent".}
proc fcQSlider_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_changeEvent".}
proc fQSlider_virtualbase_devType(self: pointer, ): cint{.importc: "QSlider_virtualbase_devType".}
proc fcQSlider_override_virtual_devType(self: pointer, slot: int) {.importc: "QSlider_override_virtual_devType".}
proc fQSlider_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QSlider_virtualbase_setVisible".}
proc fcQSlider_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QSlider_override_virtual_setVisible".}
proc fQSlider_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSlider_virtualbase_heightForWidth".}
proc fcQSlider_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSlider_override_virtual_heightForWidth".}
proc fQSlider_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSlider_virtualbase_hasHeightForWidth".}
proc fcQSlider_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSlider_override_virtual_hasHeightForWidth".}
proc fQSlider_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSlider_virtualbase_paintEngine".}
proc fcQSlider_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSlider_override_virtual_paintEngine".}
proc fQSlider_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_mouseDoubleClickEvent".}
proc fcQSlider_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_mouseDoubleClickEvent".}
proc fQSlider_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_keyReleaseEvent".}
proc fcQSlider_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_keyReleaseEvent".}
proc fQSlider_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_focusInEvent".}
proc fcQSlider_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_focusInEvent".}
proc fQSlider_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_focusOutEvent".}
proc fcQSlider_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_focusOutEvent".}
proc fQSlider_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_enterEvent".}
proc fcQSlider_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_enterEvent".}
proc fQSlider_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_leaveEvent".}
proc fcQSlider_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_leaveEvent".}
proc fQSlider_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_moveEvent".}
proc fcQSlider_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_moveEvent".}
proc fQSlider_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_resizeEvent".}
proc fcQSlider_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_resizeEvent".}
proc fQSlider_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_closeEvent".}
proc fcQSlider_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_closeEvent".}
proc fQSlider_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_contextMenuEvent".}
proc fcQSlider_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_contextMenuEvent".}
proc fQSlider_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_tabletEvent".}
proc fcQSlider_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_tabletEvent".}
proc fQSlider_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_actionEvent".}
proc fcQSlider_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_actionEvent".}
proc fQSlider_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_dragEnterEvent".}
proc fcQSlider_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_dragEnterEvent".}
proc fQSlider_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_dragMoveEvent".}
proc fcQSlider_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_dragMoveEvent".}
proc fQSlider_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_dragLeaveEvent".}
proc fcQSlider_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_dragLeaveEvent".}
proc fQSlider_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_dropEvent".}
proc fcQSlider_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_dropEvent".}
proc fQSlider_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_showEvent".}
proc fcQSlider_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_showEvent".}
proc fQSlider_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_hideEvent".}
proc fcQSlider_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_hideEvent".}
proc fQSlider_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QSlider_virtualbase_nativeEvent".}
proc fcQSlider_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_nativeEvent".}
proc fQSlider_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QSlider_virtualbase_metric".}
proc fcQSlider_override_virtual_metric(self: pointer, slot: int) {.importc: "QSlider_override_virtual_metric".}
proc fQSlider_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSlider_virtualbase_initPainter".}
proc fcQSlider_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSlider_override_virtual_initPainter".}
proc fQSlider_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSlider_virtualbase_redirected".}
proc fcQSlider_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSlider_override_virtual_redirected".}
proc fQSlider_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSlider_virtualbase_sharedPainter".}
proc fcQSlider_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSlider_override_virtual_sharedPainter".}
proc fQSlider_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QSlider_virtualbase_inputMethodEvent".}
proc fcQSlider_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_inputMethodEvent".}
proc fQSlider_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QSlider_virtualbase_inputMethodQuery".}
proc fcQSlider_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QSlider_override_virtual_inputMethodQuery".}
proc fQSlider_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QSlider_virtualbase_focusNextPrevChild".}
proc fcQSlider_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QSlider_override_virtual_focusNextPrevChild".}
proc fQSlider_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSlider_virtualbase_eventFilter".}
proc fcQSlider_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSlider_override_virtual_eventFilter".}
proc fQSlider_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_childEvent".}
proc fcQSlider_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_childEvent".}
proc fQSlider_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_customEvent".}
proc fcQSlider_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_customEvent".}
proc fQSlider_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSlider_virtualbase_connectNotify".}
proc fcQSlider_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSlider_override_virtual_connectNotify".}
proc fQSlider_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSlider_virtualbase_disconnectNotify".}
proc fcQSlider_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSlider_override_virtual_disconnectNotify".}
proc fcQSlider_staticMetaObject(): pointer {.importc: "QSlider_staticMetaObject".}
proc fcQSlider_delete(self: pointer) {.importc: "QSlider_delete".}


func init*(T: type QSlider, h: ptr cQSlider): QSlider =
  T(h: h)
proc create*(T: type QSlider, parent: gen_qwidget.QWidget): QSlider =

  QSlider.init(fcQSlider_new(parent.h))
proc create*(T: type QSlider, ): QSlider =

  QSlider.init(fcQSlider_new2())
proc create*(T: type QSlider, orientation: gen_qnamespace.Orientation): QSlider =

  QSlider.init(fcQSlider_new3(cint(orientation)))
proc create*(T: type QSlider, orientation: gen_qnamespace.Orientation, parent: gen_qwidget.QWidget): QSlider =

  QSlider.init(fcQSlider_new4(cint(orientation), parent.h))
proc metaObject*(self: QSlider, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSlider_metaObject(self.h))

proc metacast*(self: QSlider, param1: cstring): pointer =

  fcQSlider_metacast(self.h, param1)

proc metacall*(self: QSlider, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSlider_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSlider, s: cstring): string =

  let v_ms = fcQSlider_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QSlider, s: cstring): string =

  let v_ms = fcQSlider_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: QSlider, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSlider_sizeHint(self.h))

proc minimumSizeHint*(self: QSlider, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSlider_minimumSizeHint(self.h))

proc setTickPosition*(self: QSlider, position: QSliderTickPosition): void =

  fcQSlider_setTickPosition(self.h, cint(position))

proc tickPosition*(self: QSlider, ): QSliderTickPosition =

  QSliderTickPosition(fcQSlider_tickPosition(self.h))

proc setTickInterval*(self: QSlider, ti: cint): void =

  fcQSlider_setTickInterval(self.h, ti)

proc tickInterval*(self: QSlider, ): cint =

  fcQSlider_tickInterval(self.h)

proc event*(self: QSlider, event: gen_qcoreevent.QEvent): bool =

  fcQSlider_event(self.h, event.h)

proc tr2*(_: type QSlider, s: cstring, c: cstring): string =

  let v_ms = fcQSlider_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSlider, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSlider_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QSlider, s: cstring, c: cstring): string =

  let v_ms = fcQSlider_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QSlider, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSlider_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSlider, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSlider_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSlidermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSlider, slot: proc(super: QSlidermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSlidermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_metacall(self: ptr cQSlider, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSlider_metacall ".} =
  type Cb = proc(super: QSlidermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSlider(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QSlider, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSlider_virtualbase_sizeHint(self.h))

type QSlidersizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QSlider, slot: proc(super: QSlidersizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSlidersizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_sizeHint(self: ptr cQSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QSlider_sizeHint ".} =
  type Cb = proc(super: QSlidersizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QSlider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QSlider, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSlider_virtualbase_minimumSizeHint(self.h))

type QSliderminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QSlider, slot: proc(super: QSliderminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSliderminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_minimumSizeHint(self: ptr cQSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QSlider_minimumSizeHint ".} =
  type Cb = proc(super: QSliderminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QSlider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QSlider, event: gen_qcoreevent.QEvent): bool =


  fQSlider_virtualbase_event(self.h, event.h)

type QSlidereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSlider, slot: proc(super: QSlidereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSlidereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_event(self: ptr cQSlider, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSlider_event ".} =
  type Cb = proc(super: QSlidereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSlider(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paintEvent(self: QSlider, ev: gen_qevent.QPaintEvent): void =


  fQSlider_virtualbase_paintEvent(self.h, ev.h)

type QSliderpaintEventBase* = proc(ev: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QSlider, slot: proc(super: QSliderpaintEventBase, ev: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderpaintEventBase, ev: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_paintEvent(self: ptr cQSlider, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QSlider_paintEvent ".} =
  type Cb = proc(super: QSliderpaintEventBase, ev: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QSlider(h: self), ev)
  let slotval1 = gen_qevent.QPaintEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QSlider, ev: gen_qevent.QMouseEvent): void =


  fQSlider_virtualbase_mousePressEvent(self.h, ev.h)

type QSlidermousePressEventBase* = proc(ev: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QSlider, slot: proc(super: QSlidermousePressEventBase, ev: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSlidermousePressEventBase, ev: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_mousePressEvent(self: ptr cQSlider, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QSlider_mousePressEvent ".} =
  type Cb = proc(super: QSlidermousePressEventBase, ev: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QSlider(h: self), ev)
  let slotval1 = gen_qevent.QMouseEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QSlider, ev: gen_qevent.QMouseEvent): void =


  fQSlider_virtualbase_mouseReleaseEvent(self.h, ev.h)

type QSlidermouseReleaseEventBase* = proc(ev: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QSlider, slot: proc(super: QSlidermouseReleaseEventBase, ev: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSlidermouseReleaseEventBase, ev: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_mouseReleaseEvent(self: ptr cQSlider, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QSlider_mouseReleaseEvent ".} =
  type Cb = proc(super: QSlidermouseReleaseEventBase, ev: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QSlider(h: self), ev)
  let slotval1 = gen_qevent.QMouseEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QSlider, ev: gen_qevent.QMouseEvent): void =


  fQSlider_virtualbase_mouseMoveEvent(self.h, ev.h)

type QSlidermouseMoveEventBase* = proc(ev: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QSlider, slot: proc(super: QSlidermouseMoveEventBase, ev: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSlidermouseMoveEventBase, ev: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_mouseMoveEvent(self: ptr cQSlider, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QSlider_mouseMoveEvent ".} =
  type Cb = proc(super: QSlidermouseMoveEventBase, ev: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QSlider(h: self), ev)
  let slotval1 = gen_qevent.QMouseEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sliderChange(self: QSlider, change: gen_qabstractslider.QAbstractSliderSliderChange): void =


  fQSlider_virtualbase_sliderChange(self.h, cint(change))

type QSlidersliderChangeBase* = proc(change: gen_qabstractslider.QAbstractSliderSliderChange): void
proc onsliderChange*(self: QSlider, slot: proc(super: QSlidersliderChangeBase, change: gen_qabstractslider.QAbstractSliderSliderChange): void) =
  # TODO check subclass
  type Cb = proc(super: QSlidersliderChangeBase, change: gen_qabstractslider.QAbstractSliderSliderChange): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_sliderChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_sliderChange(self: ptr cQSlider, slot: int, change: cint): void {.exportc: "miqt_exec_callback_QSlider_sliderChange ".} =
  type Cb = proc(super: QSlidersliderChangeBase, change: gen_qabstractslider.QAbstractSliderSliderChange): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: gen_qabstractslider.QAbstractSliderSliderChange): auto =
    callVirtualBase_sliderChange(QSlider(h: self), change)
  let slotval1 = gen_qabstractslider.QAbstractSliderSliderChange(change)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QSlider, ev: gen_qevent.QKeyEvent): void =


  fQSlider_virtualbase_keyPressEvent(self.h, ev.h)

type QSliderkeyPressEventBase* = proc(ev: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QSlider, slot: proc(super: QSliderkeyPressEventBase, ev: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderkeyPressEventBase, ev: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_keyPressEvent(self: ptr cQSlider, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QSlider_keyPressEvent ".} =
  type Cb = proc(super: QSliderkeyPressEventBase, ev: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QSlider(h: self), ev)
  let slotval1 = gen_qevent.QKeyEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QSlider, param1: gen_qcoreevent.QTimerEvent): void =


  fQSlider_virtualbase_timerEvent(self.h, param1.h)

type QSlidertimerEventBase* = proc(param1: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSlider, slot: proc(super: QSlidertimerEventBase, param1: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSlidertimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_timerEvent(self: ptr cQSlider, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSlider_timerEvent ".} =
  type Cb = proc(super: QSlidertimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSlider(h: self), param1)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QSlider, e: gen_qevent.QWheelEvent): void =


  fQSlider_virtualbase_wheelEvent(self.h, e.h)

type QSliderwheelEventBase* = proc(e: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QSlider, slot: proc(super: QSliderwheelEventBase, e: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderwheelEventBase, e: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_wheelEvent(self: ptr cQSlider, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QSlider_wheelEvent ".} =
  type Cb = proc(super: QSliderwheelEventBase, e: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QSlider(h: self), e)
  let slotval1 = gen_qevent.QWheelEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QSlider, e: gen_qcoreevent.QEvent): void =


  fQSlider_virtualbase_changeEvent(self.h, e.h)

type QSliderchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QSlider, slot: proc(super: QSliderchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_changeEvent(self: ptr cQSlider, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QSlider_changeEvent ".} =
  type Cb = proc(super: QSliderchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QSlider(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QSlider, ): cint =


  fQSlider_virtualbase_devType(self.h)

type QSliderdevTypeBase* = proc(): cint
proc ondevType*(self: QSlider, slot: proc(super: QSliderdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QSliderdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_devType(self: ptr cQSlider, slot: int): cint {.exportc: "miqt_exec_callback_QSlider_devType ".} =
  type Cb = proc(super: QSliderdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QSlider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QSlider, visible: bool): void =


  fQSlider_virtualbase_setVisible(self.h, visible)

type QSlidersetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QSlider, slot: proc(super: QSlidersetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QSlidersetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_setVisible(self: ptr cQSlider, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QSlider_setVisible ".} =
  type Cb = proc(super: QSlidersetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QSlider(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QSlider, param1: cint): cint =


  fQSlider_virtualbase_heightForWidth(self.h, param1)

type QSliderheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QSlider, slot: proc(super: QSliderheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QSliderheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_heightForWidth(self: ptr cQSlider, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSlider_heightForWidth ".} =
  type Cb = proc(super: QSliderheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QSlider(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QSlider, ): bool =


  fQSlider_virtualbase_hasHeightForWidth(self.h)

type QSliderhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QSlider, slot: proc(super: QSliderhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSliderhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_hasHeightForWidth(self: ptr cQSlider, slot: int): bool {.exportc: "miqt_exec_callback_QSlider_hasHeightForWidth ".} =
  type Cb = proc(super: QSliderhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QSlider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QSlider, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQSlider_virtualbase_paintEngine(self.h))

type QSliderpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QSlider, slot: proc(super: QSliderpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QSliderpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_paintEngine(self: ptr cQSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QSlider_paintEngine ".} =
  type Cb = proc(super: QSliderpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QSlider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QSlider, event: gen_qevent.QMouseEvent): void =


  fQSlider_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QSlidermouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QSlider, slot: proc(super: QSlidermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSlidermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_mouseDoubleClickEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QSlidermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QSlider, event: gen_qevent.QKeyEvent): void =


  fQSlider_virtualbase_keyReleaseEvent(self.h, event.h)

type QSliderkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QSlider, slot: proc(super: QSliderkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_keyReleaseEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_keyReleaseEvent ".} =
  type Cb = proc(super: QSliderkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QSlider, event: gen_qevent.QFocusEvent): void =


  fQSlider_virtualbase_focusInEvent(self.h, event.h)

type QSliderfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QSlider, slot: proc(super: QSliderfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_focusInEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_focusInEvent ".} =
  type Cb = proc(super: QSliderfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QSlider, event: gen_qevent.QFocusEvent): void =


  fQSlider_virtualbase_focusOutEvent(self.h, event.h)

type QSliderfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QSlider, slot: proc(super: QSliderfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_focusOutEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_focusOutEvent ".} =
  type Cb = proc(super: QSliderfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QSlider, event: gen_qcoreevent.QEvent): void =


  fQSlider_virtualbase_enterEvent(self.h, event.h)

type QSliderenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QSlider, slot: proc(super: QSliderenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_enterEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_enterEvent ".} =
  type Cb = proc(super: QSliderenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QSlider(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QSlider, event: gen_qcoreevent.QEvent): void =


  fQSlider_virtualbase_leaveEvent(self.h, event.h)

type QSliderleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QSlider, slot: proc(super: QSliderleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_leaveEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_leaveEvent ".} =
  type Cb = proc(super: QSliderleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QSlider(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QSlider, event: gen_qevent.QMoveEvent): void =


  fQSlider_virtualbase_moveEvent(self.h, event.h)

type QSlidermoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QSlider, slot: proc(super: QSlidermoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSlidermoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_moveEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_moveEvent ".} =
  type Cb = proc(super: QSlidermoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QSlider, event: gen_qevent.QResizeEvent): void =


  fQSlider_virtualbase_resizeEvent(self.h, event.h)

type QSliderresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QSlider, slot: proc(super: QSliderresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_resizeEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_resizeEvent ".} =
  type Cb = proc(super: QSliderresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QSlider, event: gen_qevent.QCloseEvent): void =


  fQSlider_virtualbase_closeEvent(self.h, event.h)

type QSlidercloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QSlider, slot: proc(super: QSlidercloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSlidercloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_closeEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_closeEvent ".} =
  type Cb = proc(super: QSlidercloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QSlider, event: gen_qevent.QContextMenuEvent): void =


  fQSlider_virtualbase_contextMenuEvent(self.h, event.h)

type QSlidercontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QSlider, slot: proc(super: QSlidercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSlidercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_contextMenuEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_contextMenuEvent ".} =
  type Cb = proc(super: QSlidercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QSlider, event: gen_qevent.QTabletEvent): void =


  fQSlider_virtualbase_tabletEvent(self.h, event.h)

type QSlidertabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QSlider, slot: proc(super: QSlidertabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSlidertabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_tabletEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_tabletEvent ".} =
  type Cb = proc(super: QSlidertabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QSlider, event: gen_qevent.QActionEvent): void =


  fQSlider_virtualbase_actionEvent(self.h, event.h)

type QSlideractionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QSlider, slot: proc(super: QSlideractionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSlideractionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_actionEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_actionEvent ".} =
  type Cb = proc(super: QSlideractionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QSlider, event: gen_qevent.QDragEnterEvent): void =


  fQSlider_virtualbase_dragEnterEvent(self.h, event.h)

type QSliderdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QSlider, slot: proc(super: QSliderdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_dragEnterEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_dragEnterEvent ".} =
  type Cb = proc(super: QSliderdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QSlider, event: gen_qevent.QDragMoveEvent): void =


  fQSlider_virtualbase_dragMoveEvent(self.h, event.h)

type QSliderdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QSlider, slot: proc(super: QSliderdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_dragMoveEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_dragMoveEvent ".} =
  type Cb = proc(super: QSliderdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QSlider, event: gen_qevent.QDragLeaveEvent): void =


  fQSlider_virtualbase_dragLeaveEvent(self.h, event.h)

type QSliderdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QSlider, slot: proc(super: QSliderdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_dragLeaveEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_dragLeaveEvent ".} =
  type Cb = proc(super: QSliderdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QSlider, event: gen_qevent.QDropEvent): void =


  fQSlider_virtualbase_dropEvent(self.h, event.h)

type QSliderdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QSlider, slot: proc(super: QSliderdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_dropEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_dropEvent ".} =
  type Cb = proc(super: QSliderdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QSlider, event: gen_qevent.QShowEvent): void =


  fQSlider_virtualbase_showEvent(self.h, event.h)

type QSlidershowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QSlider, slot: proc(super: QSlidershowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSlidershowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_showEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_showEvent ".} =
  type Cb = proc(super: QSlidershowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QSlider, event: gen_qevent.QHideEvent): void =


  fQSlider_virtualbase_hideEvent(self.h, event.h)

type QSliderhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QSlider, slot: proc(super: QSliderhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_hideEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_hideEvent ".} =
  type Cb = proc(super: QSliderhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QSlider(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QSlider, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQSlider_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QSlidernativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QSlider, slot: proc(super: QSlidernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QSlidernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_nativeEvent(self: ptr cQSlider, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QSlider_nativeEvent ".} =
  type Cb = proc(super: QSlidernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QSlider(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QSlider, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQSlider_virtualbase_metric(self.h, cint(param1))

type QSlidermetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QSlider, slot: proc(super: QSlidermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QSlidermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_metric(self: ptr cQSlider, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSlider_metric ".} =
  type Cb = proc(super: QSlidermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QSlider(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QSlider, painter: gen_qpainter.QPainter): void =


  fQSlider_virtualbase_initPainter(self.h, painter.h)

type QSliderinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QSlider, slot: proc(super: QSliderinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_initPainter(self: ptr cQSlider, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSlider_initPainter ".} =
  type Cb = proc(super: QSliderinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QSlider(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QSlider, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQSlider_virtualbase_redirected(self.h, offset.h))

type QSliderredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QSlider, slot: proc(super: QSliderredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QSliderredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_redirected(self: ptr cQSlider, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSlider_redirected ".} =
  type Cb = proc(super: QSliderredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QSlider(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QSlider, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQSlider_virtualbase_sharedPainter(self.h))

type QSlidersharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QSlider, slot: proc(super: QSlidersharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QSlidersharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_sharedPainter(self: ptr cQSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QSlider_sharedPainter ".} =
  type Cb = proc(super: QSlidersharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QSlider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QSlider, param1: gen_qevent.QInputMethodEvent): void =


  fQSlider_virtualbase_inputMethodEvent(self.h, param1.h)

type QSliderinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QSlider, slot: proc(super: QSliderinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_inputMethodEvent(self: ptr cQSlider, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSlider_inputMethodEvent ".} =
  type Cb = proc(super: QSliderinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QSlider(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QSlider, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQSlider_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QSliderinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QSlider, slot: proc(super: QSliderinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QSliderinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_inputMethodQuery(self: ptr cQSlider, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QSlider_inputMethodQuery ".} =
  type Cb = proc(super: QSliderinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QSlider(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QSlider, next: bool): bool =


  fQSlider_virtualbase_focusNextPrevChild(self.h, next)

type QSliderfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QSlider, slot: proc(super: QSliderfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QSliderfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_focusNextPrevChild(self: ptr cQSlider, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QSlider_focusNextPrevChild ".} =
  type Cb = proc(super: QSliderfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QSlider(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSlider, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSlider_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSlidereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSlider, slot: proc(super: QSlidereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSlidereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_eventFilter(self: ptr cQSlider, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSlider_eventFilter ".} =
  type Cb = proc(super: QSlidereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSlider(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QSlider, event: gen_qcoreevent.QChildEvent): void =


  fQSlider_virtualbase_childEvent(self.h, event.h)

type QSliderchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSlider, slot: proc(super: QSliderchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_childEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_childEvent ".} =
  type Cb = proc(super: QSliderchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSlider(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSlider, event: gen_qcoreevent.QEvent): void =


  fQSlider_virtualbase_customEvent(self.h, event.h)

type QSlidercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSlider, slot: proc(super: QSlidercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSlidercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_customEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_customEvent ".} =
  type Cb = proc(super: QSlidercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSlider(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSlider, signal: gen_qmetaobject.QMetaMethod): void =


  fQSlider_virtualbase_connectNotify(self.h, signal.h)

type QSliderconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSlider, slot: proc(super: QSliderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_connectNotify(self: ptr cQSlider, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSlider_connectNotify ".} =
  type Cb = proc(super: QSliderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSlider(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSlider, signal: gen_qmetaobject.QMetaMethod): void =


  fQSlider_virtualbase_disconnectNotify(self.h, signal.h)

type QSliderdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSlider, slot: proc(super: QSliderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSliderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_disconnectNotify(self: ptr cQSlider, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSlider_disconnectNotify ".} =
  type Cb = proc(super: QSliderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSlider(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSlider): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSlider_staticMetaObject())
proc delete*(self: QSlider) =
  fcQSlider_delete(self.h)
