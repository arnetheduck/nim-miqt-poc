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
{.compile("gen_qabstractspinbox.cpp", cflags).}


type QAbstractSpinBoxStepEnabledFlag* = cint
const
  QAbstractSpinBoxStepNone* = 0
  QAbstractSpinBoxStepUpEnabled* = 1
  QAbstractSpinBoxStepDownEnabled* = 2



type QAbstractSpinBoxButtonSymbols* = cint
const
  QAbstractSpinBoxUpDownArrows* = 0
  QAbstractSpinBoxPlusMinus* = 1
  QAbstractSpinBoxNoButtons* = 2



type QAbstractSpinBoxCorrectionMode* = cint
const
  QAbstractSpinBoxCorrectToPreviousValue* = 0
  QAbstractSpinBoxCorrectToNearestValue* = 1



type QAbstractSpinBoxStepType* = cint
const
  QAbstractSpinBoxDefaultStepType* = 0
  QAbstractSpinBoxAdaptiveDecimalStepType* = 1



import gen_qabstractspinbox_types
export gen_qabstractspinbox_types

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
  gen_qsize,
  gen_qvalidator,
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
  gen_qsize,
  gen_qvalidator,
  gen_qvariant,
  gen_qwidget

type cQAbstractSpinBox*{.exportc: "QAbstractSpinBox", incompleteStruct.} = object

