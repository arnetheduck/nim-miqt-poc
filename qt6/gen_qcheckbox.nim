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
{.compile("gen_qcheckbox.cpp", cflags).}


import gen_qcheckbox_types
export gen_qcheckbox_types

import
  gen_qabstractbutton,
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
  gen_qabstractbutton,
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

type cQCheckBox*{.exportc: "QCheckBox", incompleteStruct.} = object

proc fcQCheckBox_new(parent: pointer): ptr cQCheckBox {.importc: "QCheckBox_new".}
proc fcQCheckBox_new2(): ptr cQCheckBox {.importc: "QCheckBox_new2".}
proc fcQCheckBox_new3(text: struct_miqt_string): ptr cQCheckBox {.importc: "QCheckBox_new3".}
proc fcQCheckBox_new4(text: struct_miqt_string, parent: pointer): ptr cQCheckBox {.importc: "QCheckBox_new4".}
proc fcQCheckBox_metaObject(self: pointer, ): pointer {.importc: "QCheckBox_metaObject".}
proc fcQCheckBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QCheckBox_metacast".}
proc fcQCheckBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCheckBox_metacall".}
proc fcQCheckBox_tr(s: cstring): struct_miqt_string {.importc: "QCheckBox_tr".}
proc fcQCheckBox_sizeHint(self: pointer, ): pointer {.importc: "QCheckBox_sizeHint".}
proc fcQCheckBox_minimumSizeHint(self: pointer, ): pointer {.importc: "QCheckBox_minimumSizeHint".}
proc fcQCheckBox_setTristate(self: pointer, ): void {.importc: "QCheckBox_setTristate".}
proc fcQCheckBox_isTristate(self: pointer, ): bool {.importc: "QCheckBox_isTristate".}
proc fcQCheckBox_checkState(self: pointer, ): cint {.importc: "QCheckBox_checkState".}
proc fcQCheckBox_setCheckState(self: pointer, state: cint): void {.importc: "QCheckBox_setCheckState".}
proc fcQCheckBox_stateChanged(self: pointer, param1: cint): void {.importc: "QCheckBox_stateChanged".}
proc fQCheckBox_connect_stateChanged(self: pointer, slot: int) {.importc: "QCheckBox_connect_stateChanged".}
proc fcQCheckBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCheckBox_tr2".}
proc fcQCheckBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCheckBox_tr3".}
proc fcQCheckBox_setTristate1(self: pointer, y: bool): void {.importc: "QCheckBox_setTristate1".}
proc fQCheckBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCheckBox_virtualbase_metacall".}
proc fcQCheckBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_metacall".}
proc fQCheckBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QCheckBox_virtualbase_sizeHint".}
proc fcQCheckBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_sizeHint".}
proc fQCheckBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QCheckBox_virtualbase_minimumSizeHint".}
proc fcQCheckBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_minimumSizeHint".}
proc fQCheckBox_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QCheckBox_virtualbase_event".}
proc fcQCheckBox_override_virtual_event(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_event".}
proc fQCheckBox_virtualbase_hitButton(self: pointer, pos: pointer): bool{.importc: "QCheckBox_virtualbase_hitButton".}
proc fcQCheckBox_override_virtual_hitButton(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_hitButton".}
proc fQCheckBox_virtualbase_checkStateSet(self: pointer, ): void{.importc: "QCheckBox_virtualbase_checkStateSet".}
proc fcQCheckBox_override_virtual_checkStateSet(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_checkStateSet".}
proc fQCheckBox_virtualbase_nextCheckState(self: pointer, ): void{.importc: "QCheckBox_virtualbase_nextCheckState".}
proc fcQCheckBox_override_virtual_nextCheckState(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_nextCheckState".}
proc fQCheckBox_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QCheckBox_virtualbase_paintEvent".}
proc fcQCheckBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_paintEvent".}
proc fQCheckBox_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QCheckBox_virtualbase_mouseMoveEvent".}
proc fcQCheckBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_mouseMoveEvent".}
proc fQCheckBox_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QCheckBox_virtualbase_initStyleOption".}
proc fcQCheckBox_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_initStyleOption".}
proc fQCheckBox_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_keyPressEvent".}
proc fcQCheckBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_keyPressEvent".}
proc fQCheckBox_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_keyReleaseEvent".}
proc fcQCheckBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_keyReleaseEvent".}
proc fQCheckBox_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_mousePressEvent".}
proc fcQCheckBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_mousePressEvent".}
proc fQCheckBox_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_mouseReleaseEvent".}
proc fcQCheckBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_mouseReleaseEvent".}
proc fQCheckBox_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_focusInEvent".}
proc fcQCheckBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_focusInEvent".}
proc fQCheckBox_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_focusOutEvent".}
proc fcQCheckBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_focusOutEvent".}
proc fQCheckBox_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_changeEvent".}
proc fcQCheckBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_changeEvent".}
proc fQCheckBox_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_timerEvent".}
proc fcQCheckBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_timerEvent".}
proc fQCheckBox_virtualbase_devType(self: pointer, ): cint{.importc: "QCheckBox_virtualbase_devType".}
proc fcQCheckBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_devType".}
proc fQCheckBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QCheckBox_virtualbase_setVisible".}
proc fcQCheckBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_setVisible".}
proc fQCheckBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QCheckBox_virtualbase_heightForWidth".}
proc fcQCheckBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_heightForWidth".}
proc fQCheckBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QCheckBox_virtualbase_hasHeightForWidth".}
proc fcQCheckBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_hasHeightForWidth".}
proc fQCheckBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QCheckBox_virtualbase_paintEngine".}
proc fcQCheckBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_paintEngine".}
proc fQCheckBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_mouseDoubleClickEvent".}
proc fcQCheckBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_mouseDoubleClickEvent".}
proc fQCheckBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_wheelEvent".}
proc fcQCheckBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_wheelEvent".}
proc fQCheckBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_enterEvent".}
proc fcQCheckBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_enterEvent".}
proc fQCheckBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_leaveEvent".}
proc fcQCheckBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_leaveEvent".}
proc fQCheckBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_moveEvent".}
proc fcQCheckBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_moveEvent".}
proc fQCheckBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_resizeEvent".}
proc fcQCheckBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_resizeEvent".}
proc fQCheckBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_closeEvent".}
proc fcQCheckBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_closeEvent".}
proc fQCheckBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_contextMenuEvent".}
proc fcQCheckBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_contextMenuEvent".}
proc fQCheckBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_tabletEvent".}
proc fcQCheckBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_tabletEvent".}
proc fQCheckBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_actionEvent".}
proc fcQCheckBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_actionEvent".}
proc fQCheckBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_dragEnterEvent".}
proc fcQCheckBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_dragEnterEvent".}
proc fQCheckBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_dragMoveEvent".}
proc fcQCheckBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_dragMoveEvent".}
proc fQCheckBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_dragLeaveEvent".}
proc fcQCheckBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_dragLeaveEvent".}
proc fQCheckBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_dropEvent".}
proc fcQCheckBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_dropEvent".}
proc fQCheckBox_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_showEvent".}
proc fcQCheckBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_showEvent".}
proc fQCheckBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_hideEvent".}
proc fcQCheckBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_hideEvent".}
proc fQCheckBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QCheckBox_virtualbase_nativeEvent".}
proc fcQCheckBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_nativeEvent".}
proc fQCheckBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QCheckBox_virtualbase_metric".}
proc fcQCheckBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_metric".}
proc fQCheckBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QCheckBox_virtualbase_initPainter".}
proc fcQCheckBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_initPainter".}
proc fQCheckBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QCheckBox_virtualbase_redirected".}
proc fcQCheckBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_redirected".}
proc fQCheckBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QCheckBox_virtualbase_sharedPainter".}
proc fcQCheckBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_sharedPainter".}
proc fQCheckBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QCheckBox_virtualbase_inputMethodEvent".}
proc fcQCheckBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_inputMethodEvent".}
proc fQCheckBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QCheckBox_virtualbase_inputMethodQuery".}
proc fcQCheckBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_inputMethodQuery".}
proc fQCheckBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QCheckBox_virtualbase_focusNextPrevChild".}
proc fcQCheckBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_focusNextPrevChild".}
proc fQCheckBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCheckBox_virtualbase_eventFilter".}
proc fcQCheckBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_eventFilter".}
proc fQCheckBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_childEvent".}
proc fcQCheckBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_childEvent".}
proc fQCheckBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_customEvent".}
proc fcQCheckBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_customEvent".}
proc fQCheckBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCheckBox_virtualbase_connectNotify".}
proc fcQCheckBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_connectNotify".}
proc fQCheckBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCheckBox_virtualbase_disconnectNotify".}
proc fcQCheckBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_disconnectNotify".}
proc fcQCheckBox_staticMetaObject(): pointer {.importc: "QCheckBox_staticMetaObject".}
proc fcQCheckBox_delete(self: pointer) {.importc: "QCheckBox_delete".}


func init*(T: type QCheckBox, h: ptr cQCheckBox): QCheckBox =
  T(h: h)
proc create*(T: type QCheckBox, parent: gen_qwidget.QWidget): QCheckBox =

  QCheckBox.init(fcQCheckBox_new(parent.h))
proc create*(T: type QCheckBox, ): QCheckBox =

  QCheckBox.init(fcQCheckBox_new2())
proc create*(T: type QCheckBox, text: string): QCheckBox =

  QCheckBox.init(fcQCheckBox_new3(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QCheckBox, text: string, parent: gen_qwidget.QWidget): QCheckBox =

  QCheckBox.init(fcQCheckBox_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc metaObject*(self: QCheckBox, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCheckBox_metaObject(self.h))

proc metacast*(self: QCheckBox, param1: cstring): pointer =

  fcQCheckBox_metacast(self.h, param1)

proc metacall*(self: QCheckBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCheckBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCheckBox, s: cstring): string =

  let v_ms = fcQCheckBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: QCheckBox, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQCheckBox_sizeHint(self.h))

proc minimumSizeHint*(self: QCheckBox, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQCheckBox_minimumSizeHint(self.h))

proc setTristate*(self: QCheckBox, ): void =

  fcQCheckBox_setTristate(self.h)

proc isTristate*(self: QCheckBox, ): bool =

  fcQCheckBox_isTristate(self.h)

proc checkState*(self: QCheckBox, ): gen_qnamespace.CheckState =

  gen_qnamespace.CheckState(fcQCheckBox_checkState(self.h))

proc setCheckState*(self: QCheckBox, state: gen_qnamespace.CheckState): void =

  fcQCheckBox_setCheckState(self.h, cint(state))

proc stateChanged*(self: QCheckBox, param1: cint): void =

  fcQCheckBox_stateChanged(self.h, param1)

proc miqt_exec_callback_QCheckBox_stateChanged(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onstateChanged*(self: QCheckBox, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCheckBox_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QCheckBox, s: cstring, c: cstring): string =

  let v_ms = fcQCheckBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCheckBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCheckBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTristate1*(self: QCheckBox, y: bool): void =

  fcQCheckBox_setTristate1(self.h, y)

proc callVirtualBase_metacall(self: QCheckBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQCheckBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCheckBoxmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QCheckBox, slot: proc(super: QCheckBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_metacall(self: ptr cQCheckBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCheckBox_metacall ".} =
  type Cb = proc(super: QCheckBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QCheckBox(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QCheckBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQCheckBox_virtualbase_sizeHint(self.h))

type QCheckBoxsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QCheckBox, slot: proc(super: QCheckBoxsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_sizeHint(self: ptr cQCheckBox, slot: int): pointer {.exportc: "miqt_exec_callback_QCheckBox_sizeHint ".} =
  type Cb = proc(super: QCheckBoxsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QCheckBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QCheckBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQCheckBox_virtualbase_minimumSizeHint(self.h))

type QCheckBoxminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QCheckBox, slot: proc(super: QCheckBoxminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_minimumSizeHint(self: ptr cQCheckBox, slot: int): pointer {.exportc: "miqt_exec_callback_QCheckBox_minimumSizeHint ".} =
  type Cb = proc(super: QCheckBoxminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QCheckBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QCheckBox, e: gen_qcoreevent.QEvent): bool =


  fQCheckBox_virtualbase_event(self.h, e.h)

type QCheckBoxeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QCheckBox, slot: proc(super: QCheckBoxeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_event(self: ptr cQCheckBox, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QCheckBox_event ".} =
  type Cb = proc(super: QCheckBoxeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QCheckBox(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hitButton(self: QCheckBox, pos: gen_qpoint.QPoint): bool =


  fQCheckBox_virtualbase_hitButton(self.h, pos.h)

type QCheckBoxhitButtonBase* = proc(pos: gen_qpoint.QPoint): bool
proc onhitButton*(self: QCheckBox, slot: proc(super: QCheckBoxhitButtonBase, pos: gen_qpoint.QPoint): bool) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxhitButtonBase, pos: gen_qpoint.QPoint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_hitButton(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_hitButton(self: ptr cQCheckBox, slot: int, pos: pointer): bool {.exportc: "miqt_exec_callback_QCheckBox_hitButton ".} =
  type Cb = proc(super: QCheckBoxhitButtonBase, pos: gen_qpoint.QPoint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: gen_qpoint.QPoint): auto =
    callVirtualBase_hitButton(QCheckBox(h: self), pos)
  let slotval1 = gen_qpoint.QPoint(h: pos)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_checkStateSet(self: QCheckBox, ): void =


  fQCheckBox_virtualbase_checkStateSet(self.h)

type QCheckBoxcheckStateSetBase* = proc(): void
proc oncheckStateSet*(self: QCheckBox, slot: proc(super: QCheckBoxcheckStateSetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxcheckStateSetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_checkStateSet(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_checkStateSet(self: ptr cQCheckBox, slot: int): void {.exportc: "miqt_exec_callback_QCheckBox_checkStateSet ".} =
  type Cb = proc(super: QCheckBoxcheckStateSetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_checkStateSet(QCheckBox(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_nextCheckState(self: QCheckBox, ): void =


  fQCheckBox_virtualbase_nextCheckState(self.h)

type QCheckBoxnextCheckStateBase* = proc(): void
proc onnextCheckState*(self: QCheckBox, slot: proc(super: QCheckBoxnextCheckStateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxnextCheckStateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_nextCheckState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_nextCheckState(self: ptr cQCheckBox, slot: int): void {.exportc: "miqt_exec_callback_QCheckBox_nextCheckState ".} =
  type Cb = proc(super: QCheckBoxnextCheckStateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_nextCheckState(QCheckBox(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_paintEvent(self: QCheckBox, param1: gen_qevent.QPaintEvent): void =


  fQCheckBox_virtualbase_paintEvent(self.h, param1.h)

type QCheckBoxpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QCheckBox, slot: proc(super: QCheckBoxpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_paintEvent(self: ptr cQCheckBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_paintEvent ".} =
  type Cb = proc(super: QCheckBoxpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QCheckBox(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QCheckBox, param1: gen_qevent.QMouseEvent): void =


  fQCheckBox_virtualbase_mouseMoveEvent(self.h, param1.h)

type QCheckBoxmouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QCheckBox, slot: proc(super: QCheckBoxmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_mouseMoveEvent(self: ptr cQCheckBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_mouseMoveEvent ".} =
  type Cb = proc(super: QCheckBoxmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QCheckBox(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QCheckBox, option: gen_qstyleoption.QStyleOptionButton): void =


  fQCheckBox_virtualbase_initStyleOption(self.h, option.h)

type QCheckBoxinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionButton): void
proc oninitStyleOption*(self: QCheckBox, slot: proc(super: QCheckBoxinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionButton): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionButton): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_initStyleOption(self: ptr cQCheckBox, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_initStyleOption ".} =
  type Cb = proc(super: QCheckBoxinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionButton): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionButton): auto =
    callVirtualBase_initStyleOption(QCheckBox(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionButton(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QCheckBox, e: gen_qevent.QKeyEvent): void =


  fQCheckBox_virtualbase_keyPressEvent(self.h, e.h)

type QCheckBoxkeyPressEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QCheckBox, slot: proc(super: QCheckBoxkeyPressEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_keyPressEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_keyPressEvent ".} =
  type Cb = proc(super: QCheckBoxkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QCheckBox(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QCheckBox, e: gen_qevent.QKeyEvent): void =


  fQCheckBox_virtualbase_keyReleaseEvent(self.h, e.h)

type QCheckBoxkeyReleaseEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QCheckBox, slot: proc(super: QCheckBoxkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_keyReleaseEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_keyReleaseEvent ".} =
  type Cb = proc(super: QCheckBoxkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QCheckBox(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QCheckBox, e: gen_qevent.QMouseEvent): void =


  fQCheckBox_virtualbase_mousePressEvent(self.h, e.h)

type QCheckBoxmousePressEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QCheckBox, slot: proc(super: QCheckBoxmousePressEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_mousePressEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_mousePressEvent ".} =
  type Cb = proc(super: QCheckBoxmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QCheckBox(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QCheckBox, e: gen_qevent.QMouseEvent): void =


  fQCheckBox_virtualbase_mouseReleaseEvent(self.h, e.h)

type QCheckBoxmouseReleaseEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QCheckBox, slot: proc(super: QCheckBoxmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_mouseReleaseEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_mouseReleaseEvent ".} =
  type Cb = proc(super: QCheckBoxmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QCheckBox(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QCheckBox, e: gen_qevent.QFocusEvent): void =


  fQCheckBox_virtualbase_focusInEvent(self.h, e.h)

type QCheckBoxfocusInEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QCheckBox, slot: proc(super: QCheckBoxfocusInEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_focusInEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_focusInEvent ".} =
  type Cb = proc(super: QCheckBoxfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QCheckBox(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QCheckBox, e: gen_qevent.QFocusEvent): void =


  fQCheckBox_virtualbase_focusOutEvent(self.h, e.h)

type QCheckBoxfocusOutEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QCheckBox, slot: proc(super: QCheckBoxfocusOutEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_focusOutEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_focusOutEvent ".} =
  type Cb = proc(super: QCheckBoxfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QCheckBox(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QCheckBox, e: gen_qcoreevent.QEvent): void =


  fQCheckBox_virtualbase_changeEvent(self.h, e.h)

type QCheckBoxchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QCheckBox, slot: proc(super: QCheckBoxchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_changeEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_changeEvent ".} =
  type Cb = proc(super: QCheckBoxchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QCheckBox(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QCheckBox, e: gen_qcoreevent.QTimerEvent): void =


  fQCheckBox_virtualbase_timerEvent(self.h, e.h)

type QCheckBoxtimerEventBase* = proc(e: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QCheckBox, slot: proc(super: QCheckBoxtimerEventBase, e: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxtimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_timerEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_timerEvent ".} =
  type Cb = proc(super: QCheckBoxtimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QCheckBox(h: self), e)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QCheckBox, ): cint =


  fQCheckBox_virtualbase_devType(self.h)

type QCheckBoxdevTypeBase* = proc(): cint
proc ondevType*(self: QCheckBox, slot: proc(super: QCheckBoxdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_devType(self: ptr cQCheckBox, slot: int): cint {.exportc: "miqt_exec_callback_QCheckBox_devType ".} =
  type Cb = proc(super: QCheckBoxdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QCheckBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QCheckBox, visible: bool): void =


  fQCheckBox_virtualbase_setVisible(self.h, visible)

type QCheckBoxsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QCheckBox, slot: proc(super: QCheckBoxsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_setVisible(self: ptr cQCheckBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QCheckBox_setVisible ".} =
  type Cb = proc(super: QCheckBoxsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QCheckBox(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QCheckBox, param1: cint): cint =


  fQCheckBox_virtualbase_heightForWidth(self.h, param1)

type QCheckBoxheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QCheckBox, slot: proc(super: QCheckBoxheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_heightForWidth(self: ptr cQCheckBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCheckBox_heightForWidth ".} =
  type Cb = proc(super: QCheckBoxheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QCheckBox(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QCheckBox, ): bool =


  fQCheckBox_virtualbase_hasHeightForWidth(self.h)

type QCheckBoxhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QCheckBox, slot: proc(super: QCheckBoxhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_hasHeightForWidth(self: ptr cQCheckBox, slot: int): bool {.exportc: "miqt_exec_callback_QCheckBox_hasHeightForWidth ".} =
  type Cb = proc(super: QCheckBoxhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QCheckBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QCheckBox, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQCheckBox_virtualbase_paintEngine(self.h))

type QCheckBoxpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QCheckBox, slot: proc(super: QCheckBoxpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_paintEngine(self: ptr cQCheckBox, slot: int): pointer {.exportc: "miqt_exec_callback_QCheckBox_paintEngine ".} =
  type Cb = proc(super: QCheckBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QCheckBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QCheckBox, event: gen_qevent.QMouseEvent): void =


  fQCheckBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QCheckBoxmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QCheckBox, slot: proc(super: QCheckBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_mouseDoubleClickEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QCheckBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QCheckBox, event: gen_qevent.QWheelEvent): void =


  fQCheckBox_virtualbase_wheelEvent(self.h, event.h)

type QCheckBoxwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QCheckBox, slot: proc(super: QCheckBoxwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_wheelEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_wheelEvent ".} =
  type Cb = proc(super: QCheckBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QCheckBox, event: gen_qevent.QEnterEvent): void =


  fQCheckBox_virtualbase_enterEvent(self.h, event.h)

type QCheckBoxenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QCheckBox, slot: proc(super: QCheckBoxenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_enterEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_enterEvent ".} =
  type Cb = proc(super: QCheckBoxenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QCheckBox, event: gen_qcoreevent.QEvent): void =


  fQCheckBox_virtualbase_leaveEvent(self.h, event.h)

type QCheckBoxleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QCheckBox, slot: proc(super: QCheckBoxleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_leaveEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_leaveEvent ".} =
  type Cb = proc(super: QCheckBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QCheckBox, event: gen_qevent.QMoveEvent): void =


  fQCheckBox_virtualbase_moveEvent(self.h, event.h)

type QCheckBoxmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QCheckBox, slot: proc(super: QCheckBoxmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_moveEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_moveEvent ".} =
  type Cb = proc(super: QCheckBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QCheckBox, event: gen_qevent.QResizeEvent): void =


  fQCheckBox_virtualbase_resizeEvent(self.h, event.h)

type QCheckBoxresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QCheckBox, slot: proc(super: QCheckBoxresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_resizeEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_resizeEvent ".} =
  type Cb = proc(super: QCheckBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QCheckBox, event: gen_qevent.QCloseEvent): void =


  fQCheckBox_virtualbase_closeEvent(self.h, event.h)

type QCheckBoxcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QCheckBox, slot: proc(super: QCheckBoxcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_closeEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_closeEvent ".} =
  type Cb = proc(super: QCheckBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QCheckBox, event: gen_qevent.QContextMenuEvent): void =


  fQCheckBox_virtualbase_contextMenuEvent(self.h, event.h)

type QCheckBoxcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QCheckBox, slot: proc(super: QCheckBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_contextMenuEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_contextMenuEvent ".} =
  type Cb = proc(super: QCheckBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QCheckBox, event: gen_qevent.QTabletEvent): void =


  fQCheckBox_virtualbase_tabletEvent(self.h, event.h)

type QCheckBoxtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QCheckBox, slot: proc(super: QCheckBoxtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_tabletEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_tabletEvent ".} =
  type Cb = proc(super: QCheckBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QCheckBox, event: gen_qevent.QActionEvent): void =


  fQCheckBox_virtualbase_actionEvent(self.h, event.h)

type QCheckBoxactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QCheckBox, slot: proc(super: QCheckBoxactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_actionEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_actionEvent ".} =
  type Cb = proc(super: QCheckBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QCheckBox, event: gen_qevent.QDragEnterEvent): void =


  fQCheckBox_virtualbase_dragEnterEvent(self.h, event.h)

type QCheckBoxdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QCheckBox, slot: proc(super: QCheckBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_dragEnterEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_dragEnterEvent ".} =
  type Cb = proc(super: QCheckBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QCheckBox, event: gen_qevent.QDragMoveEvent): void =


  fQCheckBox_virtualbase_dragMoveEvent(self.h, event.h)

type QCheckBoxdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QCheckBox, slot: proc(super: QCheckBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_dragMoveEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_dragMoveEvent ".} =
  type Cb = proc(super: QCheckBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QCheckBox, event: gen_qevent.QDragLeaveEvent): void =


  fQCheckBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QCheckBoxdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QCheckBox, slot: proc(super: QCheckBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_dragLeaveEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_dragLeaveEvent ".} =
  type Cb = proc(super: QCheckBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QCheckBox, event: gen_qevent.QDropEvent): void =


  fQCheckBox_virtualbase_dropEvent(self.h, event.h)

type QCheckBoxdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QCheckBox, slot: proc(super: QCheckBoxdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_dropEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_dropEvent ".} =
  type Cb = proc(super: QCheckBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QCheckBox, event: gen_qevent.QShowEvent): void =


  fQCheckBox_virtualbase_showEvent(self.h, event.h)

type QCheckBoxshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QCheckBox, slot: proc(super: QCheckBoxshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_showEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_showEvent ".} =
  type Cb = proc(super: QCheckBoxshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QCheckBox, event: gen_qevent.QHideEvent): void =


  fQCheckBox_virtualbase_hideEvent(self.h, event.h)

type QCheckBoxhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QCheckBox, slot: proc(super: QCheckBoxhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_hideEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_hideEvent ".} =
  type Cb = proc(super: QCheckBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QCheckBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQCheckBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QCheckBoxnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QCheckBox, slot: proc(super: QCheckBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_nativeEvent(self: ptr cQCheckBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QCheckBox_nativeEvent ".} =
  type Cb = proc(super: QCheckBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QCheckBox(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QCheckBox, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQCheckBox_virtualbase_metric(self.h, cint(param1))

type QCheckBoxmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QCheckBox, slot: proc(super: QCheckBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_metric(self: ptr cQCheckBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCheckBox_metric ".} =
  type Cb = proc(super: QCheckBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QCheckBox(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QCheckBox, painter: gen_qpainter.QPainter): void =


  fQCheckBox_virtualbase_initPainter(self.h, painter.h)

type QCheckBoxinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QCheckBox, slot: proc(super: QCheckBoxinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_initPainter(self: ptr cQCheckBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_initPainter ".} =
  type Cb = proc(super: QCheckBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QCheckBox(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QCheckBox, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQCheckBox_virtualbase_redirected(self.h, offset.h))

type QCheckBoxredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QCheckBox, slot: proc(super: QCheckBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_redirected(self: ptr cQCheckBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QCheckBox_redirected ".} =
  type Cb = proc(super: QCheckBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QCheckBox(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QCheckBox, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQCheckBox_virtualbase_sharedPainter(self.h))

type QCheckBoxsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QCheckBox, slot: proc(super: QCheckBoxsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_sharedPainter(self: ptr cQCheckBox, slot: int): pointer {.exportc: "miqt_exec_callback_QCheckBox_sharedPainter ".} =
  type Cb = proc(super: QCheckBoxsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QCheckBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QCheckBox, param1: gen_qevent.QInputMethodEvent): void =


  fQCheckBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QCheckBoxinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QCheckBox, slot: proc(super: QCheckBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_inputMethodEvent(self: ptr cQCheckBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_inputMethodEvent ".} =
  type Cb = proc(super: QCheckBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QCheckBox(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QCheckBox, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQCheckBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QCheckBoxinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QCheckBox, slot: proc(super: QCheckBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_inputMethodQuery(self: ptr cQCheckBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QCheckBox_inputMethodQuery ".} =
  type Cb = proc(super: QCheckBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QCheckBox(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QCheckBox, next: bool): bool =


  fQCheckBox_virtualbase_focusNextPrevChild(self.h, next)

type QCheckBoxfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QCheckBox, slot: proc(super: QCheckBoxfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_focusNextPrevChild(self: ptr cQCheckBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QCheckBox_focusNextPrevChild ".} =
  type Cb = proc(super: QCheckBoxfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QCheckBox(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QCheckBox, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQCheckBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCheckBoxeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QCheckBox, slot: proc(super: QCheckBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_eventFilter(self: ptr cQCheckBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCheckBox_eventFilter ".} =
  type Cb = proc(super: QCheckBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QCheckBox(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QCheckBox, event: gen_qcoreevent.QChildEvent): void =


  fQCheckBox_virtualbase_childEvent(self.h, event.h)

type QCheckBoxchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QCheckBox, slot: proc(super: QCheckBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_childEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_childEvent ".} =
  type Cb = proc(super: QCheckBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QCheckBox, event: gen_qcoreevent.QEvent): void =


  fQCheckBox_virtualbase_customEvent(self.h, event.h)

type QCheckBoxcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QCheckBox, slot: proc(super: QCheckBoxcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_customEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_customEvent ".} =
  type Cb = proc(super: QCheckBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QCheckBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QCheckBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQCheckBox_virtualbase_connectNotify(self.h, signal.h)

type QCheckBoxconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QCheckBox, slot: proc(super: QCheckBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_connectNotify(self: ptr cQCheckBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_connectNotify ".} =
  type Cb = proc(super: QCheckBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QCheckBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QCheckBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQCheckBox_virtualbase_disconnectNotify(self.h, signal.h)

type QCheckBoxdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QCheckBox, slot: proc(super: QCheckBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCheckBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_disconnectNotify(self: ptr cQCheckBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_disconnectNotify ".} =
  type Cb = proc(super: QCheckBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QCheckBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QCheckBox): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCheckBox_staticMetaObject())
proc delete*(self: QCheckBox) =
  fcQCheckBox_delete(self.h)
