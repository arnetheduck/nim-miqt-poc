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
  gen_qabstractbutton,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qmenu,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
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
proc fcQPushButton_trUtf8(s: cstring): struct_miqt_string {.importc: "QPushButton_trUtf8".}
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
proc fcQPushButton_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPushButton_trUtf82".}
proc fcQPushButton_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPushButton_trUtf83".}
proc fQPushButton_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPushButton_virtualbase_metaObject".}
proc fcQPushButton_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_metaObject".}
proc fQPushButton_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPushButton_virtualbase_metacast".}
proc fcQPushButton_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_metacast".}
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
proc fQPushButton_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QPushButton_virtualbase_mouseMoveEvent".}
proc fcQPushButton_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QPushButton_override_virtual_mouseMoveEvent".}
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
proc fQPushButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QPushButton_virtualbase_nativeEvent".}
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
proc fcQPushButton_staticMetaObject(): pointer {.importc: "QPushButton_staticMetaObject".}
proc fcQPushButton_delete(self: pointer) {.importc: "QPushButton_delete".}


func init*(T: type gen_qpushbutton_types.QPushButton, h: ptr cQPushButton): gen_qpushbutton_types.QPushButton =
  T(h: h)
proc create*(T: type gen_qpushbutton_types.QPushButton, parent: gen_qwidget.QWidget): gen_qpushbutton_types.QPushButton =

  gen_qpushbutton_types.QPushButton.init(fcQPushButton_new(parent.h))
proc create*(T: type gen_qpushbutton_types.QPushButton, ): gen_qpushbutton_types.QPushButton =

  gen_qpushbutton_types.QPushButton.init(fcQPushButton_new2())
