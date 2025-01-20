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
{.compile("gen_qradiobutton.cpp", cflags).}


import gen_qradiobutton_types
export gen_qradiobutton_types

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

type cQRadioButton*{.exportc: "QRadioButton", incompleteStruct.} = object

proc fcQRadioButton_new(parent: pointer): ptr cQRadioButton {.importc: "QRadioButton_new".}
proc fcQRadioButton_new2(): ptr cQRadioButton {.importc: "QRadioButton_new2".}
proc fcQRadioButton_new3(text: struct_miqt_string): ptr cQRadioButton {.importc: "QRadioButton_new3".}
proc fcQRadioButton_new4(text: struct_miqt_string, parent: pointer): ptr cQRadioButton {.importc: "QRadioButton_new4".}
proc fcQRadioButton_metaObject(self: pointer, ): pointer {.importc: "QRadioButton_metaObject".}
proc fcQRadioButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioButton_metacast".}
proc fcQRadioButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioButton_metacall".}
proc fcQRadioButton_tr(s: cstring): struct_miqt_string {.importc: "QRadioButton_tr".}
proc fcQRadioButton_sizeHint(self: pointer, ): pointer {.importc: "QRadioButton_sizeHint".}
proc fcQRadioButton_minimumSizeHint(self: pointer, ): pointer {.importc: "QRadioButton_minimumSizeHint".}
proc fcQRadioButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioButton_tr2".}
proc fcQRadioButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioButton_tr3".}
proc fQRadioButton_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QRadioButton_virtualbase_metaObject".}
proc fcQRadioButton_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_metaObject".}
proc fQRadioButton_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QRadioButton_virtualbase_metacast".}
proc fcQRadioButton_override_virtual_metacast(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_metacast".}
proc fQRadioButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QRadioButton_virtualbase_metacall".}
proc fcQRadioButton_override_virtual_metacall(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_metacall".}
proc fQRadioButton_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QRadioButton_virtualbase_sizeHint".}
proc fcQRadioButton_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_sizeHint".}
proc fQRadioButton_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QRadioButton_virtualbase_minimumSizeHint".}
proc fcQRadioButton_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_minimumSizeHint".}
proc fQRadioButton_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QRadioButton_virtualbase_event".}
proc fcQRadioButton_override_virtual_event(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_event".}
proc fQRadioButton_virtualbase_hitButton(self: pointer, param1: pointer): bool{.importc: "QRadioButton_virtualbase_hitButton".}
proc fcQRadioButton_override_virtual_hitButton(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_hitButton".}
proc fQRadioButton_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QRadioButton_virtualbase_paintEvent".}
proc fcQRadioButton_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_paintEvent".}
proc fQRadioButton_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QRadioButton_virtualbase_mouseMoveEvent".}
proc fcQRadioButton_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_mouseMoveEvent".}
proc fQRadioButton_virtualbase_initStyleOption(self: pointer, button: pointer): void{.importc: "QRadioButton_virtualbase_initStyleOption".}
proc fcQRadioButton_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_initStyleOption".}
proc fQRadioButton_virtualbase_checkStateSet(self: pointer, ): void{.importc: "QRadioButton_virtualbase_checkStateSet".}
proc fcQRadioButton_override_virtual_checkStateSet(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_checkStateSet".}
proc fQRadioButton_virtualbase_nextCheckState(self: pointer, ): void{.importc: "QRadioButton_virtualbase_nextCheckState".}
proc fcQRadioButton_override_virtual_nextCheckState(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_nextCheckState".}
proc fQRadioButton_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_keyPressEvent".}
proc fcQRadioButton_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_keyPressEvent".}
proc fQRadioButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_keyReleaseEvent".}
proc fcQRadioButton_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_keyReleaseEvent".}
proc fQRadioButton_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_mousePressEvent".}
proc fcQRadioButton_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_mousePressEvent".}
proc fQRadioButton_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_mouseReleaseEvent".}
proc fcQRadioButton_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_mouseReleaseEvent".}
proc fQRadioButton_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_focusInEvent".}
proc fcQRadioButton_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_focusInEvent".}
proc fQRadioButton_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_focusOutEvent".}
proc fcQRadioButton_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_focusOutEvent".}
proc fQRadioButton_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_changeEvent".}
proc fcQRadioButton_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_changeEvent".}
proc fQRadioButton_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_timerEvent".}
proc fcQRadioButton_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_timerEvent".}
proc fQRadioButton_virtualbase_devType(self: pointer, ): cint{.importc: "QRadioButton_virtualbase_devType".}
proc fcQRadioButton_override_virtual_devType(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_devType".}
proc fQRadioButton_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QRadioButton_virtualbase_setVisible".}
proc fcQRadioButton_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_setVisible".}
proc fQRadioButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QRadioButton_virtualbase_heightForWidth".}
proc fcQRadioButton_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_heightForWidth".}
proc fQRadioButton_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QRadioButton_virtualbase_hasHeightForWidth".}
proc fcQRadioButton_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_hasHeightForWidth".}
proc fQRadioButton_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QRadioButton_virtualbase_paintEngine".}
proc fcQRadioButton_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_paintEngine".}
proc fQRadioButton_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_mouseDoubleClickEvent".}
proc fcQRadioButton_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_mouseDoubleClickEvent".}
proc fQRadioButton_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_wheelEvent".}
proc fcQRadioButton_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_wheelEvent".}
proc fQRadioButton_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_enterEvent".}
proc fcQRadioButton_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_enterEvent".}
proc fQRadioButton_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_leaveEvent".}
proc fcQRadioButton_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_leaveEvent".}
proc fQRadioButton_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_moveEvent".}
proc fcQRadioButton_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_moveEvent".}
proc fQRadioButton_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_resizeEvent".}
proc fcQRadioButton_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_resizeEvent".}
proc fQRadioButton_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_closeEvent".}
proc fcQRadioButton_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_closeEvent".}
proc fQRadioButton_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_contextMenuEvent".}
proc fcQRadioButton_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_contextMenuEvent".}
proc fQRadioButton_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_tabletEvent".}
proc fcQRadioButton_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_tabletEvent".}
proc fQRadioButton_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_actionEvent".}
proc fcQRadioButton_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_actionEvent".}
proc fQRadioButton_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_dragEnterEvent".}
proc fcQRadioButton_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_dragEnterEvent".}
proc fQRadioButton_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_dragMoveEvent".}
proc fcQRadioButton_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_dragMoveEvent".}
proc fQRadioButton_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_dragLeaveEvent".}
proc fcQRadioButton_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_dragLeaveEvent".}
proc fQRadioButton_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_dropEvent".}
proc fcQRadioButton_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_dropEvent".}
proc fQRadioButton_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_showEvent".}
proc fcQRadioButton_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_showEvent".}
proc fQRadioButton_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_hideEvent".}
proc fcQRadioButton_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_hideEvent".}
proc fQRadioButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QRadioButton_virtualbase_nativeEvent".}
proc fcQRadioButton_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_nativeEvent".}
proc fQRadioButton_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QRadioButton_virtualbase_metric".}
proc fcQRadioButton_override_virtual_metric(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_metric".}
proc fQRadioButton_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QRadioButton_virtualbase_initPainter".}
proc fcQRadioButton_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_initPainter".}
proc fQRadioButton_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QRadioButton_virtualbase_redirected".}
proc fcQRadioButton_override_virtual_redirected(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_redirected".}
proc fQRadioButton_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QRadioButton_virtualbase_sharedPainter".}
proc fcQRadioButton_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_sharedPainter".}
proc fQRadioButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QRadioButton_virtualbase_inputMethodEvent".}
proc fcQRadioButton_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_inputMethodEvent".}
proc fQRadioButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QRadioButton_virtualbase_inputMethodQuery".}
proc fcQRadioButton_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_inputMethodQuery".}
proc fQRadioButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QRadioButton_virtualbase_focusNextPrevChild".}
proc fcQRadioButton_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_focusNextPrevChild".}
proc fQRadioButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QRadioButton_virtualbase_eventFilter".}
proc fcQRadioButton_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_eventFilter".}
proc fQRadioButton_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_childEvent".}
proc fcQRadioButton_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_childEvent".}
proc fQRadioButton_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_customEvent".}
proc fcQRadioButton_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_customEvent".}
proc fQRadioButton_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QRadioButton_virtualbase_connectNotify".}
proc fcQRadioButton_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_connectNotify".}
proc fQRadioButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QRadioButton_virtualbase_disconnectNotify".}
proc fcQRadioButton_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_disconnectNotify".}
proc fcQRadioButton_staticMetaObject(): pointer {.importc: "QRadioButton_staticMetaObject".}
proc fcQRadioButton_delete(self: pointer) {.importc: "QRadioButton_delete".}


func init*(T: type QRadioButton, h: ptr cQRadioButton): QRadioButton =
  T(h: h)
proc create*(T: type QRadioButton, parent: gen_qwidget.QWidget): QRadioButton =

  QRadioButton.init(fcQRadioButton_new(parent.h))
proc create*(T: type QRadioButton, ): QRadioButton =

  QRadioButton.init(fcQRadioButton_new2())
proc create*(T: type QRadioButton, text: string): QRadioButton =

  QRadioButton.init(fcQRadioButton_new3(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QRadioButton, text: string, parent: gen_qwidget.QWidget): QRadioButton =

  QRadioButton.init(fcQRadioButton_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc metaObject*(self: QRadioButton, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQRadioButton_metaObject(self.h))

proc metacast*(self: QRadioButton, param1: cstring): pointer =

  fcQRadioButton_metacast(self.h, param1)

proc metacall*(self: QRadioButton, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQRadioButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QRadioButton, s: cstring): string =

  let v_ms = fcQRadioButton_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: QRadioButton, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQRadioButton_sizeHint(self.h))

proc minimumSizeHint*(self: QRadioButton, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQRadioButton_minimumSizeHint(self.h))

proc tr2*(_: type QRadioButton, s: cstring, c: cstring): string =

  let v_ms = fcQRadioButton_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QRadioButton, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRadioButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QRadioButton, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQRadioButton_virtualbase_metaObject(self.h))

type QRadioButtonmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QRadioButton, slot: proc(super: QRadioButtonmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_metaObject(self: ptr cQRadioButton, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioButton_metaObject ".} =
  type Cb = proc(super: QRadioButtonmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QRadioButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QRadioButton, param1: cstring): pointer =


  fQRadioButton_virtualbase_metacast(self.h, param1)

type QRadioButtonmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QRadioButton, slot: proc(super: QRadioButtonmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_metacast(self: ptr cQRadioButton, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QRadioButton_metacast ".} =
  type Cb = proc(super: QRadioButtonmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QRadioButton(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QRadioButton, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQRadioButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QRadioButtonmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QRadioButton, slot: proc(super: QRadioButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_metacall(self: ptr cQRadioButton, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QRadioButton_metacall ".} =
  type Cb = proc(super: QRadioButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QRadioButton(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QRadioButton, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQRadioButton_virtualbase_sizeHint(self.h))

type QRadioButtonsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QRadioButton, slot: proc(super: QRadioButtonsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_sizeHint(self: ptr cQRadioButton, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioButton_sizeHint ".} =
  type Cb = proc(super: QRadioButtonsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QRadioButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QRadioButton, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQRadioButton_virtualbase_minimumSizeHint(self.h))

type QRadioButtonminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QRadioButton, slot: proc(super: QRadioButtonminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_minimumSizeHint(self: ptr cQRadioButton, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioButton_minimumSizeHint ".} =
  type Cb = proc(super: QRadioButtonminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QRadioButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QRadioButton, e: gen_qcoreevent.QEvent): bool =


  fQRadioButton_virtualbase_event(self.h, e.h)

type QRadioButtoneventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QRadioButton, slot: proc(super: QRadioButtoneventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtoneventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_event(self: ptr cQRadioButton, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QRadioButton_event ".} =
  type Cb = proc(super: QRadioButtoneventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QRadioButton(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hitButton(self: QRadioButton, param1: gen_qpoint.QPoint): bool =


  fQRadioButton_virtualbase_hitButton(self.h, param1.h)

type QRadioButtonhitButtonBase* = proc(param1: gen_qpoint.QPoint): bool
proc onhitButton*(self: QRadioButton, slot: proc(super: QRadioButtonhitButtonBase, param1: gen_qpoint.QPoint): bool) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonhitButtonBase, param1: gen_qpoint.QPoint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_hitButton(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_hitButton(self: ptr cQRadioButton, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QRadioButton_hitButton ".} =
  type Cb = proc(super: QRadioButtonhitButtonBase, param1: gen_qpoint.QPoint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpoint.QPoint): auto =
    callVirtualBase_hitButton(QRadioButton(h: self), param1)
  let slotval1 = gen_qpoint.QPoint(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paintEvent(self: QRadioButton, param1: gen_qevent.QPaintEvent): void =


  fQRadioButton_virtualbase_paintEvent(self.h, param1.h)

type QRadioButtonpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QRadioButton, slot: proc(super: QRadioButtonpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_paintEvent(self: ptr cQRadioButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_paintEvent ".} =
  type Cb = proc(super: QRadioButtonpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QRadioButton(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QRadioButton, param1: gen_qevent.QMouseEvent): void =


  fQRadioButton_virtualbase_mouseMoveEvent(self.h, param1.h)

type QRadioButtonmouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QRadioButton, slot: proc(super: QRadioButtonmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_mouseMoveEvent(self: ptr cQRadioButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_mouseMoveEvent ".} =
  type Cb = proc(super: QRadioButtonmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QRadioButton(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QRadioButton, button: gen_qstyleoption.QStyleOptionButton): void =


  fQRadioButton_virtualbase_initStyleOption(self.h, button.h)

type QRadioButtoninitStyleOptionBase* = proc(button: gen_qstyleoption.QStyleOptionButton): void
proc oninitStyleOption*(self: QRadioButton, slot: proc(super: QRadioButtoninitStyleOptionBase, button: gen_qstyleoption.QStyleOptionButton): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtoninitStyleOptionBase, button: gen_qstyleoption.QStyleOptionButton): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_initStyleOption(self: ptr cQRadioButton, slot: int, button: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_initStyleOption ".} =
  type Cb = proc(super: QRadioButtoninitStyleOptionBase, button: gen_qstyleoption.QStyleOptionButton): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(button: gen_qstyleoption.QStyleOptionButton): auto =
    callVirtualBase_initStyleOption(QRadioButton(h: self), button)
  let slotval1 = gen_qstyleoption.QStyleOptionButton(h: button)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_checkStateSet(self: QRadioButton, ): void =


  fQRadioButton_virtualbase_checkStateSet(self.h)

type QRadioButtoncheckStateSetBase* = proc(): void
proc oncheckStateSet*(self: QRadioButton, slot: proc(super: QRadioButtoncheckStateSetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtoncheckStateSetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_checkStateSet(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_checkStateSet(self: ptr cQRadioButton, slot: int): void {.exportc: "miqt_exec_callback_QRadioButton_checkStateSet ".} =
  type Cb = proc(super: QRadioButtoncheckStateSetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_checkStateSet(QRadioButton(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_nextCheckState(self: QRadioButton, ): void =


  fQRadioButton_virtualbase_nextCheckState(self.h)

type QRadioButtonnextCheckStateBase* = proc(): void
proc onnextCheckState*(self: QRadioButton, slot: proc(super: QRadioButtonnextCheckStateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonnextCheckStateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_nextCheckState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_nextCheckState(self: ptr cQRadioButton, slot: int): void {.exportc: "miqt_exec_callback_QRadioButton_nextCheckState ".} =
  type Cb = proc(super: QRadioButtonnextCheckStateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_nextCheckState(QRadioButton(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QRadioButton, e: gen_qevent.QKeyEvent): void =


  fQRadioButton_virtualbase_keyPressEvent(self.h, e.h)

type QRadioButtonkeyPressEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QRadioButton, slot: proc(super: QRadioButtonkeyPressEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_keyPressEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_keyPressEvent ".} =
  type Cb = proc(super: QRadioButtonkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QRadioButton(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QRadioButton, e: gen_qevent.QKeyEvent): void =


  fQRadioButton_virtualbase_keyReleaseEvent(self.h, e.h)

type QRadioButtonkeyReleaseEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QRadioButton, slot: proc(super: QRadioButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_keyReleaseEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_keyReleaseEvent ".} =
  type Cb = proc(super: QRadioButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QRadioButton(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QRadioButton, e: gen_qevent.QMouseEvent): void =


  fQRadioButton_virtualbase_mousePressEvent(self.h, e.h)

type QRadioButtonmousePressEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QRadioButton, slot: proc(super: QRadioButtonmousePressEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_mousePressEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_mousePressEvent ".} =
  type Cb = proc(super: QRadioButtonmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QRadioButton(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QRadioButton, e: gen_qevent.QMouseEvent): void =


  fQRadioButton_virtualbase_mouseReleaseEvent(self.h, e.h)

type QRadioButtonmouseReleaseEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QRadioButton, slot: proc(super: QRadioButtonmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_mouseReleaseEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_mouseReleaseEvent ".} =
  type Cb = proc(super: QRadioButtonmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QRadioButton(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QRadioButton, e: gen_qevent.QFocusEvent): void =


  fQRadioButton_virtualbase_focusInEvent(self.h, e.h)

type QRadioButtonfocusInEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QRadioButton, slot: proc(super: QRadioButtonfocusInEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_focusInEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_focusInEvent ".} =
  type Cb = proc(super: QRadioButtonfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QRadioButton(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QRadioButton, e: gen_qevent.QFocusEvent): void =


  fQRadioButton_virtualbase_focusOutEvent(self.h, e.h)

type QRadioButtonfocusOutEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QRadioButton, slot: proc(super: QRadioButtonfocusOutEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_focusOutEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_focusOutEvent ".} =
  type Cb = proc(super: QRadioButtonfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QRadioButton(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QRadioButton, e: gen_qcoreevent.QEvent): void =


  fQRadioButton_virtualbase_changeEvent(self.h, e.h)

type QRadioButtonchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QRadioButton, slot: proc(super: QRadioButtonchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_changeEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_changeEvent ".} =
  type Cb = proc(super: QRadioButtonchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QRadioButton(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QRadioButton, e: gen_qcoreevent.QTimerEvent): void =


  fQRadioButton_virtualbase_timerEvent(self.h, e.h)

type QRadioButtontimerEventBase* = proc(e: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QRadioButton, slot: proc(super: QRadioButtontimerEventBase, e: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtontimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_timerEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_timerEvent ".} =
  type Cb = proc(super: QRadioButtontimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QRadioButton(h: self), e)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QRadioButton, ): cint =


  fQRadioButton_virtualbase_devType(self.h)

type QRadioButtondevTypeBase* = proc(): cint
proc ondevType*(self: QRadioButton, slot: proc(super: QRadioButtondevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtondevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_devType(self: ptr cQRadioButton, slot: int): cint {.exportc: "miqt_exec_callback_QRadioButton_devType ".} =
  type Cb = proc(super: QRadioButtondevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QRadioButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QRadioButton, visible: bool): void =


  fQRadioButton_virtualbase_setVisible(self.h, visible)

type QRadioButtonsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QRadioButton, slot: proc(super: QRadioButtonsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_setVisible(self: ptr cQRadioButton, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QRadioButton_setVisible ".} =
  type Cb = proc(super: QRadioButtonsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QRadioButton(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QRadioButton, param1: cint): cint =


  fQRadioButton_virtualbase_heightForWidth(self.h, param1)

type QRadioButtonheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QRadioButton, slot: proc(super: QRadioButtonheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_heightForWidth(self: ptr cQRadioButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QRadioButton_heightForWidth ".} =
  type Cb = proc(super: QRadioButtonheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QRadioButton(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QRadioButton, ): bool =


  fQRadioButton_virtualbase_hasHeightForWidth(self.h)

type QRadioButtonhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QRadioButton, slot: proc(super: QRadioButtonhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_hasHeightForWidth(self: ptr cQRadioButton, slot: int): bool {.exportc: "miqt_exec_callback_QRadioButton_hasHeightForWidth ".} =
  type Cb = proc(super: QRadioButtonhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QRadioButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QRadioButton, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQRadioButton_virtualbase_paintEngine(self.h))

type QRadioButtonpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QRadioButton, slot: proc(super: QRadioButtonpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_paintEngine(self: ptr cQRadioButton, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioButton_paintEngine ".} =
  type Cb = proc(super: QRadioButtonpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QRadioButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QRadioButton, event: gen_qevent.QMouseEvent): void =


  fQRadioButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QRadioButtonmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QRadioButton, slot: proc(super: QRadioButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_mouseDoubleClickEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QRadioButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QRadioButton, event: gen_qevent.QWheelEvent): void =


  fQRadioButton_virtualbase_wheelEvent(self.h, event.h)

type QRadioButtonwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QRadioButton, slot: proc(super: QRadioButtonwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_wheelEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_wheelEvent ".} =
  type Cb = proc(super: QRadioButtonwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QRadioButton, event: gen_qevent.QEnterEvent): void =


  fQRadioButton_virtualbase_enterEvent(self.h, event.h)

type QRadioButtonenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QRadioButton, slot: proc(super: QRadioButtonenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_enterEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_enterEvent ".} =
  type Cb = proc(super: QRadioButtonenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QRadioButton, event: gen_qcoreevent.QEvent): void =


  fQRadioButton_virtualbase_leaveEvent(self.h, event.h)

type QRadioButtonleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QRadioButton, slot: proc(super: QRadioButtonleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_leaveEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_leaveEvent ".} =
  type Cb = proc(super: QRadioButtonleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QRadioButton, event: gen_qevent.QMoveEvent): void =


  fQRadioButton_virtualbase_moveEvent(self.h, event.h)

type QRadioButtonmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QRadioButton, slot: proc(super: QRadioButtonmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_moveEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_moveEvent ".} =
  type Cb = proc(super: QRadioButtonmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QRadioButton, event: gen_qevent.QResizeEvent): void =


  fQRadioButton_virtualbase_resizeEvent(self.h, event.h)

type QRadioButtonresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QRadioButton, slot: proc(super: QRadioButtonresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_resizeEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_resizeEvent ".} =
  type Cb = proc(super: QRadioButtonresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QRadioButton, event: gen_qevent.QCloseEvent): void =


  fQRadioButton_virtualbase_closeEvent(self.h, event.h)

type QRadioButtoncloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QRadioButton, slot: proc(super: QRadioButtoncloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtoncloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_closeEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_closeEvent ".} =
  type Cb = proc(super: QRadioButtoncloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QRadioButton, event: gen_qevent.QContextMenuEvent): void =


  fQRadioButton_virtualbase_contextMenuEvent(self.h, event.h)

type QRadioButtoncontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QRadioButton, slot: proc(super: QRadioButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_contextMenuEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_contextMenuEvent ".} =
  type Cb = proc(super: QRadioButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QRadioButton, event: gen_qevent.QTabletEvent): void =


  fQRadioButton_virtualbase_tabletEvent(self.h, event.h)

type QRadioButtontabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QRadioButton, slot: proc(super: QRadioButtontabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtontabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_tabletEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_tabletEvent ".} =
  type Cb = proc(super: QRadioButtontabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QRadioButton, event: gen_qevent.QActionEvent): void =


  fQRadioButton_virtualbase_actionEvent(self.h, event.h)

type QRadioButtonactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QRadioButton, slot: proc(super: QRadioButtonactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_actionEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_actionEvent ".} =
  type Cb = proc(super: QRadioButtonactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QRadioButton, event: gen_qevent.QDragEnterEvent): void =


  fQRadioButton_virtualbase_dragEnterEvent(self.h, event.h)

type QRadioButtondragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QRadioButton, slot: proc(super: QRadioButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_dragEnterEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_dragEnterEvent ".} =
  type Cb = proc(super: QRadioButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QRadioButton, event: gen_qevent.QDragMoveEvent): void =


  fQRadioButton_virtualbase_dragMoveEvent(self.h, event.h)

type QRadioButtondragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QRadioButton, slot: proc(super: QRadioButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_dragMoveEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_dragMoveEvent ".} =
  type Cb = proc(super: QRadioButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QRadioButton, event: gen_qevent.QDragLeaveEvent): void =


  fQRadioButton_virtualbase_dragLeaveEvent(self.h, event.h)

type QRadioButtondragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QRadioButton, slot: proc(super: QRadioButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_dragLeaveEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_dragLeaveEvent ".} =
  type Cb = proc(super: QRadioButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QRadioButton, event: gen_qevent.QDropEvent): void =


  fQRadioButton_virtualbase_dropEvent(self.h, event.h)

type QRadioButtondropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QRadioButton, slot: proc(super: QRadioButtondropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtondropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_dropEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_dropEvent ".} =
  type Cb = proc(super: QRadioButtondropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QRadioButton, event: gen_qevent.QShowEvent): void =


  fQRadioButton_virtualbase_showEvent(self.h, event.h)

type QRadioButtonshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QRadioButton, slot: proc(super: QRadioButtonshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_showEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_showEvent ".} =
  type Cb = proc(super: QRadioButtonshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QRadioButton, event: gen_qevent.QHideEvent): void =


  fQRadioButton_virtualbase_hideEvent(self.h, event.h)

type QRadioButtonhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QRadioButton, slot: proc(super: QRadioButtonhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_hideEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_hideEvent ".} =
  type Cb = proc(super: QRadioButtonhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QRadioButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQRadioButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QRadioButtonnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QRadioButton, slot: proc(super: QRadioButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_nativeEvent(self: ptr cQRadioButton, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QRadioButton_nativeEvent ".} =
  type Cb = proc(super: QRadioButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QRadioButton(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QRadioButton, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQRadioButton_virtualbase_metric(self.h, cint(param1))

type QRadioButtonmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QRadioButton, slot: proc(super: QRadioButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_metric(self: ptr cQRadioButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QRadioButton_metric ".} =
  type Cb = proc(super: QRadioButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QRadioButton(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QRadioButton, painter: gen_qpainter.QPainter): void =


  fQRadioButton_virtualbase_initPainter(self.h, painter.h)

type QRadioButtoninitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QRadioButton, slot: proc(super: QRadioButtoninitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtoninitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_initPainter(self: ptr cQRadioButton, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_initPainter ".} =
  type Cb = proc(super: QRadioButtoninitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QRadioButton(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QRadioButton, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQRadioButton_virtualbase_redirected(self.h, offset.h))

type QRadioButtonredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QRadioButton, slot: proc(super: QRadioButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_redirected(self: ptr cQRadioButton, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QRadioButton_redirected ".} =
  type Cb = proc(super: QRadioButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QRadioButton(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QRadioButton, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQRadioButton_virtualbase_sharedPainter(self.h))

type QRadioButtonsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QRadioButton, slot: proc(super: QRadioButtonsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_sharedPainter(self: ptr cQRadioButton, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioButton_sharedPainter ".} =
  type Cb = proc(super: QRadioButtonsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QRadioButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QRadioButton, param1: gen_qevent.QInputMethodEvent): void =


  fQRadioButton_virtualbase_inputMethodEvent(self.h, param1.h)

type QRadioButtoninputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QRadioButton, slot: proc(super: QRadioButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_inputMethodEvent(self: ptr cQRadioButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_inputMethodEvent ".} =
  type Cb = proc(super: QRadioButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QRadioButton(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QRadioButton, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQRadioButton_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QRadioButtoninputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QRadioButton, slot: proc(super: QRadioButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_inputMethodQuery(self: ptr cQRadioButton, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QRadioButton_inputMethodQuery ".} =
  type Cb = proc(super: QRadioButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QRadioButton(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QRadioButton, next: bool): bool =


  fQRadioButton_virtualbase_focusNextPrevChild(self.h, next)

type QRadioButtonfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QRadioButton, slot: proc(super: QRadioButtonfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_focusNextPrevChild(self: ptr cQRadioButton, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QRadioButton_focusNextPrevChild ".} =
  type Cb = proc(super: QRadioButtonfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QRadioButton(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QRadioButton, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQRadioButton_virtualbase_eventFilter(self.h, watched.h, event.h)

type QRadioButtoneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QRadioButton, slot: proc(super: QRadioButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_eventFilter(self: ptr cQRadioButton, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QRadioButton_eventFilter ".} =
  type Cb = proc(super: QRadioButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QRadioButton(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QRadioButton, event: gen_qcoreevent.QChildEvent): void =


  fQRadioButton_virtualbase_childEvent(self.h, event.h)

type QRadioButtonchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QRadioButton, slot: proc(super: QRadioButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_childEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_childEvent ".} =
  type Cb = proc(super: QRadioButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QRadioButton, event: gen_qcoreevent.QEvent): void =


  fQRadioButton_virtualbase_customEvent(self.h, event.h)

type QRadioButtoncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QRadioButton, slot: proc(super: QRadioButtoncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtoncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_customEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_customEvent ".} =
  type Cb = proc(super: QRadioButtoncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QRadioButton(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QRadioButton, signal: gen_qmetaobject.QMetaMethod): void =


  fQRadioButton_virtualbase_connectNotify(self.h, signal.h)

type QRadioButtonconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QRadioButton, slot: proc(super: QRadioButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_connectNotify(self: ptr cQRadioButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_connectNotify ".} =
  type Cb = proc(super: QRadioButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QRadioButton(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QRadioButton, signal: gen_qmetaobject.QMetaMethod): void =


  fQRadioButton_virtualbase_disconnectNotify(self.h, signal.h)

type QRadioButtondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QRadioButton, slot: proc(super: QRadioButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_disconnectNotify(self: ptr cQRadioButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_disconnectNotify ".} =
  type Cb = proc(super: QRadioButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QRadioButton(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QRadioButton): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQRadioButton_staticMetaObject())
proc delete*(self: QRadioButton) =
  fcQRadioButton_delete(self.h)
