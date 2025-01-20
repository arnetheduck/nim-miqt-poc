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
{.compile("gen_qdialogbuttonbox.cpp", cflags).}


type QDialogButtonBoxButtonRole* = cint
const
  QDialogButtonBoxInvalidRole* = -1
  QDialogButtonBoxAcceptRole* = 0
  QDialogButtonBoxRejectRole* = 1
  QDialogButtonBoxDestructiveRole* = 2
  QDialogButtonBoxActionRole* = 3
  QDialogButtonBoxHelpRole* = 4
  QDialogButtonBoxYesRole* = 5
  QDialogButtonBoxNoRole* = 6
  QDialogButtonBoxResetRole* = 7
  QDialogButtonBoxApplyRole* = 8
  QDialogButtonBoxNRoles* = 9



type QDialogButtonBoxStandardButton* = cint
const
  QDialogButtonBoxNoButton* = 0
  QDialogButtonBoxOk* = 1024
  QDialogButtonBoxSave* = 2048
  QDialogButtonBoxSaveAll* = 4096
  QDialogButtonBoxOpen* = 8192
  QDialogButtonBoxYes* = 16384
  QDialogButtonBoxYesToAll* = 32768
  QDialogButtonBoxNo* = 65536
  QDialogButtonBoxNoToAll* = 131072
  QDialogButtonBoxAbort* = 262144
  QDialogButtonBoxRetry* = 524288
  QDialogButtonBoxIgnore* = 1048576
  QDialogButtonBoxClose* = 2097152
  QDialogButtonBoxCancel* = 4194304
  QDialogButtonBoxDiscard* = 8388608
  QDialogButtonBoxHelp* = 16777216
  QDialogButtonBoxApply* = 33554432
  QDialogButtonBoxReset* = 67108864
  QDialogButtonBoxRestoreDefaults* = 134217728
  QDialogButtonBoxFirstButton* = 1024
  QDialogButtonBoxLastButton* = 134217728



type QDialogButtonBoxButtonLayout* = cint
const
  QDialogButtonBoxWinLayout* = 0
  QDialogButtonBoxMacLayout* = 1
  QDialogButtonBoxKdeLayout* = 2
  QDialogButtonBoxGnomeLayout* = 3
  QDialogButtonBoxAndroidLayout* = 5



import gen_qdialogbuttonbox_types
export gen_qdialogbuttonbox_types

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
  gen_qpushbutton,
  gen_qsize,
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
  gen_qpushbutton,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQDialogButtonBox*{.exportc: "QDialogButtonBox", incompleteStruct.} = object

