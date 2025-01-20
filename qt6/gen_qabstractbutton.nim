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
{.compile("gen_qabstractbutton.cpp", cflags).}


import gen_qabstractbutton_types
export gen_qabstractbutton_types

import
  gen_qbuttongroup,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qkeysequence,
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
  gen_qbuttongroup,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qkeysequence,
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

type cQAbstractButton*{.exportc: "QAbstractButton", incompleteStruct.} = object

proc fcQAbstractButton_new(parent: pointer): ptr cQAbstractButton {.importc: "QAbstractButton_new".}
proc fcQAbstractButton_new2(): ptr cQAbstractButton {.importc: "QAbstractButton_new2".}
proc fcQAbstractButton_metaObject(self: pointer, ): pointer {.importc: "QAbstractButton_metaObject".}
proc fcQAbstractButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractButton_metacast".}
proc fcQAbstractButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractButton_metacall".}
proc fcQAbstractButton_tr(s: cstring): struct_miqt_string {.importc: "QAbstractButton_tr".}
proc fcQAbstractButton_setText(self: pointer, text: struct_miqt_string): void {.importc: "QAbstractButton_setText".}
proc fcQAbstractButton_text(self: pointer, ): struct_miqt_string {.importc: "QAbstractButton_text".}
proc fcQAbstractButton_setIcon(self: pointer, icon: pointer): void {.importc: "QAbstractButton_setIcon".}
proc fcQAbstractButton_icon(self: pointer, ): pointer {.importc: "QAbstractButton_icon".}
proc fcQAbstractButton_iconSize(self: pointer, ): pointer {.importc: "QAbstractButton_iconSize".}
proc fcQAbstractButton_setShortcut(self: pointer, key: pointer): void {.importc: "QAbstractButton_setShortcut".}
proc fcQAbstractButton_shortcut(self: pointer, ): pointer {.importc: "QAbstractButton_shortcut".}
proc fcQAbstractButton_setCheckable(self: pointer, checkable: bool): void {.importc: "QAbstractButton_setCheckable".}
proc fcQAbstractButton_isCheckable(self: pointer, ): bool {.importc: "QAbstractButton_isCheckable".}
proc fcQAbstractButton_isChecked(self: pointer, ): bool {.importc: "QAbstractButton_isChecked".}
proc fcQAbstractButton_setDown(self: pointer, down: bool): void {.importc: "QAbstractButton_setDown".}
proc fcQAbstractButton_isDown(self: pointer, ): bool {.importc: "QAbstractButton_isDown".}
proc fcQAbstractButton_setAutoRepeat(self: pointer, autoRepeat: bool): void {.importc: "QAbstractButton_setAutoRepeat".}
proc fcQAbstractButton_autoRepeat(self: pointer, ): bool {.importc: "QAbstractButton_autoRepeat".}
proc fcQAbstractButton_setAutoRepeatDelay(self: pointer, autoRepeatDelay: cint): void {.importc: "QAbstractButton_setAutoRepeatDelay".}
proc fcQAbstractButton_autoRepeatDelay(self: pointer, ): cint {.importc: "QAbstractButton_autoRepeatDelay".}
proc fcQAbstractButton_setAutoRepeatInterval(self: pointer, autoRepeatInterval: cint): void {.importc: "QAbstractButton_setAutoRepeatInterval".}
proc fcQAbstractButton_autoRepeatInterval(self: pointer, ): cint {.importc: "QAbstractButton_autoRepeatInterval".}
proc fcQAbstractButton_setAutoExclusive(self: pointer, autoExclusive: bool): void {.importc: "QAbstractButton_setAutoExclusive".}
proc fcQAbstractButton_autoExclusive(self: pointer, ): bool {.importc: "QAbstractButton_autoExclusive".}
proc fcQAbstractButton_group(self: pointer, ): pointer {.importc: "QAbstractButton_group".}
proc fcQAbstractButton_setIconSize(self: pointer, size: pointer): void {.importc: "QAbstractButton_setIconSize".}
proc fcQAbstractButton_animateClick(self: pointer, ): void {.importc: "QAbstractButton_animateClick".}
proc fcQAbstractButton_click(self: pointer, ): void {.importc: "QAbstractButton_click".}
proc fcQAbstractButton_toggle(self: pointer, ): void {.importc: "QAbstractButton_toggle".}
proc fcQAbstractButton_setChecked(self: pointer, checked: bool): void {.importc: "QAbstractButton_setChecked".}
proc fcQAbstractButton_pressed(self: pointer, ): void {.importc: "QAbstractButton_pressed".}
proc fQAbstractButton_connect_pressed(self: pointer, slot: int) {.importc: "QAbstractButton_connect_pressed".}
proc fcQAbstractButton_released(self: pointer, ): void {.importc: "QAbstractButton_released".}
proc fQAbstractButton_connect_released(self: pointer, slot: int) {.importc: "QAbstractButton_connect_released".}
proc fcQAbstractButton_clicked(self: pointer, ): void {.importc: "QAbstractButton_clicked".}
proc fQAbstractButton_connect_clicked(self: pointer, slot: int) {.importc: "QAbstractButton_connect_clicked".}
proc fcQAbstractButton_toggled(self: pointer, checked: bool): void {.importc: "QAbstractButton_toggled".}
proc fQAbstractButton_connect_toggled(self: pointer, slot: int) {.importc: "QAbstractButton_connect_toggled".}
proc fcQAbstractButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractButton_tr2".}
proc fcQAbstractButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractButton_tr3".}
proc fcQAbstractButton_clicked1(self: pointer, checked: bool): void {.importc: "QAbstractButton_clicked1".}
proc fQAbstractButton_connect_clicked1(self: pointer, slot: int) {.importc: "QAbstractButton_connect_clicked1".}
proc fQAbstractButton_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractButton_virtualbase_metaObject".}
proc fcQAbstractButton_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_metaObject".}
proc fQAbstractButton_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractButton_virtualbase_metacast".}
proc fcQAbstractButton_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_metacast".}
proc fQAbstractButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractButton_virtualbase_metacall".}
proc fcQAbstractButton_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_metacall".}
proc fcQAbstractButton_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_paintEvent".}
proc fQAbstractButton_virtualbase_hitButton(self: pointer, pos: pointer): bool{.importc: "QAbstractButton_virtualbase_hitButton".}
proc fcQAbstractButton_override_virtual_hitButton(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_hitButton".}
proc fQAbstractButton_virtualbase_checkStateSet(self: pointer, ): void{.importc: "QAbstractButton_virtualbase_checkStateSet".}
proc fcQAbstractButton_override_virtual_checkStateSet(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_checkStateSet".}
proc fQAbstractButton_virtualbase_nextCheckState(self: pointer, ): void{.importc: "QAbstractButton_virtualbase_nextCheckState".}
proc fcQAbstractButton_override_virtual_nextCheckState(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_nextCheckState".}
proc fQAbstractButton_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QAbstractButton_virtualbase_event".}
proc fcQAbstractButton_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_event".}
proc fQAbstractButton_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_keyPressEvent".}
proc fcQAbstractButton_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_keyPressEvent".}
proc fQAbstractButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_keyReleaseEvent".}
proc fcQAbstractButton_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_keyReleaseEvent".}
proc fQAbstractButton_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_mousePressEvent".}
proc fcQAbstractButton_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_mousePressEvent".}
proc fQAbstractButton_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_mouseReleaseEvent".}
proc fcQAbstractButton_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_mouseReleaseEvent".}
proc fQAbstractButton_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_mouseMoveEvent".}
proc fcQAbstractButton_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_mouseMoveEvent".}
proc fQAbstractButton_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_focusInEvent".}
proc fcQAbstractButton_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_focusInEvent".}
proc fQAbstractButton_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_focusOutEvent".}
proc fcQAbstractButton_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_focusOutEvent".}
proc fQAbstractButton_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_changeEvent".}
proc fcQAbstractButton_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_changeEvent".}
proc fQAbstractButton_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_timerEvent".}
proc fcQAbstractButton_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_timerEvent".}
proc fQAbstractButton_virtualbase_devType(self: pointer, ): cint{.importc: "QAbstractButton_virtualbase_devType".}
proc fcQAbstractButton_override_virtual_devType(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_devType".}
proc fQAbstractButton_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QAbstractButton_virtualbase_setVisible".}
proc fcQAbstractButton_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_setVisible".}
proc fQAbstractButton_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QAbstractButton_virtualbase_sizeHint".}
proc fcQAbstractButton_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_sizeHint".}
proc fQAbstractButton_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QAbstractButton_virtualbase_minimumSizeHint".}
proc fcQAbstractButton_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_minimumSizeHint".}
proc fQAbstractButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QAbstractButton_virtualbase_heightForWidth".}
proc fcQAbstractButton_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_heightForWidth".}
proc fQAbstractButton_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QAbstractButton_virtualbase_hasHeightForWidth".}
proc fcQAbstractButton_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_hasHeightForWidth".}
proc fQAbstractButton_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QAbstractButton_virtualbase_paintEngine".}
proc fcQAbstractButton_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_paintEngine".}
proc fQAbstractButton_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractButton_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_mouseDoubleClickEvent".}
proc fQAbstractButton_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_wheelEvent".}
proc fcQAbstractButton_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_wheelEvent".}
proc fQAbstractButton_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_enterEvent".}
proc fcQAbstractButton_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_enterEvent".}
proc fQAbstractButton_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_leaveEvent".}
proc fcQAbstractButton_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_leaveEvent".}
proc fQAbstractButton_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_moveEvent".}
proc fcQAbstractButton_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_moveEvent".}
proc fQAbstractButton_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_resizeEvent".}
proc fcQAbstractButton_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_resizeEvent".}
proc fQAbstractButton_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_closeEvent".}
proc fcQAbstractButton_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_closeEvent".}
proc fQAbstractButton_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_contextMenuEvent".}
proc fcQAbstractButton_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_contextMenuEvent".}
proc fQAbstractButton_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_tabletEvent".}
proc fcQAbstractButton_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_tabletEvent".}
proc fQAbstractButton_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_actionEvent".}
proc fcQAbstractButton_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_actionEvent".}
proc fQAbstractButton_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_dragEnterEvent".}
proc fcQAbstractButton_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_dragEnterEvent".}
proc fQAbstractButton_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_dragMoveEvent".}
proc fcQAbstractButton_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_dragMoveEvent".}
proc fQAbstractButton_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_dragLeaveEvent".}
proc fcQAbstractButton_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_dragLeaveEvent".}
proc fQAbstractButton_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_dropEvent".}
proc fcQAbstractButton_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_dropEvent".}
proc fQAbstractButton_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_showEvent".}
proc fcQAbstractButton_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_showEvent".}
proc fQAbstractButton_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_hideEvent".}
proc fcQAbstractButton_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_hideEvent".}
proc fQAbstractButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QAbstractButton_virtualbase_nativeEvent".}
proc fcQAbstractButton_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_nativeEvent".}
proc fQAbstractButton_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QAbstractButton_virtualbase_metric".}
proc fcQAbstractButton_override_virtual_metric(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_metric".}
proc fQAbstractButton_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QAbstractButton_virtualbase_initPainter".}
proc fcQAbstractButton_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_initPainter".}
proc fQAbstractButton_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QAbstractButton_virtualbase_redirected".}
proc fcQAbstractButton_override_virtual_redirected(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_redirected".}
proc fQAbstractButton_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QAbstractButton_virtualbase_sharedPainter".}
proc fcQAbstractButton_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_sharedPainter".}
proc fQAbstractButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QAbstractButton_virtualbase_inputMethodEvent".}
proc fcQAbstractButton_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_inputMethodEvent".}
proc fQAbstractButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QAbstractButton_virtualbase_inputMethodQuery".}
proc fcQAbstractButton_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_inputMethodQuery".}
proc fQAbstractButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QAbstractButton_virtualbase_focusNextPrevChild".}
proc fcQAbstractButton_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_focusNextPrevChild".}
proc fQAbstractButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractButton_virtualbase_eventFilter".}
proc fcQAbstractButton_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_eventFilter".}
proc fQAbstractButton_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_childEvent".}
proc fcQAbstractButton_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_childEvent".}
proc fQAbstractButton_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_customEvent".}
proc fcQAbstractButton_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_customEvent".}
proc fQAbstractButton_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractButton_virtualbase_connectNotify".}
proc fcQAbstractButton_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_connectNotify".}
proc fQAbstractButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractButton_virtualbase_disconnectNotify".}
proc fcQAbstractButton_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_disconnectNotify".}
proc fcQAbstractButton_staticMetaObject(): pointer {.importc: "QAbstractButton_staticMetaObject".}
proc fcQAbstractButton_delete(self: pointer) {.importc: "QAbstractButton_delete".}


func init*(T: type QAbstractButton, h: ptr cQAbstractButton): QAbstractButton =
  T(h: h)
proc create*(T: type QAbstractButton, parent: gen_qwidget.QWidget): QAbstractButton =

  QAbstractButton.init(fcQAbstractButton_new(parent.h))
proc create*(T: type QAbstractButton, ): QAbstractButton =

  QAbstractButton.init(fcQAbstractButton_new2())
proc metaObject*(self: QAbstractButton, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractButton_metaObject(self.h))

proc metacast*(self: QAbstractButton, param1: cstring): pointer =

  fcQAbstractButton_metacast(self.h, param1)

proc metacall*(self: QAbstractButton, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractButton, s: cstring): string =

  let v_ms = fcQAbstractButton_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: QAbstractButton, text: string): void =

  fcQAbstractButton_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc text*(self: QAbstractButton, ): string =

  let v_ms = fcQAbstractButton_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setIcon*(self: QAbstractButton, icon: gen_qicon.QIcon): void =

  fcQAbstractButton_setIcon(self.h, icon.h)

proc icon*(self: QAbstractButton, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQAbstractButton_icon(self.h))

proc iconSize*(self: QAbstractButton, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQAbstractButton_iconSize(self.h))

proc setShortcut*(self: QAbstractButton, key: gen_qkeysequence.QKeySequence): void =

  fcQAbstractButton_setShortcut(self.h, key.h)

proc shortcut*(self: QAbstractButton, ): gen_qkeysequence.QKeySequence =

  gen_qkeysequence.QKeySequence(h: fcQAbstractButton_shortcut(self.h))

proc setCheckable*(self: QAbstractButton, checkable: bool): void =

  fcQAbstractButton_setCheckable(self.h, checkable)

proc isCheckable*(self: QAbstractButton, ): bool =

  fcQAbstractButton_isCheckable(self.h)

proc isChecked*(self: QAbstractButton, ): bool =

  fcQAbstractButton_isChecked(self.h)

proc setDown*(self: QAbstractButton, down: bool): void =

  fcQAbstractButton_setDown(self.h, down)

proc isDown*(self: QAbstractButton, ): bool =

  fcQAbstractButton_isDown(self.h)

proc setAutoRepeat*(self: QAbstractButton, autoRepeat: bool): void =

  fcQAbstractButton_setAutoRepeat(self.h, autoRepeat)

proc autoRepeat*(self: QAbstractButton, ): bool =

  fcQAbstractButton_autoRepeat(self.h)

proc setAutoRepeatDelay*(self: QAbstractButton, autoRepeatDelay: cint): void =

  fcQAbstractButton_setAutoRepeatDelay(self.h, autoRepeatDelay)

proc autoRepeatDelay*(self: QAbstractButton, ): cint =

  fcQAbstractButton_autoRepeatDelay(self.h)

proc setAutoRepeatInterval*(self: QAbstractButton, autoRepeatInterval: cint): void =

  fcQAbstractButton_setAutoRepeatInterval(self.h, autoRepeatInterval)

proc autoRepeatInterval*(self: QAbstractButton, ): cint =

  fcQAbstractButton_autoRepeatInterval(self.h)

proc setAutoExclusive*(self: QAbstractButton, autoExclusive: bool): void =

  fcQAbstractButton_setAutoExclusive(self.h, autoExclusive)

proc autoExclusive*(self: QAbstractButton, ): bool =

  fcQAbstractButton_autoExclusive(self.h)

proc group*(self: QAbstractButton, ): gen_qbuttongroup.QButtonGroup =

  gen_qbuttongroup.QButtonGroup(h: fcQAbstractButton_group(self.h))

proc setIconSize*(self: QAbstractButton, size: gen_qsize.QSize): void =

  fcQAbstractButton_setIconSize(self.h, size.h)

proc animateClick*(self: QAbstractButton, ): void =

  fcQAbstractButton_animateClick(self.h)

proc click*(self: QAbstractButton, ): void =

  fcQAbstractButton_click(self.h)

proc toggle*(self: QAbstractButton, ): void =

  fcQAbstractButton_toggle(self.h)

proc setChecked*(self: QAbstractButton, checked: bool): void =

  fcQAbstractButton_setChecked(self.h, checked)

proc pressed*(self: QAbstractButton, ): void =

  fcQAbstractButton_pressed(self.h)

proc miqt_exec_callback_QAbstractButton_pressed(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onpressed*(self: QAbstractButton, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractButton_connect_pressed(self.h, cast[int](addr tmp[]))
proc released*(self: QAbstractButton, ): void =

  fcQAbstractButton_released(self.h)

proc miqt_exec_callback_QAbstractButton_released(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onreleased*(self: QAbstractButton, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractButton_connect_released(self.h, cast[int](addr tmp[]))
proc clicked*(self: QAbstractButton, ): void =

  fcQAbstractButton_clicked(self.h)

proc miqt_exec_callback_QAbstractButton_clicked(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onclicked*(self: QAbstractButton, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractButton_connect_clicked(self.h, cast[int](addr tmp[]))
proc toggled*(self: QAbstractButton, checked: bool): void =

  fcQAbstractButton_toggled(self.h, checked)

proc miqt_exec_callback_QAbstractButton_toggled(slot: int, checked: bool) {.exportc.} =
  type Cb = proc(checked: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = checked


  nimfunc[](slotval1)

proc ontoggled*(self: QAbstractButton, slot: proc(checked: bool)) =
  type Cb = proc(checked: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractButton_connect_toggled(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAbstractButton, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractButton_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractButton, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clicked1*(self: QAbstractButton, checked: bool): void =

  fcQAbstractButton_clicked1(self.h, checked)

proc miqt_exec_callback_QAbstractButton_clicked1(slot: int, checked: bool) {.exportc.} =
  type Cb = proc(checked: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = checked


  nimfunc[](slotval1)

proc onclicked1*(self: QAbstractButton, slot: proc(checked: bool)) =
  type Cb = proc(checked: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractButton_connect_clicked1(self.h, cast[int](addr tmp[]))
proc callVirtualBase_metaObject(self: QAbstractButton, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQAbstractButton_virtualbase_metaObject(self.h))

type QAbstractButtonmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QAbstractButton, slot: proc(super: QAbstractButtonmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_metaObject(self: ptr cQAbstractButton, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractButton_metaObject ".} =
  type Cb = proc(super: QAbstractButtonmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QAbstractButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QAbstractButton, param1: cstring): pointer =


  fQAbstractButton_virtualbase_metacast(self.h, param1)

type QAbstractButtonmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QAbstractButton, slot: proc(super: QAbstractButtonmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_metacast(self: ptr cQAbstractButton, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractButton_metacast ".} =
  type Cb = proc(super: QAbstractButtonmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QAbstractButton(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QAbstractButton, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractButtonmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractButton, slot: proc(super: QAbstractButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_metacall(self: ptr cQAbstractButton, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractButton_metacall ".} =
  type Cb = proc(super: QAbstractButtonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractButton(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractButtonpaintEventBase* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QAbstractButton, slot: proc(e: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(e: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_paintEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_paintEvent ".} =
  type Cb = proc(e: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc callVirtualBase_hitButton(self: QAbstractButton, pos: gen_qpoint.QPoint): bool =


  fQAbstractButton_virtualbase_hitButton(self.h, pos.h)

type QAbstractButtonhitButtonBase* = proc(pos: gen_qpoint.QPoint): bool
proc onhitButton*(self: QAbstractButton, slot: proc(super: QAbstractButtonhitButtonBase, pos: gen_qpoint.QPoint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonhitButtonBase, pos: gen_qpoint.QPoint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_hitButton(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_hitButton(self: ptr cQAbstractButton, slot: int, pos: pointer): bool {.exportc: "miqt_exec_callback_QAbstractButton_hitButton ".} =
  type Cb = proc(super: QAbstractButtonhitButtonBase, pos: gen_qpoint.QPoint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: gen_qpoint.QPoint): auto =
    callVirtualBase_hitButton(QAbstractButton(h: self), pos)
  let slotval1 = gen_qpoint.QPoint(h: pos)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_checkStateSet(self: QAbstractButton, ): void =


  fQAbstractButton_virtualbase_checkStateSet(self.h)

type QAbstractButtoncheckStateSetBase* = proc(): void
proc oncheckStateSet*(self: QAbstractButton, slot: proc(super: QAbstractButtoncheckStateSetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtoncheckStateSetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_checkStateSet(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_checkStateSet(self: ptr cQAbstractButton, slot: int): void {.exportc: "miqt_exec_callback_QAbstractButton_checkStateSet ".} =
  type Cb = proc(super: QAbstractButtoncheckStateSetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_checkStateSet(QAbstractButton(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_nextCheckState(self: QAbstractButton, ): void =


  fQAbstractButton_virtualbase_nextCheckState(self.h)

type QAbstractButtonnextCheckStateBase* = proc(): void
proc onnextCheckState*(self: QAbstractButton, slot: proc(super: QAbstractButtonnextCheckStateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonnextCheckStateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_nextCheckState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_nextCheckState(self: ptr cQAbstractButton, slot: int): void {.exportc: "miqt_exec_callback_QAbstractButton_nextCheckState ".} =
  type Cb = proc(super: QAbstractButtonnextCheckStateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_nextCheckState(QAbstractButton(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QAbstractButton, e: gen_qcoreevent.QEvent): bool =


  fQAbstractButton_virtualbase_event(self.h, e.h)

type QAbstractButtoneventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractButton, slot: proc(super: QAbstractButtoneventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtoneventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_event(self: ptr cQAbstractButton, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QAbstractButton_event ".} =
  type Cb = proc(super: QAbstractButtoneventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractButton(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_keyPressEvent(self: QAbstractButton, e: gen_qevent.QKeyEvent): void =


  fQAbstractButton_virtualbase_keyPressEvent(self.h, e.h)

type QAbstractButtonkeyPressEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonkeyPressEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_keyPressEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_keyPressEvent ".} =
  type Cb = proc(super: QAbstractButtonkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QAbstractButton(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QAbstractButton, e: gen_qevent.QKeyEvent): void =


  fQAbstractButton_virtualbase_keyReleaseEvent(self.h, e.h)

type QAbstractButtonkeyReleaseEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_keyReleaseEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_keyReleaseEvent ".} =
  type Cb = proc(super: QAbstractButtonkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QAbstractButton(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QAbstractButton, e: gen_qevent.QMouseEvent): void =


  fQAbstractButton_virtualbase_mousePressEvent(self.h, e.h)

type QAbstractButtonmousePressEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonmousePressEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_mousePressEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_mousePressEvent ".} =
  type Cb = proc(super: QAbstractButtonmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QAbstractButton(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QAbstractButton, e: gen_qevent.QMouseEvent): void =


  fQAbstractButton_virtualbase_mouseReleaseEvent(self.h, e.h)

type QAbstractButtonmouseReleaseEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_mouseReleaseEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_mouseReleaseEvent ".} =
  type Cb = proc(super: QAbstractButtonmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QAbstractButton(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QAbstractButton, e: gen_qevent.QMouseEvent): void =


  fQAbstractButton_virtualbase_mouseMoveEvent(self.h, e.h)

type QAbstractButtonmouseMoveEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonmouseMoveEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_mouseMoveEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_mouseMoveEvent ".} =
  type Cb = proc(super: QAbstractButtonmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QAbstractButton(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QAbstractButton, e: gen_qevent.QFocusEvent): void =


  fQAbstractButton_virtualbase_focusInEvent(self.h, e.h)

type QAbstractButtonfocusInEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonfocusInEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_focusInEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_focusInEvent ".} =
  type Cb = proc(super: QAbstractButtonfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QAbstractButton(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QAbstractButton, e: gen_qevent.QFocusEvent): void =


  fQAbstractButton_virtualbase_focusOutEvent(self.h, e.h)

type QAbstractButtonfocusOutEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonfocusOutEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_focusOutEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_focusOutEvent ".} =
  type Cb = proc(super: QAbstractButtonfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QAbstractButton(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QAbstractButton, e: gen_qcoreevent.QEvent): void =


  fQAbstractButton_virtualbase_changeEvent(self.h, e.h)

type QAbstractButtonchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_changeEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_changeEvent ".} =
  type Cb = proc(super: QAbstractButtonchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QAbstractButton(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QAbstractButton, e: gen_qcoreevent.QTimerEvent): void =


  fQAbstractButton_virtualbase_timerEvent(self.h, e.h)

type QAbstractButtontimerEventBase* = proc(e: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtontimerEventBase, e: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtontimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_timerEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_timerEvent ".} =
  type Cb = proc(super: QAbstractButtontimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractButton(h: self), e)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QAbstractButton, ): cint =


  fQAbstractButton_virtualbase_devType(self.h)

type QAbstractButtondevTypeBase* = proc(): cint
proc ondevType*(self: QAbstractButton, slot: proc(super: QAbstractButtondevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtondevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_devType(self: ptr cQAbstractButton, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractButton_devType ".} =
  type Cb = proc(super: QAbstractButtondevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QAbstractButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QAbstractButton, visible: bool): void =


  fQAbstractButton_virtualbase_setVisible(self.h, visible)

type QAbstractButtonsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QAbstractButton, slot: proc(super: QAbstractButtonsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_setVisible(self: ptr cQAbstractButton, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QAbstractButton_setVisible ".} =
  type Cb = proc(super: QAbstractButtonsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QAbstractButton(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QAbstractButton, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractButton_virtualbase_sizeHint(self.h))

type QAbstractButtonsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QAbstractButton, slot: proc(super: QAbstractButtonsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_sizeHint(self: ptr cQAbstractButton, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractButton_sizeHint ".} =
  type Cb = proc(super: QAbstractButtonsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QAbstractButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QAbstractButton, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractButton_virtualbase_minimumSizeHint(self.h))

type QAbstractButtonminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QAbstractButton, slot: proc(super: QAbstractButtonminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_minimumSizeHint(self: ptr cQAbstractButton, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractButton_minimumSizeHint ".} =
  type Cb = proc(super: QAbstractButtonminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QAbstractButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QAbstractButton, param1: cint): cint =


  fQAbstractButton_virtualbase_heightForWidth(self.h, param1)

type QAbstractButtonheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QAbstractButton, slot: proc(super: QAbstractButtonheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_heightForWidth(self: ptr cQAbstractButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractButton_heightForWidth ".} =
  type Cb = proc(super: QAbstractButtonheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QAbstractButton(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QAbstractButton, ): bool =


  fQAbstractButton_virtualbase_hasHeightForWidth(self.h)

type QAbstractButtonhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QAbstractButton, slot: proc(super: QAbstractButtonhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_hasHeightForWidth(self: ptr cQAbstractButton, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractButton_hasHeightForWidth ".} =
  type Cb = proc(super: QAbstractButtonhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QAbstractButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QAbstractButton, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQAbstractButton_virtualbase_paintEngine(self.h))

type QAbstractButtonpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QAbstractButton, slot: proc(super: QAbstractButtonpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_paintEngine(self: ptr cQAbstractButton, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractButton_paintEngine ".} =
  type Cb = proc(super: QAbstractButtonpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QAbstractButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QAbstractButton, event: gen_qevent.QMouseEvent): void =


  fQAbstractButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QAbstractButtonmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_mouseDoubleClickEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QAbstractButtonmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QAbstractButton, event: gen_qevent.QWheelEvent): void =


  fQAbstractButton_virtualbase_wheelEvent(self.h, event.h)

type QAbstractButtonwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_wheelEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_wheelEvent ".} =
  type Cb = proc(super: QAbstractButtonwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QAbstractButton, event: gen_qevent.QEnterEvent): void =


  fQAbstractButton_virtualbase_enterEvent(self.h, event.h)

type QAbstractButtonenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_enterEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_enterEvent ".} =
  type Cb = proc(super: QAbstractButtonenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QAbstractButton, event: gen_qcoreevent.QEvent): void =


  fQAbstractButton_virtualbase_leaveEvent(self.h, event.h)

type QAbstractButtonleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_leaveEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_leaveEvent ".} =
  type Cb = proc(super: QAbstractButtonleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QAbstractButton, event: gen_qevent.QMoveEvent): void =


  fQAbstractButton_virtualbase_moveEvent(self.h, event.h)

type QAbstractButtonmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_moveEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_moveEvent ".} =
  type Cb = proc(super: QAbstractButtonmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QAbstractButton, event: gen_qevent.QResizeEvent): void =


  fQAbstractButton_virtualbase_resizeEvent(self.h, event.h)

type QAbstractButtonresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_resizeEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_resizeEvent ".} =
  type Cb = proc(super: QAbstractButtonresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QAbstractButton, event: gen_qevent.QCloseEvent): void =


  fQAbstractButton_virtualbase_closeEvent(self.h, event.h)

type QAbstractButtoncloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtoncloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtoncloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_closeEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_closeEvent ".} =
  type Cb = proc(super: QAbstractButtoncloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QAbstractButton, event: gen_qevent.QContextMenuEvent): void =


  fQAbstractButton_virtualbase_contextMenuEvent(self.h, event.h)

type QAbstractButtoncontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_contextMenuEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_contextMenuEvent ".} =
  type Cb = proc(super: QAbstractButtoncontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QAbstractButton, event: gen_qevent.QTabletEvent): void =


  fQAbstractButton_virtualbase_tabletEvent(self.h, event.h)

type QAbstractButtontabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtontabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtontabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_tabletEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_tabletEvent ".} =
  type Cb = proc(super: QAbstractButtontabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QAbstractButton, event: gen_qevent.QActionEvent): void =


  fQAbstractButton_virtualbase_actionEvent(self.h, event.h)

type QAbstractButtonactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_actionEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_actionEvent ".} =
  type Cb = proc(super: QAbstractButtonactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QAbstractButton, event: gen_qevent.QDragEnterEvent): void =


  fQAbstractButton_virtualbase_dragEnterEvent(self.h, event.h)

type QAbstractButtondragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_dragEnterEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_dragEnterEvent ".} =
  type Cb = proc(super: QAbstractButtondragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QAbstractButton, event: gen_qevent.QDragMoveEvent): void =


  fQAbstractButton_virtualbase_dragMoveEvent(self.h, event.h)

type QAbstractButtondragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_dragMoveEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_dragMoveEvent ".} =
  type Cb = proc(super: QAbstractButtondragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QAbstractButton, event: gen_qevent.QDragLeaveEvent): void =


  fQAbstractButton_virtualbase_dragLeaveEvent(self.h, event.h)

type QAbstractButtondragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_dragLeaveEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_dragLeaveEvent ".} =
  type Cb = proc(super: QAbstractButtondragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QAbstractButton, event: gen_qevent.QDropEvent): void =


  fQAbstractButton_virtualbase_dropEvent(self.h, event.h)

type QAbstractButtondropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtondropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtondropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_dropEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_dropEvent ".} =
  type Cb = proc(super: QAbstractButtondropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QAbstractButton, event: gen_qevent.QShowEvent): void =


  fQAbstractButton_virtualbase_showEvent(self.h, event.h)

type QAbstractButtonshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_showEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_showEvent ".} =
  type Cb = proc(super: QAbstractButtonshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QAbstractButton, event: gen_qevent.QHideEvent): void =


  fQAbstractButton_virtualbase_hideEvent(self.h, event.h)

type QAbstractButtonhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_hideEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_hideEvent ".} =
  type Cb = proc(super: QAbstractButtonhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QAbstractButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQAbstractButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QAbstractButtonnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_nativeEvent(self: ptr cQAbstractButton, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QAbstractButton_nativeEvent ".} =
  type Cb = proc(super: QAbstractButtonnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QAbstractButton(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QAbstractButton, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQAbstractButton_virtualbase_metric(self.h, cint(param1))

type QAbstractButtonmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QAbstractButton, slot: proc(super: QAbstractButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_metric(self: ptr cQAbstractButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractButton_metric ".} =
  type Cb = proc(super: QAbstractButtonmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QAbstractButton(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QAbstractButton, painter: gen_qpainter.QPainter): void =


  fQAbstractButton_virtualbase_initPainter(self.h, painter.h)

type QAbstractButtoninitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QAbstractButton, slot: proc(super: QAbstractButtoninitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtoninitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_initPainter(self: ptr cQAbstractButton, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_initPainter ".} =
  type Cb = proc(super: QAbstractButtoninitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QAbstractButton(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QAbstractButton, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQAbstractButton_virtualbase_redirected(self.h, offset.h))

type QAbstractButtonredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QAbstractButton, slot: proc(super: QAbstractButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_redirected(self: ptr cQAbstractButton, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractButton_redirected ".} =
  type Cb = proc(super: QAbstractButtonredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QAbstractButton(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QAbstractButton, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQAbstractButton_virtualbase_sharedPainter(self.h))

type QAbstractButtonsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QAbstractButton, slot: proc(super: QAbstractButtonsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_sharedPainter(self: ptr cQAbstractButton, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractButton_sharedPainter ".} =
  type Cb = proc(super: QAbstractButtonsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QAbstractButton(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QAbstractButton, param1: gen_qevent.QInputMethodEvent): void =


  fQAbstractButton_virtualbase_inputMethodEvent(self.h, param1.h)

type QAbstractButtoninputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_inputMethodEvent(self: ptr cQAbstractButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_inputMethodEvent ".} =
  type Cb = proc(super: QAbstractButtoninputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QAbstractButton(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QAbstractButton, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractButton_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QAbstractButtoninputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QAbstractButton, slot: proc(super: QAbstractButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_inputMethodQuery(self: ptr cQAbstractButton, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QAbstractButton_inputMethodQuery ".} =
  type Cb = proc(super: QAbstractButtoninputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QAbstractButton(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QAbstractButton, next: bool): bool =


  fQAbstractButton_virtualbase_focusNextPrevChild(self.h, next)

type QAbstractButtonfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QAbstractButton, slot: proc(super: QAbstractButtonfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_focusNextPrevChild(self: ptr cQAbstractButton, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QAbstractButton_focusNextPrevChild ".} =
  type Cb = proc(super: QAbstractButtonfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QAbstractButton(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAbstractButton, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractButton_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractButtoneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractButton, slot: proc(super: QAbstractButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_eventFilter(self: ptr cQAbstractButton, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractButton_eventFilter ".} =
  type Cb = proc(super: QAbstractButtoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractButton(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QAbstractButton, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractButton_virtualbase_childEvent(self.h, event.h)

type QAbstractButtonchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_childEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_childEvent ".} =
  type Cb = proc(super: QAbstractButtonchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractButton, event: gen_qcoreevent.QEvent): void =


  fQAbstractButton_virtualbase_customEvent(self.h, event.h)

type QAbstractButtoncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractButton, slot: proc(super: QAbstractButtoncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtoncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_customEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_customEvent ".} =
  type Cb = proc(super: QAbstractButtoncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractButton(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractButton, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractButton_virtualbase_connectNotify(self.h, signal.h)

type QAbstractButtonconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractButton, slot: proc(super: QAbstractButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_connectNotify(self: ptr cQAbstractButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_connectNotify ".} =
  type Cb = proc(super: QAbstractButtonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractButton(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractButton, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractButton_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractButtondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractButton, slot: proc(super: QAbstractButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_disconnectNotify(self: ptr cQAbstractButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_disconnectNotify ".} =
  type Cb = proc(super: QAbstractButtondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractButton(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAbstractButton): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAbstractButton_staticMetaObject())
proc delete*(self: QAbstractButton) =
  fcQAbstractButton_delete(self.h)