proc create*(T: type gen_qpushbutton_types.QPushButton, text: string): gen_qpushbutton_types.QPushButton =

  gen_qpushbutton_types.QPushButton.init(fcQPushButton_new3(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type gen_qpushbutton_types.QPushButton, icon: gen_qicon.QIcon, text: string): gen_qpushbutton_types.QPushButton =

  gen_qpushbutton_types.QPushButton.init(fcQPushButton_new4(icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type gen_qpushbutton_types.QPushButton, text: string, parent: gen_qwidget.QWidget): gen_qpushbutton_types.QPushButton =

  gen_qpushbutton_types.QPushButton.init(fcQPushButton_new5(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc create*(T: type gen_qpushbutton_types.QPushButton, icon: gen_qicon.QIcon, text: string, parent: gen_qwidget.QWidget): gen_qpushbutton_types.QPushButton =

  gen_qpushbutton_types.QPushButton.init(fcQPushButton_new6(icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc metaObject*(self: gen_qpushbutton_types.QPushButton, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPushButton_metaObject(self.h))

proc metacast*(self: gen_qpushbutton_types.QPushButton, param1: cstring): pointer =

  fcQPushButton_metacast(self.h, param1)

proc metacall*(self: gen_qpushbutton_types.QPushButton, param1: cint, param2: cint, param3: pointer): cint =

  fcQPushButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpushbutton_types.QPushButton, s: cstring): string =

  let v_ms = fcQPushButton_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpushbutton_types.QPushButton, s: cstring): string =

  let v_ms = fcQPushButton_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qpushbutton_types.QPushButton, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQPushButton_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qpushbutton_types.QPushButton, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQPushButton_minimumSizeHint(self.h))

proc autoDefault*(self: gen_qpushbutton_types.QPushButton, ): bool =

  fcQPushButton_autoDefault(self.h)

proc setAutoDefault*(self: gen_qpushbutton_types.QPushButton, autoDefault: bool): void =

  fcQPushButton_setAutoDefault(self.h, autoDefault)

proc isDefault*(self: gen_qpushbutton_types.QPushButton, ): bool =

  fcQPushButton_isDefault(self.h)

proc setDefault*(self: gen_qpushbutton_types.QPushButton, default: bool): void =

  fcQPushButton_setDefault(self.h, default)

proc setMenu*(self: gen_qpushbutton_types.QPushButton, menu: gen_qmenu.QMenu): void =

  fcQPushButton_setMenu(self.h, menu.h)

proc menu*(self: gen_qpushbutton_types.QPushButton, ): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQPushButton_menu(self.h))

proc setFlat*(self: gen_qpushbutton_types.QPushButton, flat: bool): void =

  fcQPushButton_setFlat(self.h, flat)

proc isFlat*(self: gen_qpushbutton_types.QPushButton, ): bool =

  fcQPushButton_isFlat(self.h)

proc showMenu*(self: gen_qpushbutton_types.QPushButton, ): void =

  fcQPushButton_showMenu(self.h)

proc tr2*(_: type gen_qpushbutton_types.QPushButton, s: cstring, c: cstring): string =

  let v_ms = fcQPushButton_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qpushbutton_types.QPushButton, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPushButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qpushbutton_types.QPushButton, s: cstring, c: cstring): string =

  let v_ms = fcQPushButton_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qpushbutton_types.QPushButton, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPushButton_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QPushButtonmetaObject*(self: gen_qpushbutton_types.QPushButton, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQPushButton_virtualbase_metaObject(self.h))

type QPushButtonmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonmetaObjectProc) =
  # TODO check subclass
  var tmp = new QPushButtonmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_metaObject(self: ptr cQPushButton, slot: int): pointer {.exportc: "miqt_exec_callback_QPushButton_metaObject ".} =
  var nimfunc = cast[ptr QPushButtonmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPushButtonmetacast*(self: gen_qpushbutton_types.QPushButton, param1: cstring): pointer =

  fQPushButton_virtualbase_metacast(self.h, param1)

type QPushButtonmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonmetacastProc) =
  # TODO check subclass
  var tmp = new QPushButtonmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_metacast(self: ptr cQPushButton, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPushButton_metacast ".} =
  var nimfunc = cast[ptr QPushButtonmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPushButtonmetacall*(self: gen_qpushbutton_types.QPushButton, param1: cint, param2: cint, param3: pointer): cint =

  fQPushButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPushButtonmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonmetacallProc) =
  # TODO check subclass
  var tmp = new QPushButtonmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_metacall(self: ptr cQPushButton, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPushButton_metacall ".} =
  var nimfunc = cast[ptr QPushButtonmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPushButtonsizeHint*(self: gen_qpushbutton_types.QPushButton, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fQPushButton_virtualbase_sizeHint(self.h))

type QPushButtonsizeHintProc* = proc(): gen_qsize.QSize
proc onsizeHint*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonsizeHintProc) =
  # TODO check subclass
  var tmp = new QPushButtonsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_sizeHint(self: ptr cQPushButton, slot: int): pointer {.exportc: "miqt_exec_callback_QPushButton_sizeHint ".} =
  var nimfunc = cast[ptr QPushButtonsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPushButtonminimumSizeHint*(self: gen_qpushbutton_types.QPushButton, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fQPushButton_virtualbase_minimumSizeHint(self.h))

type QPushButtonminimumSizeHintProc* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QPushButtonminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_minimumSizeHint(self: ptr cQPushButton, slot: int): pointer {.exportc: "miqt_exec_callback_QPushButton_minimumSizeHint ".} =
  var nimfunc = cast[ptr QPushButtonminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPushButtonevent*(self: gen_qpushbutton_types.QPushButton, e: gen_qcoreevent.QEvent): bool =

  fQPushButton_virtualbase_event(self.h, e.h)

type QPushButtoneventProc* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtoneventProc) =
  # TODO check subclass
  var tmp = new QPushButtoneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_event(self: ptr cQPushButton, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QPushButton_event ".} =
  var nimfunc = cast[ptr QPushButtoneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPushButtonpaintEvent*(self: gen_qpushbutton_types.QPushButton, param1: gen_qevent.QPaintEvent): void =

  fQPushButton_virtualbase_paintEvent(self.h, param1.h)

type QPushButtonpaintEventProc* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonpaintEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_paintEvent(self: ptr cQPushButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPushButton_paintEvent ".} =
  var nimfunc = cast[ptr QPushButtonpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QPushButtonkeyPressEvent*(self: gen_qpushbutton_types.QPushButton, param1: gen_qevent.QKeyEvent): void =

  fQPushButton_virtualbase_keyPressEvent(self.h, param1.h)

type QPushButtonkeyPressEventProc* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_keyPressEvent(self: ptr cQPushButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPushButton_keyPressEvent ".} =
  var nimfunc = cast[ptr QPushButtonkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QPushButtonfocusInEvent*(self: gen_qpushbutton_types.QPushButton, param1: gen_qevent.QFocusEvent): void =

  fQPushButton_virtualbase_focusInEvent(self.h, param1.h)

type QPushButtonfocusInEventProc* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonfocusInEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_focusInEvent(self: ptr cQPushButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPushButton_focusInEvent ".} =
  var nimfunc = cast[ptr QPushButtonfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QPushButtonfocusOutEvent*(self: gen_qpushbutton_types.QPushButton, param1: gen_qevent.QFocusEvent): void =

  fQPushButton_virtualbase_focusOutEvent(self.h, param1.h)

type QPushButtonfocusOutEventProc* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_focusOutEvent(self: ptr cQPushButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPushButton_focusOutEvent ".} =
  var nimfunc = cast[ptr QPushButtonfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QPushButtonhitButton*(self: gen_qpushbutton_types.QPushButton, pos: gen_qpoint.QPoint): bool =

  fQPushButton_virtualbase_hitButton(self.h, pos.h)

type QPushButtonhitButtonProc* = proc(pos: gen_qpoint.QPoint): bool
proc onhitButton*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonhitButtonProc) =
  # TODO check subclass
  var tmp = new QPushButtonhitButtonProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_hitButton(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_hitButton(self: ptr cQPushButton, slot: int, pos: pointer): bool {.exportc: "miqt_exec_callback_QPushButton_hitButton ".} =
  var nimfunc = cast[ptr QPushButtonhitButtonProc](cast[pointer](slot))
  let slotval1 = gen_qpoint.QPoint(h: pos)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPushButtoncheckStateSet*(self: gen_qpushbutton_types.QPushButton, ): void =

  fQPushButton_virtualbase_checkStateSet(self.h)

type QPushButtoncheckStateSetProc* = proc(): void
proc oncheckStateSet*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtoncheckStateSetProc) =
  # TODO check subclass
  var tmp = new QPushButtoncheckStateSetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_checkStateSet(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_checkStateSet(self: ptr cQPushButton, slot: int): void {.exportc: "miqt_exec_callback_QPushButton_checkStateSet ".} =
  var nimfunc = cast[ptr QPushButtoncheckStateSetProc](cast[pointer](slot))

  nimfunc[]()
proc QPushButtonnextCheckState*(self: gen_qpushbutton_types.QPushButton, ): void =

  fQPushButton_virtualbase_nextCheckState(self.h)

type QPushButtonnextCheckStateProc* = proc(): void
proc onnextCheckState*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonnextCheckStateProc) =
  # TODO check subclass
  var tmp = new QPushButtonnextCheckStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_nextCheckState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_nextCheckState(self: ptr cQPushButton, slot: int): void {.exportc: "miqt_exec_callback_QPushButton_nextCheckState ".} =
  var nimfunc = cast[ptr QPushButtonnextCheckStateProc](cast[pointer](slot))

  nimfunc[]()
proc QPushButtonkeyReleaseEvent*(self: gen_qpushbutton_types.QPushButton, e: gen_qevent.QKeyEvent): void =

  fQPushButton_virtualbase_keyReleaseEvent(self.h, e.h)

type QPushButtonkeyReleaseEventProc* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_keyReleaseEvent(self: ptr cQPushButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPushButton_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QPushButtonkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QPushButtonmousePressEvent*(self: gen_qpushbutton_types.QPushButton, e: gen_qevent.QMouseEvent): void =

  fQPushButton_virtualbase_mousePressEvent(self.h, e.h)

type QPushButtonmousePressEventProc* = proc(e: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonmousePressEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_mousePressEvent(self: ptr cQPushButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPushButton_mousePressEvent ".} =
  var nimfunc = cast[ptr QPushButtonmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QPushButtonmouseReleaseEvent*(self: gen_qpushbutton_types.QPushButton, e: gen_qevent.QMouseEvent): void =

  fQPushButton_virtualbase_mouseReleaseEvent(self.h, e.h)

type QPushButtonmouseReleaseEventProc* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_mouseReleaseEvent(self: ptr cQPushButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPushButton_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QPushButtonmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QPushButtonmouseMoveEvent*(self: gen_qpushbutton_types.QPushButton, e: gen_qevent.QMouseEvent): void =

  fQPushButton_virtualbase_mouseMoveEvent(self.h, e.h)

type QPushButtonmouseMoveEventProc* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_mouseMoveEvent(self: ptr cQPushButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPushButton_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QPushButtonmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QPushButtonchangeEvent*(self: gen_qpushbutton_types.QPushButton, e: gen_qcoreevent.QEvent): void =

  fQPushButton_virtualbase_changeEvent(self.h, e.h)

type QPushButtonchangeEventProc* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonchangeEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_changeEvent(self: ptr cQPushButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPushButton_changeEvent ".} =
  var nimfunc = cast[ptr QPushButtonchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](slotval1)
proc QPushButtontimerEvent*(self: gen_qpushbutton_types.QPushButton, e: gen_qcoreevent.QTimerEvent): void =

  fQPushButton_virtualbase_timerEvent(self.h, e.h)

type QPushButtontimerEventProc* = proc(e: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtontimerEventProc) =
  # TODO check subclass
  var tmp = new QPushButtontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_timerEvent(self: ptr cQPushButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPushButton_timerEvent ".} =
  var nimfunc = cast[ptr QPushButtontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: e)


  nimfunc[](slotval1)
proc QPushButtondevType*(self: gen_qpushbutton_types.QPushButton, ): cint =

  fQPushButton_virtualbase_devType(self.h)

type QPushButtondevTypeProc* = proc(): cint
proc ondevType*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtondevTypeProc) =
  # TODO check subclass
  var tmp = new QPushButtondevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_devType(self: ptr cQPushButton, slot: int): cint {.exportc: "miqt_exec_callback_QPushButton_devType ".} =
  var nimfunc = cast[ptr QPushButtondevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPushButtonsetVisible*(self: gen_qpushbutton_types.QPushButton, visible: bool): void =

  fQPushButton_virtualbase_setVisible(self.h, visible)

type QPushButtonsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonsetVisibleProc) =
  # TODO check subclass
  var tmp = new QPushButtonsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_setVisible(self: ptr cQPushButton, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QPushButton_setVisible ".} =
  var nimfunc = cast[ptr QPushButtonsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QPushButtonheightForWidth*(self: gen_qpushbutton_types.QPushButton, param1: cint): cint =

  fQPushButton_virtualbase_heightForWidth(self.h, param1)

type QPushButtonheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonheightForWidthProc) =
  # TODO check subclass
  var tmp = new QPushButtonheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_heightForWidth(self: ptr cQPushButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPushButton_heightForWidth ".} =
  var nimfunc = cast[ptr QPushButtonheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPushButtonhasHeightForWidth*(self: gen_qpushbutton_types.QPushButton, ): bool =

  fQPushButton_virtualbase_hasHeightForWidth(self.h)

type QPushButtonhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QPushButtonhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_hasHeightForWidth(self: ptr cQPushButton, slot: int): bool {.exportc: "miqt_exec_callback_QPushButton_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QPushButtonhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPushButtonpaintEngine*(self: gen_qpushbutton_types.QPushButton, ): gen_qpaintengine.QPaintEngine =

  gen_qpaintengine.QPaintEngine(h: fQPushButton_virtualbase_paintEngine(self.h))

type QPushButtonpaintEngineProc* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonpaintEngineProc) =
  # TODO check subclass
  var tmp = new QPushButtonpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_paintEngine(self: ptr cQPushButton, slot: int): pointer {.exportc: "miqt_exec_callback_QPushButton_paintEngine ".} =
  var nimfunc = cast[ptr QPushButtonpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPushButtonmouseDoubleClickEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent.QMouseEvent): void =

  fQPushButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QPushButtonmouseDoubleClickEventProc* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_mouseDoubleClickEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QPushButtonmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtonwheelEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent.QWheelEvent): void =

  fQPushButton_virtualbase_wheelEvent(self.h, event.h)

type QPushButtonwheelEventProc* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonwheelEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_wheelEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_wheelEvent ".} =
  var nimfunc = cast[ptr QPushButtonwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtonenterEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qcoreevent.QEvent): void =

  fQPushButton_virtualbase_enterEvent(self.h, event.h)

type QPushButtonenterEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonenterEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_enterEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_enterEvent ".} =
  var nimfunc = cast[ptr QPushButtonenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtonleaveEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qcoreevent.QEvent): void =

  fQPushButton_virtualbase_leaveEvent(self.h, event.h)

type QPushButtonleaveEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonleaveEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_leaveEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_leaveEvent ".} =
  var nimfunc = cast[ptr QPushButtonleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtonmoveEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent.QMoveEvent): void =

  fQPushButton_virtualbase_moveEvent(self.h, event.h)

type QPushButtonmoveEventProc* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonmoveEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_moveEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_moveEvent ".} =
  var nimfunc = cast[ptr QPushButtonmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtonresizeEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent.QResizeEvent): void =

  fQPushButton_virtualbase_resizeEvent(self.h, event.h)

type QPushButtonresizeEventProc* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonresizeEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_resizeEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_resizeEvent ".} =
  var nimfunc = cast[ptr QPushButtonresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtoncloseEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent.QCloseEvent): void =

  fQPushButton_virtualbase_closeEvent(self.h, event.h)

type QPushButtoncloseEventProc* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtoncloseEventProc) =
  # TODO check subclass
  var tmp = new QPushButtoncloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_closeEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_closeEvent ".} =
  var nimfunc = cast[ptr QPushButtoncloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtoncontextMenuEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent.QContextMenuEvent): void =

  fQPushButton_virtualbase_contextMenuEvent(self.h, event.h)

type QPushButtoncontextMenuEventProc* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtoncontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QPushButtoncontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_contextMenuEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_contextMenuEvent ".} =
  var nimfunc = cast[ptr QPushButtoncontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtontabletEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent.QTabletEvent): void =

  fQPushButton_virtualbase_tabletEvent(self.h, event.h)

type QPushButtontabletEventProc* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtontabletEventProc) =
  # TODO check subclass
  var tmp = new QPushButtontabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_tabletEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_tabletEvent ".} =
  var nimfunc = cast[ptr QPushButtontabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtonactionEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent.QActionEvent): void =

  fQPushButton_virtualbase_actionEvent(self.h, event.h)

type QPushButtonactionEventProc* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonactionEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_actionEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_actionEvent ".} =
  var nimfunc = cast[ptr QPushButtonactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtondragEnterEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent.QDragEnterEvent): void =

  fQPushButton_virtualbase_dragEnterEvent(self.h, event.h)

type QPushButtondragEnterEventProc* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtondragEnterEventProc) =
  # TODO check subclass
  var tmp = new QPushButtondragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_dragEnterEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_dragEnterEvent ".} =
  var nimfunc = cast[ptr QPushButtondragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtondragMoveEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent.QDragMoveEvent): void =

  fQPushButton_virtualbase_dragMoveEvent(self.h, event.h)

type QPushButtondragMoveEventProc* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtondragMoveEventProc) =
  # TODO check subclass
  var tmp = new QPushButtondragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_dragMoveEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_dragMoveEvent ".} =
  var nimfunc = cast[ptr QPushButtondragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtondragLeaveEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent.QDragLeaveEvent): void =

  fQPushButton_virtualbase_dragLeaveEvent(self.h, event.h)

type QPushButtondragLeaveEventProc* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtondragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QPushButtondragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_dragLeaveEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QPushButtondragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtondropEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent.QDropEvent): void =

  fQPushButton_virtualbase_dropEvent(self.h, event.h)

type QPushButtondropEventProc* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtondropEventProc) =
  # TODO check subclass
  var tmp = new QPushButtondropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_dropEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_dropEvent ".} =
  var nimfunc = cast[ptr QPushButtondropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtonshowEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent.QShowEvent): void =

  fQPushButton_virtualbase_showEvent(self.h, event.h)

type QPushButtonshowEventProc* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonshowEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_showEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_showEvent ".} =
  var nimfunc = cast[ptr QPushButtonshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtonhideEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent.QHideEvent): void =

  fQPushButton_virtualbase_hideEvent(self.h, event.h)

type QPushButtonhideEventProc* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonhideEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_hideEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_hideEvent ".} =
  var nimfunc = cast[ptr QPushButtonhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtonnativeEvent*(self: gen_qpushbutton_types.QPushButton, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =

  fQPushButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QPushButtonnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonnativeEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_nativeEvent(self: ptr cQPushButton, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QPushButton_nativeEvent ".} =
  var nimfunc = cast[ptr QPushButtonnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPushButtonmetric*(self: gen_qpushbutton_types.QPushButton, param1: cint): cint =

  fQPushButton_virtualbase_metric(self.h, cint(param1))

type QPushButtonmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonmetricProc) =
  # TODO check subclass
  var tmp = new QPushButtonmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_metric(self: ptr cQPushButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPushButton_metric ".} =
  var nimfunc = cast[ptr QPushButtonmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPushButtoninitPainter*(self: gen_qpushbutton_types.QPushButton, painter: gen_qpainter.QPainter): void =

  fQPushButton_virtualbase_initPainter(self.h, painter.h)

type QPushButtoninitPainterProc* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtoninitPainterProc) =
  # TODO check subclass
  var tmp = new QPushButtoninitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_initPainter(self: ptr cQPushButton, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPushButton_initPainter ".} =
  var nimfunc = cast[ptr QPushButtoninitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](slotval1)
proc QPushButtonredirected*(self: gen_qpushbutton_types.QPushButton, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =

  gen_qpaintdevice.QPaintDevice(h: fQPushButton_virtualbase_redirected(self.h, offset.h))

type QPushButtonredirectedProc* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonredirectedProc) =
  # TODO check subclass
  var tmp = new QPushButtonredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_redirected(self: ptr cQPushButton, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPushButton_redirected ".} =
  var nimfunc = cast[ptr QPushButtonredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPushButtonsharedPainter*(self: gen_qpushbutton_types.QPushButton, ): gen_qpainter.QPainter =

  gen_qpainter.QPainter(h: fQPushButton_virtualbase_sharedPainter(self.h))

type QPushButtonsharedPainterProc* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonsharedPainterProc) =
  # TODO check subclass
  var tmp = new QPushButtonsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_sharedPainter(self: ptr cQPushButton, slot: int): pointer {.exportc: "miqt_exec_callback_QPushButton_sharedPainter ".} =
  var nimfunc = cast[ptr QPushButtonsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPushButtoninputMethodEvent*(self: gen_qpushbutton_types.QPushButton, param1: gen_qevent.QInputMethodEvent): void =

  fQPushButton_virtualbase_inputMethodEvent(self.h, param1.h)

type QPushButtoninputMethodEventProc* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtoninputMethodEventProc) =
  # TODO check subclass
  var tmp = new QPushButtoninputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_inputMethodEvent(self: ptr cQPushButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPushButton_inputMethodEvent ".} =
  var nimfunc = cast[ptr QPushButtoninputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QPushButtoninputMethodQuery*(self: gen_qpushbutton_types.QPushButton, param1: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fQPushButton_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QPushButtoninputMethodQueryProc* = proc(param1: cint): gen_qvariant.QVariant
proc oninputMethodQuery*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtoninputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QPushButtoninputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_inputMethodQuery(self: ptr cQPushButton, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QPushButton_inputMethodQuery ".} =
  var nimfunc = cast[ptr QPushButtoninputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPushButtonfocusNextPrevChild*(self: gen_qpushbutton_types.QPushButton, next: bool): bool =

  fQPushButton_virtualbase_focusNextPrevChild(self.h, next)

type QPushButtonfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QPushButtonfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_focusNextPrevChild(self: ptr cQPushButton, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QPushButton_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QPushButtonfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPushButtoneventFilter*(self: gen_qpushbutton_types.QPushButton, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQPushButton_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPushButtoneventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtoneventFilterProc) =
  # TODO check subclass
  var tmp = new QPushButtoneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_eventFilter(self: ptr cQPushButton, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPushButton_eventFilter ".} =
  var nimfunc = cast[ptr QPushButtoneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPushButtonchildEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qcoreevent.QChildEvent): void =

  fQPushButton_virtualbase_childEvent(self.h, event.h)

type QPushButtonchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonchildEventProc) =
  # TODO check subclass
  var tmp = new QPushButtonchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_childEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_childEvent ".} =
  var nimfunc = cast[ptr QPushButtonchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtoncustomEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qcoreevent.QEvent): void =

  fQPushButton_virtualbase_customEvent(self.h, event.h)

type QPushButtoncustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtoncustomEventProc) =
  # TODO check subclass
  var tmp = new QPushButtoncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_customEvent(self: ptr cQPushButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPushButton_customEvent ".} =
  var nimfunc = cast[ptr QPushButtoncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QPushButtonconnectNotify*(self: gen_qpushbutton_types.QPushButton, signal: gen_qmetaobject.QMetaMethod): void =

  fQPushButton_virtualbase_connectNotify(self.h, signal.h)

type QPushButtonconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtonconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPushButtonconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_connectNotify(self: ptr cQPushButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPushButton_connectNotify ".} =
  var nimfunc = cast[ptr QPushButtonconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPushButtondisconnectNotify*(self: gen_qpushbutton_types.QPushButton, signal: gen_qmetaobject.QMetaMethod): void =

  fQPushButton_virtualbase_disconnectNotify(self.h, signal.h)

type QPushButtondisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qpushbutton_types.QPushButton, slot: QPushButtondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPushButtondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPushButton_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPushButton_disconnectNotify(self: ptr cQPushButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPushButton_disconnectNotify ".} =
  var nimfunc = cast[ptr QPushButtondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qpushbutton_types.QPushButton): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPushButton_staticMetaObject())
proc delete*(self: gen_qpushbutton_types.QPushButton) =
  fcQPushButton_delete(self.h)
