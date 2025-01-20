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
{.compile("gen_qcommandlinkbutton.cpp", cflags).}


import gen_qcommandlinkbutton_types
export gen_qcommandlinkbutton_types

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
  gen_qpushbutton,
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
  gen_qpushbutton,
  gen_qsize,
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget

type cQCommandLinkButton*{.exportc: "QCommandLinkButton", incompleteStruct.} = object

proc fcQCommandLinkButton_new(parent: pointer): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new".}
proc fcQCommandLinkButton_new2(): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new2".}
proc fcQCommandLinkButton_new3(text: struct_miqt_string): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new3".}
proc fcQCommandLinkButton_new4(text: struct_miqt_string, description: struct_miqt_string): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new4".}
proc fcQCommandLinkButton_new5(text: struct_miqt_string, parent: pointer): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new5".}
proc fcQCommandLinkButton_new6(text: struct_miqt_string, description: struct_miqt_string, parent: pointer): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new6".}
proc fcQCommandLinkButton_metaObject(self: pointer, ): pointer {.importc: "QCommandLinkButton_metaObject".}
proc fcQCommandLinkButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QCommandLinkButton_metacast".}
proc fcQCommandLinkButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCommandLinkButton_metacall".}
proc fcQCommandLinkButton_tr(s: cstring): struct_miqt_string {.importc: "QCommandLinkButton_tr".}
proc fcQCommandLinkButton_description(self: pointer, ): struct_miqt_string {.importc: "QCommandLinkButton_description".}
proc fcQCommandLinkButton_setDescription(self: pointer, description: struct_miqt_string): void {.importc: "QCommandLinkButton_setDescription".}
proc fcQCommandLinkButton_sizeHint(self: pointer, ): pointer {.importc: "QCommandLinkButton_sizeHint".}
proc fcQCommandLinkButton_heightForWidth(self: pointer, param1: cint): cint {.importc: "QCommandLinkButton_heightForWidth".}
proc fcQCommandLinkButton_minimumSizeHint(self: pointer, ): pointer {.importc: "QCommandLinkButton_minimumSizeHint".}
proc fcQCommandLinkButton_initStyleOption(self: pointer, option: pointer): void {.importc: "QCommandLinkButton_initStyleOption".}
proc fcQCommandLinkButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCommandLinkButton_tr2".}
proc fcQCommandLinkButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCommandLinkButton_tr3".}
proc fQCommandLinkButton_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QCommandLinkButton_virtualbase_metaObject".}
proc fcQCommandLinkButton_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_metaObject".}
proc fQCommandLinkButton_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QCommandLinkButton_virtualbase_metacast".}
proc fcQCommandLinkButton_override_virtual_metacast(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_metacast".}
proc fQCommandLinkButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCommandLinkButton_virtualbase_metacall".}
proc fcQCommandLinkButton_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_metacall".}
proc fQCommandLinkButton_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QCommandLinkButton_virtualbase_sizeHint".}
proc fcQCommandLinkButton_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_sizeHint".}
proc fQCommandLinkButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QCommandLinkButton_virtualbase_heightForWidth".}
proc fcQCommandLinkButton_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_heightForWidth".}
proc fQCommandLinkButton_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QCommandLinkButton_virtualbase_minimumSizeHint".}
proc fcQCommandLinkButton_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_minimumSizeHint".}
proc fQCommandLinkButton_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QCommandLinkButton_virtualbase_initStyleOption".}
proc fcQCommandLinkButton_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_initStyleOption".}
proc fQCommandLinkButton_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QCommandLinkButton_virtualbase_event".}
proc fcQCommandLinkButton_override_virtual_event(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_event".}
proc fQCommandLinkButton_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QCommandLinkButton_virtualbase_paintEvent".}
proc fcQCommandLinkButton_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_paintEvent".}
proc fQCommandLinkButton_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QCommandLinkButton_virtualbase_keyPressEvent".}
proc fcQCommandLinkButton_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_keyPressEvent".}
proc fQCommandLinkButton_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QCommandLinkButton_virtualbase_focusInEvent".}
proc fcQCommandLinkButton_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_focusInEvent".}
proc fQCommandLinkButton_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QCommandLinkButton_virtualbase_focusOutEvent".}
proc fcQCommandLinkButton_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_focusOutEvent".}
proc fQCommandLinkButton_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QCommandLinkButton_virtualbase_mouseMoveEvent".}
proc fcQCommandLinkButton_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_mouseMoveEvent".}
proc fQCommandLinkButton_virtualbase_hitButton(self: pointer, pos: pointer): bool{.importc: "QCommandLinkButton_virtualbase_hitButton".}
proc fcQCommandLinkButton_override_virtual_hitButton(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_hitButton".}
proc fQCommandLinkButton_virtualbase_checkStateSet(self: pointer, ): void{.importc: "QCommandLinkButton_virtualbase_checkStateSet".}
proc fcQCommandLinkButton_override_virtual_checkStateSet(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_checkStateSet".}
proc fQCommandLinkButton_virtualbase_nextCheckState(self: pointer, ): void{.importc: "QCommandLinkButton_virtualbase_nextCheckState".}
proc fcQCommandLinkButton_override_virtual_nextCheckState(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_nextCheckState".}
proc fQCommandLinkButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QCommandLinkButton_virtualbase_keyReleaseEvent".}
proc fcQCommandLinkButton_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_keyReleaseEvent".}
proc fQCommandLinkButton_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QCommandLinkButton_virtualbase_mousePressEvent".}
proc fcQCommandLinkButton_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_mousePressEvent".}
proc fQCommandLinkButton_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QCommandLinkButton_virtualbase_mouseReleaseEvent".}
proc fcQCommandLinkButton_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_mouseReleaseEvent".}
proc fQCommandLinkButton_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QCommandLinkButton_virtualbase_changeEvent".}
proc fcQCommandLinkButton_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_changeEvent".}
proc fQCommandLinkButton_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QCommandLinkButton_virtualbase_timerEvent".}
proc fcQCommandLinkButton_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_timerEvent".}
proc fQCommandLinkButton_virtualbase_devType(self: pointer, ): cint{.importc: "QCommandLinkButton_virtualbase_devType".}
proc fcQCommandLinkButton_override_virtual_devType(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_devType".}
proc fQCommandLinkButton_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QCommandLinkButton_virtualbase_setVisible".}
proc fcQCommandLinkButton_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_setVisible".}
proc fQCommandLinkButton_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QCommandLinkButton_virtualbase_hasHeightForWidth".}
proc fcQCommandLinkButton_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_hasHeightForWidth".}
proc fQCommandLinkButton_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QCommandLinkButton_virtualbase_paintEngine".}
proc fcQCommandLinkButton_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_paintEngine".}
proc fQCommandLinkButton_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_mouseDoubleClickEvent".}
proc fcQCommandLinkButton_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_mouseDoubleClickEvent".}
proc fQCommandLinkButton_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_wheelEvent".}
proc fcQCommandLinkButton_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_wheelEvent".}
proc fQCommandLinkButton_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_enterEvent".}
proc fcQCommandLinkButton_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_enterEvent".}
proc fQCommandLinkButton_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_leaveEvent".}
proc fcQCommandLinkButton_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_leaveEvent".}
proc fQCommandLinkButton_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_moveEvent".}
proc fcQCommandLinkButton_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_moveEvent".}
proc fQCommandLinkButton_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_resizeEvent".}
proc fcQCommandLinkButton_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_resizeEvent".}
proc fQCommandLinkButton_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_closeEvent".}
proc fcQCommandLinkButton_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_closeEvent".}
proc fQCommandLinkButton_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_contextMenuEvent".}
proc fcQCommandLinkButton_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_contextMenuEvent".}
proc fQCommandLinkButton_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_tabletEvent".}
proc fcQCommandLinkButton_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_tabletEvent".}
proc fQCommandLinkButton_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_actionEvent".}
proc fcQCommandLinkButton_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_actionEvent".}
proc fQCommandLinkButton_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_dragEnterEvent".}
proc fcQCommandLinkButton_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_dragEnterEvent".}
proc fQCommandLinkButton_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_dragMoveEvent".}
proc fcQCommandLinkButton_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_dragMoveEvent".}
proc fQCommandLinkButton_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_dragLeaveEvent".}
proc fcQCommandLinkButton_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_dragLeaveEvent".}
proc fQCommandLinkButton_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_dropEvent".}
proc fcQCommandLinkButton_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_dropEvent".}
proc fQCommandLinkButton_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_showEvent".}
proc fcQCommandLinkButton_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_showEvent".}
proc fQCommandLinkButton_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_hideEvent".}
proc fcQCommandLinkButton_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_hideEvent".}
proc fQCommandLinkButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QCommandLinkButton_virtualbase_nativeEvent".}
proc fcQCommandLinkButton_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_nativeEvent".}
proc fQCommandLinkButton_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QCommandLinkButton_virtualbase_metric".}
proc fcQCommandLinkButton_override_virtual_metric(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_metric".}
proc fQCommandLinkButton_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QCommandLinkButton_virtualbase_initPainter".}
proc fcQCommandLinkButton_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_initPainter".}
proc fQCommandLinkButton_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QCommandLinkButton_virtualbase_redirected".}
proc fcQCommandLinkButton_override_virtual_redirected(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_redirected".}
proc fQCommandLinkButton_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QCommandLinkButton_virtualbase_sharedPainter".}
proc fcQCommandLinkButton_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_sharedPainter".}
proc fQCommandLinkButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QCommandLinkButton_virtualbase_inputMethodEvent".}
proc fcQCommandLinkButton_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_inputMethodEvent".}
proc fQCommandLinkButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QCommandLinkButton_virtualbase_inputMethodQuery".}
proc fcQCommandLinkButton_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_inputMethodQuery".}
proc fQCommandLinkButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QCommandLinkButton_virtualbase_focusNextPrevChild".}
proc fcQCommandLinkButton_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_focusNextPrevChild".}
proc fQCommandLinkButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCommandLinkButton_virtualbase_eventFilter".}
proc fcQCommandLinkButton_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_eventFilter".}
proc fQCommandLinkButton_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_childEvent".}
proc fcQCommandLinkButton_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_childEvent".}
proc fQCommandLinkButton_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_customEvent".}
proc fcQCommandLinkButton_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_customEvent".}
proc fQCommandLinkButton_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCommandLinkButton_virtualbase_connectNotify".}
proc fcQCommandLinkButton_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_connectNotify".}
proc fQCommandLinkButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCommandLinkButton_virtualbase_disconnectNotify".}
proc fcQCommandLinkButton_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_disconnectNotify".}
proc fcQCommandLinkButton_staticMetaObject(): pointer {.importc: "QCommandLinkButton_staticMetaObject".}
proc fcQCommandLinkButton_delete(self: pointer) {.importc: "QCommandLinkButton_delete".}


func init*(T: type QCommandLinkButton, h: ptr cQCommandLinkButton): QCommandLinkButton =
  T(h: h)
proc create*(T: type QCommandLinkButton, parent: gen_qwidget.QWidget): QCommandLinkButton =

  QCommandLinkButton.init(fcQCommandLinkButton_new(parent.h))
proc create*(T: type QCommandLinkButton, ): QCommandLinkButton =

  QCommandLinkButton.init(fcQCommandLinkButton_new2())
proc create*(T: type QCommandLinkButton, text: string): QCommandLinkButton =

  QCommandLinkButton.init(fcQCommandLinkButton_new3(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QCommandLinkButton, text: string, description: string): QCommandLinkButton =

  QCommandLinkButton.init(fcQCommandLinkButton_new4(struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: description, len: csize_t(len(description)))))
proc create*(T: type QCommandLinkButton, text: string, parent: gen_qwidget.QWidget): QCommandLinkButton =

  QCommandLinkButton.init(fcQCommandLinkButton_new5(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc create*(T: type QCommandLinkButton, text: string, description: string, parent: gen_qwidget.QWidget): QCommandLinkButton =

  QCommandLinkButton.init(fcQCommandLinkButton_new6(struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: description, len: csize_t(len(description))), parent.h))
proc metaObject*(self: QCommandLinkButton, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCommandLinkButton_metaObject(self.h))

proc metacast*(self: QCommandLinkButton, param1: cstring): pointer =

  fcQCommandLinkButton_metacast(self.h, param1)

proc metacall*(self: QCommandLinkButton, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCommandLinkButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCommandLinkButton, s: cstring): string =

  let v_ms = fcQCommandLinkButton_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc description*(self: QCommandLinkButton, ): string =

  let v_ms = fcQCommandLinkButton_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDescription*(self: QCommandLinkButton, description: string): void =

  fcQCommandLinkButton_setDescription(self.h, struct_miqt_string(data: description, len: csize_t(len(description))))

proc sizeHint*(self: QCommandLinkButton, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQCommandLinkButton_sizeHint(self.h))

proc heightForWidth*(self: QCommandLinkButton, param1: cint): cint =

  fcQCommandLinkButton_heightForWidth(self.h, param1)

proc minimumSizeHint*(self: QCommandLinkButton, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQCommandLinkButton_minimumSizeHint(self.h))

proc initStyleOption*(self: QCommandLinkButton, option: gen_qstyleoption.QStyleOptionButton): void =

  fcQCommandLinkButton_initStyleOption(self.h, option.h)

proc tr2*(_: type QCommandLinkButton, s: cstring, c: cstring): string =

  let v_ms = fcQCommandLinkButton_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCommandLinkButton, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCommandLinkButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QCommandLinkButton, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQCommandLinkButton_virtualbase_metaObject(self.h))

type QCommandLinkButtonmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_metaObject(self: ptr cQCommandLinkButton, slot: int): pointer {.exportc: "miqt_exec_callback_QCommandLinkButton_metaObject ".} =
  type Cb = proc(super: QCommandLinkButtonmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QCommandLinkButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QCommandLinkButton, param1: cstring): pointer =


  fQCommandLinkButton_virtualbase_metacast(self.h, param1)

type QCommandLinkButtonmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_metacast(self: ptr cQCommandLinkButton, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QCommandLinkButton_metacast ".} =
  type Cb = proc(super: QCommandLinkButtonmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QCommandLinkButton(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QCommandLinkButton, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQCommandLinkButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCommandLinkButtonmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_metacall(self: ptr cQCommandLinkButton, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCommandLinkButton_metacall ".} =
  type Cb = proc(super: QCommandLinkButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QCommandLinkButton(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QCommandLinkButton, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQCommandLinkButton_virtualbase_sizeHint(self.h))

type QCommandLinkButtonsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_sizeHint(self: ptr cQCommandLinkButton, slot: int): pointer {.exportc: "miqt_exec_callback_QCommandLinkButton_sizeHint ".} =
  type Cb = proc(super: QCommandLinkButtonsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QCommandLinkButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QCommandLinkButton, param1: cint): cint =


  fQCommandLinkButton_virtualbase_heightForWidth(self.h, param1)

type QCommandLinkButtonheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_heightForWidth(self: ptr cQCommandLinkButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCommandLinkButton_heightForWidth ".} =
  type Cb = proc(super: QCommandLinkButtonheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QCommandLinkButton(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_minimumSizeHint(self: QCommandLinkButton, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQCommandLinkButton_virtualbase_minimumSizeHint(self.h))

type QCommandLinkButtonminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_minimumSizeHint(self: ptr cQCommandLinkButton, slot: int): pointer {.exportc: "miqt_exec_callback_QCommandLinkButton_minimumSizeHint ".} =
  type Cb = proc(super: QCommandLinkButtonminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QCommandLinkButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_initStyleOption(self: QCommandLinkButton, option: gen_qstyleoption.QStyleOptionButton): void =


  fQCommandLinkButton_virtualbase_initStyleOption(self.h, option.h)

type QCommandLinkButtoninitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionButton): void
proc oninitStyleOption*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtoninitStyleOptionBase, option: gen_qstyleoption.QStyleOptionButton): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtoninitStyleOptionBase, option: gen_qstyleoption.QStyleOptionButton): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_initStyleOption(self: ptr cQCommandLinkButton, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_initStyleOption ".} =
  type Cb = proc(super: QCommandLinkButtoninitStyleOptionBase, option: gen_qstyleoption.QStyleOptionButton): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionButton): auto =
    callVirtualBase_initStyleOption(QCommandLinkButton(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionButton(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QCommandLinkButton, e: gen_qcoreevent.QEvent): bool =


  fQCommandLinkButton_virtualbase_event(self.h, e.h)

type QCommandLinkButtoneventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtoneventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtoneventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_event(self: ptr cQCommandLinkButton, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QCommandLinkButton_event ".} =
  type Cb = proc(super: QCommandLinkButtoneventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QCommandLinkButton(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paintEvent(self: QCommandLinkButton, param1: gen_qevent.QPaintEvent): void =


  fQCommandLinkButton_virtualbase_paintEvent(self.h, param1.h)

type QCommandLinkButtonpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_paintEvent(self: ptr cQCommandLinkButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_paintEvent ".} =
  type Cb = proc(super: QCommandLinkButtonpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QCommandLinkButton(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QCommandLinkButton, param1: gen_qevent.QKeyEvent): void =


  fQCommandLinkButton_virtualbase_keyPressEvent(self.h, param1.h)

type QCommandLinkButtonkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_keyPressEvent(self: ptr cQCommandLinkButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_keyPressEvent ".} =
  type Cb = proc(super: QCommandLinkButtonkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QCommandLinkButton(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QCommandLinkButton, param1: gen_qevent.QFocusEvent): void =


  fQCommandLinkButton_virtualbase_focusInEvent(self.h, param1.h)

type QCommandLinkButtonfocusInEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonfocusInEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_focusInEvent(self: ptr cQCommandLinkButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_focusInEvent ".} =
  type Cb = proc(super: QCommandLinkButtonfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QCommandLinkButton(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QCommandLinkButton, param1: gen_qevent.QFocusEvent): void =


  fQCommandLinkButton_virtualbase_focusOutEvent(self.h, param1.h)

type QCommandLinkButtonfocusOutEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonfocusOutEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_focusOutEvent(self: ptr cQCommandLinkButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_focusOutEvent ".} =
  type Cb = proc(super: QCommandLinkButtonfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QCommandLinkButton(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QCommandLinkButton, param1: gen_qevent.QMouseEvent): void =


  fQCommandLinkButton_virtualbase_mouseMoveEvent(self.h, param1.h)

type QCommandLinkButtonmouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_mouseMoveEvent(self: ptr cQCommandLinkButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_mouseMoveEvent ".} =
  type Cb = proc(super: QCommandLinkButtonmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QCommandLinkButton(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hitButton(self: QCommandLinkButton, pos: gen_qpoint.QPoint): bool =


  fQCommandLinkButton_virtualbase_hitButton(self.h, pos.h)

type QCommandLinkButtonhitButtonBase* = proc(pos: gen_qpoint.QPoint): bool
proc onhitButton*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonhitButtonBase, pos: gen_qpoint.QPoint): bool) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonhitButtonBase, pos: gen_qpoint.QPoint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_hitButton(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_hitButton(self: ptr cQCommandLinkButton, slot: int, pos: pointer): bool {.exportc: "miqt_exec_callback_QCommandLinkButton_hitButton ".} =
  type Cb = proc(super: QCommandLinkButtonhitButtonBase, pos: gen_qpoint.QPoint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: gen_qpoint.QPoint): auto =
    callVirtualBase_hitButton(QCommandLinkButton(h: self), pos)
  let slotval1 = gen_qpoint.QPoint(h: pos)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_checkStateSet(self: QCommandLinkButton, ): void =


  fQCommandLinkButton_virtualbase_checkStateSet(self.h)

type QCommandLinkButtoncheckStateSetBase* = proc(): void
proc oncheckStateSet*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtoncheckStateSetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtoncheckStateSetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_checkStateSet(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_checkStateSet(self: ptr cQCommandLinkButton, slot: int): void {.exportc: "miqt_exec_callback_QCommandLinkButton_checkStateSet ".} =
  type Cb = proc(super: QCommandLinkButtoncheckStateSetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_checkStateSet(QCommandLinkButton(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_nextCheckState(self: QCommandLinkButton, ): void =


  fQCommandLinkButton_virtualbase_nextCheckState(self.h)

type QCommandLinkButtonnextCheckStateBase* = proc(): void
proc onnextCheckState*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonnextCheckStateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonnextCheckStateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_nextCheckState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_nextCheckState(self: ptr cQCommandLinkButton, slot: int): void {.exportc: "miqt_exec_callback_QCommandLinkButton_nextCheckState ".} =
  type Cb = proc(super: QCommandLinkButtonnextCheckStateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_nextCheckState(QCommandLinkButton(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyReleaseEvent(self: QCommandLinkButton, e: gen_qevent.QKeyEvent): void =


  fQCommandLinkButton_virtualbase_keyReleaseEvent(self.h, e.h)

type QCommandLinkButtonkeyReleaseEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_keyReleaseEvent(self: ptr cQCommandLinkButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_keyReleaseEvent ".} =
  type Cb = proc(super: QCommandLinkButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QCommandLinkButton(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QCommandLinkButton, e: gen_qevent.QMouseEvent): void =


  fQCommandLinkButton_virtualbase_mousePressEvent(self.h, e.h)

type QCommandLinkButtonmousePressEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonmousePressEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_mousePressEvent(self: ptr cQCommandLinkButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_mousePressEvent ".} =
  type Cb = proc(super: QCommandLinkButtonmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QCommandLinkButton(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QCommandLinkButton, e: gen_qevent.QMouseEvent): void =


  fQCommandLinkButton_virtualbase_mouseReleaseEvent(self.h, e.h)

type QCommandLinkButtonmouseReleaseEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_mouseReleaseEvent(self: ptr cQCommandLinkButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_mouseReleaseEvent ".} =
  type Cb = proc(super: QCommandLinkButtonmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QCommandLinkButton(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QCommandLinkButton, e: gen_qcoreevent.QEvent): void =


  fQCommandLinkButton_virtualbase_changeEvent(self.h, e.h)

type QCommandLinkButtonchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_changeEvent(self: ptr cQCommandLinkButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_changeEvent ".} =
  type Cb = proc(super: QCommandLinkButtonchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QCommandLinkButton(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QCommandLinkButton, e: gen_qcoreevent.QTimerEvent): void =


  fQCommandLinkButton_virtualbase_timerEvent(self.h, e.h)

type QCommandLinkButtontimerEventBase* = proc(e: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtontimerEventBase, e: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtontimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_timerEvent(self: ptr cQCommandLinkButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_timerEvent ".} =
  type Cb = proc(super: QCommandLinkButtontimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QCommandLinkButton(h: self), e)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QCommandLinkButton, ): cint =


  fQCommandLinkButton_virtualbase_devType(self.h)

type QCommandLinkButtondevTypeBase* = proc(): cint
proc ondevType*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtondevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtondevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_devType(self: ptr cQCommandLinkButton, slot: int): cint {.exportc: "miqt_exec_callback_QCommandLinkButton_devType ".} =
  type Cb = proc(super: QCommandLinkButtondevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QCommandLinkButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QCommandLinkButton, visible: bool): void =


  fQCommandLinkButton_virtualbase_setVisible(self.h, visible)

type QCommandLinkButtonsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_setVisible(self: ptr cQCommandLinkButton, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QCommandLinkButton_setVisible ".} =
  type Cb = proc(super: QCommandLinkButtonsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QCommandLinkButton(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hasHeightForWidth(self: QCommandLinkButton, ): bool =


  fQCommandLinkButton_virtualbase_hasHeightForWidth(self.h)

type QCommandLinkButtonhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_hasHeightForWidth(self: ptr cQCommandLinkButton, slot: int): bool {.exportc: "miqt_exec_callback_QCommandLinkButton_hasHeightForWidth ".} =
  type Cb = proc(super: QCommandLinkButtonhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QCommandLinkButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QCommandLinkButton, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQCommandLinkButton_virtualbase_paintEngine(self.h))

type QCommandLinkButtonpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_paintEngine(self: ptr cQCommandLinkButton, slot: int): pointer {.exportc: "miqt_exec_callback_QCommandLinkButton_paintEngine ".} =
  type Cb = proc(super: QCommandLinkButtonpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QCommandLinkButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QCommandLinkButton, event: gen_qevent.QMouseEvent): void =


  fQCommandLinkButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QCommandLinkButtonmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_mouseDoubleClickEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QCommandLinkButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QCommandLinkButton, event: gen_qevent.QWheelEvent): void =


  fQCommandLinkButton_virtualbase_wheelEvent(self.h, event.h)

type QCommandLinkButtonwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_wheelEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_wheelEvent ".} =
  type Cb = proc(super: QCommandLinkButtonwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QCommandLinkButton, event: gen_qevent.QEnterEvent): void =


  fQCommandLinkButton_virtualbase_enterEvent(self.h, event.h)

type QCommandLinkButtonenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_enterEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_enterEvent ".} =
  type Cb = proc(super: QCommandLinkButtonenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QCommandLinkButton, event: gen_qcoreevent.QEvent): void =


  fQCommandLinkButton_virtualbase_leaveEvent(self.h, event.h)

type QCommandLinkButtonleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_leaveEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_leaveEvent ".} =
  type Cb = proc(super: QCommandLinkButtonleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QCommandLinkButton, event: gen_qevent.QMoveEvent): void =


  fQCommandLinkButton_virtualbase_moveEvent(self.h, event.h)

type QCommandLinkButtonmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_moveEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_moveEvent ".} =
  type Cb = proc(super: QCommandLinkButtonmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QCommandLinkButton, event: gen_qevent.QResizeEvent): void =


  fQCommandLinkButton_virtualbase_resizeEvent(self.h, event.h)

type QCommandLinkButtonresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_resizeEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_resizeEvent ".} =
  type Cb = proc(super: QCommandLinkButtonresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QCommandLinkButton, event: gen_qevent.QCloseEvent): void =


  fQCommandLinkButton_virtualbase_closeEvent(self.h, event.h)

type QCommandLinkButtoncloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtoncloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtoncloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_closeEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_closeEvent ".} =
  type Cb = proc(super: QCommandLinkButtoncloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QCommandLinkButton, event: gen_qevent.QContextMenuEvent): void =


  fQCommandLinkButton_virtualbase_contextMenuEvent(self.h, event.h)

type QCommandLinkButtoncontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_contextMenuEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_contextMenuEvent ".} =
  type Cb = proc(super: QCommandLinkButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QCommandLinkButton, event: gen_qevent.QTabletEvent): void =


  fQCommandLinkButton_virtualbase_tabletEvent(self.h, event.h)

type QCommandLinkButtontabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtontabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtontabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_tabletEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_tabletEvent ".} =
  type Cb = proc(super: QCommandLinkButtontabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QCommandLinkButton, event: gen_qevent.QActionEvent): void =


  fQCommandLinkButton_virtualbase_actionEvent(self.h, event.h)

type QCommandLinkButtonactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_actionEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_actionEvent ".} =
  type Cb = proc(super: QCommandLinkButtonactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QCommandLinkButton, event: gen_qevent.QDragEnterEvent): void =


  fQCommandLinkButton_virtualbase_dragEnterEvent(self.h, event.h)

type QCommandLinkButtondragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_dragEnterEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_dragEnterEvent ".} =
  type Cb = proc(super: QCommandLinkButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QCommandLinkButton, event: gen_qevent.QDragMoveEvent): void =


  fQCommandLinkButton_virtualbase_dragMoveEvent(self.h, event.h)

type QCommandLinkButtondragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_dragMoveEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_dragMoveEvent ".} =
  type Cb = proc(super: QCommandLinkButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QCommandLinkButton, event: gen_qevent.QDragLeaveEvent): void =


  fQCommandLinkButton_virtualbase_dragLeaveEvent(self.h, event.h)

type QCommandLinkButtondragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_dragLeaveEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_dragLeaveEvent ".} =
  type Cb = proc(super: QCommandLinkButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QCommandLinkButton, event: gen_qevent.QDropEvent): void =


  fQCommandLinkButton_virtualbase_dropEvent(self.h, event.h)

type QCommandLinkButtondropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtondropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtondropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_dropEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_dropEvent ".} =
  type Cb = proc(super: QCommandLinkButtondropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QCommandLinkButton, event: gen_qevent.QShowEvent): void =


  fQCommandLinkButton_virtualbase_showEvent(self.h, event.h)

type QCommandLinkButtonshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_showEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_showEvent ".} =
  type Cb = proc(super: QCommandLinkButtonshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QCommandLinkButton, event: gen_qevent.QHideEvent): void =


  fQCommandLinkButton_virtualbase_hideEvent(self.h, event.h)

type QCommandLinkButtonhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_hideEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_hideEvent ".} =
  type Cb = proc(super: QCommandLinkButtonhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QCommandLinkButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQCommandLinkButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QCommandLinkButtonnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_nativeEvent(self: ptr cQCommandLinkButton, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QCommandLinkButton_nativeEvent ".} =
  type Cb = proc(super: QCommandLinkButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QCommandLinkButton(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QCommandLinkButton, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQCommandLinkButton_virtualbase_metric(self.h, cint(param1))

type QCommandLinkButtonmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_metric(self: ptr cQCommandLinkButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCommandLinkButton_metric ".} =
  type Cb = proc(super: QCommandLinkButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QCommandLinkButton(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QCommandLinkButton, painter: gen_qpainter.QPainter): void =


  fQCommandLinkButton_virtualbase_initPainter(self.h, painter.h)

type QCommandLinkButtoninitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtoninitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtoninitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_initPainter(self: ptr cQCommandLinkButton, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_initPainter ".} =
  type Cb = proc(super: QCommandLinkButtoninitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QCommandLinkButton(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QCommandLinkButton, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQCommandLinkButton_virtualbase_redirected(self.h, offset.h))

type QCommandLinkButtonredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_redirected(self: ptr cQCommandLinkButton, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QCommandLinkButton_redirected ".} =
  type Cb = proc(super: QCommandLinkButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QCommandLinkButton(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QCommandLinkButton, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQCommandLinkButton_virtualbase_sharedPainter(self.h))

type QCommandLinkButtonsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_sharedPainter(self: ptr cQCommandLinkButton, slot: int): pointer {.exportc: "miqt_exec_callback_QCommandLinkButton_sharedPainter ".} =
  type Cb = proc(super: QCommandLinkButtonsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QCommandLinkButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QCommandLinkButton, param1: gen_qevent.QInputMethodEvent): void =


  fQCommandLinkButton_virtualbase_inputMethodEvent(self.h, param1.h)

type QCommandLinkButtoninputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_inputMethodEvent(self: ptr cQCommandLinkButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_inputMethodEvent ".} =
  type Cb = proc(super: QCommandLinkButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QCommandLinkButton(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QCommandLinkButton, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQCommandLinkButton_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QCommandLinkButtoninputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_inputMethodQuery(self: ptr cQCommandLinkButton, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QCommandLinkButton_inputMethodQuery ".} =
  type Cb = proc(super: QCommandLinkButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QCommandLinkButton(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QCommandLinkButton, next: bool): bool =


  fQCommandLinkButton_virtualbase_focusNextPrevChild(self.h, next)

type QCommandLinkButtonfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_focusNextPrevChild(self: ptr cQCommandLinkButton, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QCommandLinkButton_focusNextPrevChild ".} =
  type Cb = proc(super: QCommandLinkButtonfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QCommandLinkButton(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QCommandLinkButton, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQCommandLinkButton_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCommandLinkButtoneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_eventFilter(self: ptr cQCommandLinkButton, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCommandLinkButton_eventFilter ".} =
  type Cb = proc(super: QCommandLinkButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QCommandLinkButton(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QCommandLinkButton, event: gen_qcoreevent.QChildEvent): void =


  fQCommandLinkButton_virtualbase_childEvent(self.h, event.h)

type QCommandLinkButtonchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_childEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_childEvent ".} =
  type Cb = proc(super: QCommandLinkButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QCommandLinkButton, event: gen_qcoreevent.QEvent): void =


  fQCommandLinkButton_virtualbase_customEvent(self.h, event.h)

type QCommandLinkButtoncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtoncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtoncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_customEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_customEvent ".} =
  type Cb = proc(super: QCommandLinkButtoncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QCommandLinkButton(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QCommandLinkButton, signal: gen_qmetaobject.QMetaMethod): void =


  fQCommandLinkButton_virtualbase_connectNotify(self.h, signal.h)

type QCommandLinkButtonconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_connectNotify(self: ptr cQCommandLinkButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_connectNotify ".} =
  type Cb = proc(super: QCommandLinkButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QCommandLinkButton(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QCommandLinkButton, signal: gen_qmetaobject.QMetaMethod): void =


  fQCommandLinkButton_virtualbase_disconnectNotify(self.h, signal.h)

type QCommandLinkButtondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QCommandLinkButton, slot: proc(super: QCommandLinkButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCommandLinkButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_disconnectNotify(self: ptr cQCommandLinkButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_disconnectNotify ".} =
  type Cb = proc(super: QCommandLinkButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QCommandLinkButton(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QCommandLinkButton): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCommandLinkButton_staticMetaObject())
proc delete*(self: QCommandLinkButton) =
  fcQCommandLinkButton_delete(self.h)