proc fcQDialogButtonBox_new(parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new".}
proc fcQDialogButtonBox_new2(): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new2".}
proc fcQDialogButtonBox_new3(orientation: cint): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new3".}
proc fcQDialogButtonBox_new4(buttons: cint): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new4".}
proc fcQDialogButtonBox_new5(buttons: cint, orientation: cint): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new5".}
proc fcQDialogButtonBox_new6(orientation: cint, parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new6".}
proc fcQDialogButtonBox_new7(buttons: cint, parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new7".}
proc fcQDialogButtonBox_new8(buttons: cint, orientation: cint, parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new8".}
proc fcQDialogButtonBox_metaObject(self: pointer, ): pointer {.importc: "QDialogButtonBox_metaObject".}
proc fcQDialogButtonBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QDialogButtonBox_metacast".}
proc fcQDialogButtonBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDialogButtonBox_metacall".}
proc fcQDialogButtonBox_tr(s: cstring): struct_miqt_string {.importc: "QDialogButtonBox_tr".}
proc fcQDialogButtonBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QDialogButtonBox_trUtf8".}
proc fcQDialogButtonBox_setOrientation(self: pointer, orientation: cint): void {.importc: "QDialogButtonBox_setOrientation".}
proc fcQDialogButtonBox_orientation(self: pointer, ): cint {.importc: "QDialogButtonBox_orientation".}
proc fcQDialogButtonBox_addButton(self: pointer, button: pointer, role: cint): void {.importc: "QDialogButtonBox_addButton".}
proc fcQDialogButtonBox_addButton2(self: pointer, text: struct_miqt_string, role: cint): pointer {.importc: "QDialogButtonBox_addButton2".}
proc fcQDialogButtonBox_addButtonWithButton(self: pointer, button: cint): pointer {.importc: "QDialogButtonBox_addButtonWithButton".}
proc fcQDialogButtonBox_removeButton(self: pointer, button: pointer): void {.importc: "QDialogButtonBox_removeButton".}
proc fcQDialogButtonBox_clear(self: pointer, ): void {.importc: "QDialogButtonBox_clear".}
proc fcQDialogButtonBox_buttons(self: pointer, ): struct_miqt_array {.importc: "QDialogButtonBox_buttons".}
proc fcQDialogButtonBox_buttonRole(self: pointer, button: pointer): cint {.importc: "QDialogButtonBox_buttonRole".}
proc fcQDialogButtonBox_setStandardButtons(self: pointer, buttons: cint): void {.importc: "QDialogButtonBox_setStandardButtons".}
proc fcQDialogButtonBox_standardButtons(self: pointer, ): cint {.importc: "QDialogButtonBox_standardButtons".}
proc fcQDialogButtonBox_standardButton(self: pointer, button: pointer): cint {.importc: "QDialogButtonBox_standardButton".}
proc fcQDialogButtonBox_button(self: pointer, which: cint): pointer {.importc: "QDialogButtonBox_button".}
proc fcQDialogButtonBox_setCenterButtons(self: pointer, center: bool): void {.importc: "QDialogButtonBox_setCenterButtons".}
proc fcQDialogButtonBox_centerButtons(self: pointer, ): bool {.importc: "QDialogButtonBox_centerButtons".}
proc fcQDialogButtonBox_clicked(self: pointer, button: pointer): void {.importc: "QDialogButtonBox_clicked".}
proc fQDialogButtonBox_connect_clicked(self: pointer, slot: int) {.importc: "QDialogButtonBox_connect_clicked".}
proc fcQDialogButtonBox_accepted(self: pointer, ): void {.importc: "QDialogButtonBox_accepted".}
proc fQDialogButtonBox_connect_accepted(self: pointer, slot: int) {.importc: "QDialogButtonBox_connect_accepted".}
proc fcQDialogButtonBox_helpRequested(self: pointer, ): void {.importc: "QDialogButtonBox_helpRequested".}
proc fQDialogButtonBox_connect_helpRequested(self: pointer, slot: int) {.importc: "QDialogButtonBox_connect_helpRequested".}
proc fcQDialogButtonBox_rejected(self: pointer, ): void {.importc: "QDialogButtonBox_rejected".}
proc fQDialogButtonBox_connect_rejected(self: pointer, slot: int) {.importc: "QDialogButtonBox_connect_rejected".}
proc fcQDialogButtonBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDialogButtonBox_tr2".}
proc fcQDialogButtonBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDialogButtonBox_tr3".}
proc fcQDialogButtonBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDialogButtonBox_trUtf82".}
proc fcQDialogButtonBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDialogButtonBox_trUtf83".}
proc fQDialogButtonBox_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QDialogButtonBox_virtualbase_metaObject".}
proc fcQDialogButtonBox_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_metaObject".}
proc fQDialogButtonBox_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QDialogButtonBox_virtualbase_metacast".}
proc fcQDialogButtonBox_override_virtual_metacast(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_metacast".}
proc fQDialogButtonBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDialogButtonBox_virtualbase_metacall".}
proc fcQDialogButtonBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_metacall".}
proc fQDialogButtonBox_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_changeEvent".}
proc fcQDialogButtonBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_changeEvent".}
proc fQDialogButtonBox_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDialogButtonBox_virtualbase_event".}
proc fcQDialogButtonBox_override_virtual_event(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_event".}
proc fQDialogButtonBox_virtualbase_devType(self: pointer, ): cint{.importc: "QDialogButtonBox_virtualbase_devType".}
proc fcQDialogButtonBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_devType".}
proc fQDialogButtonBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDialogButtonBox_virtualbase_setVisible".}
proc fcQDialogButtonBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_setVisible".}
proc fQDialogButtonBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDialogButtonBox_virtualbase_sizeHint".}
proc fcQDialogButtonBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_sizeHint".}
proc fQDialogButtonBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDialogButtonBox_virtualbase_minimumSizeHint".}
proc fcQDialogButtonBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_minimumSizeHint".}
proc fQDialogButtonBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDialogButtonBox_virtualbase_heightForWidth".}
proc fcQDialogButtonBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_heightForWidth".}
proc fQDialogButtonBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDialogButtonBox_virtualbase_hasHeightForWidth".}
proc fcQDialogButtonBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_hasHeightForWidth".}
proc fQDialogButtonBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDialogButtonBox_virtualbase_paintEngine".}
proc fcQDialogButtonBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_paintEngine".}
proc fQDialogButtonBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_mousePressEvent".}
proc fcQDialogButtonBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_mousePressEvent".}
proc fQDialogButtonBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_mouseReleaseEvent".}
proc fcQDialogButtonBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_mouseReleaseEvent".}
proc fQDialogButtonBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_mouseDoubleClickEvent".}
proc fcQDialogButtonBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_mouseDoubleClickEvent".}
proc fQDialogButtonBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_mouseMoveEvent".}
proc fcQDialogButtonBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_mouseMoveEvent".}
proc fQDialogButtonBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_wheelEvent".}
proc fcQDialogButtonBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_wheelEvent".}
proc fQDialogButtonBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_keyPressEvent".}
proc fcQDialogButtonBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_keyPressEvent".}
proc fQDialogButtonBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_keyReleaseEvent".}
proc fcQDialogButtonBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_keyReleaseEvent".}
proc fQDialogButtonBox_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_focusInEvent".}
proc fcQDialogButtonBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_focusInEvent".}
proc fQDialogButtonBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_focusOutEvent".}
proc fcQDialogButtonBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_focusOutEvent".}
proc fQDialogButtonBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_enterEvent".}
proc fcQDialogButtonBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_enterEvent".}
proc fQDialogButtonBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_leaveEvent".}
proc fcQDialogButtonBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_leaveEvent".}
proc fQDialogButtonBox_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_paintEvent".}
proc fcQDialogButtonBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_paintEvent".}
proc fQDialogButtonBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_moveEvent".}
proc fcQDialogButtonBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_moveEvent".}
proc fQDialogButtonBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_resizeEvent".}
proc fcQDialogButtonBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_resizeEvent".}
proc fQDialogButtonBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_closeEvent".}
proc fcQDialogButtonBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_closeEvent".}
proc fQDialogButtonBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_contextMenuEvent".}
proc fcQDialogButtonBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_contextMenuEvent".}
proc fQDialogButtonBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_tabletEvent".}
proc fcQDialogButtonBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_tabletEvent".}
proc fQDialogButtonBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_actionEvent".}
proc fcQDialogButtonBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_actionEvent".}
proc fQDialogButtonBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_dragEnterEvent".}
proc fcQDialogButtonBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_dragEnterEvent".}
proc fQDialogButtonBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_dragMoveEvent".}
proc fcQDialogButtonBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_dragMoveEvent".}
proc fQDialogButtonBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_dragLeaveEvent".}
proc fcQDialogButtonBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_dragLeaveEvent".}
proc fQDialogButtonBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_dropEvent".}
proc fcQDialogButtonBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_dropEvent".}
proc fQDialogButtonBox_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_showEvent".}
proc fcQDialogButtonBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_showEvent".}
proc fQDialogButtonBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_hideEvent".}
proc fcQDialogButtonBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_hideEvent".}
proc fQDialogButtonBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QDialogButtonBox_virtualbase_nativeEvent".}
proc fcQDialogButtonBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_nativeEvent".}
proc fQDialogButtonBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDialogButtonBox_virtualbase_metric".}
proc fcQDialogButtonBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_metric".}
proc fQDialogButtonBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDialogButtonBox_virtualbase_initPainter".}
proc fcQDialogButtonBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_initPainter".}
proc fQDialogButtonBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDialogButtonBox_virtualbase_redirected".}
proc fcQDialogButtonBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_redirected".}
proc fQDialogButtonBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDialogButtonBox_virtualbase_sharedPainter".}
proc fcQDialogButtonBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_sharedPainter".}
proc fQDialogButtonBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDialogButtonBox_virtualbase_inputMethodEvent".}
proc fcQDialogButtonBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_inputMethodEvent".}
proc fQDialogButtonBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDialogButtonBox_virtualbase_inputMethodQuery".}
proc fcQDialogButtonBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_inputMethodQuery".}
proc fQDialogButtonBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDialogButtonBox_virtualbase_focusNextPrevChild".}
proc fcQDialogButtonBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_focusNextPrevChild".}
proc fQDialogButtonBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDialogButtonBox_virtualbase_eventFilter".}
proc fcQDialogButtonBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_eventFilter".}
proc fQDialogButtonBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_timerEvent".}
proc fcQDialogButtonBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_timerEvent".}
proc fQDialogButtonBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_childEvent".}
proc fcQDialogButtonBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_childEvent".}
proc fQDialogButtonBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_customEvent".}
proc fcQDialogButtonBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_customEvent".}
proc fQDialogButtonBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDialogButtonBox_virtualbase_connectNotify".}
proc fcQDialogButtonBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_connectNotify".}
proc fQDialogButtonBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDialogButtonBox_virtualbase_disconnectNotify".}
proc fcQDialogButtonBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_disconnectNotify".}
proc fcQDialogButtonBox_staticMetaObject(): pointer {.importc: "QDialogButtonBox_staticMetaObject".}
proc fcQDialogButtonBox_delete(self: pointer) {.importc: "QDialogButtonBox_delete".}


func init*(T: type QDialogButtonBox, h: ptr cQDialogButtonBox): QDialogButtonBox =
  T(h: h)
proc create*(T: type QDialogButtonBox, parent: gen_qwidget.QWidget): QDialogButtonBox =

  QDialogButtonBox.init(fcQDialogButtonBox_new(parent.h))
proc create*(T: type QDialogButtonBox, ): QDialogButtonBox =

  QDialogButtonBox.init(fcQDialogButtonBox_new2())
proc create*(T: type QDialogButtonBox, orientation: gen_qnamespace.Orientation): QDialogButtonBox =

  QDialogButtonBox.init(fcQDialogButtonBox_new3(cint(orientation)))
proc create2*(T: type QDialogButtonBox, buttons: QDialogButtonBoxStandardButton): QDialogButtonBox =

  QDialogButtonBox.init(fcQDialogButtonBox_new4(cint(buttons)))
proc create*(T: type QDialogButtonBox, buttons: QDialogButtonBoxStandardButton, orientation: gen_qnamespace.Orientation): QDialogButtonBox =

  QDialogButtonBox.init(fcQDialogButtonBox_new5(cint(buttons), cint(orientation)))
proc create*(T: type QDialogButtonBox, orientation: gen_qnamespace.Orientation, parent: gen_qwidget.QWidget): QDialogButtonBox =

  QDialogButtonBox.init(fcQDialogButtonBox_new6(cint(orientation), parent.h))
proc create2*(T: type QDialogButtonBox, buttons: QDialogButtonBoxStandardButton, parent: gen_qwidget.QWidget): QDialogButtonBox =

  QDialogButtonBox.init(fcQDialogButtonBox_new7(cint(buttons), parent.h))
proc create*(T: type QDialogButtonBox, buttons: QDialogButtonBoxStandardButton, orientation: gen_qnamespace.Orientation, parent: gen_qwidget.QWidget): QDialogButtonBox =

  QDialogButtonBox.init(fcQDialogButtonBox_new8(cint(buttons), cint(orientation), parent.h))
proc metaObject*(self: QDialogButtonBox, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDialogButtonBox_metaObject(self.h))

proc metacast*(self: QDialogButtonBox, param1: cstring): pointer =

  fcQDialogButtonBox_metacast(self.h, param1)

proc metacall*(self: QDialogButtonBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDialogButtonBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDialogButtonBox, s: cstring): string =

  let v_ms = fcQDialogButtonBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QDialogButtonBox, s: cstring): string =

  let v_ms = fcQDialogButtonBox_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOrientation*(self: QDialogButtonBox, orientation: gen_qnamespace.Orientation): void =

  fcQDialogButtonBox_setOrientation(self.h, cint(orientation))

proc orientation*(self: QDialogButtonBox, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQDialogButtonBox_orientation(self.h))

proc addButton*(self: QDialogButtonBox, button: gen_qabstractbutton.QAbstractButton, role: QDialogButtonBoxButtonRole): void =

  fcQDialogButtonBox_addButton(self.h, button.h, cint(role))

proc addButton2*(self: QDialogButtonBox, text: string, role: QDialogButtonBoxButtonRole): gen_qpushbutton.QPushButton =

  gen_qpushbutton.QPushButton(h: fcQDialogButtonBox_addButton2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(role)))

proc addButtonWithButton*(self: QDialogButtonBox, button: QDialogButtonBoxStandardButton): gen_qpushbutton.QPushButton =

  gen_qpushbutton.QPushButton(h: fcQDialogButtonBox_addButtonWithButton(self.h, cint(button)))

proc removeButton*(self: QDialogButtonBox, button: gen_qabstractbutton.QAbstractButton): void =

  fcQDialogButtonBox_removeButton(self.h, button.h)

proc clear*(self: QDialogButtonBox, ): void =

  fcQDialogButtonBox_clear(self.h)

proc buttons*(self: QDialogButtonBox, ): seq[gen_qabstractbutton.QAbstractButton] =

  var v_ma = fcQDialogButtonBox_buttons(self.h)
  var vx_ret = newSeq[gen_qabstractbutton.QAbstractButton](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractbutton.QAbstractButton(h: v_outCast[i])
  vx_ret

proc buttonRole*(self: QDialogButtonBox, button: gen_qabstractbutton.QAbstractButton): QDialogButtonBoxButtonRole =

  QDialogButtonBoxButtonRole(fcQDialogButtonBox_buttonRole(self.h, button.h))

proc setStandardButtons*(self: QDialogButtonBox, buttons: QDialogButtonBoxStandardButton): void =

  fcQDialogButtonBox_setStandardButtons(self.h, cint(buttons))

proc standardButtons*(self: QDialogButtonBox, ): QDialogButtonBoxStandardButton =

  QDialogButtonBoxStandardButton(fcQDialogButtonBox_standardButtons(self.h))

proc standardButton*(self: QDialogButtonBox, button: gen_qabstractbutton.QAbstractButton): QDialogButtonBoxStandardButton =

  QDialogButtonBoxStandardButton(fcQDialogButtonBox_standardButton(self.h, button.h))

proc button*(self: QDialogButtonBox, which: QDialogButtonBoxStandardButton): gen_qpushbutton.QPushButton =

  gen_qpushbutton.QPushButton(h: fcQDialogButtonBox_button(self.h, cint(which)))

proc setCenterButtons*(self: QDialogButtonBox, center: bool): void =

  fcQDialogButtonBox_setCenterButtons(self.h, center)

proc centerButtons*(self: QDialogButtonBox, ): bool =

  fcQDialogButtonBox_centerButtons(self.h)

proc clicked*(self: QDialogButtonBox, button: gen_qabstractbutton.QAbstractButton): void =

  fcQDialogButtonBox_clicked(self.h, button.h)

proc miqt_exec_callback_QDialogButtonBox_clicked(slot: int, button: pointer) {.exportc.} =
  type Cb = proc(button: gen_qabstractbutton.QAbstractButton)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton.QAbstractButton(h: button)


  nimfunc[](slotval1)

proc onclicked*(self: QDialogButtonBox, slot: proc(button: gen_qabstractbutton.QAbstractButton)) =
  type Cb = proc(button: gen_qabstractbutton.QAbstractButton)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDialogButtonBox_connect_clicked(self.h, cast[int](addr tmp[]))
proc accepted*(self: QDialogButtonBox, ): void =

  fcQDialogButtonBox_accepted(self.h)

proc miqt_exec_callback_QDialogButtonBox_accepted(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaccepted*(self: QDialogButtonBox, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDialogButtonBox_connect_accepted(self.h, cast[int](addr tmp[]))
proc helpRequested*(self: QDialogButtonBox, ): void =

  fcQDialogButtonBox_helpRequested(self.h)

proc miqt_exec_callback_QDialogButtonBox_helpRequested(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onhelpRequested*(self: QDialogButtonBox, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDialogButtonBox_connect_helpRequested(self.h, cast[int](addr tmp[]))
proc rejected*(self: QDialogButtonBox, ): void =

  fcQDialogButtonBox_rejected(self.h)

proc miqt_exec_callback_QDialogButtonBox_rejected(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onrejected*(self: QDialogButtonBox, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDialogButtonBox_connect_rejected(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QDialogButtonBox, s: cstring, c: cstring): string =

  let v_ms = fcQDialogButtonBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDialogButtonBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDialogButtonBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QDialogButtonBox, s: cstring, c: cstring): string =

  let v_ms = fcQDialogButtonBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QDialogButtonBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDialogButtonBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QDialogButtonBox, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQDialogButtonBox_virtualbase_metaObject(self.h))

type QDialogButtonBoxmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_metaObject(self: ptr cQDialogButtonBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDialogButtonBox_metaObject ".} =
  type Cb = proc(super: QDialogButtonBoxmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QDialogButtonBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QDialogButtonBox, param1: cstring): pointer =


  fQDialogButtonBox_virtualbase_metacast(self.h, param1)

type QDialogButtonBoxmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_metacast(self: ptr cQDialogButtonBox, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QDialogButtonBox_metacast ".} =
  type Cb = proc(super: QDialogButtonBoxmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QDialogButtonBox(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QDialogButtonBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDialogButtonBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDialogButtonBoxmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_metacall(self: ptr cQDialogButtonBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDialogButtonBox_metacall ".} =
  type Cb = proc(super: QDialogButtonBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDialogButtonBox(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QDialogButtonBox, event: gen_qcoreevent.QEvent): void =


  fQDialogButtonBox_virtualbase_changeEvent(self.h, event.h)

type QDialogButtonBoxchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_changeEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_changeEvent ".} =
  type Cb = proc(super: QDialogButtonBoxchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QDialogButtonBox, event: gen_qcoreevent.QEvent): bool =


  fQDialogButtonBox_virtualbase_event(self.h, event.h)

type QDialogButtonBoxeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_event(self: ptr cQDialogButtonBox, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDialogButtonBox_event ".} =
  type Cb = proc(super: QDialogButtonBoxeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_devType(self: QDialogButtonBox, ): cint =


  fQDialogButtonBox_virtualbase_devType(self.h)

type QDialogButtonBoxdevTypeBase* = proc(): cint
proc ondevType*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_devType(self: ptr cQDialogButtonBox, slot: int): cint {.exportc: "miqt_exec_callback_QDialogButtonBox_devType ".} =
  type Cb = proc(super: QDialogButtonBoxdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QDialogButtonBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QDialogButtonBox, visible: bool): void =


  fQDialogButtonBox_virtualbase_setVisible(self.h, visible)

type QDialogButtonBoxsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_setVisible(self: ptr cQDialogButtonBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDialogButtonBox_setVisible ".} =
  type Cb = proc(super: QDialogButtonBoxsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QDialogButtonBox(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QDialogButtonBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDialogButtonBox_virtualbase_sizeHint(self.h))

type QDialogButtonBoxsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_sizeHint(self: ptr cQDialogButtonBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDialogButtonBox_sizeHint ".} =
  type Cb = proc(super: QDialogButtonBoxsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QDialogButtonBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QDialogButtonBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDialogButtonBox_virtualbase_minimumSizeHint(self.h))

type QDialogButtonBoxminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_minimumSizeHint(self: ptr cQDialogButtonBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDialogButtonBox_minimumSizeHint ".} =
  type Cb = proc(super: QDialogButtonBoxminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QDialogButtonBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QDialogButtonBox, param1: cint): cint =


  fQDialogButtonBox_virtualbase_heightForWidth(self.h, param1)

type QDialogButtonBoxheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_heightForWidth(self: ptr cQDialogButtonBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDialogButtonBox_heightForWidth ".} =
  type Cb = proc(super: QDialogButtonBoxheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QDialogButtonBox(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QDialogButtonBox, ): bool =


  fQDialogButtonBox_virtualbase_hasHeightForWidth(self.h)

type QDialogButtonBoxhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_hasHeightForWidth(self: ptr cQDialogButtonBox, slot: int): bool {.exportc: "miqt_exec_callback_QDialogButtonBox_hasHeightForWidth ".} =
  type Cb = proc(super: QDialogButtonBoxhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QDialogButtonBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QDialogButtonBox, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQDialogButtonBox_virtualbase_paintEngine(self.h))

type QDialogButtonBoxpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_paintEngine(self: ptr cQDialogButtonBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDialogButtonBox_paintEngine ".} =
  type Cb = proc(super: QDialogButtonBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QDialogButtonBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QDialogButtonBox, event: gen_qevent.QMouseEvent): void =


  fQDialogButtonBox_virtualbase_mousePressEvent(self.h, event.h)

type QDialogButtonBoxmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_mousePressEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_mousePressEvent ".} =
  type Cb = proc(super: QDialogButtonBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QDialogButtonBox, event: gen_qevent.QMouseEvent): void =


  fQDialogButtonBox_virtualbase_mouseReleaseEvent(self.h, event.h)

type QDialogButtonBoxmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_mouseReleaseEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_mouseReleaseEvent ".} =
  type Cb = proc(super: QDialogButtonBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QDialogButtonBox, event: gen_qevent.QMouseEvent): void =


  fQDialogButtonBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDialogButtonBoxmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_mouseDoubleClickEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QDialogButtonBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QDialogButtonBox, event: gen_qevent.QMouseEvent): void =


  fQDialogButtonBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QDialogButtonBoxmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_mouseMoveEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_mouseMoveEvent ".} =
  type Cb = proc(super: QDialogButtonBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QDialogButtonBox, event: gen_qevent.QWheelEvent): void =


  fQDialogButtonBox_virtualbase_wheelEvent(self.h, event.h)

type QDialogButtonBoxwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_wheelEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_wheelEvent ".} =
  type Cb = proc(super: QDialogButtonBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QDialogButtonBox, event: gen_qevent.QKeyEvent): void =


  fQDialogButtonBox_virtualbase_keyPressEvent(self.h, event.h)

type QDialogButtonBoxkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_keyPressEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_keyPressEvent ".} =
  type Cb = proc(super: QDialogButtonBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QDialogButtonBox, event: gen_qevent.QKeyEvent): void =


  fQDialogButtonBox_virtualbase_keyReleaseEvent(self.h, event.h)

type QDialogButtonBoxkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_keyReleaseEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_keyReleaseEvent ".} =
  type Cb = proc(super: QDialogButtonBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QDialogButtonBox, event: gen_qevent.QFocusEvent): void =


  fQDialogButtonBox_virtualbase_focusInEvent(self.h, event.h)

type QDialogButtonBoxfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_focusInEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_focusInEvent ".} =
  type Cb = proc(super: QDialogButtonBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QDialogButtonBox, event: gen_qevent.QFocusEvent): void =


  fQDialogButtonBox_virtualbase_focusOutEvent(self.h, event.h)

type QDialogButtonBoxfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_focusOutEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_focusOutEvent ".} =
  type Cb = proc(super: QDialogButtonBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QDialogButtonBox, event: gen_qcoreevent.QEvent): void =


  fQDialogButtonBox_virtualbase_enterEvent(self.h, event.h)

type QDialogButtonBoxenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_enterEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_enterEvent ".} =
  type Cb = proc(super: QDialogButtonBoxenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QDialogButtonBox, event: gen_qcoreevent.QEvent): void =


  fQDialogButtonBox_virtualbase_leaveEvent(self.h, event.h)

type QDialogButtonBoxleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_leaveEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_leaveEvent ".} =
  type Cb = proc(super: QDialogButtonBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QDialogButtonBox, event: gen_qevent.QPaintEvent): void =


  fQDialogButtonBox_virtualbase_paintEvent(self.h, event.h)

type QDialogButtonBoxpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_paintEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_paintEvent ".} =
  type Cb = proc(super: QDialogButtonBoxpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QDialogButtonBox, event: gen_qevent.QMoveEvent): void =


  fQDialogButtonBox_virtualbase_moveEvent(self.h, event.h)

type QDialogButtonBoxmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_moveEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_moveEvent ".} =
  type Cb = proc(super: QDialogButtonBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QDialogButtonBox, event: gen_qevent.QResizeEvent): void =


  fQDialogButtonBox_virtualbase_resizeEvent(self.h, event.h)

type QDialogButtonBoxresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_resizeEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_resizeEvent ".} =
  type Cb = proc(super: QDialogButtonBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QDialogButtonBox, event: gen_qevent.QCloseEvent): void =


  fQDialogButtonBox_virtualbase_closeEvent(self.h, event.h)

type QDialogButtonBoxcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_closeEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_closeEvent ".} =
  type Cb = proc(super: QDialogButtonBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QDialogButtonBox, event: gen_qevent.QContextMenuEvent): void =


  fQDialogButtonBox_virtualbase_contextMenuEvent(self.h, event.h)

type QDialogButtonBoxcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_contextMenuEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_contextMenuEvent ".} =
  type Cb = proc(super: QDialogButtonBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QDialogButtonBox, event: gen_qevent.QTabletEvent): void =


  fQDialogButtonBox_virtualbase_tabletEvent(self.h, event.h)

type QDialogButtonBoxtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_tabletEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_tabletEvent ".} =
  type Cb = proc(super: QDialogButtonBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QDialogButtonBox, event: gen_qevent.QActionEvent): void =


  fQDialogButtonBox_virtualbase_actionEvent(self.h, event.h)

type QDialogButtonBoxactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_actionEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_actionEvent ".} =
  type Cb = proc(super: QDialogButtonBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QDialogButtonBox, event: gen_qevent.QDragEnterEvent): void =


  fQDialogButtonBox_virtualbase_dragEnterEvent(self.h, event.h)

type QDialogButtonBoxdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_dragEnterEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_dragEnterEvent ".} =
  type Cb = proc(super: QDialogButtonBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QDialogButtonBox, event: gen_qevent.QDragMoveEvent): void =


  fQDialogButtonBox_virtualbase_dragMoveEvent(self.h, event.h)

type QDialogButtonBoxdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_dragMoveEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_dragMoveEvent ".} =
  type Cb = proc(super: QDialogButtonBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QDialogButtonBox, event: gen_qevent.QDragLeaveEvent): void =


  fQDialogButtonBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QDialogButtonBoxdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_dragLeaveEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_dragLeaveEvent ".} =
  type Cb = proc(super: QDialogButtonBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QDialogButtonBox, event: gen_qevent.QDropEvent): void =


  fQDialogButtonBox_virtualbase_dropEvent(self.h, event.h)

type QDialogButtonBoxdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_dropEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_dropEvent ".} =
  type Cb = proc(super: QDialogButtonBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QDialogButtonBox, event: gen_qevent.QShowEvent): void =


  fQDialogButtonBox_virtualbase_showEvent(self.h, event.h)

type QDialogButtonBoxshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_showEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_showEvent ".} =
  type Cb = proc(super: QDialogButtonBoxshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QDialogButtonBox, event: gen_qevent.QHideEvent): void =


  fQDialogButtonBox_virtualbase_hideEvent(self.h, event.h)

type QDialogButtonBoxhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_hideEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_hideEvent ".} =
  type Cb = proc(super: QDialogButtonBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QDialogButtonBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQDialogButtonBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDialogButtonBoxnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_nativeEvent(self: ptr cQDialogButtonBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QDialogButtonBox_nativeEvent ".} =
  type Cb = proc(super: QDialogButtonBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QDialogButtonBox(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QDialogButtonBox, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQDialogButtonBox_virtualbase_metric(self.h, cint(param1))

type QDialogButtonBoxmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_metric(self: ptr cQDialogButtonBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDialogButtonBox_metric ".} =
  type Cb = proc(super: QDialogButtonBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QDialogButtonBox(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QDialogButtonBox, painter: gen_qpainter.QPainter): void =


  fQDialogButtonBox_virtualbase_initPainter(self.h, painter.h)

type QDialogButtonBoxinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_initPainter(self: ptr cQDialogButtonBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_initPainter ".} =
  type Cb = proc(super: QDialogButtonBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QDialogButtonBox(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QDialogButtonBox, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQDialogButtonBox_virtualbase_redirected(self.h, offset.h))

type QDialogButtonBoxredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_redirected(self: ptr cQDialogButtonBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDialogButtonBox_redirected ".} =
  type Cb = proc(super: QDialogButtonBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QDialogButtonBox(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QDialogButtonBox, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQDialogButtonBox_virtualbase_sharedPainter(self.h))

type QDialogButtonBoxsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_sharedPainter(self: ptr cQDialogButtonBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDialogButtonBox_sharedPainter ".} =
  type Cb = proc(super: QDialogButtonBoxsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QDialogButtonBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QDialogButtonBox, param1: gen_qevent.QInputMethodEvent): void =


  fQDialogButtonBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QDialogButtonBoxinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_inputMethodEvent(self: ptr cQDialogButtonBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_inputMethodEvent ".} =
  type Cb = proc(super: QDialogButtonBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QDialogButtonBox(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QDialogButtonBox, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQDialogButtonBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDialogButtonBoxinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_inputMethodQuery(self: ptr cQDialogButtonBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDialogButtonBox_inputMethodQuery ".} =
  type Cb = proc(super: QDialogButtonBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QDialogButtonBox(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QDialogButtonBox, next: bool): bool =


  fQDialogButtonBox_virtualbase_focusNextPrevChild(self.h, next)

type QDialogButtonBoxfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_focusNextPrevChild(self: ptr cQDialogButtonBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDialogButtonBox_focusNextPrevChild ".} =
  type Cb = proc(super: QDialogButtonBoxfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QDialogButtonBox(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QDialogButtonBox, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQDialogButtonBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDialogButtonBoxeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_eventFilter(self: ptr cQDialogButtonBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDialogButtonBox_eventFilter ".} =
  type Cb = proc(super: QDialogButtonBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDialogButtonBox(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QDialogButtonBox, event: gen_qcoreevent.QTimerEvent): void =


  fQDialogButtonBox_virtualbase_timerEvent(self.h, event.h)

type QDialogButtonBoxtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_timerEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_timerEvent ".} =
  type Cb = proc(super: QDialogButtonBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QDialogButtonBox, event: gen_qcoreevent.QChildEvent): void =


  fQDialogButtonBox_virtualbase_childEvent(self.h, event.h)

type QDialogButtonBoxchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_childEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_childEvent ".} =
  type Cb = proc(super: QDialogButtonBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDialogButtonBox, event: gen_qcoreevent.QEvent): void =


  fQDialogButtonBox_virtualbase_customEvent(self.h, event.h)

type QDialogButtonBoxcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_customEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_customEvent ".} =
  type Cb = proc(super: QDialogButtonBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDialogButtonBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDialogButtonBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQDialogButtonBox_virtualbase_connectNotify(self.h, signal.h)

type QDialogButtonBoxconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_connectNotify(self: ptr cQDialogButtonBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_connectNotify ".} =
  type Cb = proc(super: QDialogButtonBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDialogButtonBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDialogButtonBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQDialogButtonBox_virtualbase_disconnectNotify(self.h, signal.h)

type QDialogButtonBoxdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDialogButtonBox, slot: proc(super: QDialogButtonBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogButtonBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_disconnectNotify(self: ptr cQDialogButtonBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_disconnectNotify ".} =
  type Cb = proc(super: QDialogButtonBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDialogButtonBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QDialogButtonBox): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQDialogButtonBox_staticMetaObject())
proc delete*(self: QDialogButtonBox) =
  fcQDialogButtonBox_delete(self.h)