proc fcQAbstractSpinBox_new(parent: pointer): ptr cQAbstractSpinBox {.importc: "QAbstractSpinBox_new".}
proc fcQAbstractSpinBox_new2(): ptr cQAbstractSpinBox {.importc: "QAbstractSpinBox_new2".}
proc fcQAbstractSpinBox_metaObject(self: pointer, ): pointer {.importc: "QAbstractSpinBox_metaObject".}
proc fcQAbstractSpinBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSpinBox_metacast".}
proc fcQAbstractSpinBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSpinBox_metacall".}
proc fcQAbstractSpinBox_tr(s: cstring): struct_miqt_string {.importc: "QAbstractSpinBox_tr".}
proc fcQAbstractSpinBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractSpinBox_trUtf8".}
proc fcQAbstractSpinBox_buttonSymbols(self: pointer, ): cint {.importc: "QAbstractSpinBox_buttonSymbols".}
proc fcQAbstractSpinBox_setButtonSymbols(self: pointer, bs: cint): void {.importc: "QAbstractSpinBox_setButtonSymbols".}
proc fcQAbstractSpinBox_setCorrectionMode(self: pointer, cm: cint): void {.importc: "QAbstractSpinBox_setCorrectionMode".}
proc fcQAbstractSpinBox_correctionMode(self: pointer, ): cint {.importc: "QAbstractSpinBox_correctionMode".}
proc fcQAbstractSpinBox_hasAcceptableInput(self: pointer, ): bool {.importc: "QAbstractSpinBox_hasAcceptableInput".}
proc fcQAbstractSpinBox_text(self: pointer, ): struct_miqt_string {.importc: "QAbstractSpinBox_text".}
proc fcQAbstractSpinBox_specialValueText(self: pointer, ): struct_miqt_string {.importc: "QAbstractSpinBox_specialValueText".}
proc fcQAbstractSpinBox_setSpecialValueText(self: pointer, txt: struct_miqt_string): void {.importc: "QAbstractSpinBox_setSpecialValueText".}
proc fcQAbstractSpinBox_wrapping(self: pointer, ): bool {.importc: "QAbstractSpinBox_wrapping".}
proc fcQAbstractSpinBox_setWrapping(self: pointer, w: bool): void {.importc: "QAbstractSpinBox_setWrapping".}
proc fcQAbstractSpinBox_setReadOnly(self: pointer, r: bool): void {.importc: "QAbstractSpinBox_setReadOnly".}
proc fcQAbstractSpinBox_isReadOnly(self: pointer, ): bool {.importc: "QAbstractSpinBox_isReadOnly".}
proc fcQAbstractSpinBox_setKeyboardTracking(self: pointer, kt: bool): void {.importc: "QAbstractSpinBox_setKeyboardTracking".}
proc fcQAbstractSpinBox_keyboardTracking(self: pointer, ): bool {.importc: "QAbstractSpinBox_keyboardTracking".}
proc fcQAbstractSpinBox_setAlignment(self: pointer, flag: cint): void {.importc: "QAbstractSpinBox_setAlignment".}
proc fcQAbstractSpinBox_alignment(self: pointer, ): cint {.importc: "QAbstractSpinBox_alignment".}
proc fcQAbstractSpinBox_setFrame(self: pointer, frame: bool): void {.importc: "QAbstractSpinBox_setFrame".}
proc fcQAbstractSpinBox_hasFrame(self: pointer, ): bool {.importc: "QAbstractSpinBox_hasFrame".}
proc fcQAbstractSpinBox_setAccelerated(self: pointer, on: bool): void {.importc: "QAbstractSpinBox_setAccelerated".}
proc fcQAbstractSpinBox_isAccelerated(self: pointer, ): bool {.importc: "QAbstractSpinBox_isAccelerated".}
proc fcQAbstractSpinBox_setGroupSeparatorShown(self: pointer, shown: bool): void {.importc: "QAbstractSpinBox_setGroupSeparatorShown".}
proc fcQAbstractSpinBox_isGroupSeparatorShown(self: pointer, ): bool {.importc: "QAbstractSpinBox_isGroupSeparatorShown".}
proc fcQAbstractSpinBox_sizeHint(self: pointer, ): pointer {.importc: "QAbstractSpinBox_sizeHint".}
proc fcQAbstractSpinBox_minimumSizeHint(self: pointer, ): pointer {.importc: "QAbstractSpinBox_minimumSizeHint".}
proc fcQAbstractSpinBox_interpretText(self: pointer, ): void {.importc: "QAbstractSpinBox_interpretText".}
proc fcQAbstractSpinBox_event(self: pointer, event: pointer): bool {.importc: "QAbstractSpinBox_event".}
proc fcQAbstractSpinBox_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QAbstractSpinBox_inputMethodQuery".}
proc fcQAbstractSpinBox_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QAbstractSpinBox_validate".}
proc fcQAbstractSpinBox_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QAbstractSpinBox_fixup".}
proc fcQAbstractSpinBox_stepBy(self: pointer, steps: cint): void {.importc: "QAbstractSpinBox_stepBy".}
proc fcQAbstractSpinBox_stepUp(self: pointer, ): void {.importc: "QAbstractSpinBox_stepUp".}
proc fcQAbstractSpinBox_stepDown(self: pointer, ): void {.importc: "QAbstractSpinBox_stepDown".}
proc fcQAbstractSpinBox_selectAll(self: pointer, ): void {.importc: "QAbstractSpinBox_selectAll".}
proc fcQAbstractSpinBox_clear(self: pointer, ): void {.importc: "QAbstractSpinBox_clear".}
proc fcQAbstractSpinBox_editingFinished(self: pointer, ): void {.importc: "QAbstractSpinBox_editingFinished".}
proc fQAbstractSpinBox_connect_editingFinished(self: pointer, slot: int) {.importc: "QAbstractSpinBox_connect_editingFinished".}
proc fcQAbstractSpinBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSpinBox_tr2".}
proc fcQAbstractSpinBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSpinBox_tr3".}
proc fcQAbstractSpinBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSpinBox_trUtf82".}
proc fcQAbstractSpinBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSpinBox_trUtf83".}
proc fQAbstractSpinBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractSpinBox_virtualbase_metacall".}
proc fcQAbstractSpinBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_metacall".}
proc fQAbstractSpinBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QAbstractSpinBox_virtualbase_sizeHint".}
proc fcQAbstractSpinBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_sizeHint".}
proc fQAbstractSpinBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QAbstractSpinBox_virtualbase_minimumSizeHint".}
proc fcQAbstractSpinBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_minimumSizeHint".}
proc fQAbstractSpinBox_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractSpinBox_virtualbase_event".}
proc fcQAbstractSpinBox_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_event".}
proc fQAbstractSpinBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QAbstractSpinBox_virtualbase_inputMethodQuery".}
proc fcQAbstractSpinBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_inputMethodQuery".}
proc fQAbstractSpinBox_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QAbstractSpinBox_virtualbase_validate".}
proc fcQAbstractSpinBox_override_virtual_validate(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_validate".}
proc fQAbstractSpinBox_virtualbase_fixup(self: pointer, input: struct_miqt_string): void{.importc: "QAbstractSpinBox_virtualbase_fixup".}
proc fcQAbstractSpinBox_override_virtual_fixup(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_fixup".}
proc fQAbstractSpinBox_virtualbase_stepBy(self: pointer, steps: cint): void{.importc: "QAbstractSpinBox_virtualbase_stepBy".}
proc fcQAbstractSpinBox_override_virtual_stepBy(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_stepBy".}
proc fQAbstractSpinBox_virtualbase_clear(self: pointer, ): void{.importc: "QAbstractSpinBox_virtualbase_clear".}
proc fcQAbstractSpinBox_override_virtual_clear(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_clear".}
proc fQAbstractSpinBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_resizeEvent".}
proc fcQAbstractSpinBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_resizeEvent".}
proc fQAbstractSpinBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_keyPressEvent".}
proc fcQAbstractSpinBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_keyPressEvent".}
proc fQAbstractSpinBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_keyReleaseEvent".}
proc fcQAbstractSpinBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_keyReleaseEvent".}
proc fQAbstractSpinBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_wheelEvent".}
proc fcQAbstractSpinBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_wheelEvent".}
proc fQAbstractSpinBox_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_focusInEvent".}
proc fcQAbstractSpinBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_focusInEvent".}
proc fQAbstractSpinBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_focusOutEvent".}
proc fcQAbstractSpinBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_focusOutEvent".}
proc fQAbstractSpinBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_contextMenuEvent".}
proc fcQAbstractSpinBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_contextMenuEvent".}
proc fQAbstractSpinBox_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_changeEvent".}
proc fcQAbstractSpinBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_changeEvent".}
proc fQAbstractSpinBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_closeEvent".}
proc fcQAbstractSpinBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_closeEvent".}
proc fQAbstractSpinBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_hideEvent".}
proc fcQAbstractSpinBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_hideEvent".}
proc fQAbstractSpinBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_mousePressEvent".}
proc fcQAbstractSpinBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_mousePressEvent".}
proc fQAbstractSpinBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_mouseReleaseEvent".}
proc fcQAbstractSpinBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_mouseReleaseEvent".}
proc fQAbstractSpinBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_mouseMoveEvent".}
proc fcQAbstractSpinBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_mouseMoveEvent".}
proc fQAbstractSpinBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_timerEvent".}
proc fcQAbstractSpinBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_timerEvent".}
proc fQAbstractSpinBox_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_paintEvent".}
proc fcQAbstractSpinBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_paintEvent".}
proc fQAbstractSpinBox_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_showEvent".}
proc fcQAbstractSpinBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_showEvent".}
proc fQAbstractSpinBox_virtualbase_stepEnabled(self: pointer, ): cint{.importc: "QAbstractSpinBox_virtualbase_stepEnabled".}
proc fcQAbstractSpinBox_override_virtual_stepEnabled(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_stepEnabled".}
proc fQAbstractSpinBox_virtualbase_devType(self: pointer, ): cint{.importc: "QAbstractSpinBox_virtualbase_devType".}
proc fcQAbstractSpinBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_devType".}
proc fQAbstractSpinBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QAbstractSpinBox_virtualbase_setVisible".}
proc fcQAbstractSpinBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_setVisible".}
proc fQAbstractSpinBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QAbstractSpinBox_virtualbase_heightForWidth".}
proc fcQAbstractSpinBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_heightForWidth".}
proc fQAbstractSpinBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QAbstractSpinBox_virtualbase_hasHeightForWidth".}
proc fcQAbstractSpinBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_hasHeightForWidth".}
proc fQAbstractSpinBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QAbstractSpinBox_virtualbase_paintEngine".}
proc fcQAbstractSpinBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_paintEngine".}
proc fQAbstractSpinBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractSpinBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_mouseDoubleClickEvent".}
proc fQAbstractSpinBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_enterEvent".}
proc fcQAbstractSpinBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_enterEvent".}
proc fQAbstractSpinBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_leaveEvent".}
proc fcQAbstractSpinBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_leaveEvent".}
proc fQAbstractSpinBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_moveEvent".}
proc fcQAbstractSpinBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_moveEvent".}
proc fQAbstractSpinBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_tabletEvent".}
proc fcQAbstractSpinBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_tabletEvent".}
proc fQAbstractSpinBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_actionEvent".}
proc fcQAbstractSpinBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_actionEvent".}
proc fQAbstractSpinBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_dragEnterEvent".}
proc fcQAbstractSpinBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_dragEnterEvent".}
proc fQAbstractSpinBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_dragMoveEvent".}
proc fcQAbstractSpinBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_dragMoveEvent".}
proc fQAbstractSpinBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_dragLeaveEvent".}
proc fcQAbstractSpinBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_dragLeaveEvent".}
proc fQAbstractSpinBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_dropEvent".}
proc fcQAbstractSpinBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_dropEvent".}
proc fQAbstractSpinBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QAbstractSpinBox_virtualbase_nativeEvent".}
proc fcQAbstractSpinBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_nativeEvent".}
proc fQAbstractSpinBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QAbstractSpinBox_virtualbase_metric".}
proc fcQAbstractSpinBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_metric".}
proc fQAbstractSpinBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QAbstractSpinBox_virtualbase_initPainter".}
proc fcQAbstractSpinBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_initPainter".}
proc fQAbstractSpinBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QAbstractSpinBox_virtualbase_redirected".}
proc fcQAbstractSpinBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_redirected".}
proc fQAbstractSpinBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QAbstractSpinBox_virtualbase_sharedPainter".}
proc fcQAbstractSpinBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_sharedPainter".}
proc fQAbstractSpinBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QAbstractSpinBox_virtualbase_inputMethodEvent".}
proc fcQAbstractSpinBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_inputMethodEvent".}
proc fQAbstractSpinBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QAbstractSpinBox_virtualbase_focusNextPrevChild".}
proc fcQAbstractSpinBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_focusNextPrevChild".}
proc fQAbstractSpinBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractSpinBox_virtualbase_eventFilter".}
proc fcQAbstractSpinBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_eventFilter".}
proc fQAbstractSpinBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_childEvent".}
proc fcQAbstractSpinBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_childEvent".}
proc fQAbstractSpinBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_customEvent".}
proc fcQAbstractSpinBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_customEvent".}
proc fQAbstractSpinBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractSpinBox_virtualbase_connectNotify".}
proc fcQAbstractSpinBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_connectNotify".}
proc fQAbstractSpinBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractSpinBox_virtualbase_disconnectNotify".}
proc fcQAbstractSpinBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_disconnectNotify".}
proc fcQAbstractSpinBox_staticMetaObject(): pointer {.importc: "QAbstractSpinBox_staticMetaObject".}
proc fcQAbstractSpinBox_delete(self: pointer) {.importc: "QAbstractSpinBox_delete".}


func init*(T: type QAbstractSpinBox, h: ptr cQAbstractSpinBox): QAbstractSpinBox =
  T(h: h)
proc create*(T: type QAbstractSpinBox, parent: gen_qwidget.QWidget): QAbstractSpinBox =

  QAbstractSpinBox.init(fcQAbstractSpinBox_new(parent.h))
proc create*(T: type QAbstractSpinBox, ): QAbstractSpinBox =

  QAbstractSpinBox.init(fcQAbstractSpinBox_new2())
proc metaObject*(self: QAbstractSpinBox, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractSpinBox_metaObject(self.h))

proc metacast*(self: QAbstractSpinBox, param1: cstring): pointer =

  fcQAbstractSpinBox_metacast(self.h, param1)

proc metacall*(self: QAbstractSpinBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractSpinBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractSpinBox, s: cstring): string =

  let v_ms = fcQAbstractSpinBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAbstractSpinBox, s: cstring): string =

  let v_ms = fcQAbstractSpinBox_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc buttonSymbols*(self: QAbstractSpinBox, ): QAbstractSpinBoxButtonSymbols =

  QAbstractSpinBoxButtonSymbols(fcQAbstractSpinBox_buttonSymbols(self.h))

proc setButtonSymbols*(self: QAbstractSpinBox, bs: QAbstractSpinBoxButtonSymbols): void =

  fcQAbstractSpinBox_setButtonSymbols(self.h, cint(bs))

proc setCorrectionMode*(self: QAbstractSpinBox, cm: QAbstractSpinBoxCorrectionMode): void =

  fcQAbstractSpinBox_setCorrectionMode(self.h, cint(cm))

proc correctionMode*(self: QAbstractSpinBox, ): QAbstractSpinBoxCorrectionMode =

  QAbstractSpinBoxCorrectionMode(fcQAbstractSpinBox_correctionMode(self.h))

proc hasAcceptableInput*(self: QAbstractSpinBox, ): bool =

  fcQAbstractSpinBox_hasAcceptableInput(self.h)

proc text*(self: QAbstractSpinBox, ): string =

  let v_ms = fcQAbstractSpinBox_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc specialValueText*(self: QAbstractSpinBox, ): string =

  let v_ms = fcQAbstractSpinBox_specialValueText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSpecialValueText*(self: QAbstractSpinBox, txt: string): void =

  fcQAbstractSpinBox_setSpecialValueText(self.h, struct_miqt_string(data: txt, len: csize_t(len(txt))))

proc wrapping*(self: QAbstractSpinBox, ): bool =

  fcQAbstractSpinBox_wrapping(self.h)

proc setWrapping*(self: QAbstractSpinBox, w: bool): void =

  fcQAbstractSpinBox_setWrapping(self.h, w)

proc setReadOnly*(self: QAbstractSpinBox, r: bool): void =

  fcQAbstractSpinBox_setReadOnly(self.h, r)

proc isReadOnly*(self: QAbstractSpinBox, ): bool =

  fcQAbstractSpinBox_isReadOnly(self.h)

proc setKeyboardTracking*(self: QAbstractSpinBox, kt: bool): void =

  fcQAbstractSpinBox_setKeyboardTracking(self.h, kt)

proc keyboardTracking*(self: QAbstractSpinBox, ): bool =

  fcQAbstractSpinBox_keyboardTracking(self.h)

proc setAlignment*(self: QAbstractSpinBox, flag: gen_qnamespace.AlignmentFlag): void =

  fcQAbstractSpinBox_setAlignment(self.h, cint(flag))

proc alignment*(self: QAbstractSpinBox, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQAbstractSpinBox_alignment(self.h))

proc setFrame*(self: QAbstractSpinBox, frame: bool): void =

  fcQAbstractSpinBox_setFrame(self.h, frame)

proc hasFrame*(self: QAbstractSpinBox, ): bool =

  fcQAbstractSpinBox_hasFrame(self.h)

proc setAccelerated*(self: QAbstractSpinBox, on: bool): void =

  fcQAbstractSpinBox_setAccelerated(self.h, on)

proc isAccelerated*(self: QAbstractSpinBox, ): bool =

  fcQAbstractSpinBox_isAccelerated(self.h)

proc setGroupSeparatorShown*(self: QAbstractSpinBox, shown: bool): void =

  fcQAbstractSpinBox_setGroupSeparatorShown(self.h, shown)

proc isGroupSeparatorShown*(self: QAbstractSpinBox, ): bool =

  fcQAbstractSpinBox_isGroupSeparatorShown(self.h)

proc sizeHint*(self: QAbstractSpinBox, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQAbstractSpinBox_sizeHint(self.h))

proc minimumSizeHint*(self: QAbstractSpinBox, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQAbstractSpinBox_minimumSizeHint(self.h))

proc interpretText*(self: QAbstractSpinBox, ): void =

  fcQAbstractSpinBox_interpretText(self.h)

proc event*(self: QAbstractSpinBox, event: gen_qcoreevent.QEvent): bool =

  fcQAbstractSpinBox_event(self.h, event.h)

proc inputMethodQuery*(self: QAbstractSpinBox, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQAbstractSpinBox_inputMethodQuery(self.h, cint(param1)))

proc validate*(self: QAbstractSpinBox, input: string, pos: ptr cint): gen_qvalidator.QValidatorState =

  gen_qvalidator.QValidatorState(fcQAbstractSpinBox_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc fixup*(self: QAbstractSpinBox, input: string): void =

  fcQAbstractSpinBox_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

proc stepBy*(self: QAbstractSpinBox, steps: cint): void =

  fcQAbstractSpinBox_stepBy(self.h, steps)

proc stepUp*(self: QAbstractSpinBox, ): void =

  fcQAbstractSpinBox_stepUp(self.h)

proc stepDown*(self: QAbstractSpinBox, ): void =

  fcQAbstractSpinBox_stepDown(self.h)

proc selectAll*(self: QAbstractSpinBox, ): void =

  fcQAbstractSpinBox_selectAll(self.h)

proc clear*(self: QAbstractSpinBox, ): void =

  fcQAbstractSpinBox_clear(self.h)

proc editingFinished*(self: QAbstractSpinBox, ): void =

  fcQAbstractSpinBox_editingFinished(self.h)

proc miqt_exec_callback_QAbstractSpinBox_editingFinished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oneditingFinished*(self: QAbstractSpinBox, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractSpinBox_connect_editingFinished(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAbstractSpinBox, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractSpinBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractSpinBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractSpinBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAbstractSpinBox, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractSpinBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAbstractSpinBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractSpinBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAbstractSpinBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractSpinBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractSpinBoxmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_metacall(self: ptr cQAbstractSpinBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractSpinBox_metacall ".} =
  type Cb = proc(super: QAbstractSpinBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractSpinBox(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QAbstractSpinBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractSpinBox_virtualbase_sizeHint(self.h))

type QAbstractSpinBoxsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_sizeHint(self: ptr cQAbstractSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSpinBox_sizeHint ".} =
  type Cb = proc(super: QAbstractSpinBoxsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QAbstractSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QAbstractSpinBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractSpinBox_virtualbase_minimumSizeHint(self.h))

type QAbstractSpinBoxminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_minimumSizeHint(self: ptr cQAbstractSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSpinBox_minimumSizeHint ".} =
  type Cb = proc(super: QAbstractSpinBoxminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QAbstractSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QAbstractSpinBox, event: gen_qcoreevent.QEvent): bool =


  fQAbstractSpinBox_virtualbase_event(self.h, event.h)

type QAbstractSpinBoxeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_event(self: ptr cQAbstractSpinBox, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractSpinBox_event ".} =
  type Cb = proc(super: QAbstractSpinBoxeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QAbstractSpinBox, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractSpinBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QAbstractSpinBoxinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_inputMethodQuery(self: ptr cQAbstractSpinBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QAbstractSpinBox_inputMethodQuery ".} =
  type Cb = proc(super: QAbstractSpinBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QAbstractSpinBox(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_validate(self: QAbstractSpinBox, input: string, pos: ptr cint): gen_qvalidator.QValidatorState =


  gen_qvalidator.QValidatorState(fQAbstractSpinBox_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QAbstractSpinBoxvalidateBase* = proc(input: string, pos: ptr cint): gen_qvalidator.QValidatorState
proc onvalidate*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_validate(self: ptr cQAbstractSpinBox, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QAbstractSpinBox_validate ".} =
  type Cb = proc(super: QAbstractSpinBoxvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(input: string, pos: ptr cint): auto =
    callVirtualBase_validate(QAbstractSpinBox(h: self), input, pos)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_fixup(self: QAbstractSpinBox, input: string): void =


  fQAbstractSpinBox_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

type QAbstractSpinBoxfixupBase* = proc(input: string): void
proc onfixup*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxfixupBase, input: string): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxfixupBase, input: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_fixup(self: ptr cQAbstractSpinBox, slot: int, input: struct_miqt_string): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_fixup ".} =
  type Cb = proc(super: QAbstractSpinBoxfixupBase, input: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(input: string): auto =
    callVirtualBase_fixup(QAbstractSpinBox(h: self), input)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_stepBy(self: QAbstractSpinBox, steps: cint): void =


  fQAbstractSpinBox_virtualbase_stepBy(self.h, steps)

type QAbstractSpinBoxstepByBase* = proc(steps: cint): void
proc onstepBy*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxstepByBase, steps: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxstepByBase, steps: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_stepBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_stepBy(self: ptr cQAbstractSpinBox, slot: int, steps: cint): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_stepBy ".} =
  type Cb = proc(super: QAbstractSpinBoxstepByBase, steps: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(steps: cint): auto =
    callVirtualBase_stepBy(QAbstractSpinBox(h: self), steps)
  let slotval1 = steps


  nimfunc[](superCall, slotval1)
proc callVirtualBase_clear(self: QAbstractSpinBox, ): void =


  fQAbstractSpinBox_virtualbase_clear(self.h)

type QAbstractSpinBoxclearBase* = proc(): void
proc onclear*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxclearBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxclearBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_clear(self: ptr cQAbstractSpinBox, slot: int): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_clear ".} =
  type Cb = proc(super: QAbstractSpinBoxclearBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clear(QAbstractSpinBox(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_resizeEvent(self: QAbstractSpinBox, event: gen_qevent.QResizeEvent): void =


  fQAbstractSpinBox_virtualbase_resizeEvent(self.h, event.h)

type QAbstractSpinBoxresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_resizeEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_resizeEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QAbstractSpinBox, event: gen_qevent.QKeyEvent): void =


  fQAbstractSpinBox_virtualbase_keyPressEvent(self.h, event.h)

type QAbstractSpinBoxkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_keyPressEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_keyPressEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QAbstractSpinBox, event: gen_qevent.QKeyEvent): void =


  fQAbstractSpinBox_virtualbase_keyReleaseEvent(self.h, event.h)

type QAbstractSpinBoxkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_keyReleaseEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_keyReleaseEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QAbstractSpinBox, event: gen_qevent.QWheelEvent): void =


  fQAbstractSpinBox_virtualbase_wheelEvent(self.h, event.h)

type QAbstractSpinBoxwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_wheelEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_wheelEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QAbstractSpinBox, event: gen_qevent.QFocusEvent): void =


  fQAbstractSpinBox_virtualbase_focusInEvent(self.h, event.h)

type QAbstractSpinBoxfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_focusInEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_focusInEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QAbstractSpinBox, event: gen_qevent.QFocusEvent): void =


  fQAbstractSpinBox_virtualbase_focusOutEvent(self.h, event.h)

type QAbstractSpinBoxfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_focusOutEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_focusOutEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QAbstractSpinBox, event: gen_qevent.QContextMenuEvent): void =


  fQAbstractSpinBox_virtualbase_contextMenuEvent(self.h, event.h)

type QAbstractSpinBoxcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_contextMenuEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_contextMenuEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QAbstractSpinBox, event: gen_qcoreevent.QEvent): void =


  fQAbstractSpinBox_virtualbase_changeEvent(self.h, event.h)

type QAbstractSpinBoxchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_changeEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_changeEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QAbstractSpinBox, event: gen_qevent.QCloseEvent): void =


  fQAbstractSpinBox_virtualbase_closeEvent(self.h, event.h)

type QAbstractSpinBoxcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_closeEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_closeEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QAbstractSpinBox, event: gen_qevent.QHideEvent): void =


  fQAbstractSpinBox_virtualbase_hideEvent(self.h, event.h)

type QAbstractSpinBoxhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_hideEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_hideEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QAbstractSpinBox, event: gen_qevent.QMouseEvent): void =


  fQAbstractSpinBox_virtualbase_mousePressEvent(self.h, event.h)

type QAbstractSpinBoxmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_mousePressEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_mousePressEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QAbstractSpinBox, event: gen_qevent.QMouseEvent): void =


  fQAbstractSpinBox_virtualbase_mouseReleaseEvent(self.h, event.h)

type QAbstractSpinBoxmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_mouseReleaseEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_mouseReleaseEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QAbstractSpinBox, event: gen_qevent.QMouseEvent): void =


  fQAbstractSpinBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QAbstractSpinBoxmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_mouseMoveEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_mouseMoveEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QAbstractSpinBox, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractSpinBox_virtualbase_timerEvent(self.h, event.h)

type QAbstractSpinBoxtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_timerEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_timerEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QAbstractSpinBox, event: gen_qevent.QPaintEvent): void =


  fQAbstractSpinBox_virtualbase_paintEvent(self.h, event.h)

type QAbstractSpinBoxpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_paintEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_paintEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QAbstractSpinBox, event: gen_qevent.QShowEvent): void =


  fQAbstractSpinBox_virtualbase_showEvent(self.h, event.h)

type QAbstractSpinBoxshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_showEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_showEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_stepEnabled(self: QAbstractSpinBox, ): QAbstractSpinBoxStepEnabledFlag =


  QAbstractSpinBoxStepEnabledFlag(fQAbstractSpinBox_virtualbase_stepEnabled(self.h))

type QAbstractSpinBoxstepEnabledBase* = proc(): QAbstractSpinBoxStepEnabledFlag
proc onstepEnabled*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxstepEnabledBase): QAbstractSpinBoxStepEnabledFlag) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxstepEnabledBase): QAbstractSpinBoxStepEnabledFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_stepEnabled(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_stepEnabled(self: ptr cQAbstractSpinBox, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractSpinBox_stepEnabled ".} =
  type Cb = proc(super: QAbstractSpinBoxstepEnabledBase): QAbstractSpinBoxStepEnabledFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_stepEnabled(QAbstractSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_devType(self: QAbstractSpinBox, ): cint =


  fQAbstractSpinBox_virtualbase_devType(self.h)

type QAbstractSpinBoxdevTypeBase* = proc(): cint
proc ondevType*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_devType(self: ptr cQAbstractSpinBox, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractSpinBox_devType ".} =
  type Cb = proc(super: QAbstractSpinBoxdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QAbstractSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QAbstractSpinBox, visible: bool): void =


  fQAbstractSpinBox_virtualbase_setVisible(self.h, visible)

type QAbstractSpinBoxsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_setVisible(self: ptr cQAbstractSpinBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_setVisible ".} =
  type Cb = proc(super: QAbstractSpinBoxsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QAbstractSpinBox(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QAbstractSpinBox, param1: cint): cint =


  fQAbstractSpinBox_virtualbase_heightForWidth(self.h, param1)

type QAbstractSpinBoxheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_heightForWidth(self: ptr cQAbstractSpinBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractSpinBox_heightForWidth ".} =
  type Cb = proc(super: QAbstractSpinBoxheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QAbstractSpinBox(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QAbstractSpinBox, ): bool =


  fQAbstractSpinBox_virtualbase_hasHeightForWidth(self.h)

type QAbstractSpinBoxhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_hasHeightForWidth(self: ptr cQAbstractSpinBox, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractSpinBox_hasHeightForWidth ".} =
  type Cb = proc(super: QAbstractSpinBoxhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QAbstractSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QAbstractSpinBox, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQAbstractSpinBox_virtualbase_paintEngine(self.h))

type QAbstractSpinBoxpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_paintEngine(self: ptr cQAbstractSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSpinBox_paintEngine ".} =
  type Cb = proc(super: QAbstractSpinBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QAbstractSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QAbstractSpinBox, event: gen_qevent.QMouseEvent): void =


  fQAbstractSpinBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QAbstractSpinBoxmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_mouseDoubleClickEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QAbstractSpinBox, event: gen_qcoreevent.QEvent): void =


  fQAbstractSpinBox_virtualbase_enterEvent(self.h, event.h)

type QAbstractSpinBoxenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_enterEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_enterEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QAbstractSpinBox, event: gen_qcoreevent.QEvent): void =


  fQAbstractSpinBox_virtualbase_leaveEvent(self.h, event.h)

type QAbstractSpinBoxleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_leaveEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_leaveEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QAbstractSpinBox, event: gen_qevent.QMoveEvent): void =


  fQAbstractSpinBox_virtualbase_moveEvent(self.h, event.h)

type QAbstractSpinBoxmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_moveEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_moveEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QAbstractSpinBox, event: gen_qevent.QTabletEvent): void =


  fQAbstractSpinBox_virtualbase_tabletEvent(self.h, event.h)

type QAbstractSpinBoxtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_tabletEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_tabletEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QAbstractSpinBox, event: gen_qevent.QActionEvent): void =


  fQAbstractSpinBox_virtualbase_actionEvent(self.h, event.h)

type QAbstractSpinBoxactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_actionEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_actionEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QAbstractSpinBox, event: gen_qevent.QDragEnterEvent): void =


  fQAbstractSpinBox_virtualbase_dragEnterEvent(self.h, event.h)

type QAbstractSpinBoxdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_dragEnterEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_dragEnterEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QAbstractSpinBox, event: gen_qevent.QDragMoveEvent): void =


  fQAbstractSpinBox_virtualbase_dragMoveEvent(self.h, event.h)

type QAbstractSpinBoxdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_dragMoveEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_dragMoveEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QAbstractSpinBox, event: gen_qevent.QDragLeaveEvent): void =


  fQAbstractSpinBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QAbstractSpinBoxdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_dragLeaveEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_dragLeaveEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QAbstractSpinBox, event: gen_qevent.QDropEvent): void =


  fQAbstractSpinBox_virtualbase_dropEvent(self.h, event.h)

type QAbstractSpinBoxdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_dropEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_dropEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QAbstractSpinBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQAbstractSpinBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QAbstractSpinBoxnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_nativeEvent(self: ptr cQAbstractSpinBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QAbstractSpinBox_nativeEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QAbstractSpinBox(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QAbstractSpinBox, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQAbstractSpinBox_virtualbase_metric(self.h, cint(param1))

type QAbstractSpinBoxmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_metric(self: ptr cQAbstractSpinBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractSpinBox_metric ".} =
  type Cb = proc(super: QAbstractSpinBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QAbstractSpinBox(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QAbstractSpinBox, painter: gen_qpainter.QPainter): void =


  fQAbstractSpinBox_virtualbase_initPainter(self.h, painter.h)

type QAbstractSpinBoxinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_initPainter(self: ptr cQAbstractSpinBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_initPainter ".} =
  type Cb = proc(super: QAbstractSpinBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QAbstractSpinBox(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QAbstractSpinBox, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQAbstractSpinBox_virtualbase_redirected(self.h, offset.h))

type QAbstractSpinBoxredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_redirected(self: ptr cQAbstractSpinBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractSpinBox_redirected ".} =
  type Cb = proc(super: QAbstractSpinBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QAbstractSpinBox(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QAbstractSpinBox, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQAbstractSpinBox_virtualbase_sharedPainter(self.h))

type QAbstractSpinBoxsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_sharedPainter(self: ptr cQAbstractSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSpinBox_sharedPainter ".} =
  type Cb = proc(super: QAbstractSpinBoxsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QAbstractSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QAbstractSpinBox, param1: gen_qevent.QInputMethodEvent): void =


  fQAbstractSpinBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QAbstractSpinBoxinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_inputMethodEvent(self: ptr cQAbstractSpinBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_inputMethodEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QAbstractSpinBox(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QAbstractSpinBox, next: bool): bool =


  fQAbstractSpinBox_virtualbase_focusNextPrevChild(self.h, next)

type QAbstractSpinBoxfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_focusNextPrevChild(self: ptr cQAbstractSpinBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QAbstractSpinBox_focusNextPrevChild ".} =
  type Cb = proc(super: QAbstractSpinBoxfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QAbstractSpinBox(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAbstractSpinBox, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractSpinBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractSpinBoxeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_eventFilter(self: ptr cQAbstractSpinBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractSpinBox_eventFilter ".} =
  type Cb = proc(super: QAbstractSpinBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractSpinBox(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QAbstractSpinBox, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractSpinBox_virtualbase_childEvent(self.h, event.h)

type QAbstractSpinBoxchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_childEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_childEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractSpinBox, event: gen_qcoreevent.QEvent): void =


  fQAbstractSpinBox_virtualbase_customEvent(self.h, event.h)

type QAbstractSpinBoxcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_customEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_customEvent ".} =
  type Cb = proc(super: QAbstractSpinBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractSpinBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractSpinBox_virtualbase_connectNotify(self.h, signal.h)

type QAbstractSpinBoxconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_connectNotify(self: ptr cQAbstractSpinBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_connectNotify ".} =
  type Cb = proc(super: QAbstractSpinBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractSpinBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractSpinBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractSpinBox_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractSpinBoxdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractSpinBox, slot: proc(super: QAbstractSpinBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSpinBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_disconnectNotify(self: ptr cQAbstractSpinBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_disconnectNotify ".} =
  type Cb = proc(super: QAbstractSpinBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractSpinBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAbstractSpinBox): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAbstractSpinBox_staticMetaObject())
proc delete*(self: QAbstractSpinBox) =
  fcQAbstractSpinBox_delete(self.h)
