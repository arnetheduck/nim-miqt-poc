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
{.compile("gen_qpushbutton.cpp", cflags).}


import gen_qpushbutton_types
export gen_qpushbutton_types

import
  gen_qabstractbutton,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qmenu,
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
  gen_qicon,
  gen_qmenu,
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

type cQPushButton*{.exportc: "QPushButton", incompleteStruct.} = object

proc fcQPushButton_new(parent: pointer): ptr cQPushButton {.importc: "QPushButton_new".}
proc fcQPushButton_new2(): ptr cQPushButton {.importc: "QPushButton_new2".}
proc fcQPushButton_new3(text: struct_miqt_string): ptr cQPushButton {.importc: "QPushButton_new3".}
proc fcQPushButton_new4(icon: pointer, text: struct_miqt_string): ptr cQPushButton {.importc: "QPushButton_new4".}
proc fcQPushButton_new5(text: struct_miqt_string, parent: pointer): ptr cQPushButton {.importc: "QPushButton_new5".}
proc fcQPushButton_new6(icon: pointer, text: struct_miqt_string, parent: pointer): ptr cQPushButton {.importc: "QPushButton_new6".}
proc fcQPushButton_metaObject(self: pointer, ): pointer {.importc: "QPushButton_metaObject".}
proc fcQPushButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QPushButton_metacast".}
proc fcQPushButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPushButton_metacall".}
proc fcQPushButton_tr(s: cstring): struct_miqt_string {.importc: "QPushButton_tr".}
proc fcQPushButton_sizeHint(self: pointer, ): pointer {.importc: "QPushButton_sizeHint".}
proc fcQPushButton_minimumSizeHint(self: pointer, ): pointer {.importc: "QPushButton_minimumSizeHint".}
proc fcQPushButton_autoDefault(self: pointer, ): bool {.importc: "QPushButton_autoDefault".}
proc fcQPushButton_setAutoDefault(self: pointer, autoDefault: bool): void {.importc: "QPushButton_setAutoDefault".}
proc fcQPushButton_isDefault(self: pointer, ): bool {.importc: "QPushButton_isDefault".}
proc fcQPushButton_setDefault(self: pointer, default: bool): void {.importc: "QPushButton_setDefault".}
proc fcQPushButton_setMenu(self: pointer, menu: pointer): void {.importc: "QPushButton_setMenu".}
proc fcQPushButton_menu(self: pointer, ): pointer {.importc: "QPushButton_menu".}
proc fcQPushButton_setFlat(self: pointer, flat: bool): void {.importc: "QPushButton_setFlat".}
proc fcQPushButton_isFlat(self: pointer, ): bool {.importc: "QPushButton_isFlat".}
proc fcQPushButton_showMenu(self: pointer, ): void {.importc: "QPushButton_showMenu".}
proc fcQPushButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPushButton_tr2".}
proc fcQPushButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPushButton_tr3".}
proc fQPushButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPushButton_virtualbase_metacall".}
proc fcQPushButton_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_metacall".}
proc fQPushButton_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QPushButton_virtualbase_sizeHint".}
proc fcQPushButton_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_sizeHint".}
proc fQPushButton_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QPushButton_virtualbase_minimumSizeHint".}
proc fcQPushButton_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_minimumSizeHint".}
proc fQPushButton_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QPushButton_virtualbase_event".}
proc fcQPushButton_override_virtual_event(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_event".}
proc fQPushButton_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QPushButton_virtualbase_paintEvent".}
proc fcQPushButton_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_paintEvent".}
proc fQPushButton_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QPushButton_virtualbase_keyPressEvent".}
proc fcQPushButton_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_keyPressEvent".}
proc fQPushButton_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QPushButton_virtualbase_focusInEvent".}
proc fcQPushButton_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_focusInEvent".}
proc fQPushButton_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QPushButton_virtualbase_focusOutEvent".}
proc fcQPushButton_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_focusOutEvent".}
proc fQPushButton_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QPushButton_virtualbase_mouseMoveEvent".}
proc fcQPushButton_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_mouseMoveEvent".}
proc fQPushButton_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QPushButton_virtualbase_initStyleOption".}
proc fcQPushButton_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_initStyleOption".}
proc fQPushButton_virtualbase_hitButton(self: pointer, pos: pointer): bool{.importc: "QPushButton_virtualbase_hitButton".}
proc fcQPushButton_override_virtual_hitButton(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_hitButton".}
proc fQPushButton_virtualbase_checkStateSet(self: pointer, ): void{.importc: "QPushButton_virtualbase_checkStateSet".}
proc fcQPushButton_override_virtual_checkStateSet(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_checkStateSet".}
proc fQPushButton_virtualbase_nextCheckState(self: pointer, ): void{.importc: "QPushButton_virtualbase_nextCheckState".}
proc fcQPushButton_override_virtual_nextCheckState(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_nextCheckState".}
proc fQPushButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QPushButton_virtualbase_keyReleaseEvent".}
proc fcQPushButton_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_keyReleaseEvent".}
proc fQPushButton_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QPushButton_virtualbase_mousePressEvent".}
proc fcQPushButton_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_mousePressEvent".}
proc fQPushButton_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QPushButton_virtualbase_mouseReleaseEvent".}
proc fcQPushButton_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_mouseReleaseEvent".}
proc fQPushButton_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QPushButton_virtualbase_changeEvent".}
proc fcQPushButton_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_changeEvent".}
proc fQPushButton_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QPushButton_virtualbase_timerEvent".}
proc fcQPushButton_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_timerEvent".}
proc fQPushButton_virtualbase_devType(self: pointer, ): cint{.importc: "QPushButton_virtualbase_devType".}
proc fcQPushButton_override_virtual_devType(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_devType".}
proc fQPushButton_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QPushButton_virtualbase_setVisible".}
proc fcQPushButton_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_setVisible".}
proc fQPushButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QPushButton_virtualbase_heightForWidth".}
proc fcQPushButton_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_heightForWidth".}
proc fQPushButton_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QPushButton_virtualbase_hasHeightForWidth".}
proc fcQPushButton_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_hasHeightForWidth".}
proc fQPushButton_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPushButton_virtualbase_paintEngine".}
proc fcQPushButton_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_paintEngine".}
proc fQPushButton_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_mouseDoubleClickEvent".}
proc fcQPushButton_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_mouseDoubleClickEvent".}
proc fQPushButton_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_wheelEvent".}
proc fcQPushButton_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_wheelEvent".}
proc fQPushButton_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_enterEvent".}
proc fcQPushButton_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_enterEvent".}
proc fQPushButton_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_leaveEvent".}
proc fcQPushButton_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_leaveEvent".}
proc fQPushButton_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_moveEvent".}
proc fcQPushButton_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_moveEvent".}
proc fQPushButton_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_resizeEvent".}
proc fcQPushButton_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_resizeEvent".}
proc fQPushButton_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_closeEvent".}
proc fcQPushButton_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_closeEvent".}
proc fQPushButton_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_contextMenuEvent".}
proc fcQPushButton_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_contextMenuEvent".}
proc fQPushButton_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_tabletEvent".}
proc fcQPushButton_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_tabletEvent".}
proc fQPushButton_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_actionEvent".}
proc fcQPushButton_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_actionEvent".}
proc fQPushButton_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_dragEnterEvent".}
proc fcQPushButton_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_dragEnterEvent".}
proc fQPushButton_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_dragMoveEvent".}
proc fcQPushButton_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_dragMoveEvent".}
proc fQPushButton_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_dragLeaveEvent".}
proc fcQPushButton_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_dragLeaveEvent".}
proc fQPushButton_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_dropEvent".}
proc fcQPushButton_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_dropEvent".}
proc fQPushButton_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_showEvent".}
proc fcQPushButton_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_showEvent".}
proc fQPushButton_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_hideEvent".}
proc fcQPushButton_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_hideEvent".}
proc fQPushButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QPushButton_virtualbase_nativeEvent".}
proc fcQPushButton_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_nativeEvent".}
proc fQPushButton_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QPushButton_virtualbase_metric".}
proc fcQPushButton_override_virtual_metric(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_metric".}
proc fQPushButton_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPushButton_virtualbase_initPainter".}
proc fcQPushButton_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_initPainter".}
proc fQPushButton_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPushButton_virtualbase_redirected".}
proc fcQPushButton_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_redirected".}
proc fQPushButton_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPushButton_virtualbase_sharedPainter".}
proc fcQPushButton_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_sharedPainter".}
proc fQPushButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QPushButton_virtualbase_inputMethodEvent".}
proc fcQPushButton_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_inputMethodEvent".}
proc fQPushButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QPushButton_virtualbase_inputMethodQuery".}
proc fcQPushButton_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_inputMethodQuery".}
proc fQPushButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QPushButton_virtualbase_focusNextPrevChild".}
proc fcQPushButton_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_focusNextPrevChild".}
proc fQPushButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPushButton_virtualbase_eventFilter".}
proc fcQPushButton_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_eventFilter".}
proc fQPushButton_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_childEvent".}
proc fcQPushButton_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_childEvent".}
proc fQPushButton_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPushButton_virtualbase_customEvent".}
proc fcQPushButton_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_customEvent".}
proc fQPushButton_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPushButton_virtualbase_connectNotify".}
proc fcQPushButton_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_connectNotify".}
proc fQPushButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPushButton_virtualbase_disconnectNotify".}
proc fcQPushButton_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_disconnectNotify".}
proc fcQPushButton_delete(self: pointer) {.importc: "QPushButton_delete".}


func init*(T: type QPushButton, h: ptr cQPushButton): QPushButton =
  T(h: h)
proc create*(T: type QPushButton, parent: gen_qwidget.QWidget): QPushButton =

  QPushButton.init(fcQPushButton_new(parent.h))
proc create*(T: type QPushButton, ): QPushButton =

  QPushButton.init(fcQPushButton_new2())
proc create*(T: type QPushButton, text: string): QPushButton =

  QPushButton.init(fcQPushButton_new3(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QPushButton, icon: gen_qicon.QIcon, text: string): QPushButton =

  QPushButton.init(fcQPushButton_new4(icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QPushButton, text: string, parent: gen_qwidget.QWidget): QPushButton =

  QPushButton.init(fcQPushButton_new5(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc create*(T: type QPushButton, icon: gen_qicon.QIcon, text: string, parent: gen_qwidget.QWidget): QPushButton =

  QPushButton.init(fcQPushButton_new6(icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc metaObject*(self: QPushButton, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPushButton_metaObject(self.h))

proc metacast*(self: QPushButton, param1: cstring): pointer =

  fcQPushButton_metacast(self.h, param1)

proc metacall*(self: QPushButton, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPushButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPushButton, s: cstring): string =

  let v_ms = fcQPushButton_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: QPushButton, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQPushButton_sizeHint(self.h))

proc minimumSizeHint*(self: QPushButton, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQPushButton_minimumSizeHint(self.h))

proc autoDefault*(self: QPushButton, ): bool =

  fcQPushButton_autoDefault(self.h)

proc setAutoDefault*(self: QPushButton, autoDefault: bool): void =

  fcQPushButton_setAutoDefault(self.h, autoDefault)

proc isDefault*(self: QPushButton, ): bool =

  fcQPushButton_isDefault(self.h)

proc setDefault*(self: QPushButton, default: bool): void =

  fcQPushButton_setDefault(self.h, default)

proc setMenu*(self: QPushButton, menu: gen_qmenu.QMenu): void =

  fcQPushButton_setMenu(self.h, menu.h)

proc menu*(self: QPushButton, ): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQPushButton_menu(self.h))

proc setFlat*(self: QPushButton, flat: bool): void =

  fcQPushButton_setFlat(self.h, flat)

proc isFlat*(self: QPushButton, ): bool =

  fcQPushButton_isFlat(self.h)

proc showMenu*(self: QPushButton, ): void =

  fcQPushButton_showMenu(self.h)

proc tr2*(_: type QPushButton, s: cstring, c: cstring): string =

  let v_ms = fcQPushButton_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPushButton, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPushButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QPushButton, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQPushButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPushButtonmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QPushButton, slot: proc(super: QPushButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_metacall(self: ptr cQPushButton, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPushButton_metacall ".} =
  type Cb = proc(super: QPushButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QPushButton(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QPushButton, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQPushButton_virtualbase_sizeHint(self.h))

type QPushButtonsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QPushButton, slot: proc(super: QPushButtonsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_sizeHint(self: ptr cQPushButton, slot: int): pointer {.exportc: "miqt_exec_callback_QPushButton_sizeHint ".} =
  type Cb = proc(super: QPushButtonsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QPushButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QPushButton, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQPushButton_virtualbase_minimumSizeHint(self.h))

type QPushButtonminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QPushButton, slot: proc(super: QPushButtonminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_minimumSizeHint(self: ptr cQPushButton, slot: int): pointer {.exportc: "miqt_exec_callback_QPushButton_minimumSizeHint ".} =
  type Cb = proc(super: QPushButtonminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QPushButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QPushButton, e: gen_qcoreevent.QEvent): bool =


  fQPushButton_virtualbase_event(self.h, e.h)

type QPushButtoneventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QPushButton, slot: proc(super: QPushButtoneventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPushButtoneventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_event(self: ptr cQPushButton, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QPushButton_event ".} =
  type Cb = proc(super: QPushButtoneventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QPushButton(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paintEvent(self: QPushButton, param1: gen_qevent.QPaintEvent): void =


  fQPushButton_virtualbase_paintEvent(self.h, param1.h)

type QPushButtonpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QPushButton, slot: proc(super: QPushButtonpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_paintEvent(self: ptr cQPushButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPushButton_paintEvent ".} =
  type Cb = proc(super: QPushButtonpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QPushButton(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QPushButton, param1: gen_qevent.QKeyEvent): void =


  fQPushButton_virtualbase_keyPressEvent(self.h, param1.h)

type QPushButtonkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QPushButton, slot: proc(super: QPushButtonkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_keyPressEvent(self: ptr cQPushButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPushButton_keyPressEvent ".} =
  type Cb = proc(super: QPushButtonkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QPushButton(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QPushButton, param1: gen_qevent.QFocusEvent): void =


  fQPushButton_virtualbase_focusInEvent(self.h, param1.h)

type QPushButtonfocusInEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QPushButton, slot: proc(super: QPushButtonfocusInEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_focusInEvent(self: ptr cQPushButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPushButton_focusInEvent ".} =
  type Cb = proc(super: QPushButtonfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QPushButton(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QPushButton, param1: gen_qevent.QFocusEvent): void =


  fQPushButton_virtualbase_focusOutEvent(self.h, param1.h)

type QPushButtonfocusOutEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QPushButton, slot: proc(super: QPushButtonfocusOutEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_focusOutEvent(self: ptr cQPushButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPushButton_focusOutEvent ".} =
  type Cb = proc(super: QPushButtonfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QPushButton(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QPushButton, param1: gen_qevent.QMouseEvent): void =


  fQPushButton_virtualbase_mouseMoveEvent(self.h, param1.h)

type QPushButtonmouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QPushButton, slot: proc(super: QPushButtonmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_mouseMoveEvent(self: ptr cQPushButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPushButton_mouseMoveEvent ".} =
  type Cb = proc(super: QPushButtonmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QPushButton(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QPushButton, option: gen_qstyleoption.QStyleOptionButton): void =


  fQPushButton_virtualbase_initStyleOption(self.h, option.h)

type QPushButtoninitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionButton): void
proc oninitStyleOption*(self: QPushButton, slot: proc(super: QPushButtoninitStyleOptionBase, option: gen_qstyleoption.QStyleOptionButton): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtoninitStyleOptionBase, option: gen_qstyleoption.QStyleOptionButton): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_initStyleOption(self: ptr cQPushButton, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QPushButton_initStyleOption ".} =
  type Cb = proc(super: QPushButtoninitStyleOptionBase, option: gen_qstyleoption.QStyleOptionButton): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionButton): auto =
    callVirtualBase_initStyleOption(QPushButton(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionButton(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hitButton(self: QPushButton, pos: gen_qpoint.QPoint): bool =


  fQPushButton_virtualbase_hitButton(self.h, pos.h)

type QPushButtonhitButtonBase* = proc(pos: gen_qpoint.QPoint): bool
proc onhitButton*(self: QPushButton, slot: proc(super: QPushButtonhitButtonBase, pos: gen_qpoint.QPoint): bool) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonhitButtonBase, pos: gen_qpoint.QPoint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_hitButton(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_hitButton(self: ptr cQPushButton, slot: int, pos: pointer): bool {.exportc: "miqt_exec_callback_QPushButton_hitButton ".} =
  type Cb = proc(super: QPushButtonhitButtonBase, pos: gen_qpoint.QPoint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: gen_qpoint.QPoint): auto =
    callVirtualBase_hitButton(QPushButton(h: self), pos)
  let slotval1 = gen_qpoint.QPoint(h: pos)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_checkStateSet(self: QPushButton, ): void =


  fQPushButton_virtualbase_checkStateSet(self.h)

type QPushButtoncheckStateSetBase* = proc(): void
proc oncheckStateSet*(self: QPushButton, slot: proc(super: QPushButtoncheckStateSetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtoncheckStateSetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_checkStateSet(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_checkStateSet(self: ptr cQPushButton, slot: int): void {.exportc: "miqt_exec_callback_QPushButton_checkStateSet ".} =
  type Cb = proc(super: QPushButtoncheckStateSetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_checkStateSet(QPushButton(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_nextCheckState(self: QPushButton, ): void =


  fQPushButton_virtualbase_nextCheckState(self.h)

type QPushButtonnextCheckStateBase* = proc(): void
proc onnextCheckState*(self: QPushButton, slot: proc(super: QPushButtonnextCheckStateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonnextCheckStateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_nextCheckState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_nextCheckState(self: ptr cQPushButton, slot: int): void {.exportc: "miqt_exec_callback_QPushButton_nextCheckState ".} =
  type Cb = proc(super: QPushButtonnextCheckStateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_nextCheckState(QPushButton(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyReleaseEvent(self: QPushButton, e: gen_qevent.QKeyEvent): void =


  fQPushButton_virtualbase_keyReleaseEvent(self.h, e.h)

type QPushButtonkeyReleaseEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QPushButton, slot: proc(super: QPushButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_keyReleaseEvent(self: ptr cQPushButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPushButton_keyReleaseEvent ".} =
  type Cb = proc(super: QPushButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QPushButton(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QPushButton, e: gen_qevent.QMouseEvent): void =


  fQPushButton_virtualbase_mousePressEvent(self.h, e.h)

type QPushButtonmousePressEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QPushButton, slot: proc(super: QPushButtonmousePressEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_mousePressEvent(self: ptr cQPushButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPushButton_mousePressEvent ".} =
  type Cb = proc(super: QPushButtonmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QPushButton(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QPushButton, e: gen_qevent.QMouseEvent): void =


  fQPushButton_virtualbase_mouseReleaseEvent(self.h, e.h)

type QPushButtonmouseReleaseEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QPushButton, slot: proc(super: QPushButtonmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_mouseReleaseEvent(self: ptr cQPushButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPushButton_mouseReleaseEvent ".} =
  type Cb = proc(super: QPushButtonmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QPushButton(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QPushButton, e: gen_qcoreevent.QEvent): void =


  fQPushButton_virtualbase_changeEvent(self.h, e.h)

type QPushButtonchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QPushButton, slot: proc(super: QPushButtonchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_changeEvent(self: ptr cQPushButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPushButton_changeEvent ".} =
  type Cb = proc(super: QPushButtonchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QPushButton(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QPushButton, e: gen_qcoreevent.QTimerEvent): void =


  fQPushButton_virtualbase_timerEvent(self.h, e.h)

type QPushButtontimerEventBase* = proc(e: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QPushButton, slot: proc(super: QPushButtontimerEventBase, e: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtontimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_timerEvent(self: ptr cQPushButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPushButton_timerEvent ".} =
  type Cb = proc(super: QPushButtontimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QPushButton(h: self), e)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QPushButton, ): cint =


  fQPushButton_virtualbase_devType(self.h)

type QPushButtondevTypeBase* = proc(): cint
proc ondevType*(self: QPushButton, slot: proc(super: QPushButtondevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPushButtondevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_devType(self: ptr cQPushButton, slot: int): cint {.exportc: "miqt_exec_callback_QPushButton_devType ".} =
  type Cb = proc(super: QPushButtondevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QPushButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QPushButton, visible: bool): void =


  fQPushButton_virtualbase_setVisible(self.h, visible)

type QPushButtonsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QPushButton, slot: proc(super: QPushButtonsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_setVisible(self: ptr cQPushButton, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QPushButton_setVisible ".} =
  type Cb = proc(super: QPushButtonsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QPushButton(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QPushButton, param1: cint): cint =


  fQPushButton_virtualbase_heightForWidth(self.h, param1)

type QPushButtonheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QPushButton, slot: proc(super: QPushButtonheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_heightForWidth(self: ptr cQPushButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPushButton_heightForWidth ".} =
  type Cb = proc(super: QPushButtonheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QPushButton(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QPushButton, ): bool =


  fQPushButton_virtualbase_hasHeightForWidth(self.h)

type QPushButtonhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QPushButton, slot: proc(super: QPushButtonhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_hasHeightForWidth(self: ptr cQPushButton, slot: int): bool {.exportc: "miqt_exec_callback_QPushButton_hasHeightForWidth ".} =
  type Cb = proc(super: QPushButtonhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QPushButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QPushButton, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQPushButton_virtualbase_paintEngine(self.h))

type QPushButtonpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QPushButton, slot: proc(super: QPushButtonpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_paintEngine(self: ptr cQPushButton, slot: int): pointer {.exportc: "miqt_exec_callback_QPushButton_paintEngine ".} =
  type Cb = proc(super: QPushButtonpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QPushButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QPushButton, event: gen_qevent.QMouseEvent): void =


  fQPushButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QPushButtonmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QPushButton, slot: proc(super: QPushButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_mouseDoubleClickEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QPushButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QPushButton, event: gen_qevent.QWheelEvent): void =


  fQPushButton_virtualbase_wheelEvent(self.h, event.h)

type QPushButtonwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QPushButton, slot: proc(super: QPushButtonwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_wheelEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_wheelEvent ".} =
  type Cb = proc(super: QPushButtonwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QPushButton, event: gen_qevent.QEnterEvent): void =


  fQPushButton_virtualbase_enterEvent(self.h, event.h)

type QPushButtonenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QPushButton, slot: proc(super: QPushButtonenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_enterEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_enterEvent ".} =
  type Cb = proc(super: QPushButtonenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QPushButton, event: gen_qcoreevent.QEvent): void =


  fQPushButton_virtualbase_leaveEvent(self.h, event.h)

type QPushButtonleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QPushButton, slot: proc(super: QPushButtonleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_leaveEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_leaveEvent ".} =
  type Cb = proc(super: QPushButtonleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QPushButton(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QPushButton, event: gen_qevent.QMoveEvent): void =


  fQPushButton_virtualbase_moveEvent(self.h, event.h)

type QPushButtonmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QPushButton, slot: proc(super: QPushButtonmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_moveEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_moveEvent ".} =
  type Cb = proc(super: QPushButtonmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QPushButton, event: gen_qevent.QResizeEvent): void =


  fQPushButton_virtualbase_resizeEvent(self.h, event.h)

type QPushButtonresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QPushButton, slot: proc(super: QPushButtonresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_resizeEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_resizeEvent ".} =
  type Cb = proc(super: QPushButtonresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QPushButton, event: gen_qevent.QCloseEvent): void =


  fQPushButton_virtualbase_closeEvent(self.h, event.h)

type QPushButtoncloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QPushButton, slot: proc(super: QPushButtoncloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtoncloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_closeEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_closeEvent ".} =
  type Cb = proc(super: QPushButtoncloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QPushButton, event: gen_qevent.QContextMenuEvent): void =


  fQPushButton_virtualbase_contextMenuEvent(self.h, event.h)

type QPushButtoncontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QPushButton, slot: proc(super: QPushButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_contextMenuEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_contextMenuEvent ".} =
  type Cb = proc(super: QPushButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QPushButton, event: gen_qevent.QTabletEvent): void =


  fQPushButton_virtualbase_tabletEvent(self.h, event.h)

type QPushButtontabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QPushButton, slot: proc(super: QPushButtontabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtontabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_tabletEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_tabletEvent ".} =
  type Cb = proc(super: QPushButtontabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QPushButton, event: gen_qevent.QActionEvent): void =


  fQPushButton_virtualbase_actionEvent(self.h, event.h)

type QPushButtonactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QPushButton, slot: proc(super: QPushButtonactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_actionEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_actionEvent ".} =
  type Cb = proc(super: QPushButtonactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QPushButton, event: gen_qevent.QDragEnterEvent): void =


  fQPushButton_virtualbase_dragEnterEvent(self.h, event.h)

type QPushButtondragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QPushButton, slot: proc(super: QPushButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_dragEnterEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_dragEnterEvent ".} =
  type Cb = proc(super: QPushButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QPushButton, event: gen_qevent.QDragMoveEvent): void =


  fQPushButton_virtualbase_dragMoveEvent(self.h, event.h)

type QPushButtondragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QPushButton, slot: proc(super: QPushButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_dragMoveEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_dragMoveEvent ".} =
  type Cb = proc(super: QPushButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QPushButton, event: gen_qevent.QDragLeaveEvent): void =


  fQPushButton_virtualbase_dragLeaveEvent(self.h, event.h)

type QPushButtondragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QPushButton, slot: proc(super: QPushButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_dragLeaveEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_dragLeaveEvent ".} =
  type Cb = proc(super: QPushButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QPushButton, event: gen_qevent.QDropEvent): void =


  fQPushButton_virtualbase_dropEvent(self.h, event.h)

type QPushButtondropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QPushButton, slot: proc(super: QPushButtondropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtondropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_dropEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_dropEvent ".} =
  type Cb = proc(super: QPushButtondropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QPushButton, event: gen_qevent.QShowEvent): void =


  fQPushButton_virtualbase_showEvent(self.h, event.h)

type QPushButtonshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QPushButton, slot: proc(super: QPushButtonshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_showEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_showEvent ".} =
  type Cb = proc(super: QPushButtonshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QPushButton, event: gen_qevent.QHideEvent): void =


  fQPushButton_virtualbase_hideEvent(self.h, event.h)

type QPushButtonhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QPushButton, slot: proc(super: QPushButtonhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_hideEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_hideEvent ".} =
  type Cb = proc(super: QPushButtonhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QPushButton(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QPushButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQPushButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QPushButtonnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QPushButton, slot: proc(super: QPushButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_nativeEvent(self: ptr cQPushButton, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QPushButton_nativeEvent ".} =
  type Cb = proc(super: QPushButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QPushButton(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QPushButton, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQPushButton_virtualbase_metric(self.h, cint(param1))

type QPushButtonmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QPushButton, slot: proc(super: QPushButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_metric(self: ptr cQPushButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPushButton_metric ".} =
  type Cb = proc(super: QPushButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QPushButton(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QPushButton, painter: gen_qpainter.QPainter): void =


  fQPushButton_virtualbase_initPainter(self.h, painter.h)

type QPushButtoninitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QPushButton, slot: proc(super: QPushButtoninitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtoninitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_initPainter(self: ptr cQPushButton, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPushButton_initPainter ".} =
  type Cb = proc(super: QPushButtoninitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QPushButton(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QPushButton, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQPushButton_virtualbase_redirected(self.h, offset.h))

type QPushButtonredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QPushButton, slot: proc(super: QPushButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_redirected(self: ptr cQPushButton, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPushButton_redirected ".} =
  type Cb = proc(super: QPushButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QPushButton(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QPushButton, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQPushButton_virtualbase_sharedPainter(self.h))

type QPushButtonsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QPushButton, slot: proc(super: QPushButtonsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_sharedPainter(self: ptr cQPushButton, slot: int): pointer {.exportc: "miqt_exec_callback_QPushButton_sharedPainter ".} =
  type Cb = proc(super: QPushButtonsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QPushButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QPushButton, param1: gen_qevent.QInputMethodEvent): void =


  fQPushButton_virtualbase_inputMethodEvent(self.h, param1.h)

type QPushButtoninputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QPushButton, slot: proc(super: QPushButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_inputMethodEvent(self: ptr cQPushButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPushButton_inputMethodEvent ".} =
  type Cb = proc(super: QPushButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QPushButton(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QPushButton, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQPushButton_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QPushButtoninputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QPushButton, slot: proc(super: QPushButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QPushButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_inputMethodQuery(self: ptr cQPushButton, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QPushButton_inputMethodQuery ".} =
  type Cb = proc(super: QPushButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QPushButton(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QPushButton, next: bool): bool =


  fQPushButton_virtualbase_focusNextPrevChild(self.h, next)

type QPushButtonfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QPushButton, slot: proc(super: QPushButtonfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_focusNextPrevChild(self: ptr cQPushButton, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QPushButton_focusNextPrevChild ".} =
  type Cb = proc(super: QPushButtonfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QPushButton(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QPushButton, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQPushButton_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPushButtoneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QPushButton, slot: proc(super: QPushButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPushButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_eventFilter(self: ptr cQPushButton, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPushButton_eventFilter ".} =
  type Cb = proc(super: QPushButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QPushButton(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QPushButton, event: gen_qcoreevent.QChildEvent): void =


  fQPushButton_virtualbase_childEvent(self.h, event.h)

type QPushButtonchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QPushButton, slot: proc(super: QPushButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_childEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_childEvent ".} =
  type Cb = proc(super: QPushButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QPushButton(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QPushButton, event: gen_qcoreevent.QEvent): void =


  fQPushButton_virtualbase_customEvent(self.h, event.h)

type QPushButtoncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QPushButton, slot: proc(super: QPushButtoncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtoncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_customEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_customEvent ".} =
  type Cb = proc(super: QPushButtoncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QPushButton(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QPushButton, signal: gen_qmetaobject.QMetaMethod): void =


  fQPushButton_virtualbase_connectNotify(self.h, signal.h)

type QPushButtonconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QPushButton, slot: proc(super: QPushButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_connectNotify(self: ptr cQPushButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPushButton_connectNotify ".} =
  type Cb = proc(super: QPushButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QPushButton(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QPushButton, signal: gen_qmetaobject.QMetaMethod): void =


  fQPushButton_virtualbase_disconnectNotify(self.h, signal.h)

type QPushButtondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QPushButton, slot: proc(super: QPushButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPushButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_disconnectNotify(self: ptr cQPushButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPushButton_disconnectNotify ".} =
  type Cb = proc(super: QPushButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QPushButton(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QPushButton) =
  fcQPushButton_delete(self.h)
