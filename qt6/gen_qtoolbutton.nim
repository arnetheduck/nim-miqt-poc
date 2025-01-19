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
{.compile("gen_qtoolbutton.cpp", cflags).}


type QToolButtonToolButtonPopupMode* = cint
const
  QToolButtonDelayedPopup* = 0
  QToolButtonMenuButtonPopup* = 1
  QToolButtonInstantPopup* = 2



import gen_qtoolbutton_types
export gen_qtoolbutton_types

import
  gen_qabstractbutton,
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
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
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
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

type cQToolButton*{.exportc: "QToolButton", incompleteStruct.} = object

proc fcQToolButton_new(parent: pointer): ptr cQToolButton {.importc: "QToolButton_new".}
proc fcQToolButton_new2(): ptr cQToolButton {.importc: "QToolButton_new2".}
proc fcQToolButton_metaObject(self: pointer, ): pointer {.importc: "QToolButton_metaObject".}
proc fcQToolButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolButton_metacast".}
proc fcQToolButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolButton_metacall".}
proc fcQToolButton_tr(s: cstring): struct_miqt_string {.importc: "QToolButton_tr".}
proc fcQToolButton_sizeHint(self: pointer, ): pointer {.importc: "QToolButton_sizeHint".}
proc fcQToolButton_minimumSizeHint(self: pointer, ): pointer {.importc: "QToolButton_minimumSizeHint".}
proc fcQToolButton_toolButtonStyle(self: pointer, ): cint {.importc: "QToolButton_toolButtonStyle".}
proc fcQToolButton_arrowType(self: pointer, ): cint {.importc: "QToolButton_arrowType".}
proc fcQToolButton_setArrowType(self: pointer, typeVal: cint): void {.importc: "QToolButton_setArrowType".}
proc fcQToolButton_setMenu(self: pointer, menu: pointer): void {.importc: "QToolButton_setMenu".}
proc fcQToolButton_menu(self: pointer, ): pointer {.importc: "QToolButton_menu".}
proc fcQToolButton_setPopupMode(self: pointer, mode: cint): void {.importc: "QToolButton_setPopupMode".}
proc fcQToolButton_popupMode(self: pointer, ): cint {.importc: "QToolButton_popupMode".}
proc fcQToolButton_defaultAction(self: pointer, ): pointer {.importc: "QToolButton_defaultAction".}
proc fcQToolButton_setAutoRaise(self: pointer, enable: bool): void {.importc: "QToolButton_setAutoRaise".}
proc fcQToolButton_autoRaise(self: pointer, ): bool {.importc: "QToolButton_autoRaise".}
proc fcQToolButton_showMenu(self: pointer, ): void {.importc: "QToolButton_showMenu".}
proc fcQToolButton_setToolButtonStyle(self: pointer, style: cint): void {.importc: "QToolButton_setToolButtonStyle".}
proc fcQToolButton_setDefaultAction(self: pointer, defaultAction: pointer): void {.importc: "QToolButton_setDefaultAction".}
proc fcQToolButton_triggered(self: pointer, param1: pointer): void {.importc: "QToolButton_triggered".}
proc fQToolButton_connect_triggered(self: pointer, slot: int) {.importc: "QToolButton_connect_triggered".}
proc fcQToolButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolButton_tr2".}
proc fcQToolButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolButton_tr3".}
proc fQToolButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QToolButton_virtualbase_metacall".}
proc fcQToolButton_override_virtual_metacall(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_metacall".}
proc fQToolButton_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QToolButton_virtualbase_sizeHint".}
proc fcQToolButton_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_sizeHint".}
proc fQToolButton_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QToolButton_virtualbase_minimumSizeHint".}
proc fcQToolButton_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_minimumSizeHint".}
proc fQToolButton_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QToolButton_virtualbase_event".}
proc fcQToolButton_override_virtual_event(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_event".}
proc fQToolButton_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_mousePressEvent".}
proc fcQToolButton_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_mousePressEvent".}
proc fQToolButton_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_mouseReleaseEvent".}
proc fcQToolButton_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_mouseReleaseEvent".}
proc fQToolButton_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_paintEvent".}
proc fcQToolButton_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_paintEvent".}
proc fQToolButton_virtualbase_actionEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_actionEvent".}
proc fcQToolButton_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_actionEvent".}
proc fQToolButton_virtualbase_enterEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_enterEvent".}
proc fcQToolButton_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_enterEvent".}
proc fQToolButton_virtualbase_leaveEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_leaveEvent".}
proc fcQToolButton_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_leaveEvent".}
proc fQToolButton_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_timerEvent".}
proc fcQToolButton_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_timerEvent".}
proc fQToolButton_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_changeEvent".}
proc fcQToolButton_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_changeEvent".}
proc fQToolButton_virtualbase_hitButton(self: pointer, pos: pointer): bool{.importc: "QToolButton_virtualbase_hitButton".}
proc fcQToolButton_override_virtual_hitButton(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_hitButton".}
proc fQToolButton_virtualbase_checkStateSet(self: pointer, ): void{.importc: "QToolButton_virtualbase_checkStateSet".}
proc fcQToolButton_override_virtual_checkStateSet(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_checkStateSet".}
proc fQToolButton_virtualbase_nextCheckState(self: pointer, ): void{.importc: "QToolButton_virtualbase_nextCheckState".}
proc fcQToolButton_override_virtual_nextCheckState(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_nextCheckState".}
proc fQToolButton_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QToolButton_virtualbase_initStyleOption".}
proc fcQToolButton_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_initStyleOption".}
proc fQToolButton_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QToolButton_virtualbase_keyPressEvent".}
proc fcQToolButton_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_keyPressEvent".}
proc fQToolButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QToolButton_virtualbase_keyReleaseEvent".}
proc fcQToolButton_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_keyReleaseEvent".}
proc fQToolButton_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QToolButton_virtualbase_mouseMoveEvent".}
proc fcQToolButton_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_mouseMoveEvent".}
proc fQToolButton_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QToolButton_virtualbase_focusInEvent".}
proc fcQToolButton_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_focusInEvent".}
proc fQToolButton_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QToolButton_virtualbase_focusOutEvent".}
proc fcQToolButton_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_focusOutEvent".}
proc fQToolButton_virtualbase_devType(self: pointer, ): cint{.importc: "QToolButton_virtualbase_devType".}
proc fcQToolButton_override_virtual_devType(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_devType".}
proc fQToolButton_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QToolButton_virtualbase_setVisible".}
proc fcQToolButton_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_setVisible".}
proc fQToolButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QToolButton_virtualbase_heightForWidth".}
proc fcQToolButton_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_heightForWidth".}
proc fQToolButton_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QToolButton_virtualbase_hasHeightForWidth".}
proc fcQToolButton_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_hasHeightForWidth".}
proc fQToolButton_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QToolButton_virtualbase_paintEngine".}
proc fcQToolButton_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_paintEngine".}
proc fQToolButton_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_mouseDoubleClickEvent".}
proc fcQToolButton_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_mouseDoubleClickEvent".}
proc fQToolButton_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_wheelEvent".}
proc fcQToolButton_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_wheelEvent".}
proc fQToolButton_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_moveEvent".}
proc fcQToolButton_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_moveEvent".}
proc fQToolButton_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_resizeEvent".}
proc fcQToolButton_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_resizeEvent".}
proc fQToolButton_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_closeEvent".}
proc fcQToolButton_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_closeEvent".}
proc fQToolButton_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_contextMenuEvent".}
proc fcQToolButton_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_contextMenuEvent".}
proc fQToolButton_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_tabletEvent".}
proc fcQToolButton_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_tabletEvent".}
proc fQToolButton_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_dragEnterEvent".}
proc fcQToolButton_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_dragEnterEvent".}
proc fQToolButton_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_dragMoveEvent".}
proc fcQToolButton_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_dragMoveEvent".}
proc fQToolButton_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_dragLeaveEvent".}
proc fcQToolButton_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_dragLeaveEvent".}
proc fQToolButton_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_dropEvent".}
proc fcQToolButton_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_dropEvent".}
proc fQToolButton_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_showEvent".}
proc fcQToolButton_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_showEvent".}
proc fQToolButton_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_hideEvent".}
proc fcQToolButton_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_hideEvent".}
proc fQToolButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QToolButton_virtualbase_nativeEvent".}
proc fcQToolButton_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_nativeEvent".}
proc fQToolButton_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QToolButton_virtualbase_metric".}
proc fcQToolButton_override_virtual_metric(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_metric".}
proc fQToolButton_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QToolButton_virtualbase_initPainter".}
proc fcQToolButton_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_initPainter".}
proc fQToolButton_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QToolButton_virtualbase_redirected".}
proc fcQToolButton_override_virtual_redirected(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_redirected".}
proc fQToolButton_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QToolButton_virtualbase_sharedPainter".}
proc fcQToolButton_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_sharedPainter".}
proc fQToolButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_inputMethodEvent".}
proc fcQToolButton_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_inputMethodEvent".}
proc fQToolButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QToolButton_virtualbase_inputMethodQuery".}
proc fcQToolButton_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_inputMethodQuery".}
proc fQToolButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QToolButton_virtualbase_focusNextPrevChild".}
proc fcQToolButton_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_focusNextPrevChild".}
proc fQToolButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QToolButton_virtualbase_eventFilter".}
proc fcQToolButton_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_eventFilter".}
proc fQToolButton_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_childEvent".}
proc fcQToolButton_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_childEvent".}
proc fQToolButton_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_customEvent".}
proc fcQToolButton_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_customEvent".}
proc fQToolButton_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QToolButton_virtualbase_connectNotify".}
proc fcQToolButton_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_connectNotify".}
proc fQToolButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QToolButton_virtualbase_disconnectNotify".}
proc fcQToolButton_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_disconnectNotify".}
proc fcQToolButton_staticMetaObject(): pointer {.importc: "QToolButton_staticMetaObject".}
proc fcQToolButton_delete(self: pointer) {.importc: "QToolButton_delete".}


func init*(T: type QToolButton, h: ptr cQToolButton): QToolButton =
  T(h: h)
proc create*(T: type QToolButton, parent: gen_qwidget.QWidget): QToolButton =

  QToolButton.init(fcQToolButton_new(parent.h))
proc create*(T: type QToolButton, ): QToolButton =

  QToolButton.init(fcQToolButton_new2())
proc metaObject*(self: QToolButton, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQToolButton_metaObject(self.h))

proc metacast*(self: QToolButton, param1: cstring): pointer =

  fcQToolButton_metacast(self.h, param1)

proc metacall*(self: QToolButton, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQToolButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QToolButton, s: cstring): string =

  let v_ms = fcQToolButton_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: QToolButton, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQToolButton_sizeHint(self.h))

proc minimumSizeHint*(self: QToolButton, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQToolButton_minimumSizeHint(self.h))

proc toolButtonStyle*(self: QToolButton, ): gen_qnamespace.ToolButtonStyle =

  gen_qnamespace.ToolButtonStyle(fcQToolButton_toolButtonStyle(self.h))

proc arrowType*(self: QToolButton, ): gen_qnamespace.ArrowType =

  gen_qnamespace.ArrowType(fcQToolButton_arrowType(self.h))

proc setArrowType*(self: QToolButton, typeVal: gen_qnamespace.ArrowType): void =

  fcQToolButton_setArrowType(self.h, cint(typeVal))

proc setMenu*(self: QToolButton, menu: gen_qmenu.QMenu): void =

  fcQToolButton_setMenu(self.h, menu.h)

proc menu*(self: QToolButton, ): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQToolButton_menu(self.h))

proc setPopupMode*(self: QToolButton, mode: QToolButtonToolButtonPopupMode): void =

  fcQToolButton_setPopupMode(self.h, cint(mode))

proc popupMode*(self: QToolButton, ): QToolButtonToolButtonPopupMode =

  QToolButtonToolButtonPopupMode(fcQToolButton_popupMode(self.h))

proc defaultAction*(self: QToolButton, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQToolButton_defaultAction(self.h))

proc setAutoRaise*(self: QToolButton, enable: bool): void =

  fcQToolButton_setAutoRaise(self.h, enable)

proc autoRaise*(self: QToolButton, ): bool =

  fcQToolButton_autoRaise(self.h)

proc showMenu*(self: QToolButton, ): void =

  fcQToolButton_showMenu(self.h)

proc setToolButtonStyle*(self: QToolButton, style: gen_qnamespace.ToolButtonStyle): void =

  fcQToolButton_setToolButtonStyle(self.h, cint(style))

proc setDefaultAction*(self: QToolButton, defaultAction: gen_qaction.QAction): void =

  fcQToolButton_setDefaultAction(self.h, defaultAction.h)

proc triggered*(self: QToolButton, param1: gen_qaction.QAction): void =

  fcQToolButton_triggered(self.h, param1.h)

proc miqt_exec_callback_QToolButton_triggered(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qaction.QAction)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaction.QAction(h: param1)


  nimfunc[](slotval1)

proc ontriggered*(self: QToolButton, slot: proc(param1: gen_qaction.QAction)) =
  type Cb = proc(param1: gen_qaction.QAction)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQToolButton_connect_triggered(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QToolButton, s: cstring, c: cstring): string =

  let v_ms = fcQToolButton_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QToolButton, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQToolButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QToolButton, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQToolButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QToolButtonmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QToolButton, slot: proc(super: QToolButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_metacall(self: ptr cQToolButton, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QToolButton_metacall ".} =
  type Cb = proc(super: QToolButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QToolButton(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QToolButton, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQToolButton_virtualbase_sizeHint(self.h))

type QToolButtonsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QToolButton, slot: proc(super: QToolButtonsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_sizeHint(self: ptr cQToolButton, slot: int): pointer {.exportc: "miqt_exec_callback_QToolButton_sizeHint ".} =
  type Cb = proc(super: QToolButtonsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QToolButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QToolButton, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQToolButton_virtualbase_minimumSizeHint(self.h))

type QToolButtonminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QToolButton, slot: proc(super: QToolButtonminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_minimumSizeHint(self: ptr cQToolButton, slot: int): pointer {.exportc: "miqt_exec_callback_QToolButton_minimumSizeHint ".} =
  type Cb = proc(super: QToolButtonminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QToolButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QToolButton, e: gen_qcoreevent.QEvent): bool =


  fQToolButton_virtualbase_event(self.h, e.h)

type QToolButtoneventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QToolButton, slot: proc(super: QToolButtoneventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolButtoneventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_event(self: ptr cQToolButton, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QToolButton_event ".} =
  type Cb = proc(super: QToolButtoneventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QToolButton(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QToolButton, param1: gen_qevent.QMouseEvent): void =


  fQToolButton_virtualbase_mousePressEvent(self.h, param1.h)

type QToolButtonmousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QToolButton, slot: proc(super: QToolButtonmousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_mousePressEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_mousePressEvent ".} =
  type Cb = proc(super: QToolButtonmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QToolButton(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QToolButton, param1: gen_qevent.QMouseEvent): void =


  fQToolButton_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QToolButtonmouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QToolButton, slot: proc(super: QToolButtonmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_mouseReleaseEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_mouseReleaseEvent ".} =
  type Cb = proc(super: QToolButtonmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QToolButton(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QToolButton, param1: gen_qevent.QPaintEvent): void =


  fQToolButton_virtualbase_paintEvent(self.h, param1.h)

type QToolButtonpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QToolButton, slot: proc(super: QToolButtonpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_paintEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_paintEvent ".} =
  type Cb = proc(super: QToolButtonpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QToolButton(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QToolButton, param1: gen_qevent.QActionEvent): void =


  fQToolButton_virtualbase_actionEvent(self.h, param1.h)

type QToolButtonactionEventBase* = proc(param1: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QToolButton, slot: proc(super: QToolButtonactionEventBase, param1: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonactionEventBase, param1: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_actionEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_actionEvent ".} =
  type Cb = proc(super: QToolButtonactionEventBase, param1: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QToolButton(h: self), param1)
  let slotval1 = gen_qevent.QActionEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QToolButton, param1: gen_qevent.QEnterEvent): void =


  fQToolButton_virtualbase_enterEvent(self.h, param1.h)

type QToolButtonenterEventBase* = proc(param1: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QToolButton, slot: proc(super: QToolButtonenterEventBase, param1: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonenterEventBase, param1: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_enterEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_enterEvent ".} =
  type Cb = proc(super: QToolButtonenterEventBase, param1: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QToolButton(h: self), param1)
  let slotval1 = gen_qevent.QEnterEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QToolButton, param1: gen_qcoreevent.QEvent): void =


  fQToolButton_virtualbase_leaveEvent(self.h, param1.h)

type QToolButtonleaveEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QToolButton, slot: proc(super: QToolButtonleaveEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonleaveEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_leaveEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_leaveEvent ".} =
  type Cb = proc(super: QToolButtonleaveEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QToolButton(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QToolButton, param1: gen_qcoreevent.QTimerEvent): void =


  fQToolButton_virtualbase_timerEvent(self.h, param1.h)

type QToolButtontimerEventBase* = proc(param1: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QToolButton, slot: proc(super: QToolButtontimerEventBase, param1: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtontimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_timerEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_timerEvent ".} =
  type Cb = proc(super: QToolButtontimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QToolButton(h: self), param1)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QToolButton, param1: gen_qcoreevent.QEvent): void =


  fQToolButton_virtualbase_changeEvent(self.h, param1.h)

type QToolButtonchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QToolButton, slot: proc(super: QToolButtonchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_changeEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_changeEvent ".} =
  type Cb = proc(super: QToolButtonchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QToolButton(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hitButton(self: QToolButton, pos: gen_qpoint.QPoint): bool =


  fQToolButton_virtualbase_hitButton(self.h, pos.h)

type QToolButtonhitButtonBase* = proc(pos: gen_qpoint.QPoint): bool
proc onhitButton*(self: QToolButton, slot: proc(super: QToolButtonhitButtonBase, pos: gen_qpoint.QPoint): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonhitButtonBase, pos: gen_qpoint.QPoint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_hitButton(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_hitButton(self: ptr cQToolButton, slot: int, pos: pointer): bool {.exportc: "miqt_exec_callback_QToolButton_hitButton ".} =
  type Cb = proc(super: QToolButtonhitButtonBase, pos: gen_qpoint.QPoint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: gen_qpoint.QPoint): auto =
    callVirtualBase_hitButton(QToolButton(h: self), pos)
  let slotval1 = gen_qpoint.QPoint(h: pos)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_checkStateSet(self: QToolButton, ): void =


  fQToolButton_virtualbase_checkStateSet(self.h)

type QToolButtoncheckStateSetBase* = proc(): void
proc oncheckStateSet*(self: QToolButton, slot: proc(super: QToolButtoncheckStateSetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtoncheckStateSetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_checkStateSet(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_checkStateSet(self: ptr cQToolButton, slot: int): void {.exportc: "miqt_exec_callback_QToolButton_checkStateSet ".} =
  type Cb = proc(super: QToolButtoncheckStateSetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_checkStateSet(QToolButton(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_nextCheckState(self: QToolButton, ): void =


  fQToolButton_virtualbase_nextCheckState(self.h)

type QToolButtonnextCheckStateBase* = proc(): void
proc onnextCheckState*(self: QToolButton, slot: proc(super: QToolButtonnextCheckStateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonnextCheckStateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_nextCheckState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_nextCheckState(self: ptr cQToolButton, slot: int): void {.exportc: "miqt_exec_callback_QToolButton_nextCheckState ".} =
  type Cb = proc(super: QToolButtonnextCheckStateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_nextCheckState(QToolButton(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_initStyleOption(self: QToolButton, option: gen_qstyleoption.QStyleOptionToolButton): void =


  fQToolButton_virtualbase_initStyleOption(self.h, option.h)

type QToolButtoninitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionToolButton): void
proc oninitStyleOption*(self: QToolButton, slot: proc(super: QToolButtoninitStyleOptionBase, option: gen_qstyleoption.QStyleOptionToolButton): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtoninitStyleOptionBase, option: gen_qstyleoption.QStyleOptionToolButton): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_initStyleOption(self: ptr cQToolButton, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QToolButton_initStyleOption ".} =
  type Cb = proc(super: QToolButtoninitStyleOptionBase, option: gen_qstyleoption.QStyleOptionToolButton): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionToolButton): auto =
    callVirtualBase_initStyleOption(QToolButton(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionToolButton(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QToolButton, e: gen_qevent.QKeyEvent): void =


  fQToolButton_virtualbase_keyPressEvent(self.h, e.h)

type QToolButtonkeyPressEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QToolButton, slot: proc(super: QToolButtonkeyPressEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_keyPressEvent(self: ptr cQToolButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QToolButton_keyPressEvent ".} =
  type Cb = proc(super: QToolButtonkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QToolButton(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QToolButton, e: gen_qevent.QKeyEvent): void =


  fQToolButton_virtualbase_keyReleaseEvent(self.h, e.h)

type QToolButtonkeyReleaseEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QToolButton, slot: proc(super: QToolButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_keyReleaseEvent(self: ptr cQToolButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QToolButton_keyReleaseEvent ".} =
  type Cb = proc(super: QToolButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QToolButton(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QToolButton, e: gen_qevent.QMouseEvent): void =


  fQToolButton_virtualbase_mouseMoveEvent(self.h, e.h)

type QToolButtonmouseMoveEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QToolButton, slot: proc(super: QToolButtonmouseMoveEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_mouseMoveEvent(self: ptr cQToolButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QToolButton_mouseMoveEvent ".} =
  type Cb = proc(super: QToolButtonmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QToolButton(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QToolButton, e: gen_qevent.QFocusEvent): void =


  fQToolButton_virtualbase_focusInEvent(self.h, e.h)

type QToolButtonfocusInEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QToolButton, slot: proc(super: QToolButtonfocusInEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_focusInEvent(self: ptr cQToolButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QToolButton_focusInEvent ".} =
  type Cb = proc(super: QToolButtonfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QToolButton(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QToolButton, e: gen_qevent.QFocusEvent): void =


  fQToolButton_virtualbase_focusOutEvent(self.h, e.h)

type QToolButtonfocusOutEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QToolButton, slot: proc(super: QToolButtonfocusOutEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_focusOutEvent(self: ptr cQToolButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QToolButton_focusOutEvent ".} =
  type Cb = proc(super: QToolButtonfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QToolButton(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QToolButton, ): cint =


  fQToolButton_virtualbase_devType(self.h)

type QToolButtondevTypeBase* = proc(): cint
proc ondevType*(self: QToolButton, slot: proc(super: QToolButtondevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QToolButtondevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_devType(self: ptr cQToolButton, slot: int): cint {.exportc: "miqt_exec_callback_QToolButton_devType ".} =
  type Cb = proc(super: QToolButtondevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QToolButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QToolButton, visible: bool): void =


  fQToolButton_virtualbase_setVisible(self.h, visible)

type QToolButtonsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QToolButton, slot: proc(super: QToolButtonsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_setVisible(self: ptr cQToolButton, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QToolButton_setVisible ".} =
  type Cb = proc(super: QToolButtonsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QToolButton(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QToolButton, param1: cint): cint =


  fQToolButton_virtualbase_heightForWidth(self.h, param1)

type QToolButtonheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QToolButton, slot: proc(super: QToolButtonheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_heightForWidth(self: ptr cQToolButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QToolButton_heightForWidth ".} =
  type Cb = proc(super: QToolButtonheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QToolButton(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QToolButton, ): bool =


  fQToolButton_virtualbase_hasHeightForWidth(self.h)

type QToolButtonhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QToolButton, slot: proc(super: QToolButtonhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_hasHeightForWidth(self: ptr cQToolButton, slot: int): bool {.exportc: "miqt_exec_callback_QToolButton_hasHeightForWidth ".} =
  type Cb = proc(super: QToolButtonhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QToolButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QToolButton, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQToolButton_virtualbase_paintEngine(self.h))

type QToolButtonpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QToolButton, slot: proc(super: QToolButtonpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_paintEngine(self: ptr cQToolButton, slot: int): pointer {.exportc: "miqt_exec_callback_QToolButton_paintEngine ".} =
  type Cb = proc(super: QToolButtonpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QToolButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QToolButton, event: gen_qevent.QMouseEvent): void =


  fQToolButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QToolButtonmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QToolButton, slot: proc(super: QToolButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_mouseDoubleClickEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QToolButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QToolButton(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QToolButton, event: gen_qevent.QWheelEvent): void =


  fQToolButton_virtualbase_wheelEvent(self.h, event.h)

type QToolButtonwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QToolButton, slot: proc(super: QToolButtonwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_wheelEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_wheelEvent ".} =
  type Cb = proc(super: QToolButtonwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QToolButton(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QToolButton, event: gen_qevent.QMoveEvent): void =


  fQToolButton_virtualbase_moveEvent(self.h, event.h)

type QToolButtonmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QToolButton, slot: proc(super: QToolButtonmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_moveEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_moveEvent ".} =
  type Cb = proc(super: QToolButtonmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QToolButton(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QToolButton, event: gen_qevent.QResizeEvent): void =


  fQToolButton_virtualbase_resizeEvent(self.h, event.h)

type QToolButtonresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QToolButton, slot: proc(super: QToolButtonresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_resizeEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_resizeEvent ".} =
  type Cb = proc(super: QToolButtonresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QToolButton(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QToolButton, event: gen_qevent.QCloseEvent): void =


  fQToolButton_virtualbase_closeEvent(self.h, event.h)

type QToolButtoncloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QToolButton, slot: proc(super: QToolButtoncloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtoncloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_closeEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_closeEvent ".} =
  type Cb = proc(super: QToolButtoncloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QToolButton(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QToolButton, event: gen_qevent.QContextMenuEvent): void =


  fQToolButton_virtualbase_contextMenuEvent(self.h, event.h)

type QToolButtoncontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QToolButton, slot: proc(super: QToolButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_contextMenuEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_contextMenuEvent ".} =
  type Cb = proc(super: QToolButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QToolButton(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QToolButton, event: gen_qevent.QTabletEvent): void =


  fQToolButton_virtualbase_tabletEvent(self.h, event.h)

type QToolButtontabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QToolButton, slot: proc(super: QToolButtontabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtontabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_tabletEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_tabletEvent ".} =
  type Cb = proc(super: QToolButtontabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QToolButton(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QToolButton, event: gen_qevent.QDragEnterEvent): void =


  fQToolButton_virtualbase_dragEnterEvent(self.h, event.h)

type QToolButtondragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QToolButton, slot: proc(super: QToolButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_dragEnterEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_dragEnterEvent ".} =
  type Cb = proc(super: QToolButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QToolButton(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QToolButton, event: gen_qevent.QDragMoveEvent): void =


  fQToolButton_virtualbase_dragMoveEvent(self.h, event.h)

type QToolButtondragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QToolButton, slot: proc(super: QToolButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_dragMoveEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_dragMoveEvent ".} =
  type Cb = proc(super: QToolButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QToolButton(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QToolButton, event: gen_qevent.QDragLeaveEvent): void =


  fQToolButton_virtualbase_dragLeaveEvent(self.h, event.h)

type QToolButtondragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QToolButton, slot: proc(super: QToolButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_dragLeaveEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_dragLeaveEvent ".} =
  type Cb = proc(super: QToolButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QToolButton(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QToolButton, event: gen_qevent.QDropEvent): void =


  fQToolButton_virtualbase_dropEvent(self.h, event.h)

type QToolButtondropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QToolButton, slot: proc(super: QToolButtondropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtondropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_dropEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_dropEvent ".} =
  type Cb = proc(super: QToolButtondropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QToolButton(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QToolButton, event: gen_qevent.QShowEvent): void =


  fQToolButton_virtualbase_showEvent(self.h, event.h)

type QToolButtonshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QToolButton, slot: proc(super: QToolButtonshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_showEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_showEvent ".} =
  type Cb = proc(super: QToolButtonshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QToolButton(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QToolButton, event: gen_qevent.QHideEvent): void =


  fQToolButton_virtualbase_hideEvent(self.h, event.h)

type QToolButtonhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QToolButton, slot: proc(super: QToolButtonhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_hideEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_hideEvent ".} =
  type Cb = proc(super: QToolButtonhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QToolButton(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QToolButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQToolButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QToolButtonnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QToolButton, slot: proc(super: QToolButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_nativeEvent(self: ptr cQToolButton, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QToolButton_nativeEvent ".} =
  type Cb = proc(super: QToolButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QToolButton(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QToolButton, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQToolButton_virtualbase_metric(self.h, cint(param1))

type QToolButtonmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QToolButton, slot: proc(super: QToolButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_metric(self: ptr cQToolButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QToolButton_metric ".} =
  type Cb = proc(super: QToolButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QToolButton(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QToolButton, painter: gen_qpainter.QPainter): void =


  fQToolButton_virtualbase_initPainter(self.h, painter.h)

type QToolButtoninitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QToolButton, slot: proc(super: QToolButtoninitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtoninitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_initPainter(self: ptr cQToolButton, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QToolButton_initPainter ".} =
  type Cb = proc(super: QToolButtoninitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QToolButton(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QToolButton, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQToolButton_virtualbase_redirected(self.h, offset.h))

type QToolButtonredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QToolButton, slot: proc(super: QToolButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_redirected(self: ptr cQToolButton, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QToolButton_redirected ".} =
  type Cb = proc(super: QToolButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QToolButton(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QToolButton, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQToolButton_virtualbase_sharedPainter(self.h))

type QToolButtonsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QToolButton, slot: proc(super: QToolButtonsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_sharedPainter(self: ptr cQToolButton, slot: int): pointer {.exportc: "miqt_exec_callback_QToolButton_sharedPainter ".} =
  type Cb = proc(super: QToolButtonsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QToolButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QToolButton, param1: gen_qevent.QInputMethodEvent): void =


  fQToolButton_virtualbase_inputMethodEvent(self.h, param1.h)

type QToolButtoninputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QToolButton, slot: proc(super: QToolButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_inputMethodEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_inputMethodEvent ".} =
  type Cb = proc(super: QToolButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QToolButton(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QToolButton, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQToolButton_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QToolButtoninputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QToolButton, slot: proc(super: QToolButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QToolButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_inputMethodQuery(self: ptr cQToolButton, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QToolButton_inputMethodQuery ".} =
  type Cb = proc(super: QToolButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QToolButton(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QToolButton, next: bool): bool =


  fQToolButton_virtualbase_focusNextPrevChild(self.h, next)

type QToolButtonfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QToolButton, slot: proc(super: QToolButtonfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_focusNextPrevChild(self: ptr cQToolButton, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QToolButton_focusNextPrevChild ".} =
  type Cb = proc(super: QToolButtonfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QToolButton(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QToolButton, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQToolButton_virtualbase_eventFilter(self.h, watched.h, event.h)

type QToolButtoneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QToolButton, slot: proc(super: QToolButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_eventFilter(self: ptr cQToolButton, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QToolButton_eventFilter ".} =
  type Cb = proc(super: QToolButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QToolButton(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QToolButton, event: gen_qcoreevent.QChildEvent): void =


  fQToolButton_virtualbase_childEvent(self.h, event.h)

type QToolButtonchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QToolButton, slot: proc(super: QToolButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_childEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_childEvent ".} =
  type Cb = proc(super: QToolButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QToolButton(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QToolButton, event: gen_qcoreevent.QEvent): void =


  fQToolButton_virtualbase_customEvent(self.h, event.h)

type QToolButtoncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QToolButton, slot: proc(super: QToolButtoncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtoncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_customEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_customEvent ".} =
  type Cb = proc(super: QToolButtoncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QToolButton(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QToolButton, signal: gen_qmetaobject.QMetaMethod): void =


  fQToolButton_virtualbase_connectNotify(self.h, signal.h)

type QToolButtonconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QToolButton, slot: proc(super: QToolButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_connectNotify(self: ptr cQToolButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QToolButton_connectNotify ".} =
  type Cb = proc(super: QToolButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QToolButton(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QToolButton, signal: gen_qmetaobject.QMetaMethod): void =


  fQToolButton_virtualbase_disconnectNotify(self.h, signal.h)

type QToolButtondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QToolButton, slot: proc(super: QToolButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QToolButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_disconnectNotify(self: ptr cQToolButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QToolButton_disconnectNotify ".} =
  type Cb = proc(super: QToolButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QToolButton(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QToolButton): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQToolButton_staticMetaObject())
proc delete*(self: QToolButton) =
  fcQToolButton_delete(self.h)
